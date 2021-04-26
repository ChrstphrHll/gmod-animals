include ("shared.lua")

function ENT:Draw()
    self:DrawModel()
    AddWorldTip( self:EntIndex(), "Interact to permanently increase current animal's lifespan", 0.5, self:GetPos(), self)
end
