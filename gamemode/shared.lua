GM.Name = "Animals"
GM.Autho = "Best390Group"
GM.Email = "N?A"
GM.Website = "NA"

DeriveGamemode("sandbox")
AddCSLuaFile("player_class/Animal.lua")
include("player_class/Animal.lua")

AddCSLuaFile("player_class/FelineAnimal.lua")
include("player_class/FelineAnimal.lua")


function GM:Initialize()

end