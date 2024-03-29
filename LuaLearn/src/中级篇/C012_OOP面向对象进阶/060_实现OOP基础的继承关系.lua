---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/4/19 15:50
---
--[[
使用元方法"__index"实现继承OOP机制
]]
Person = {}
--定义字段
Person.Name = "唐三"
Person.Gender = "男"
Person.Address = "北京"
--定义方法
function Person:PersonInfo()
    print(string.format("人员信息  姓名: %s 性别:%s",self.Name,self.Gender))
end
--定义子类,实现基础的OOP继承的机制
local YeWenJie = {}
--设置"子类"的属性与方法
YeWenJie.Name = "叶文洁"
YeWenJie.Gender = "女"
function YeWenJie:Speak()
    print(self.Name.." 说话方法")
end
--设置元表(元方法)
--Person.__index = Person
--setmetatable(YeWenJie,Person)
setmetatable(YeWenJie,{__index = Person})
print(YeWenJie.Address) --继承关系
YeWenJie:PersonInfo()   --继承关系
YeWenJie:Speak()
print(YeWenJie.Name)
YeWenJie.Age = "18"

print(YeWenJie.Age)