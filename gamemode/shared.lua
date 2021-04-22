GM.Name = "Animals"
GM.Autho = "Best390Group"
GM.Email = "N?A"
GM.Website = "NA"

DeriveGamemode("sandbox")
AddCSLuaFile("player_class/Animal.lua")
include("player_class/Animal.lua")

AddCSLuaFile("player_class/FelineAnimal.lua")
include("player_class/FelineAnimal.lua")

AddCSLuaFile("player_class/FlyingAnimal.lua")
include("player_class/FlyingAnimal.lua")

function GM:Initialize()

end