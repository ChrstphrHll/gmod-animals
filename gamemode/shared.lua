GM.Name = "Animals"
GM.Autho = "Best390Group"
GM.Email = "N?A"
GM.Website = "NA"

DeriveGamemode("sandbox")
-- AddCSLuaFile("player_class/Animal.lua")
-- include("player_class/Animal.lua")

-- AddCSLuaFile("player_class/FelineAnimal.lua")
-- include("player_class/FelineAnimal.lua")

AddCSLuaFile("player_class/Modifiers.lua")
include("player_class/Modifiers.lua")

-- AddCSLuaFile("player_class/Plant.lua")
-- include("player_class/Plant.lua")

-- TODO: an error exists rn where only the flying animals show up but not the feline animals
-- commenting out these two lines fixes it, so i'm guessing some conflict/overriding issue is occurring
-- between the two files and the ImplementedAnimals table?
-- AddCSLuaFile("player_class/FlyingAnimal.lua")
-- include("player_class/FlyingAnimal.lua")

function GM:Initialize()

end