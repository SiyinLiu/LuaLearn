---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by siyin.liu.
--- DateTime: 2021/4/20 21:55
---
--[[
]]
--使用wrap定义协同（使用场合较少）
--本定义方式不能显示协同的当前状态
cor3 = coroutine.wrap(
        function(inputInfo)
                print("使用wrap函数定义协同程序，输入参数：",inputInfo)
            end
)
--测试只想
print("返回的类型:",type(cor3))              --output  返回类型： function
cor3("hello")                               --参数可以不传
--print("当前协同状态：",coroutine.status(cor3)) --报错