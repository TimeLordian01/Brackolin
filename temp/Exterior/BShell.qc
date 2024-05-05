$Scale 41

$ModelName "ValeyardStudios\Brackolin\BrackolinShell.mdl"

$BodyGroup "Shell"
{
    studio "Shell.smd"
}

$CDMaterials "valeyardstudios/brackolin"

$SurfaceProp "wood"

$Contents "solid"

$CBox 0 0 0 0 0 0

$bbox -39.267 -45.303 -10.767 39.267 45.303 45.835

$CollisionModel "ShellCollider.smd"
{
    $mass 1000
    $inertia 1
    $damping 0
    $rotdamping 0
    $concave
}

$sequence "idle" "anims\idle.smd" {
    fps 30
}

$texturegroup skinfamilies
{
    {"WindowsLamp"}
    {"WindowsLamp_B"}
    {"WindowsLamp_O"}
    {"WindowsLamp_R"}
}