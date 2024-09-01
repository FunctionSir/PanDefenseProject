/*
 * @Author: FunctionSir
 * @License: AGPLv3
 * @Date: 2024-08-04 01:53:46
 * @LastEditTime: 2024-09-02 00:15:19
 * @LastEditors: FunctionSir
 * @Description: Simple tool to help you.
 * @FilePath: /PanDefenseProject/pdp_tool/src/main.rs
 */

use ini::Ini;
use serde::Serialize;
use serde_json::{json, to_string_pretty};
use std::fs::{self, OpenOptions};
use std::io::{stdin, BufRead, BufReader, Write};
use std::process::exit;

const SEPARATOR_SINGLE: &str = "--------";
const SEPARATOR_DOUBLE: &str = "========";

#[derive(Serialize)]
struct PersecutionInfo {
    known: bool,
    evidences: Vec<String>,
}

#[derive(Serialize)]
struct Entry {
    names: Vec<String>,
    sites: Vec<String>,
    locations: Vec<String>,
    persecution: PersecutionInfo,
    sources: Vec<String>,
    scale: String,
    checked: bool,
}

fn print_prompt() {
    print!(">>> ");
    std::io::stdout().flush().unwrap();
}

fn read_line() -> String {
    let mut line = String::new();
    stdin().read_line(&mut line).unwrap();
    line.trim().to_string()
}

fn view(conf: &Ini) {
    println!("请输入ID:");
    print_prompt();
    let id = read_line();
    println!("{}", SEPARATOR_SINGLE);
    for (key, value) in conf.section(Some(id)).unwrap() {
        println!("{}: {}", key, value);
    }
    println!("{}", SEPARATOR_SINGLE);
}

fn insert(conf: &mut Ini, path: &str) {
    let mut tot_bytes: usize = 0;
    let last_id: i64 = conf.sections().last().unwrap().unwrap().parse().unwrap();
    let mut file = OpenOptions::new()
        .read(true)
        .append(true)
        .open(path)
        .unwrap();
    let buffered = BufReader::new(&file);
    let last_line = buffered.lines().last().unwrap().unwrap();
    if last_line != "" {
        let to_write = b"\n\n";
        file.write(to_write).unwrap();
        tot_bytes += to_write.len();
    }
    let this_id = (last_id + 1).to_string();
    println!("请您跟随指引输入相应信息.");
    println!("机构名称 (格式: XXX || YYY 其中\" || \"为分隔符. 注意: \"||\"两边的空格是必须的):");
    print_prompt();
    let names = read_line();
    println!("相关网站 (格式: XXX || YYY 其中\" || \"为分隔符. 注意: \"||\"两边的空格是必须的)");
    println!("(若为未知, 填写unknown, 若有标注, 格式: (XXX)YYY)");
    println!("(若直接敲下ENTER, 那么, 取默认值unknown):");
    print_prompt();
    let mut sites = read_line();
    if sites.len() == 0 {
        sites = "unknown".to_string();
    }
    println!("地理位置 (格式: XXX || YYY 其中\" || \"为分隔符. 注意: \"||\"两边的空格是必须的)");
    println!("(若为未知, 填写unknown, 若有标注, 格式: (XXX)YYY)");
    println!("(若直接敲下ENTER, 那么, 取默认值unknown):");
    print_prompt();
    let mut locations = read_line();
    if locations.len() == 0 {
        locations = "unknown".to_string();
    }
    println!("来源 (格式: XXX || YYY 其中\" || \"为分隔符. 注意: \"||\"两边的空格是必须的)");
    println!("(用->来连接查找路径, 用(->)来代表这是被启发而得到的路径的开头)");
    println!("(若有标注, 格式: (XXX)YYY):");
    print_prompt();
    let sources = read_line();
    println!("可能存在迫害 (true = 是, false = 否, unknown = 未知)");
    println!("(若直接敲下ENTER, 那么, 取默认值unknown):");
    print_prompt();
    let mut persecution = read_line();
    if persecution.len() == 0 {
        persecution = "unknown".to_string();
    }
    println!("若存在迫害, 那么相关证据 (none = 无, pending = 正在处理)");
    println!("(若非none或pending, 那么, 格式: XXX || YYY 其中\" || \"为分隔符. 注意: \"||\"两边的空格是必须的)");
    println!("(若直接敲下ENTER, 那么, 取默认值none):");
    print_prompt();
    let mut evidences = read_line();
    if evidences.len() == 0 {
        evidences = "none".to_string();
    }
    println!("估计规模 (unknown = 未知)");
    println!("(若非unknown, 那么: 区间: x~y; 多于x: x+; 少于x: x-)");
    println!("(若直接敲下ENTER, 那么, 取默认值unknown):");
    let mut scale = read_line();
    if scale.len() == 0 {
        scale = "unknown".to_string();
    }
    println!("条目是否已审核 (true = 是, false = 否)");
    println!("(若直接敲下ENTER, 那么, 取默认值false):");
    print_prompt();
    let mut checked = read_line();
    if checked.len() == 0 {
        checked = "false".to_string();
    }
    let to_write = format!(
        "[{}]\nNames = {}\nSites = {}\nLocations = {}\nSources = {}\nPersecution = {}\nEvidences = {}\nScale = {}\nChecked = {}",
        this_id,
        names,
        sites,
        locations,
        sources,
        persecution,
        evidences,
        scale,
        checked,
    );
    file.write(to_write.as_bytes()).unwrap();
    tot_bytes += to_write.as_bytes().len();
    println!("{}", SEPARATOR_SINGLE);
    println!("成功. 已追加{}字节.", tot_bytes);
    println!("{}", SEPARATOR_SINGLE);
    println!("注意: General部分的信息不会更改, 请手动改动之.");
    println!("{}", SEPARATOR_SINGLE);
    reload(conf, path);
}

fn find(conf: &Ini) {
    println!("请输入要查询的内容(仅支持在名称中搜索)");
    println!("(若直接敲下ENTER, 那么, 将列出所有条目):");
    print_prompt();
    let what = read_line();
    println!("{}", SEPARATOR_SINGLE);
    let mut tot: i64 = 0;
    for section in conf.sections() {
        match section {
            Some(sec) => {
                if sec != "General" {
                    let names = conf.section(Some(sec)).unwrap().get("Names").unwrap();
                    if names.contains(&what) {
                        tot = tot + 1;
                        println!("ID为{}的条目, 名称的值: {}.", sec, names);
                    }
                }
            }
            None => (),
        }
    }
    println!("{}", SEPARATOR_SINGLE);
    println!("成功. 共查找到{}条相关条目.", tot);
    println!("{}", SEPARATOR_SINGLE);
}

fn key_to_vec(conf: &Ini, section: Option<&str>, key: &str) -> Vec<String> {
    let s = conf
        .section(Some(section.unwrap()))
        .unwrap()
        .get(key)
        .unwrap();
    let special = vec!["none", "unknown", "pending"];
    if special.iter().any(|x| s == *x) {
        vec![]
    } else {
        s.split(" || ").map(|x: &str| x.to_string()).collect()
    }
}

fn key_to_string(conf: &Ini, section: Option<&str>, key: &str) -> String {
    conf.section(Some(section.unwrap()))
        .unwrap()
        .get(key)
        .unwrap()
        .to_string()
}

fn key_to_bool(conf: &Ini, section: Option<&str>, key: &str) -> bool {
    let tmp = conf
        .section(Some(section.unwrap()))
        .unwrap()
        .get(key)
        .unwrap();
    match tmp {
        "true" | "True" | "T" | "t" | "1" => true,
        _ => false,
    }
}

fn export_json(conf: &Ini) {
    println!("请输入要保存到的文件的路径(注意: 会覆盖原有文件!):");
    print_prompt();
    let path = read_line();
    let mut entries: Vec<Entry> = Vec::new();
    for section in conf.sections() {
        if section.is_none() || section.unwrap() == "General" {
            continue;
        }
        let tmp = Entry {
            names: key_to_vec(conf, section, "Names"),
            sites: key_to_vec(conf, section, "Sites"),
            locations: key_to_vec(conf, section, "Locations"),
            persecution: PersecutionInfo {
                known: key_to_bool(conf, section, "Persecution"),
                evidences: key_to_vec(conf, section, "Evidences"),
            },
            scale: key_to_string(conf, section, "Scale"),
            sources: key_to_vec(conf, section, "Sources"),
            checked: key_to_bool(conf, section, "Checked"),
        };
        entries.push(tmp);
    }
    let json = json!({
        "$schema": "./institute_list.schema.json",
        "content": entries,
    });
    let to_write = to_string_pretty(&json).unwrap();
    fs::write(path, &to_write).unwrap();
    println!("成功. 已写入{}字节.", to_write.as_bytes().len());
    println!("{}", SEPARATOR_SINGLE);
}

fn export_csv(conf: &Ini) {
    println!("请输入要保存到的文件的路径(注意: 会覆盖原有文件!):");
    print_prompt();
    let mut to_write: String =
        String::from("#,名称,相关网页,地理位置,来源,存在虐待,相关证据,估计规模,已审核\n");
    let path = read_line();
    for section in conf.sections() {
        if section.is_none() || section.unwrap() == "General" {
            continue;
        }
        to_write += section.unwrap();
        to_write.push(',');
        let to_get = vec![
            "Names",
            "Sites",
            "Locations",
            "Sources",
            "Persecution",
            "Evidences",
            "Scale",
            "Checked",
        ];
        let special = vec!["true", "false", "none", "unknown", "pending"];
        for key in to_get {
            let mut tmp = conf
                .section(Some(section.unwrap()))
                .unwrap()
                .get(key)
                .unwrap()
                .to_string();
            if special.iter().any(|x| tmp == *x) {
                tmp = tmp.to_uppercase();
            }
            to_write += &tmp;
            to_write.push(',');
        }
        to_write.pop();
        to_write.push('\n');
    }
    to_write.pop();
    fs::write(path, &to_write).unwrap();
    println!("成功. 已写入{}字节.", to_write.as_bytes().len());
    println!("{}", SEPARATOR_SINGLE);
}

fn reload(conf: &mut Ini, path: &str) {
    println!("重新加载...");
    *conf = Ini::load_from_file(&path).unwrap();
    println!("成功.");
    println!("{}", SEPARATOR_SINGLE);
}

fn main() {
    println!("PanDefenseProject 工具 [Version: 0.0.1]");
    println!("{}", SEPARATOR_DOUBLE);
    let args: Vec<String> = std::env::args().collect();
    let path: String;
    if args.len() <= 1 {
        println!("似乎没有在命令行参数中提供文件路径, 尝试从标准输入读取.");
        println!("文件路径: ");
        print_prompt();
        path = read_line();
    } else {
        path = args[1].trim().to_string();
    }
    println!("假定为INI格式并载入...");
    let mut conf = Ini::load_from_file(&path).unwrap();
    let general_info = conf.section(Some("General")).unwrap();
    println!("{}", SEPARATOR_DOUBLE);
    println!("文件: {}", path);
    println!("版本: {}", general_info.get("Ver").unwrap());
    println!("最后修改: {}", general_info.get("LastEdit").unwrap());
    println!("{}", SEPARATOR_DOUBLE);
    loop {
        let cmd: String;
        println!("[V]查看条目 [I]新条目 [F]查找 [J]生成JSON [C]生成CSV [R]重新加载 [E]退出");
        println!("{}", SEPARATOR_SINGLE);
        print_prompt();
        cmd = read_line().to_uppercase();
        println!("{}", SEPARATOR_SINGLE);
        match cmd.as_str() {
            "V" => view(&conf),
            "I" => insert(&mut conf, &path),
            "F" => find(&conf),
            "J" => export_json(&conf),
            "C" => export_csv(&conf),
            "R" => reload(&mut conf, &path),
            "E" => {
                println!("退出.");
                exit(0);
            }
            _ => {
                println!("无法解析您的意图, 请重试.");
                println!("{}", SEPARATOR_SINGLE);
            }
        }
    }
}
