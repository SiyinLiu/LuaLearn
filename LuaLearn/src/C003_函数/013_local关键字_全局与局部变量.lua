---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/1/18 16:26
---
--[[
lua语言规定：
    变量默认都是全局变量，无论是否定义在语句块中
    使用local关键字定义局部变量
函数中全局与局部变量
    lua中定义的变量默认是全局变量，且在函数内部定义的变量也默认是全局变量
    函数中定义的全局变量，在函数外部照样可以访问。
    函数可以声明为全局的与局部的，默认是全局的。
        eg：
            local function LocFunc()
]]
function fun4()
    print("function 4")
    num1 = 10 -- 全局变量 lua语言规定：变量默认都是全局变量，无论是否定义在语句块中
    local num2 = 20 -- 使用local关键字定义局部变量
    function fun6()
        print("function 6")
    end
    local function fun7()
        print("function 7")
    end
end
-- 调用fun4
fun4()
fun6()
--fun7() --报错 attempt to call global 'fun7' (a nil value)
--测试全局/局部变量
print("num1="..num1) -- num1输出10表示num1是全局变量
-- print("num2="..num2) --报错 无法输出
local function fun5()
    print("function 5")
end
fun5()