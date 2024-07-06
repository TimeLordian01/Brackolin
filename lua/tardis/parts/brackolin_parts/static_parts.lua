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

print("RoundelSet2Loading")

local PART={}
PART.ID = "roundelset2"
PART.Name = "roundelset2"
PART.Model = "models/ValeyardStudios/Brackint/roundelset2.mdl"
PART.AutoSetup = true
PART.Collision = true

TARDIS:AddPart(PART)

print("RoundelSet2Loaded")

print("PillarsLoading")

local PART={}
PART.ID = "pillars"
PART.Name = "pillars"
PART.Model = "models/ValeyardStudios/Brackint/pillars.mdl"
PART.AutoSetup = true
PART.Collision = true

TARDIS:AddPart(PART)

print("PillarsLoaded")

print("ManualFlightLoading")

local PART={}
PART.ID = "manualflight"
PART.Name = "manualflight"
PART.Model = "models/ValeyardStudios/Brackint/controls/ManualFlight.mdl"
PART.AutoSetup = true
PART.Collision = true

TARDIS:AddPart(PART)

print("ManualFlightLoaded")

print("FloorLoading")

local PART={}
PART.ID = "floor"
PART.Name = "floor"
PART.Model = "models/ValeyardStudios/Brackint/Floor.mdl"
PART.AutoSetup = true
PART.Collision = true

TARDIS:AddPart(PART)

print("FloorLoaded")