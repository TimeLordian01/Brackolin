$Scale 41

$ModelName "ValeyardStudios\Brackint\RoundelSet2.mdl"

$BodyGroup "RoundelSet2"
{
    studio "RoundellSet2.smd"
}



$CDMaterials "valeyardstudios/brackolin/interior/roundels"

$SurfaceProp "wood"

$Contents "solid"

$CBox 0 0 0 0 0 0

$bbox -39.267 -45.303 -10.767 39.267 45.303 45.835

$CollisionModel "MainRoomCollider.smd"
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

$texturegroup skinfamilies
{
    {"Roundel"}
    {"Roundel_R"}
    {"Roundel_G"}
    {"Roundel_B"}
    {"Roundel_U"}
}