#!/bin/python3

'''
Author: FunctionSir
License: AGPLv3
Date: 2024-09-02 22:02:33
LastEditTime: 2024-09-07 23:52:08
LastEditors: FunctionSir
Description: -
FilePath: /PanDefenseProject/pdp_tool/db2legacy.py
'''

import os
import subprocess

### SQLITE CONFIG ###
SQLITE_BIN = "/usr/bin/sqlite3"

### LEGACY PDP TOOL CONFIG ###
LEGACY_PDP_TOOL = "./pdp_tool_legacy"
LEGACY_CSV2INI = "/usr/bin/python3 csv2ini.py"

### VER CONFIG ###
VER = "1.8.1"
LAST_EDIT = "2025-02-10"

### FILES CONFIG ###
PDP_DB = "../pdp.db"
INSTITUTE_LIST_CONF = "../institute_list.conf"
INSTITUTE_LIST_CSV = "../institute_list.csv"
INSTITUTE_LIST_JSON = "../institute_list.json"
RELATED_ARTICLES_TSV = "../related_articles.tsv"

### SEPARATOR CONFIG ###
TO_COMMA = "-!!!C!!!-"
TO_TAB = "-!!!T!!!-"

### SQL CONFIG ###
# IL: Institute List.
EXP_IL = [SQLITE_BIN, PDP_DB, ".separator "+TO_COMMA,
          "SELECT * FROM INSTITUTE_LIST"]
# RA: Related Articles.
EXP_RA = [SQLITE_BIN, PDP_DB, ".separator "+TO_TAB,
          "SELECT * FROM RELATED_ARTICLES"]

print("!!! 警告: 请务必在仔细检查此文件的内容, 并确保其适合实际情况后再使用 !!!")
print("!!! 警告: 有些文件将被覆盖 !!!")
print("!!! 警告: 这是最后的退出本程序的机会 !!!")
_ = input("按下回车继续(1/3)...")
_ = input("按下回车继续(2/3)...")
_ = input("按下回车继续(3/3)...")

print("Exporting institute list...")
out_lines = subprocess.check_output(EXP_IL).decode('utf-8').split('\n')[:-1]
for i in range(0, len(out_lines)):
    out_lines[i] = str(i+1)+out_lines[i][8:]
    out_lines[i] = out_lines[i].replace(TO_COMMA, ",")
    out_lines[i] = out_lines[i]+'\n'
out_lines[len(out_lines)-1] = out_lines[len(out_lines)-1][:-1]

print("Writing to file...")
with open(INSTITUTE_LIST_CSV, "w") as f:
    f.writelines(['#,名称,相关网页,地理位置,来源,存在虐待,相关证据,估计规模,已审核\n']+out_lines)

print("Exporting related articles...")
out_lines = subprocess.check_output(EXP_RA).decode('utf-8').split('\n')[:-1]
for i in range(0, len(out_lines)):
    out_lines[i] = out_lines[i][8+len(TO_TAB):]
    out_lines[i] = out_lines[i].replace(TO_TAB, "\t")
    out_lines[i] = out_lines[i]+'\n'
out_lines[len(out_lines)-1] = out_lines[len(out_lines)-1][:-1]

print("Writing to file...")
with open(RELATED_ARTICLES_TSV, "w") as f:
    f.writelines(['title	original	archive\n']+out_lines)

print("Exec the legacy PDP Tool to gen some files...")
print("================")
os.system(LEGACY_CSV2INI+" '"+INSTITUTE_LIST_CSV+"' '" +
          INSTITUTE_LIST_CONF+"' '"+VER+"' '"+LAST_EDIT+"'")
print("================")
os.system(LEGACY_PDP_TOOL+" '"+INSTITUTE_LIST_CONF +
          "' '"+INSTITUTE_LIST_JSON+"'")
print("================")
print("All done!")
