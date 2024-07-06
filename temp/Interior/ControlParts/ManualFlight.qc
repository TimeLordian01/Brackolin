$Scale 41

$ModelName "ValeyardStudios\Brackint\controls\ManualFlight.mdl"

$BodyGroup "Base"
{
    studio "ManualFlightBase.smd"
}
$BodyGroup "Hand"
{
    studio "LeftHanded.smd"
    studio "RightHanded.smd"
}

$CDMaterials "valeyardstudios/brackolin/interior/controls"

$SurfaceProp "metal"

$Contents "solid"

$CBox 0 0 0 0 0 0

$bbox -39.267 -45.303 -10.767 39.267 45.303 45.835

$CollisionModel "ManualFlightCollider.smd"
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
