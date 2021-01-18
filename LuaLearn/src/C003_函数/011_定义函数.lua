---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/1/18 15:28
---
--[[
定义函数
    函数的定义格式如下:
        function funName(param1,param2,...)
            [函数体]
        end
    lua函数基本性质:
        1、函数无需定义返回类型，可以返回任意类型与任意数量的数值。
        2、函数的参数，无需定义参数类型
        3、函数无需大括号。
        4、可以定义变量，把函数直接赋值给它，从而获得相同功能。
    注意：函数中由于我们的函数参数没有类型，所以在没有(编译）运行前，计算机是无法发现错误，这在C#/Java等编译型语言中，是一个明显弱点
]]
--定义一个最简单的函数
function funName(num1, num2)
    print("我是一个函数")
end
--调用函数
funName()
funName(1)
funName(1,2)

-- 定义一个含有返回值的函数
print("定义一个含有返回值的函数")
function fun2(num1,num2)
    return num1 + num2
end
resultFun2 = fun2(100,200)
print("fun2 返回值 resultFun2="..resultFun2)

-- resultFun2_1 = fun2("同学们","大家好")-- 报错 attempt to perform arithmetic on local 'num1' (a string value)