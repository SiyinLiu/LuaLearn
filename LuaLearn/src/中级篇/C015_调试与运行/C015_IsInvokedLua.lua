---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/5/8 10:04
---
--[[
    本脚本是测试被调用脚本
]]
print("本脚本是测试用，被调用脚本")
num1 = 88
local num2 = 20
--全局函数
function ShowInfo()
    print("测试脚本/ShowInfo()/此方法被调用")
end
--局部函数
local function ShowInfoByLocal()
    print("测试脚本/ShowInfoByLocal()/此方法被调用")
end
