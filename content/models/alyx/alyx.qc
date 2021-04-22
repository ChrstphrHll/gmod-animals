$modelname player/alyx.mdl
$cdmaterials models/alyx

$ambientboost // please always include this into your player models and arm models
$eyeposition 0 0 65 // shouldn't be important

$attachment "eyes" "ValveBiped.Bip01_Head1" 0.0065 -2.9331 65.2068 absolute
$attachment "lefteye" "ValveBiped.Bip01_Head1"  1.3 -2.93 65.2 absolute
$attachment "righteye" "ValveBiped.Bip01_Head1"  -1.31 -2.93 65.2 absolute
$attachment "nose" "ValveBiped.Bip01_Head1" 1.70 -5.3 0.00 rotate 0 -80 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.20 -4.90 0.00 rotate 0 -80 -90
$attachment "amulet" "ValveBiped.Bip01_Spine4"  0.30 5.00 0.00 rotate 0 90 90
$attachment "chest" "ValveBiped.Bip01_Spine4" -4.00 4.00 0.00 rotate 0 83 90
$attachment "hips" "ValveBiped.Bip01_Pelvis" -0.00 0.00 -0.00 rotate -90 -90 0
$attachment "lefthand" "ValveBiped.Bip01_L_Hand" 3.50 -0.50 0.00 rotate -0 -0 0
$attachment "righthand" "ValveBiped.Bip01_R_Hand" 3.50 -0.50 0.00 rotate 0 0 0
$attachment "pouch1" "ValveBiped.Bip01_Pelvis" 5.50 1.00 2.00 rotate -90 -90 0
$attachment "pouch2" "ValveBiped.Bip01_Pelvis" 6.50 0.50 -2.00 rotate -90 -90 0
$attachment "physgun_attachment" "valvebiped.physgun_attachment" 0 0 0 rotate -90 0 -90
$attachment "emp" "ValveBiped.Anim_Attachment_RH" 0.00 0.00 5.00 rotate -90 0 -90
$attachment "emp_LH" "ValveBiped.Anim_Attachment_LH" 0.00 0.00 5.00 rotate -90 0 -90
$attachment "Emp_Holster" "ValveBiped.Emp_Holster_Attachment" 0 0 0 rotate -90 0 -90
//$attachment "gun" "valvebiped.weapon_bone" 0 0 0
$attachment	"R_shoulderBladeAim" "ValveBiped.Bip01_Spine"	2.621	-2.0003	-3.2233	rotate	0.0000	0.0000	0.0000
$attachment	"L_shoulderBladeAim" "ValveBiped.Bip01_Spine"	2.621	-2.0003	3.1509	rotate	0.0000	0.0000	0.0000

$model alyx "alyx_reference.smd"{

	eyeball righteye "ValveBiped.Bip01_Head1" -1.3003 -2.9331 65.202 "eyeball_r" 1 4 "pupil_r" 0.682
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.3133 -2.9331 65.2117 "eyeball_l" 1 -4 "pupil_l" 0.682

	eyelid  upper_right "alyx_expressions-2-5" lowerer 1 -0.2347 neutral 0 0.1514 raiser 2 0.2382 split 0.1 eyeball righteye
	eyelid  lower_right "alyx_expressions-2-5" lowerer 3 -0.2854 neutral 0 -0.2327 raiser 4 -0.1032 split 0.1 eyeball righteye
	eyelid  upper_left "alyx_expressions-2-5" lowerer 1 -0.2255 neutral 0 0.1352 raiser 2 0.2083 split -0.1 eyeball lefteye
	eyelid  lower_left "alyx_expressions-2-5" lowerer 3 -0.3361 neutral 0 -0.2525 raiser 4 -0.1341 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0		// mouth illumination

	flexfile "Alyx_expressions-2-5_Ep1" {
		$include "../Humans/standardflex_v3.qci"
	}

	$include "../Humans/facerules_v3.qci"
	$include "../Humans/Bodyrules_xsi.qci"
}

$surfaceprop "flesh"
$bbox -13 -13 0  13 13 72
$mostlyopaque

$proceduralbones "alyx.vrd"
$include "..\Humans\Standardhierarchy.qci"                
$alwayscollapse "ValveBiped"                
$alwayscollapse "XSISceneRoot"                
$include "../humans/standardikchains.qci"                
$include "../humans/female/commonbones.qci"                

$definebone "ValveBiped.Jacket1_bone" "ValveBiped.Bip01_Spine2" 0.280608 2.817061 5.211885 36.695652 95.573318 89.999985 0.000000 0.000000 -0.000001 -0.000000 0.000005 0.000000
$definebone "ValveBiped.Jacket0_bone" "ValveBiped.Jacket1_bone" -0.000000 0.000000 -4.507174 -0.000000 0.241565 0.000000 0.000000 -0.000000 -0.000002 -0.000000 0.000005 0.000000

$includemodel f_anm.mdl


// LEVEL OF DETAL

$lod 9
{
	replacemodel "Alyx_reference.smd" "Alyx_reference_LOD_1.smd"
	
	removemesh "models/alyx/fmouth"
	
	replacebone "ValveBiped.Bip01_L_Elbow" "ValveBiped.Bip01_L_upperarm"
	replacebone "ValveBiped.Bip01_R_Elbow" "ValveBiped.Bip01_R_upperarm"
	replacebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm"
	replacebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm"
	replacebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm"
	replacebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm"
	replacebone "ValveBiped.Bip01_L_Bicep" "ValveBiped.Bip01_L_upperarm"
	replacebone "ValveBiped.Bip01_R_Bicep" "ValveBiped.Bip01_R_upperarm"
	
	replacebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01"
	replacebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11"
	replacebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21"
	replacebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31"
	replacebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41"
	
	replacebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01"
	replacebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11"
	replacebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21"
	replacebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31"
	replacebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41"
	

}
$lod 18
{
	replacemodel "Alyx_reference.smd" "Alyx_reference_LOD_2.smd"
	
	nofacial
	bonetreecollapse "ValveBiped.Bip01_L_Hand"
	bonetreecollapse "ValveBiped.Bip01_R_Hand"
	
	removemesh "models/alyx/fmouth"
	
    replacebone "ValveBiped.Bip01_L_Elbow" "ValveBiped.Bip01_L_upperarm"
	replacebone "ValveBiped.Bip01_R_Elbow" "ValveBiped.Bip01_R_upperarm"
	replacebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm"
	replacebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm"
	replacebone "ValveBiped.Bip01_L_Shoulder" "ValveBiped.Bip01_L_upperarm"	
	replacebone "ValveBiped.Bip01_R_Shoulder" "ValveBiped.Bip01_R_upperarm"
	replacebone "ValveBiped.Bip01_L_Trapezius" "ValveBiped.Bip01_L_upperarm"
	replacebone "ValveBiped.Bip01_R_Trapezius" "ValveBiped.Bip01_R_upperarm"
	replacebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm"
	replacebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm"
	replacebone "ValveBiped.Bip01_L_Bicep" "ValveBiped.Bip01_L_upperarm"
	replacebone "ValveBiped.Bip01_R_Bicep" "ValveBiped.Bip01_R_upperarm"

}
$lod 32
{
	replacemodel "Alyx_reference.smd" "Alyx_reference_LOD_3.smd"
	$include "../Humans/removehands.qci"
	
	removemesh "models/alyx/hairbits"
	removemesh "models/alyx/fmouth"
	removemesh "models/alyx/eyeball_r"
	removemesh "models/alyx/eyeball_l"
	
	nofacial
	bonetreecollapse "ValveBiped.Bip01_L_Forearm"
	bonetreecollapse "ValveBiped.Bip01_R_Forearm"
    bonetreecollapse "ValveBiped.Bip01_L_Calf"
    bonetreecollapse "ValveBiped.Bip01_R_Calf"
    replacebone "ValveBiped.Bip01_L_Elbow" "ValveBiped.Bip01_L_upperarm"
	replacebone "ValveBiped.Bip01_R_Elbow" "ValveBiped.Bip01_R_upperarm"
	replacebone "ValveBiped.Bip01_L_Ulna" "ValveBiped.Bip01_L_Forearm"
	replacebone "ValveBiped.Bip01_R_Ulna" "ValveBiped.Bip01_R_Forearm"
	replacebone "ValveBiped.Bip01_L_Shoulder" "ValveBiped.Bip01_L_upperarm"	
	replacebone "ValveBiped.Bip01_R_Shoulder" "ValveBiped.Bip01_R_upperarm"
	replacebone "ValveBiped.Bip01_L_Trapezius" "ValveBiped.Bip01_L_upperarm"
	replacebone "ValveBiped.Bip01_R_Trapezius" "ValveBiped.Bip01_R_upperarm"
	replacebone "ValveBiped.Bip01_L_Wrist" "ValveBiped.Bip01_L_Forearm"
	replacebone "ValveBiped.Bip01_R_Wrist" "ValveBiped.Bip01_R_Forearm"
	replacebone "ValveBiped.Bip01_L_Bicep" "ValveBiped.Bip01_L_upperarm"
	replacebone "ValveBiped.Bip01_R_Bicep" "ValveBiped.Bip01_R_upperarm"
}
$lod 48
{
	replacemodel "Alyx_reference.smd" "Alyx_reference_LOD_4.smd"
	$include "../Humans/lowesthumanskeleton.qci"	
	$include "../Humans/lowesthumannohelpers.qci"	
	removemesh "models/alyx/hairbits"
	removemesh "models/alyx/fmouth"
	removemesh "models/alyx/eyeball_r"
	removemesh "models/alyx/eyeball_l"
	nofacial
}
$lod 64
{
	replacemodel "Alyx_reference.smd" "Alyx_reference_LOD_5.smd"
	$include "../Humans/lowesthumanskeleton.qci"	
	$include "../Humans/lowesthumannohelpers.qci"	
	removemesh "models/alyx/hairbits"
	removemesh "models/alyx/fmouth"
	removemesh "models/alyx/eyeball_r"
	removemesh "models/alyx/eyeball_l"
	nofacial
}
$shadowlod
{
	replacemodel "Alyx_reference.smd" "Alyx_reference_LOD_4.smd"
	$include "../Humans/lowesthumanskeleton.qci"	
	$include "../Humans/lowesthumannohelpers.qci"
	removemesh "models/alyx/hairbits"
	removemesh "models/alyx/fmouth"
	removemesh "models/alyx/eyeball_r"
	removemesh "models/alyx/eyeball_l"
	nofacial
}


$include "Ragdoll.qci"
$include "../humans/female/Hitbox.qci"