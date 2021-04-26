include ("shared.lua")

function ENT:Draw()
    self:DrawModel()
    AddWorldTip( self:EntIndex(), "Change ability to an auto-respawn.", 0.5, self:GetPos(), self)
end
