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
PART.Name = "Brackolin Roundel Entry Doors"
PART.Model = "models/valeyardstudios/brackint/roundeldoorentrance.mdl"
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