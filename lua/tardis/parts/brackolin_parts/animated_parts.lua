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


print("ScreenLoading")

local PART={}
PART.ID = "screen"
PART.Name = "screen"
PART.Model = "models/ValeyardStudios/Brackint/brackscreen.mdl"
PART.AutoSetup = true
PART.Collision = true

TARDIS:AddPart(PART)

print("ScreenLoaded")


