include ("shared.lua")

function ENT:Draw()
    self:DrawModel()
    AddWorldTip( self:EntIndex(), "Interact with this activity to gain speed.", 0.5, self:GetPos(), self)
end
