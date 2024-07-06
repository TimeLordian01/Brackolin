$Scale 41

$ModelName "ValeyardStudios\Brackint\Pillars.mdl"

$BodyGroup "Pillars"
{
    studio "Pillars.smd"
}

$CDMaterials "valeyardstudios/brackolin/interior/roundels"

$SurfaceProp "wood"

$Contents "solid"

$CBox 0 0 0 0 0 0

$bbox -39.267 -45.303 -10.767 39.267 45.303 45.835

$CollisionModel "INTCOLLIDER.smd"
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
