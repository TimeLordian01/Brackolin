$Scale 41

$ModelName "ValeyardStudios\Brackint\RoundelDoorEntrance.mdl"

$BodyGroup "RoundelDoorRight"
{
    studio "RoundelDoorRight.smd"
}
$BodyGroup "RoundelDoorLeft"
{
    studio "RoundelDoorLeft.smd"
}
$BodyGroup "RoundelDoorFrame"
{
    studio "RoundelDoorFrame.smd"
}


$CDMaterials "valeyardstudios/brackolin/interior/roundels"

$SurfaceProp "wood"

$Contents "solid"

$CBox 0 0 0 0 0 0

$bbox -39.267 -45.303 -10.767 39.267 45.303 45.835

$CollisionModel "RoundelDoorCollider.smd"
{
    $mass 2000
    $inertia 1
    $damping 0
    $rotdamping 0
    $concave
}

$sequence "idle" "anims\FirstRoundelDoorIdle.smd" {
    fps 30
}

$animation "neutral" "anims\FirstRoundelDoorIdle.smd" {
    fps 30
}

$weightlist "switch" {
      "RootDouble" 1
      "LeftDouble" 1
      "RightDouble" 1
}

$animation 1 "anims\FirstRoundelDoorOpen.smd" frame 0 0 subtract neutral 0 weightlist switch
$animation 2 "anims\FirstRoundelDoorOpen.smd" frame 1 1 subtract neutral 0 weightlist switch
$animation 3 "anims\FirstRoundelDoorOpen.smd" frame 2 2 subtract neutral 0 weightlist switch
$animation 4 "anims\FirstRoundelDoorOpen.smd" frame 3 3 subtract neutral 0 weightlist switch
$animation 5 "anims\FirstRoundelDoorOpen.smd" frame 4 4 subtract neutral 0 weightlist switch
$animation 6 "anims\FirstRoundelDoorOpen.smd" frame 5 5 subtract neutral 0 weightlist switch
$animation 7 "anims\FirstRoundelDoorOpen.smd" frame 6 6 subtract neutral 0 weightlist switch
$animation 8 "anims\FirstRoundelDoorOpen.smd" frame 7 7 subtract neutral 0 weightlist switch
$animation 9 "anims\FirstRoundelDoorOpen.smd" frame 8 8 subtract neutral 0 weightlist switch
$animation 10 "anims\FirstRoundelDoorOpen.smd" frame 9 9 subtract neutral 0 weightlist switch

$sequence switch { 1 2 3 4 5 6 7 8 9 10 blendwidth 10 blend switch 0 1 weightlist switch delta autoplay }

$texturegroup skinfamilies
{
    {"Roundel"}
    {"Roundel_R"}
    {"Roundel_G"}
    {"Roundel_B"}
    {"Roundel_U"}
}