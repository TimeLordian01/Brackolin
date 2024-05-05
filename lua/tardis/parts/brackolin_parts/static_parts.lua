print("test")

local PART={}
PART.ID = "interiordoorframe"
PART.Name = "interiordoorframe"
PART.Model = "models/valeyardStudios/brackolin/InteriorDoorFrame.mdl"
PART.AutoSetup = true
PART.Collision = true

TARDIS:AddPart(PART)

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