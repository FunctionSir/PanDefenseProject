#!/bin/python3

'''
Author: FunctionSir
License: AGPLv3
Date: 2024-08-10 23:52:50
LastEditTime: 2024-09-02 23:05:44
LastEditors: FunctionSir
Description: -
FilePath: /PanDefenseProject/pdp_tool/csv2ini.py
'''

import sys
import pandas

print("PanDefenseProject 工具 (CSV2INI) [Version: 0.0.1]")
path_csv = ""
path_ini = ""
ver = ""
last_edit = ""
if len(sys.argv) > 1:
    print("提供了命令行参数, 进入非交互模式.")
    path_csv = sys.argv[1]
    path_ini = sys.argv[2]
    ver = sys.argv[3]
    last_edit = sys.argv[4]
else:
    path_csv = input("输入CSV的路径: ")
    path_ini = input("输入INI的路径(注意: 若文件存在, 则会被覆盖!): ")
    ver = input("输入版本号: ")
    last_edit = input("输入最后编辑: ")

data = pandas.read_csv(path_csv, dtype=str)

to_write = "[General]\nVer = "+ver+"\n"+"LastEdit = "+last_edit+"\n\n"

for i, row in data.iterrows():
    to_write += "["+row["#"].strip()+"]\n"
    to_write += "Names = "+row["名称"].strip()+"\n"
    to_write += "Sites = "+row["相关网页"].strip()+"\n"
    to_write += "Locations = " + row["地理位置"].strip()+"\n"
    to_write += "Sources = " + row["来源"].strip()+"\n"
    to_write += "Persecution = " + row["存在虐待"].strip()+"\n"
    to_write += "Evidences = " + row["相关证据"].strip()+"\n"
    to_write += "Scale = " + row["估计规模"].strip()+"\n"
    to_write += "Checked = " + row["已审核"].strip()+"\n"
    to_write += "\n"

special = [("TRUE", "true"), ("FALSE", "false"), ("UNKNOWN", "unknown"),
           ("NONE", "none"), ("PENDING", "pending")]

for s in special:
    to_write = to_write.replace(" = "+s[0]+"\n", " = "+s[1]+"\n")

to_write = to_write[:-2]

with open(path_ini, 'w') as f:
    f.write(to_write)

print("成功.")
