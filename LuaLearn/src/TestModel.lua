---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by admin.
--- DateTime: 2021/3/22 17:15
---

local TestModel = {}
TestModel.height = 170
TestModel.width = 100

TestModel.SetHeight = function(height)
    TestModel.height = height;
    print("height", TestModel.height)
end

TestModel.SetWidth = function(width)
    TestModel.width = width
    print("width",TestModel.width)
end
function TestModel.ToString()
    print("height:"..TestModel.height..",width:"..TestModel.width)
end
return TestModel