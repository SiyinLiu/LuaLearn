---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/1/19 11:13
---
--[[
字符串常用函数
字符串的常用操作
    1、字符串长度len()、大小写函数 upper()、lower()
    2、查找函数 find() 返回第一个符合条件的下标 字符串的下标是从1开始的
    3、截取函数 sub()
    4、字符串替换函数gsub()
    5、字符串反转 reverse()
    6、格式化字符串 format()
]]
-- 字符串常用函数
str1 = "luaC#Jaua"
str2 = "SQLServerOracle"
print("======字符串长度=======")
print(#str1)
print(string.len(str1))
--字符串大小写转换
print("===========字符串大小写转换=========")
print("str1全部大写输出:"..string.upper(str1))
print("str2全部小写输出:"..string.lower(str2))
print("==========字符串查找==============")
findPos,findNum,findStr = string.find(str1,"ua") --返回第一个符合条件的下标 str1是被搜索的字符串 a 表示搜索关键字 注意：字符串的下标是从1开始的
findPos2,findNum1,findStr2 = string.find(str1,"ua",5) -- "5" 表示从字符串下标为5的位置开始搜索。
print("字符串查找 findPos:"..findPos..",findNum:"..findNum..",findStr:",findStr)
print("从下标5开始搜索="..findPos2..",findNum1:"..findNum1..",findStr2:",findStr2)
print("==========字符串截取=============")
substr1 =string.sub("Hello world",1,3) --从下标1开始截取截取到下标3，是闭合的
print("截取字符串 substr1="..substr1)
substr2 = string.sub("同学门Hello,大家好!",4,9)
print("截取字符串 substr2="..substr2)
print("===========字符串替换=============")
gsubstr1,gsubstr1Num = string.gsub("Hello World","l","z")
print("字符串替换 gsubstr1="..gsubstr1..",gsubstr1Num:"..gsubstr1Num)
print("============字符串反转================")
reverseStr = string.reverse("Hello World")
print("字符串反转 reverseStr="..reverseStr)
print("============格式化字符串==============")
-- 传统输出多个变量的长字符串，使用"拼接"的方式
num1,num2,num3 = 10,20,30
print("输出3个变量拼接的结果")
print("加法: num1:"..num1.." num2:"..num2.." num3:"..num3.."  result="..num1+num2+num3)
--再举例
print("select * from tableName where id=?") -- SQL语句，查询数据库用的
print("为了解决长字符串中添加多个变量的问题，为了简化写法，lua提供了\"字符串格式化\"函数")
-- %d 表示一个数值变量
-- %s 表示一个字符串
strFormatResult = string.format("使用字符串格式化 num1:%d num2: %d num3: %d,  result %d",num1,num2,num3,num1+num2+num3)
print(strFormatResult)