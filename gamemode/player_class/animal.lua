Account = { balance=0,
            withdraw = function (self, v)
                            self.balance = self.balance - v
                        end,
            neat = 13
            }

function Account:deposit (v)
    self.balance = self.balance + v
end

function Account:new (o)
    o = o or {}   -- create object if user does not provide one
    setmetatable(o, self)
    self.__index = self
    return o
end


Animal = {
    walkSpeed = 100,
    runSpeed = 1000
}

function Animal:new (o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

baseAnimal = Animal:new()
print(baseAnimal.walkSpeed)
print(baseAnimal.runSpeed)
