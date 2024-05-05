$Scale 41

$ModelName "ValeyardStudios\BrackInt\MainRoom.mdl"

$BodyGroup "MainRoom"
{
    studio "MainRoom.smd"
}

$CDMaterials "valeyardstudios/BrackInt"

$SurfaceProp "wood"

$Contents "solid"

$CBox 0 0 0 0 0 0

$bbox -39.267 -45.303 -10.767 39.267 45.303 45.835

$CollisionModel "MainRoomCollider.smd"
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
