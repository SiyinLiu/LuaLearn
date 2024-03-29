---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/2/18 9:47
---
--[[
定义表的”字段“与”方法“
    使用”表名.field“形式，定义表的字段。
    使用”表名.methodName()”形式，定义表的方法。
    使用表的第二种方式，匿名方法赋值给表字段。
调用表中字段与方法
    表中字段的调用方式
    表中方法的调用方式
表对象self关键字的作用
    方法中直接引用表字段。
    方法中直接引用表字段的缺陷。
    定义局部表引用变量，提高方法引用表字段的耦合性。
    使用self关键字，直接在方法中引用表自身字段。
]]--
--定义空表，相当于是一个(OOP编程中的)"类"
Person = {}
--定义"字段"
Person.Name = "小明"
Person.Gender = "男"
Person.Weight = 175
Person.Height = 150
--定义方法
Person.Speak = function() --第一中定义方式“匿名函数”
    print("人在说话")
end
function Person.Walking() --第二种定义方式(常用)
    print("人在走路")
end
print("=========输出个人信息(函数中调用函数)===========")
-- 输出个人信息(函数中调用函数)
function Person.ShowInfo()
    print("调用我的个人信息")
    print("身高："..Person.Height)
    print("体重："..Person.Weight)
    Person.Speak()
    Person.Walking()
end
print("=========调用“字段”与“方法”===========")
--调用“字段”与“方法”
print(Person.Name)
print(Person.Gender)
print(Person.Weight)
print(Person.Height)
print("=========调用“方法”===========")
--调用“方法”
Person.Speak()
Person.Walking()
Person.ShowInfo()
print("=========演示函数中如何提高灵活性问题===========")
--演示函数中如何提高灵活性问题。
a = Person
Person = nil
a.ShowInfo() --如果Person销毁,则a对象无法调用函数