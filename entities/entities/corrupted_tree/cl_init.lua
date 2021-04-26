include ("shared.lua")

function ENT:Draw()
    self:DrawModel()
    AddWorldTip( self:EntIndex(), "Destroy to gain karma.", 0.5, self:GetPos(), self)
end
