print("RoundelDoorLoading")

local PART={}
PART.ID = "roundelinteriordoors"
PART.Name = "roundelinteriordoors"
PART.Model = "models/ValeyardStudios/Brackint/RoundelDoorEntrance.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 1

if SERVER then
	function PART:Use(activator)
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

print("RoundelDoorLoaded")

print("RoundelSet1Loading")

local PART={}
PART.ID = "roundelset1"
PART.Name = "roundelset1"
PART.Model = "models/ValeyardStudios/Brackint/roundelset1.mdl"
PART.AutoSetup = true
PART.Collision = true

TARDIS:AddPart(PART)

print("RoundelSet1Loaded")