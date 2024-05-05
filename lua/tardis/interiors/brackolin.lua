local T={}
	--Basically stays the same
	T.Base ="base"
	--The Name shown in the monitor and gui
	T.Name ="The Brackolin"
	--Distinct ID of THIS interior
	T.ID ="brackolin"

--For multiple versions
T.Versions = {
	randomize = false,
	allow_custom = true,
	randomize_custom = true,

	main = {
			id = "brackolin",
	},
	other = {},
}

--Basic Interior Class
T.Interior = {
	--The Main model used to spawn the interior (Best to make this your main collider)
	Model="models/valeyardstudios/brackolin/brackolinshell.mdl",
	--Interior Portal Location
	Portal = {
	-- Generated by portals debug tool
	pos = Vector(0, 0, 0),
	ang = Angle(-0, 90, 0),
	width = 54.811291894596,
	height = 85,
	thickness = -5,
	inverted = 1,
},
	--Interior Fallback Teleport Location
	Fallback={
		pos=Vector(0, -250, 10),
		ang=Angle(0,0,0)
	},

	ExitDistance=2800,
	--The Main Light inside
	Light={
		color=Color(0,150,150),
		warncolor=Color(255, 25, 25),
		pos=Vector(0, 0, 50),
		brightness=0.5
	},
	--Where any screens are positioned
	Screens = {
        {
            pos = Vector(-6.25, -18, 52),
            ang = Angle(0, 0, 50),
            width = 210,
            height = 200,
            visgui_rows = 2,
            power_off_black = true
        }
    },
    --Any Interior Lamps go here
	Lights= {
		{
			color = Color(0,150,150),
			warncolor=Color(255, 25, 25),
			fov = 175,
			distance = 100,
			brightness = 0.05,
			pos = Vector(0, 0, 150),
			ang = Angle(90, 0, 0),
		},
		{
			color = Color(0, 25, 50),
			pos = Vector(0, 100, 100),
			brightness = 1,
			nopower = false,
			warncolor = Color(255, 0, 0),
		},
		{
			color = Color(0, 25, 50),
			pos = Vector(100, 0, 100),
			brightness = 1,
			nopower = false,
			warncolor = Color(255, 0, 0),
		},
		{
			color = Color(0, 25, 50),
			pos = Vector(-100, 0, 100),
			brightness = 1,
			nopower = false,
			warncolor = Color(255, 0, 0),
		},
		{
			color = Color(0, 25, 50),
			pos = Vector(0, -100, 100),
			brightness = 1,
			nopower = false,
			warncolor = Color(255, 0, 0),
		},
	},
	LightOverride = {
		basebrightness = 1,
		nopowerbrightness = 0.1
	},
	--Interior Sounds
	Sounds={
		Teleport={
			demat="flight/demat.wav",
			mat="flight/mat.wav",
		},
		FlightLoop="flight/interior_flight.wav"
	},
	IdleSound={
		{
			path="normal/hum.wav",
			volume=1
		}
	},

	Sequences = "default_sequences",
	--Part Classification
	Parts={
		roundelinteriordoors = {ang=Angle(0,-90,0)},
		console=false,
		--InteriorDoor Model and Location
		door={
			model="models/valeyardstudios/brackolin/InteriorDoors.mdl",
			posoffset = Vector(405.75, 0, -37.3),
			angoffset= Angle(0, 180, 0)
		},
	},
	
	--Control Parts
	Controls={
	},
	--Part tips
	PartTips = {
		--power_toggle = { pos = Vector(0,-33,100), },
	},
}


--The exterior that this interior uses (Basically the same as the exterior file)
T.Exterior={
	Model="models/valeyardstudios/brackolin/brackolinshell.mdl",
	Mass=2900,
Portal = {
	-- Generated by portals debug tool
	pos = Vector(27.778673171997, 0, 47.134754180908),
	ang = Angle(4.1688172358612e-10, 0, 0),
	width = 45,
	height = 82.859959776993,
	thickness = 22,
	inverted = true,
},
	--Exterior Fallback Teleport Location
	Fallback={
		pos=Vector(55,0,5),
		ang=Angle(0,0,0)
	},
	--Exterior Light
	Light={
		enabled=true,
		pos=Vector(0, 0, 110),
		color=Color(155,155,155)
	},
	--Exterior Sounds
	Sounds={
		Teleport={
			demat="flight/demat.wav",
			mat="flight/mat.wav",
		},
		FlightLoop="flight/interior_flight.wav"
	},
	--Exterior Breakdown Effects
	BreakdownEffectPos = Vector(0,0,0),
Parts={
	vortex = {
			model = "models/valeyardstudios/vortex/vortex.mdl",
		},
	door={
		model="models/valeyardstudios/brackolin/brackolindoors.mdl",
		posoffset=Vector(-27.778673171997, 0, -47.134754180908),
		angoffset = Angle(0,0,0)
	},

},
Teleport={
		SequenceSpeed=0.75,
		SequenceSpeedFast=1,
		DematSequenceDelays={
			[2] = 1
			},
		DematSequence={
			150,
			250,
			100,
			150,
			75,
			100,
			50,
			75,
			0
		},
		MatSequence={
			75,
			50,
			100,
			75,
			150,
			100,
			250,
			150,
			255
		    }
      }
}

--Any Texture sets used in the interior
T.Interior.TextureSets = {
	["normal"] = {
		prefix = "valeyardstudios/int/",
				{"test", 0, "test"},
			},
	["poweroff"] = {
		prefix = "valeyardstudios/int/off/",
				{"test", 0, "test"},
	},
	["warning"] = {
		prefix = "valeyardstudios/int/warning/",
				{"test", 0, "test"},
	},
}

local TEXTURE_UPDATE_DATA_IDS = {
	["power-state"] = true,
	["health-warning"] = true,
	["teleport"] = true,
	["vortex"] = true,
}

--Custom Code
T.CustomHooks = {
	--Changes textures based on current TARDIS States
	travel_textures = {
		exthooks = {
			["DataChanged"] = true,
		},
		func = function(ext, int, data_id, data_value)
			if not TEXTURE_UPDATE_DATA_IDS[data_id] then return end

			local power = ext:GetData("power-state")
			local warning = ext:GetData("health-warning")
			local teleport = ext:GetData("teleport")
			local vortex = ext:GetData("vortex")

			if not power then
				int:ApplyTextureSet("poweroff")
			else
				if flight or teleport or vortex then
					int:ApplyTextureSet(warning and "warning" or "normal")
				else
					int:ApplyTextureSet(warning and "warning" or "normal")
				end
			end
		end,
	},
	--syncs interior and exterior door models/materials
	door_bodygroup_sync_ext = {
        exthooks = { ["PartBodygroupChanged"] = true, },
        inthooks = { ["PartBodygroupChanged"] = true, },
        func = function(ext,int,part,bodygroup,value)
            if not IsValid(int) then return end
            if not IsValid(part) or part.ID ~= "door" then return end

            local door_int = int:GetPart("door")
            local door_ext = ext:GetPart("door")

            if not IsValid(door_int) or not IsValid(door_ext) then return end

            if part.ExteriorPart and door_int:GetBodygroup(bodygroup) ~= value then
                door_int:SetBodygroup(bodygroup, value)
            end

            if part.InteriorPart and door_ext:GetBodygroup(bodygroup) ~= value then
                door_ext:SetBodygroup(bodygroup, value)
            end

        end,
    },
}

TARDIS:AddInterior(T)