#!/bin/python3

'''
Author: FunctionSir
License: AGPLv3
Date: 2024-09-03 22:35:55
LastEditTime: 2024-09-07 23:53:39
LastEditors: FunctionSir
Description: -
FilePath: /PanDefenseProject/pdp_tool/pdp_tool.py
'''

import datetime
import os
import shutil
import subprocess

### VERSION INFO ###
PDP_TOOL_VER = "1.0.0"
PDP_TOOL_LEGACY_VER = "0.0.1"

### CONTRIBUTOR SWITCH ###
CONTRIBUTOR_MODE = False

### TOOLCHAIN CONF ###
PYTHON = "/usr/bin/python3"
SQLITE_BIN = "/usr/bin/sqlite3"
SQLITE_ANALYZER_BIN = "/usr/bin/sqlite3_analyzer"
DB2LEGACY = "./db2legacy.py"
CSV2INI = "./csv2ini.py"
PDP_TOOL_LEGACY = "./pdp_tool_legacy"

### DB CONF ###
PDP_DB = "../pdp.db"

### TOOL CONF ###
SEPARATOR = "\", \""
SEPARATOR_LINE = 18*"========"
PROMPT = ">>> "

print("PanDefenseProject Tool [ Version: "+PDP_TOOL_VER+" ]")
print("Please Check the file content before use!")
print("With legacy tool ver "+PDP_TOOL_LEGACY_VER+".")

contribute_file_name = ""

if CONTRIBUTOR_MODE:
    print("You are in contribute mode.")
    print(SEPARATOR_LINE)
    print("-------- 输入您希望使用的身份以继续 --------")
    print("建议您仅使用大小写字母和数字, 以及\"-\"和\"_\"(短横线或减号, 下划线).")
    print("留空来避免进行文件操作.")
    today = datetime.datetime.today()
    y = str(today.year)
    m = str(today.month)
    d = str(today.day)
    if (len(m) == 1):
        m = '0'+m
    if (len(d) == 1):
        d = '0'+d
    contribute_file_name = input(PROMPT)
    if (contribute_file_name != ""):
        contribute_file_name += "-"+y+m+d+".sql"
    print(SEPARATOR_LINE)
else:
    print(SEPARATOR_LINE)

if (contribute_file_name != "" and not os.path.exists("../unmerged/"+contribute_file_name)):
    shutil.copyfile("../unmerged/template.sql",
                    "../unmerged/"+contribute_file_name)

contribute_file = None
if (contribute_file_name != ""):
    contribute_file = open("../unmerged/"+contribute_file_name, "r")
    current = contribute_file.read()
    contribute_file.close()
    contribute_file = open("../unmerged/"+contribute_file_name, "a")
    if (current[-1] != '\n'):
        contribute_file.write("\n\n")
    elif (current[-2] != '\n'):
        contribute_file.write("\n")

while True:
    print("-------- 输入一个操作以继续 --------")
    print("[L]IST [F]IND [D]ISPLAY [N]EW [M]ODIFY [G]EN [D]UMP [S]QLITE [A]NALYZE [V]ACUUM [P]YTHON [E]XIT")
    print("帮助(PanDefenseProject部分): L: 列出所有条目. F: 搜索条目. D: 查看条目. N: 新增条目. M: 修改现有条目. G: 生成旧式文件(CONF/JSON/CSV).")
    print("帮助(SQLite部分): D: 生成一份SQL DUMP. S: 进入SQLite CLI. A: 使用SQLite Analyzer对DB进行分析. V: 进行数据库VACUUM. P: 进入Python CLI.")
    op = input(PROMPT).upper()
    if (op == 'L' or op == "LIST"):
        print("-------- 输入表代号以继续 --------")
        print("IL: 机构列表. RA: 相关文章. 默认为IL.")
        table = input(PROMPT).upper()
        print(SEPARATOR_LINE)
        if (table == "IL" or table == ""):
            output = subprocess.check_output(
                [SQLITE_BIN, PDP_DB, ".separator "+SEPARATOR, "SELECT ID,NAMES FROM INSTITUTE_LIST;"]).decode("utf-8")[:-1]
            print("ID      "+(len(SEPARATOR)-2)*" "+"名称")
        elif (table == "RA"):
            output = subprocess.check_output(
                [SQLITE_BIN, PDP_DB, ".separator "+SEPARATOR, "SELECT ID,TITLE FROM RELATED_ARTICLES;"]).decode("utf-8")[:-1]
            print("ID      "+(len(SEPARATOR)-2)*" "+"标题")
        print(output)
        print(SEPARATOR_LINE)
        print("成功. 共有 "+str(output.count('\n')+1)+" 条记录.")
        print(SEPARATOR_LINE)
    elif (op == 'F' or op == "FIND"):
        print("-------- 输入表代号/表名以继续 --------")
        print("IL: 机构列表. RA: 相关文章. 默认为IL.")
        table = input(PROMPT).upper()
        if (table == "IL" or table == ""):
            table = "INSTITUTE_LIST"
        elif (table == "RA"):
            table = "RELATED_ARTICLES"
        print("-------- 输入搜索依据以继续 --------")
        print("针对IL: NAMES: 名称. LOCATIONS: 位置.")
        print("针对RA: TITLE: 标题. ORIGINAL: 源网址.")
        print("默认为以名称(IL)/标题(RA)为依据.")
        print("您可以输入其他字段名称来指定其他的搜索依据.")
        col = input(PROMPT)
        if (col == ""):
            if (table == "INSTITUTE_LIST"):
                col = "NAMES"
            elif (table == "RELATED_ARTICLES"):
                col = "TITLE"
        print("-------- 输入搜索内容以继续 --------")
        key = input(PROMPT)
        print(SEPARATOR_LINE)
        output = ""
        try:
            if (col == "NAMES" or col == "TITLE"):
                output = subprocess.check_output([SQLITE_BIN, PDP_DB, ".headers on", ".separator "+SEPARATOR,
                                                  "SELECT ID,"+col+" FROM "+table+" WHERE "+col+" LIKE '%"+key+"%';"]).decode("utf-8")[:-1]
            else:
                if (table == "INSTITUTE_LIST"):
                    output = subprocess.check_output([SQLITE_BIN, PDP_DB, ".headers on", ".separator "+SEPARATOR,
                                                      "SELECT ID,NAMES,"+col+" FROM "+table+" WHERE "+col+" LIKE '%"+key+"%';"]).decode("utf-8")[:-1]
                elif (table == "RELATED_ARTICLES"):
                    output = subprocess.check_output([SQLITE_BIN, PDP_DB, ".headers on", ".separator "+SEPARATOR,
                                                      "SELECT ID,TITLE,"+col+" FROM "+table+" WHERE "+col+" LIKE '%"+key+"%';"]).decode("utf-8")[:-1]
                else:
                    output = subprocess.check_output([SQLITE_BIN, PDP_DB, ".headers on", ".separator "+SEPARATOR,
                                                      "SELECT * FROM "+table+" WHERE "+col+" LIKE '%"+key+"%';"]).decode("utf-8")[:-1]
        except Exception:
            pass
        else:
            print(output)
            print(SEPARATOR_LINE)
            print("成功. 共找到 "+str(len(output.split('\n'))-1)+" 条记录.")
        print(SEPARATOR_LINE)
    elif (op == 'D' or op == "DISPLAY"):
        print("-------- 输入表代号以继续 --------")
        print("IL: 机构列表. RA: 相关文章. 默认为IL.")
        table = input(PROMPT).upper()
        print("-------- 输入ID以继续 --------")
        id = input(PROMPT).upper()
        print(SEPARATOR_LINE)
        if (table == "IL" or table == ""):
            table = "INSTITUTE_LIST"
        elif (table == "RA"):
            table = "RELATED_ARTICLES"
        output = ""
        try:
            output = subprocess.check_output(
                [SQLITE_BIN, PDP_DB, ".headers on", ".separator \"\\n\"", "SELECT * FROM "+table+" WHERE ID='"+id+"';"]).decode("utf-8")[:-1].split('\n')
        except Exception:
            pass
        else:
            for i in range(0, int(len(output)/2)):
                print(output[i]+" = "+output[i+int(len(output)/2)])
        print(SEPARATOR_LINE)
    elif (op == 'N' or op == "NEW"):
        print("-------- 输入表代号以继续 --------")
        print("IL: 机构列表. RA: 相关文章. 默认为IL.")
        table = input(PROMPT).upper()
        print(SEPARATOR_LINE)
        if (table == "IL" or table == ""):
            print("请您跟随指引输入相应信息.")
            print("机构名称 (格式: XXX || YYY 其中\" || \"为分隔符. 注意: \"||\"两边的空格是必须的):")
            names = input(PROMPT).replace("'", "''")
            print("相关网站 (格式: XXX || YYY 其中\" || \"为分隔符. 注意: \"||\"两边的空格是必须的)")
            print("(若为未知, 填写UNKNOWN, 若有标注, 格式: (XXX)YYY)")
            print("(若直接敲下ENTER, 那么, 取默认值UNKNOWN):")
            sites = input(PROMPT).replace("'", "''")
            if (sites == ""):
                sites = "UNKNOWN"
            print("地理位置 (格式: XXX || YYY 其中\" || \"为分隔符. 注意: \"||\"两边的空格是必须的)")
            print("(若为未知, 填写UNKNOWN, 若有标注, 格式: (XXX)YYY)")
            print("(若直接敲下ENTER, 那么, 取默认值UNKNOWN):")
            locations = input(PROMPT).replace("'", "''")
            if (locations == ""):
                locations = "UNKNOWN"
            print("来源 (格式: XXX || YYY 其中\" || \"为分隔符. 注意: \"||\"两边的空格是必须的)")
            print("(用->来连接查找路径, 用(->)来代表这是被启发而得到的路径的开头)")
            print("(若有标注, 格式: (XXX)YYY):")
            sources = input(PROMPT).replace("'", "''")
            print("可能存在迫害 (TRUE = 是, FALSE = 否, UNKNOWN = 未知)")
            print("(若直接敲下ENTER, 那么, 取默认值UNKNOWN):")
            persecution = input(PROMPT).replace("'", "''")
            if (persecution == ""):
                persecution = "UNKNOWN"
            print("若存在迫害, 那么相关证据 (NONE = 无, PENDING = 正在处理)")
            print("(若非NONE或PENDING, 那么, 格式: XXX || YYY 其中\" || \"为分隔符.)")
            print("(注意: \"||\"两边的空格是必须的)")
            print("(若直接敲下ENTER, 那么, 取默认值NONE):")
            evidences = input(PROMPT).replace("'", "''")
            if (evidences == ""):
                evidences = "NONE"
            print("估计规模 (UNKNOWN = 未知)")
            print("(若非UNKNOWN, 那么: 区间: x~y; 多于x: x+; 少于x: x-.)")
            print("(若直接敲下ENTER, 那么, 取默认值UNKNOWN):")
            scale = input(PROMPT).replace("'", "''")
            if (scale == ""):
                scale = "UNKNOWN"
            checked = "FALSE"
            if (not CONTRIBUTOR_MODE):
                print("条目是否已审核 (TRUE = 是, FALSE = 否)")
                print("(若直接敲下ENTER, 那么, 取默认值FALSE):")
                checked = input(PROMPT).replace("'", "''")
                if (checked == ""):
                    checked = "FALSE"
                to_exec = [SQLITE_BIN, PDP_DB, "INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'"+names +
                           "','"+sites+"','"+locations+"','"+sources+"','"+persecution+"','"+evidences+"','"+scale+"','"+checked+"');"]
                print("将执行: "+str(to_exec)+".")
                try:
                    output = subprocess.check_output(
                        to_exec).decode("utf-8")[:-1]
                except Exception:
                    pass
                else:
                    print("成功.")
            else:
                gened = "INSERT INTO INSTITUTE_LIST VALUES ((SELECT hex(randomblob(4))),'"+names +\
                    "','"+sites+"','"+locations+"','"+sources+"','"+persecution +\
                    "','"+evidences+"','"+scale+"','"+checked+"');"
                if (contribute_file != None):
                    contribute_file.write(gened+'\n')
                    print("为您生成如下SQL, 并(将)追加到\""+contribute_file_name+"\":")
                else:
                    print("为您生成如下SQL:")
                print(gened)
        elif (table == "RA"):
            print("请您跟随指引输入相应信息.")
            print("请输入文章的标题(若有副标题, 或有换行, 处理成如: XXX YYY这样的格式):")
            title = input(PROMPT).replace("'", "''")
            print("请输入源网址(应以如http://或https://等开头, 即, 应保留协议):")
            original = input(PROMPT).replace("'", "''")
            print("请输入存档的网址(应以如http://或https://等开头, 即, 应保留协议):")
            archive = input(PROMPT).replace("'", "''")
            if (not CONTRIBUTOR_MODE):
                to_exec = [
                    SQLITE_BIN, PDP_DB, "INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'"+title + "','"+original+"','"+archive+"');"]
                print("将执行: "+str(to_exec)+".")
                try:
                    output = subprocess.check_output(
                        to_exec).decode("utf-8")[:-1]
                except Exception:
                    pass
                else:
                    print("成功.")
            else:
                gened = "INSERT INTO RELATED_ARTICLES VALUES ((SELECT hex(randomblob(4))),'" +\
                    title + "','"+original+"','"+archive+"');"
                if (contribute_file != None):
                    contribute_file.write(gened+'\n')
                    print("为您生成如下SQL, 并(将)追加到\""+contribute_file_name+"\":")
                else:
                    print("为您生成如下SQL:")
                print(gened)
        print(SEPARATOR_LINE)
    elif (op == 'M' or op == "MODIFY"):
        print("-------- 输入表代号以继续 --------")
        print("IL: 机构列表. RA: 相关文章. 默认为IL.")
        table = input(PROMPT).upper()
        print("格式: ID[TAB]字段名[TAB]修改后的值.")
        if (table == "IL" or table == ""):
            print("表INSTITUTE_LIST有字段: ID, NAMES, SITES, LOCATIONS, SOURCES, PERSECUTION, EVIDENCES, SCALE, CHECKED.")
            table = "INSTITUTE_LIST"
        elif (table == "RA"):
            print("表RELATED_ARTICLES有字段: ID, TITLE, ORIGINAL, ARCHIVE.")
            table = "RELATED_ARTICLES"
        id, col, val = input(PROMPT).split('\t')
        val = val.replace("'", "''")
        if (not CONTRIBUTOR_MODE):
            to_exec = [SQLITE_BIN, PDP_DB, "UPDATE "+table +
                       " SET "+col+"="+"'"+val+"' WHERE ID='"+id+"';"]
            print("将执行: "+str(to_exec)+".")
            try:
                output = subprocess.check_output(
                    to_exec).decode("utf-8")[:-1]
            except Exception:
                pass
            else:
                print("成功.")
        else:
            gened = "UPDATE "+table + " SET "+col+"="+"'"+val+"' WHERE ID='"+id+"';"
            if (contribute_file != None):
                contribute_file.write(gened+'\n')
                print("为您生成如下SQL, 并(将)追加到\""+contribute_file_name+"\":")
            else:
                print("为您生成如下SQL:")
                print(gened)
        print(SEPARATOR_LINE)
    elif (op == 'G' or op == "GEN"):
        print("!!! 注意: 继续之前, 请务必检查\"db2legacy.py\"的配置部分是否如您所愿 !!!")
        print(SEPARATOR_LINE)
        os.system(PYTHON+" "+DB2LEGACY)
        print(SEPARATOR_LINE)
    elif (op == 'D' or op == "DUMP"):
        print("!!! 注意: 现有文件将被覆盖 !!!")
        print("-------- 输入保存路径以继续 --------")
        path = input(PROMPT)
        os.system(SQLITE_BIN+" \""+PDP_DB+"\" \".dump\""+" > "+path)
        print(SEPARATOR_LINE)
    elif (op == 'S' or op == "SQLITE"):
        os.system(SQLITE_BIN+" \""+PDP_DB+"\"")
    elif (op == 'A' or op == "ANALYZE"):
        print(SEPARATOR_LINE)
        output = subprocess.check_output(
            [SQLITE_ANALYZER_BIN, PDP_DB]).decode("utf-8")[:-1]
        print(output)
        print(SEPARATOR_LINE)
    elif (op == 'V' or op == "VACUUM"):
        subprocess.call([SQLITE_BIN, PDP_DB, "VACUUM;"])
    elif (op == 'P' or op == "PYTHON"):
        os.system(PYTHON)
    elif (op == 'E' or op == "EXIT"):
        exit(0)
    else:
        print("操作未知. 什么都不做.")
