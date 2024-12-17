$Scale 41

$ModelName "ValeyardStudios\Brackolin\InteriorDoors.mdl"

$BodyGroup "Double Door"
{
    studio "IntRight.smd"
}
$BodyGroup "Single Door"
{
    studio "IntLeft.smd"
    studio "IntLeftStatic.smd"
}

$CDMaterials "valeyardstudios/brackolin"

$SurfaceProp "wood"

$Contents "solid"

$CBox 0 0 0 0 0 0

$bbox -39.267 -45.303 -10.767 39.267 45.303 45.835

$CollisionModel "DoorCollider.smd"
{
    $mass 2000
    $inertia 1
    $damping 0
    $rotdamping 0
    $concave
}

$sequence "idle" "anims\idle.smd" {
    fps 30
}

$animation "neutral" "anims\idle.smd" {
    fps 30
}

$weightlist "switch" {
      "Root" 1
      "RDoor" 1
      "LDoor" 1
}

$animation 1 "anims\DoorOpen.smd" frame 0 0 subtract neutral 0 weightlist switch
$animation 2 "anims\DoorOpen.smd" frame 1 1 subtract neutral 0 weightlist switch
$animation 3 "anims\DoorOpen.smd" frame 2 2 subtract neutral 0 weightlist switch
$animation 4 "anims\DoorOpen.smd" frame 3 3 subtract neutral 0 weightlist switch

$sequence switch { 1 2 3 4 blendwidth 4 blend switch 0 1 weightlist switch delta autoplay }

$texturegroup skinfamilies
{
    {"WindowsLamp"}
    {"WindowsLamp_B"}
    {"WindowsLamp_O"}
    {"WindowsLamp_R"}
}