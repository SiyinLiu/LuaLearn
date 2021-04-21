---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by siyin.liu.
--- DateTime: 2021/4/21 21:45
---
--[[
生产者消费者经典案例：

]]
--具体产生一个累加数值的迭代函数
function GetNumber()
    local num = 0
    return function()
        num = num + 1
        return num
    end
end
local getNum = GetNumber()              --得到一个返回函数
print("getNum type",type(getNum))
--生产者程序
cor_Producer = coroutine.create(
        function()
            while(true) do
                local num = getNum()    --得到一个迭代器函数返回的具体数值
                print("生产的数据=",num)
                coroutine.yield(num)    --num 就是迭代器生成的一个累加数值，返回到调用此协同程序的地方
            end
        end
)
--接收者程序
function  Receive()
    --启动协同程序
    local status,value = coroutine.resume(cor_Producer)
    return value
end

--消费者程序
--printNum 表示打印输出的数量
function Consumer(printNum)
    for i = 1, printNum do
        local  receiveValue = Receive()
        print("消费数据=",receiveValue)
    end
end
Consumer(10)
