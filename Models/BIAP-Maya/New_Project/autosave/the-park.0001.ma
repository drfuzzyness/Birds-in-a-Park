//Maya ASCII 2015 scene
//Name: the-park.0001.ma
//Last modified: Sun, Dec 13, 2015 05:25:53 PM
//Codeset: UTF-8
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -nodeType "mib_amb_occlusion" -dataType "byteArray"
		 "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "exportedFrom" "/Users/matthew/Github/Birds-in-a-Park/Models/BIAP-Maya/New_Project/scenes/the-park.ma";
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.5";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.235259236975959 37.630476970632159 -13.619571533947287 ;
	setAttr ".r" -type "double3" -62.138352729619342 184.99999999995475 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 42.516296844988318;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 6.9669991168242404 0.042726415308986798 6.1743058676762921 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "ParkBench_01_0007:pCube1";
	setAttr ".t" -type "double3" -3.2987549646981051 1.8005060462489575 4.1156007868796394 ;
createNode mesh -n "ParkBench_01_0007:pCubeShape1" -p "ParkBench_01_0007:pCube1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50935914367437363 0.5135282501578331 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 2.1571690259183827 0 1.0180049947873986 ;
	setAttr ".s" -type "double3" 1 1 2.2186744061931365 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane2";
	setAttr ".t" -type "double3" 12.070684614415878 6.6411992559366091 1.0180049947873979 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.6662560362851695 1 2.2186744061931365 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 0.92415333
		 1 0.92415333;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -9.89581394 -2.0306533e-15 9.14524937 9.89581394 -2.0306533e-15 9.14524937
		 -9.89581394 2.0306533e-15 -9.14524937 9.89581394 2.0306533e-15 -9.14524937;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 8.2454912072690689 2.3027612547444956 10.354164536759573 ;
	setAttr ".r" -type "double3" 0 11.179782607383672 0 ;
	setAttr ".s" -type "double3" 1.215716584107486 1 1.6888417844128849 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode polyCube -n "ParkBench_01_0007:polyCube1";
	setAttr ".w" 0.52256210825655902;
	setAttr ".h" 0.61078309422280896;
	setAttr ".d" 0.44751934456158526;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.26128104 0.17575127 0 ;
	setAttr ".rs" 393485552;
	setAttr ".lt" -type "double3" -1.2325951644078309e-32 0 0.49106211498613356 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128104329109192 0.010034150440825673 -0.22375966608524323 ;
	setAttr ".cbx" -type "double3" -0.26128104329109192 0.34146840031875536 0.22375966608524323 ;
createNode polyTweak -n "ParkBench_01_0007:polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[1]" -type "float3" 0.22834079 0 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.27934885 0 ;
	setAttr ".tk[3]" -type "float3" 0.22834079 -0.27934885 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.27934885 0 ;
	setAttr ".tk[5]" -type "float3" 0.22834079 -0.27934885 0 ;
	setAttr ".tk[7]" -type "float3" 0.22834079 0 0 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.75234318 0.17575127 0 ;
	setAttr ".rs" 1748037344;
	setAttr ".lt" -type "double3" 0 0 0.75129589934225605 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.75234317779541016 0.010034150440825673 -0.22375966608524323 ;
	setAttr ".cbx" -type "double3" -0.75234317779541016 0.34146840031875536 0.22375966608524323 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.50700873 0.17575127 -0.22375967 ;
	setAttr ".rs" 1782724641;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5036392211914062 0.010034150440825673 -0.22375966608524323 ;
	setAttr ".cbx" -type "double3" 0.48962181806564331 0.34146840031875536 -0.22375966608524323 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.50700873 0.17575127 -7.4067383 ;
	setAttr ".rs" 1140604374;
	setAttr ".lt" -type "double3" 0 -4.2943555559017469e-18 0.48834902299012661 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5036392211914062 0.010034150440825673 -7.40673828125 ;
	setAttr ".cbx" -type "double3" 0.48962181806564331 0.34146840031875536 -7.40673828125 ;
createNode polyTweak -n "ParkBench_01_0007:polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[16:23]" -type "float3"  0 0 -7.18297863 0 0 -7.18297863
		 0 0 -7.18297863 0 0 -7.18297863 0 0 -7.18297863 0 0 -7.18297863 0 0 -7.18297863 0
		 0 -7.18297863;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.26128104 0.17575127 -7.6509128 ;
	setAttr ".rs" 90752946;
	setAttr ".lt" -type "double3" 8.1404366977557483e-16 0 0.33387323213541031 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26128104329109192 0.010034150440825673 -7.8950872421264648 ;
	setAttr ".cbx" -type "double3" -0.26128104329109192 0.34146840031875536 -7.40673828125 ;
createNode deleteComponent -n "ParkBench_01_0007:deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[25:26]";
createNode script -n "ParkBench_01_0007:uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "ParkBench_01_0007:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySewEdge -n "ParkBench_01_0007:polySewEdge1";
	setAttr ".ics" -type "componentList" 2 "e[54]" "e[66]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".t" 0.069;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "ParkBench_01_0007:polyTweak3";
	setAttr ".uopa" yes;
	setAttr ".tk[20]" -type "float3"  -0.077645652 0 0;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 2 "f[5]" "f[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.5036392 0.17575127 -3.8356638 ;
	setAttr ".rs" 443680418;
	setAttr ".lt" -type "double3" 1.9721522630525295e-31 0 0.5004118846212835 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5036392211914062 0.010034150440825673 -7.8950872421264648 ;
	setAttr ".cbx" -type "double3" -1.5036392211914062 0.34146840031875536 0.22375966608524323 ;
createNode polyTweak -n "ParkBench_01_0007:polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[21]" -type "float3" -0.087380521 0 0 ;
	setAttr ".tk[28]" -type "float3" -0.079047486 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.079047486 0 0 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 2 "f[5]" "f[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.0040512 0.17575127 -3.8356638 ;
	setAttr ".rs" 1397082683;
	setAttr ".lt" -type "double3" 8.6281661508548166e-32 0 0.48474448686635307 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0040512084960938 0.010034150440825673 -7.8950872421264648 ;
	setAttr ".cbx" -type "double3" -2.0040512084960938 0.34146840031875536 0.22375966608524323 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 2 "f[42]" "f[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2464235 0.34146839 -3.8356638 ;
	setAttr ".rs" 1790200019;
	setAttr ".lt" -type "double3" 0 2.4651903288156619e-32 0.50621333076277997 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4887957572937012 0.34146840031875536 -7.8950872421264648 ;
	setAttr ".cbx" -type "double3" -2.0040512084960938 0.34146840031875536 0.22375966608524323 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 2 "f[42]" "f[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2041464 0.84768176 -3.8356638 ;
	setAttr ".rs" 71947803;
	setAttr ".lt" -type "double3" 4.4408920985006262e-16 -2.4651903288156619e-32 0.68625338296698901 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4042415618896484 0.84768176730407641 -7.8950872421264648 ;
	setAttr ".cbx" -type "double3" -2.0040512084960938 0.84768176730407641 0.22375966608524323 ;
createNode polyTweak -n "ParkBench_01_0007:polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[40]" -type "float3" 0.084554076 0 0 ;
	setAttr ".tk[41]" -type "float3" 0.084554076 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.084554076 0 0 ;
	setAttr ".tk[43]" -type "float3" 0.084554076 0 0 ;
	setAttr ".tk[44]" -type "float3" 0.13697471 0 0 ;
	setAttr ".tk[45]" -type "float3" 0.13697471 0 0 ;
	setAttr ".tk[46]" -type "float3" 0.13697471 0 0 ;
	setAttr ".tk[47]" -type "float3" 0.13697471 0 0 ;
	setAttr ".tk[50]" -type "float3" 0.084554076 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.084554076 0 0 ;
	setAttr ".tk[54]" -type "float3" 0.13697471 0 0 ;
	setAttr ".tk[55]" -type "float3" 0.13697471 0 0 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 2 "f[42]" "f[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2041464 1.5339354 -3.8356638 ;
	setAttr ".rs" 1767798210;
	setAttr ".lt" -type "double3" 4.4408920985006262e-16 -4.9303806576313238e-32 0.36599854172332269 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4042415618896484 1.5339353745771782 -7.8950872421264648 ;
	setAttr ".cbx" -type "double3" -2.0040512084960938 1.5339353745771782 0.22375966608524323 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 2 "f[42]" "f[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2041464 1.8999339 -3.8356638 ;
	setAttr ".rs" 1487981302;
	setAttr ".lt" -type "double3" 4.4408920985006262e-16 -1.7256332301709633e-31 0.72114780289755842 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4042415618896484 1.8999338811231987 -7.8950872421264648 ;
	setAttr ".cbx" -type "double3" -2.0040512084960938 1.8999338811231987 0.22375966608524323 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 2 "f[42]" "f[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2041464 2.6210818 -3.8356638 ;
	setAttr ".rs" 508478014;
	setAttr ".lt" -type "double3" 0 7.3955709864469857e-32 0.24765372171775901 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4042415618896484 2.6210818951918022 -7.8950872421264648 ;
	setAttr ".cbx" -type "double3" -2.0040512084960938 2.6210818951918022 0.22375966608524323 ;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 2 "f[57]" "f[73]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2041464 1.7343818 -0.22375967 ;
	setAttr ".rs" 612826126;
	setAttr ".lt" -type "double3" 0 -1.8055477444451686e-16 6.913737004082388 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4042415618896484 0.84768176730407641 -0.22375966608524323 ;
	setAttr ".cbx" -type "double3" -2.0040512084960938 2.6210818951918022 -0.22375966608524323 ;
createNode deleteComponent -n "ParkBench_01_0007:deleteComponent2";
	setAttr ".dc" -type "componentList" 2 "f[57]" "f[73]";
createNode deleteComponent -n "ParkBench_01_0007:deleteComponent3";
	setAttr ".dc" -type "componentList" 2 "f[62]" "f[77]";
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[76]" "vtx[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "ParkBench_01_0007:polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[92:95]" -type "float3"  0 0 -0.21320075 0 0 -0.21320075
		 0 0 -0.21320075 0 0 -0.21320075;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[79]" "vtx[94]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[71]" "vtx[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[68]" "vtx[92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[60]" "vtx[91]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyTweak -n "ParkBench_01_0007:polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[68]" -type "float3" 0 0 -0.034398943 ;
	setAttr ".tk[71]" -type "float3" 0 0 -0.034398943 ;
	setAttr ".tk[76]" -type "float3" 0 0 -0.034398943 ;
	setAttr ".tk[79]" -type "float3" 0 0 -0.034398943 ;
	setAttr ".tk[88]" -type "float3" 0 0 -0.22603725 ;
	setAttr ".tk[89]" -type "float3" 0 0 -0.22603725 ;
	setAttr ".tk[90]" -type "float3" 0 0 -0.22603725 ;
	setAttr ".tk[91]" -type "float3" 0 0 -0.22603725 ;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[63]" "vtx[90]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[55]" "vtx[89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyMergeVert -n "ParkBench_01_0007:polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[52]" "vtx[88]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".d" 0.0001;
	setAttr ".am" yes;
createNode polyExtrudeFace -n "ParkBench_01_0007:polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 4 "f[6]" "f[31]" "f[40]" "f[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.31542570050491259 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.3327613 0.01003415 -3.8356638 ;
	setAttr ".rs" 1400808703;
	setAttr ".lt" -type "double3" 0 -6.4094948549207209e-31 1.4861676503332988 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4042415618896484 0.010034150440825673 -7.8950872421264648 ;
	setAttr ".cbx" -type "double3" -0.26128104329109192 0.010034150440825673 0.22375966608524323 ;
createNode polyTweak -n "ParkBench_01_0007:polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[52]" -type "float3" 0 0 -0.02483137 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.02483137 ;
	setAttr ".tk[60]" -type "float3" 0 0 -0.02483137 ;
	setAttr ".tk[63]" -type "float3" 0 0 -0.02483137 ;
createNode polySplitRing -n "ParkBench_01_0007:polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.16141392121505405 1.800506046248961 -0.31051914161477923 1;
	setAttr ".wt" 0.99959278106689453;
	setAttr ".dr" no;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "ParkBench_01_0007:polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[36:37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.16141392121505405 1.800506046248961 -0.31051914161477923 1;
	setAttr ".wt" 0.99904370307922363;
	setAttr ".dr" no;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "ParkBench_01_0007:polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[36:37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.16141392121505405 1.800506046248961 -0.31051914161477923 1;
	setAttr ".wt" 0.0010275761596858501;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "ParkBench_01_0007:polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.16141392121505405 1.800506046248961 -0.31051914161477923 1;
	setAttr ".wt" 0.00075721432222053409;
	setAttr ".re" 29;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "ParkBench_01_0007:polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[180:183]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.16141392121505405 1.800506046248961 -0.31051914161477923 1;
	setAttr ".wt" 0.00078648101771250367;
	setAttr ".re" 183;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "ParkBench_01_0007:polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.063859753 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.063859753 0 ;
createNode polySplitRing -n "ParkBench_01_0007:polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[176:179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.16141392121505405 1.800506046248961 -0.31051914161477923 1;
	setAttr ".wt" 0.00081362080527469516;
	setAttr ".re" 179;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "ParkBench_01_0007:polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[256:257]" "e[259]" "e[261]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.16141392121505405 1.800506046248961 -0.31051914161477923 1;
	setAttr ".wt" 0.99869805574417114;
	setAttr ".dr" no;
	setAttr ".re" 256;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "ParkBench_01_0007:polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[248:249]" "e[251]" "e[253]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.16141392121505405 1.800506046248961 -0.31051914161477923 1;
	setAttr ".wt" 0.99880921840667725;
	setAttr ".dr" no;
	setAttr ".re" 248;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMapCut -n "ParkBench_01_0007:polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:279]";
createNode polyTweak -n "ParkBench_01_0007:polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[120]" -type "float3" -0.066889621 0 0 ;
	setAttr ".tk[123]" -type "float3" -0.066889621 0 0 ;
	setAttr ".tk[124]" -type "float3" -0.066889621 0 0 ;
	setAttr ".tk[127]" -type "float3" -0.066889621 0 0 ;
	setAttr ".tk[128]" -type "float3" -0.066889621 0 0 ;
	setAttr ".tk[131]" -type "float3" -0.066889621 0 0 ;
	setAttr ".tk[132]" -type "float3" -0.066889621 0 0 ;
	setAttr ".tk[135]" -type "float3" -0.066889621 0 0 ;
createNode polyTweakUV -n "ParkBench_01_0007:polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 560 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.43711281 0.61485165 -0.32273424 0.0023685994
		 0.56234741 -0.24816842 -0.010523282 0.35986227 0.60931051 -0.19701503 0.36713761
		 -0.49782592 -0.37300795 -0.43972871 0.37300798 -0.74268824 -0.37300795 -0.38945499
		 -0.32273424 -0.38945499 0.039750434 0.30958852 0.039750434 0.35986227 0.012012379
		 0.91761702 0.81234741 0.052105296 0.69493991 0.61485165 -0.20826133 0.67459732 0.59365612
		 -0.24816842 0.80452025 0.35986212 0.84952646 0.61235762 0.62105125 0.31526417 -0.37300795
		 0.36626786 -0.11713751 0.66707855 -0.21450581 0.11661034 -0.41508675 0.16644956 -0.45276499
		 0.16688405 -0.20863536 0.16634612 0.78103876 0.3657327 0.064846322 0.61680484 0.78886592
		 0.61485165 0.058975913 0.66707855 0.57800186 -0.18864864 0.36518082 -0.19060604 0.3123475
		 -0.44114324 0.45276713 -0.13446209 0.13724832 0.36572927 0.85148329 0.0023685994
		 0.16855729 0.61484826 -0.10343982 0.66707855 0.54669315 -0.13837489 -0.10492444 0.11661034
		 -0.10492444 0.11661034 0.47624865 -0.13446209 0.023753293 0.91761702 0.48407581 0.61485165
		 -0.29864901 0.36626786 0.85735369 0.36573213 0.75755727 0.61485165 0.81821781 0.36573255
		 0.48947671 0.3657327 0.74973011 0.61485165 0.74190289 0.61485165 -0.22037625 0.61734331
		 0.55452037 0.36573255 -0.040821746 0.66654158 0.76538444 0.61485165 0.50121748 0.3657327
		 0.49534717 0.3657327 0.7732116 0.61485165 -0.25791466 0.40761799 0.62449545 0.3657327
		 0.63232255 0.3657327 0.25708792 0.3657327 0.51295823 0.3657327 0.51882869 0.3657327
		 0.52469897 0.3657327 0.50121748 0.3657327 -0.27321038 0.36626786 0.64797688 0.3657327
		 0.64014971 0.3657327 0.28643972 0.3657327 0.55992126 0.3657327 0.54818046 0.3657327
		 0.55405092 0.3657327 0.52469897 0.3657327 -0.26146945 0.36626786 0.65580404 0.3657327
		 0.6636312 0.3657327 0.3157917 0.3657327 0.57166201 0.3657327 0.57753241 0.3657327
		 0.58340275 0.3657327 0.55992126 0.3657327 -0.24972853 0.36626786 0.67928559 0.3657327
		 0.67145842 0.3657327 0.3451435 0.3657327 0.61862499 0.3657327 0.60688424 0.3657327
		 0.6127547 0.3657327 0.58340275 0.3657327 -0.32995805 0.36626786 0.58927321 0.3657327
		 0.0061419131 0.66654158 0.3451435 0.3657327 0.17638452 0.36572927 0.60688424 0.3657327
		 0.6127547 0.3657327 0.61862499 0.3657327 0.26052812 0.36573473 0.25465763 0.36573473
		 0.24878715 0.36573473 0.24291667 0.36573473 0.28401005 0.36573473 0.27813959 0.36573473
		 0.2722691 0.36573473 0.26639861 0.36573473 0.79669309 0.30318069 0.43711281 0.61485165
		 -0.23211716 0.61734331 0.69493991 0.61485165 -0.097097203 -0.13446546 0.46059433
		 -0.13446209 0.46842149 -0.13446209 0.47624865 -0.13446209 -0.084479831 0.97328061
		 0.48407581 0.61485165 -0.22037625 0.61734331 0.74190289 0.61485165 0.83582896 0.61485094
		 0.75755727 0.61485165 0.76538444 0.61485165 0.7732116 0.61485165 -0.15971513 0.11661034
		 -0.15188788 0.16634612 -0.1129716 0.17006484 -0.41754237 0.11714748 0.84365612 0.36573341
		 0.070716776 0.66707855 0.18421184 0.61485362 0.076587185 0.61680484 0.80452025 0.35986212
		 0.070716776 0.66707855 0.18421184 0.61485362 0.076587185 0.61680484 0.36713761 -0.49782592
		 -0.15971513 0.11661034 -0.15188788 0.16634612 -0.18294869 0.16688405 0.67928559 0.3657327
		 0.19986646 0.36573473 0.20769377 0.36573473 0.21356425 0.36573473 0.64797688 0.3657327
		 0.22530521 0.36573473 0.23117571 0.36573473 0.23704618 0.36573473 0.23704618 0.36573473
		 0.24878715 0.36573473 0.25465763 0.36573473 0.26052812 0.36573473 0.21356425 0.36573473
		 0.2722691 0.36573473 0.27813959 0.36573473 0.28401005 0.36573473 0.27813959 0.36573473
		 0.20769377 0.36573473 0.21356425 0.36573473 0.19203915 0.36573473 0.26639861 0.36573473
		 0.28401005 0.36573473 0.2722691 0.36573473 0.19986646 0.36573473 0.20769377 0.36573473
		 0.54231018 0.3657327 0.55992126 0.3657327 0.27813959 0.36573473 0.26639861 0.36573473
		 0.19203915 0.36573473 0.19986646 0.36573473 0.55405092 0.3657327 0.58340275 0.3657327
		 0.2722691 0.36573473 0.6127547 0.3657327 0.61862499 0.3657327 0.26639861 0.36573473
		 0.60101396 0.3657327 0.57166201 0.3657327 0.28401005 0.36573473 0.25465763 0.36573473
		 0.23117571 0.36573473 0.23704618 0.36573473 0.21943474 0.36573473 0.24291667 0.36573473
		 0.26052812 0.36573473 0.24878715 0.36573473 0.22530521 0.36573473 0.23117571 0.36573473
		 0.81821781 0.36573255 0.50121748 0.3657327 0.25465763 0.36573473 0.24291667 0.36573473
		 0.21943474 0.36573473 0.22530521 0.36573473 0.49534717 0.3657327 0.52469897 0.3657327
		 0.24878715 0.36573473 0.55405092 0.3657327 0.55992126 0.3657327 0.24291667 0.36573473
		 0.54231018 0.3657327 0.51295823 0.3657327 0.26052812 0.36573473 0.23117571 0.36573473
		 0.62449545 0.3657327 0.64797688 0.3657327 0.64014971 0.3657327 0.21943474 0.36573473
		 0.23704618 0.36573473 0.22530521 0.36573473 0.63232255 0.3657327 0.62449545 0.3657327
		 0.21943474 0.36573473 0.64014971 0.3657327 0.63232255 0.3657327 0.20769377 0.36573473
		 0.65580404 0.3657327 0.67928559 0.3657327 0.67145842 0.3657327 0.19203915 0.36573473
		 0.21356425 0.36573473 0.19986646 0.36573473 0.6636312 0.3657327 0.65580404 0.3657327
		 0.19203915 0.36573473 0.67145842 0.3657327 0.6636312 0.3657327 -0.40188789 -0.1339276
		 0.37300798 -0.74268824 0.36713761 -0.4475522 0.35931051 -0.49728873 -0.41754237 0.11714748
		 -0.18294869 0.11661034 -0.15971513 0.16688405 0.60735369 -0.14033304 0.62300801 -0.44241449
		 -0.38278788 0.17006484 -0.45863536 -0.1339276 -0.40188789 -0.1339276 -0.16754237
		 0.41742119 0.60931051 -0.19701503 0.60735369 -0.19060673 -0.20863536 0.16634612 -0.21450581
		 0.16688405 -0.15971513 0.16688405 -0.21450581 0.11661034 -0.19689454 0.41742119 -0.16754237
		 0.41742119 -0.44689453 0.11714748 -0.38278788 0.11979111 -0.1129716 0.11979111;
	setAttr ".uvtk[250:499]" 0.18421184 0.61485362 0.1137666 0.61484826 0.80452025
		 0.30958837 0.12159383 0.36572927 0.84365612 0.36573341 0.076587185 0.66707855 0.070716776
		 0.61680484 0.82017463 0.30958837 0.1137666 0.61484826 0.064846322 0.61680484 0.78886592
		 0.61485165 0.18421184 0.61485362 0.84365612 0.36573341 0.12159383 0.36572927 0.82017463
		 0.35986212 0.78886592 0.61485165 0.058975913 0.61680484 0.070716776 0.61680484 0.058975913
		 0.66707855 0.78103876 0.3657327 0.84365612 0.36573341 0.78103876 0.3657327 0.064846322
		 0.66707855 0.076587185 0.66707855 0.46059433 -0.13446209 0.46842149 -0.13446209 0.12942107
		 0.61484826 0.78886592 0.61485165 0.12942107 0.61484826 0.16855729 0.61484826 -0.11126707
		 0.61680484 0.058975913 0.61680484 -0.11126707 0.66707855 0.16073003 0.36572927 0.13724832
		 0.36572927 0.78103876 0.3657327 0.13724832 0.36572927 0.54669315 -0.18864864 0.064846322
		 0.66707855 0.3676368 -0.14076696 0.36518082 -0.19060604 -0.45276499 0.11661034 0.36518082
		 -0.14033233 0.3123475 -0.44114324 -0.45863536 -0.1339276 0.56234753 -0.14086954 0.45276713
		 -0.13446209 0.46059433 -0.13446209 0.54669315 -0.13837489 -0.21450581 0.16688405
		 0.54669315 -0.18864864 -0.10492444 0.11661034 0.6176368 0.15950675 -0.16508676 0.46672326
		 0.74973011 0.61485165 0.7732116 0.61485165 0.76538444 0.61485165 0.83582896 0.61485094
		 0.75755727 0.61485165 0.83582896 0.61485094 -0.056476261 0.61680484 0.84365612 0.30958924
		 0.76538444 0.61485165 0.74973011 0.61485165 0.83582896 0.61485094 0.84365612 0.30958924
		 -0.064303517 0.61680484 0.75755727 0.61485165 0.16855729 0.61484826 -0.10343982 0.61680484
		 -0.056476261 0.61680484 0.7732116 0.61485165 -0.064303517 0.61680484 -0.11126707
		 0.61680484 0.16855729 0.61484826 0.74973011 0.61485165 0.034886003 0.97328061 0.74190289
		 0.61485165 0.029623741 0.91761702 -0.095612556 0.91761702 0.48407581 0.61485165 -0.34561256
		 0.61734331 -0.072130777 0.61680484 0.18421184 0.30959052 0.029623741 0.91761702 -0.21511398
		 0.67300689 -0.33447984 0.67300689 0.23448555 0.30959052 -0.3377853 0.61680484 0.48407581
		 0.61485165 -0.31711024 0.72495127 0.64172632 0.42341059 0.59952646 0.31208396 -0.2262467
		 0.61734331 0.84952646 0.61235762 -0.09964323 0.68201077 -0.054636501 0.68201077 0.74190289
		 0.61485165 0.45276713 -0.13446209 0.47624865 -0.13446209 0.46842149 -0.13446209 -0.097097203
		 -0.13446546 0.46059433 -0.13446209 -0.097097203 -0.13446546 0.57800186 -0.13837489
		 0.12942107 0.61484826 0.46842149 -0.13446209 0.45276713 -0.13446209 -0.097097203
		 -0.13446546 0.56234753 -0.14086954 0.23947673 -0.4475522 0.57800186 -0.13837489 0.47624865
		 -0.13446209 0.012012379 0.91761702 0.69493991 0.61485165 0.017882846 0.91761702 0.79669309
		 0.30318069 0.43711281 0.61485165 0.54669309 0.0029069816 0.82017463 0.0023685994
		 0.80452025 0.30958837 0.1137666 0.61484826 0.8518576 0.36043471 0.041738689 0.97487104
		 -0.23798762 0.61734331 0.54669309 0.0029069816 0.6018576 0.060160983 0.58582902 0.0023685994
		 0.55452037 0.0023685994 0.43711281 0.61485165 0.55452037 0.0023685994 -0.37300795
		 0.0023685994 -0.23798762 0.61734331 0.62300801 -0.44241449 0.60735369 -0.14033304
		 0.82017463 0.0023685994 0.69493991 0.61485165 -0.01146945 0.66654158 0.00027146484
		 0.66654158 0.58927321 0.3657327 0.67145842 0.3657327 0.58927321 0.3657327 0.0061419131
		 0.66654158 -0.0055989833 0.66654158 0.6636312 0.3657327 -0.0055989833 0.66654158
		 -0.017339915 0.66654158 0.53056943 0.3657327 0.65580404 0.3657327 0.53056943 0.3657327
		 -0.023210363 0.66654158 -0.01146945 0.66654158 0.67928559 0.3657327 -0.034951277
		 0.66654158 -0.023210363 0.66654158 0.53056943 0.3657327 0.64014971 0.3657327 0.53056943
		 0.3657327 -0.017339915 0.66654158 -0.029080812 0.66654158 0.63232255 0.3657327 -0.022719251
		 0.7047109 -0.034460191 0.7047109 0.85735369 0.36573213 0.62449545 0.3657327 0.85735369
		 0.36573213 -0.021612387 0.7078917 -0.0079146698 0.7078917 0.64797688 0.3657327 0.60101396
		 0.3657327 0.61862499 0.3657327 0.6127547 0.3657327 0.17638452 0.36572927 0.60688424
		 0.3657327 0.17638452 0.36572927 0.60101396 0.3657327 0.17638452 0.36572927 0.58340275
		 0.3657327 0.57753241 0.3657327 0.60688424 0.3657327 0.57753241 0.3657327 0.57166201
		 0.3657327 0.60101396 0.3657327 -0.24972853 0.36626786 0.3451435 0.3657327 -0.24385808
		 0.36626786 -0.32995805 0.36626786 0.58927321 0.3657327 -0.079958037 0.66654158 0.3157917
		 0.3657327 -0.25559899 0.36626786 -0.24385808 0.36626786 0.00027146484 0.66654158
		 -0.079958037 0.66654158 -0.26146945 0.36626786 0.3157917 0.3657327 0.3451435 0.3657327
		 0.55405092 0.3657327 0.54818046 0.3657327 0.57753241 0.3657327 0.54818046 0.3657327
		 0.54231018 0.3657327 0.57166201 0.3657327 0.28643972 0.3657327 -0.26733992 0.36626786
		 -0.25559899 0.36626786 -0.27321038 0.36626786 0.28643972 0.3657327 0.3157917 0.3657327
		 0.52469897 0.3657327 0.51882869 0.3657327 0.54818046 0.3657327 0.51882869 0.3657327
		 0.51295823 0.3657327 0.54231018 0.3657327 0.25708792 0.3657327 -0.27908081 0.36626786
		 -0.26733992 0.36626786 -0.28495127 0.36626786 0.25708792 0.3657327 0.28643972 0.3657327
		 0.49534717 0.3657327 0.48947671 0.3657327 0.51882869 0.3657327 0.48947671 0.3657327
		 0.81821781 0.36573255 0.51295823 0.3657327 0.55452037 0.36573255 -0.28446019 0.40443715
		 -0.27271926 0.40443715 -0.27161241 0.40761799 0.55452037 0.36573255 0.25708792 0.3657327
		 -0.064303517 0.66707855 0.84365612 0.35986298 0.49534717 0.3657327 0.84365612 0.35986298
		 -0.056476261 0.66707855 0.48947671 0.3657327 -0.056476261 0.66707855 -0.10343982
		 0.66707855 0.16073003 0.36572927 0.81821781 0.36573255 0.16073003 0.36572927 -0.11126707
		 0.66707855 -0.064303517 0.66707855 0.50121748 0.3657327 -0.3377853 0.66707855 0.23448555
		 0.35986426 -0.29082173 0.36626786;
	setAttr ".uvtk[500:559]" 0.18421184 0.35986426 -0.072130777 0.66707855 0.85735369
		 0.36573213 -0.054636501 0.73228449 -0.09964323 0.73228449 -0.12300797 0.66654158
		 -0.048649002 0.66654158 -0.37300795 0.36626786 0.64172632 0.47368431 -0.31711024
		 0.77522498 0.55452037 0.36573255 0.12942107 0.61484826 0.85148329 0.0023685994 -0.10343982
		 0.61680484 0.85148329 0.052642301 0.13724832 0.36572927 0.16073003 0.36572927 0.82017463
		 0.35986212 0.12159383 0.36572927 0.84365612 0.052105296 -0.12300797 0.66654158 0.59365612
		 -0.24816842 0.58582902 0.052642301 0.62105125 0.36553785 0.58582902 0.0023685994
		 0.5780018 0.0029069816 0.59952646 0.31208396 0.8280018 0.30318069 0.1137666 0.61484826
		 0.82017463 0.30958837 -0.11713751 0.61680484 0.23947673 -0.49782592 0.58582902 0.11020468
		 -0.10492444 0.11661034 0.85148329 0.052642301 0.57800186 -0.18864864 0.36518082 -0.14033233
		 0.28975043 -0.4475522 0.33582902 -0.190069 0.28975043 -0.49782592 0.82017463 0.052642301
		 0.81234741 0.052105296 0.84365612 0.052105296 0.12159383 0.36572927 -0.32273424 -0.43972871
		 0.36713761 -0.4475522 -0.015514452 -0.19647448 0.35931051 -0.49728873 -0.065788165
		 -0.19647448 0.82017463 0.052642301 0.60735369 -0.19060673 0.56234741 -0.24816842
		 0.55452037 0.052642301 0.58582902 0.052642301 -0.065788165 -0.24674819 -0.37300795
		 0.052642301 0.55452037 0.052642301 -0.010523282 0.30958852 -0.32273424 0.052642301
		 -0.015514452 -0.24674819;
createNode polyAutoProj -n "ParkBench_01_0007:polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:139]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.16141392121505405 1.800506046248961 -0.31051914161477923 1;
	setAttr ".s" -type "double3" 8.1188469082117081 8.1188469082117081 8.1188469082117081 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode surfaceShader -n "ParkBench_01_0007:AO_SS";
createNode shadingEngine -n "ParkBench_01_0007:surfaceShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "ParkBench_01_0007:materialInfo1";
createNode mib_amb_occlusion -n "ParkBench_01_0007:mib_amb_occlusion1";
	setAttr ".S00" 256;
createNode textureBakeSet -n "ParkBench_01_0007:initialTextureBakeSet";
createNode partition -n "ParkBench_01_0007:textureBakePartition";
createNode vertexBakeSet -n "ParkBench_01_0007:initialVertexBakeSet";
	addAttr -ci true -sn "fs" -ln "filterSize" -min -1 -at "double";
	addAttr -ci true -sn "fns" -ln "filterNormalTolerance" -min 0 -max 180 -at "double";
	setAttr ".fs" 0.001;
	setAttr ".fns" 5;
createNode partition -n "ParkBench_01_0007:vertexBakePartition";
createNode shadingEngine -n "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "ParkBench_01_0007:materialInfo2";
createNode lambert -n "ParkBench_01_0007:lambert2";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode file -n "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1";
	setAttr ".ftn" -type "string" "/Users/matthew/Github/ShipRekD-NarrativeGames/Models/Shiprek-Matthew-MayaProj/renderData/mentalray/lightMap/bench-baked-surfaceShader1SG-pCube1.tif";
createNode place2dTexture -n "ParkBench_01_0007:place2dTexture1";
createNode phong -n "phong1";
createNode shadingEngine -n "phong1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:115]" "f[132:139]";
	setAttr ".irc" -type "componentList" 1 "f[116:131]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[116:131]";
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 19.791627628338837;
	setAttr ".h" 18.290499319585965;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyCube -n "polyCube1";
	setAttr ".w" 6.1338922719164017;
	setAttr ".h" 0.15494703510377916;
	setAttr ".d" 2.9915579467649742;
	setAttr ".cuv" 4;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mayaHardware2";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupParts2.og" "ParkBench_01_0007:pCubeShape1.i";
connectAttr "ParkBench_01_0007:polyTweakUV1.uvtk[0]" "ParkBench_01_0007:pCubeShape1.uvst[0].uvtw"
		;
connectAttr "groupId1.id" "ParkBench_01_0007:pCubeShape1.iog.og[0].gid";
connectAttr "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.mwc" "ParkBench_01_0007:pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId3.id" "ParkBench_01_0007:pCubeShape1.iog.og[1].gid";
connectAttr "phong1SG.mwc" "ParkBench_01_0007:pCubeShape1.iog.og[1].gco";
connectAttr "groupId2.id" "ParkBench_01_0007:pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "polyCube1.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ParkBench_01_0007:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ParkBench_01_0007:surfaceShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "phong1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "ParkBench_01_0007:polyTweak1.out" "ParkBench_01_0007:polyExtrudeFace1.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace1.mp"
		;
connectAttr "ParkBench_01_0007:polyCube1.out" "ParkBench_01_0007:polyTweak1.ip";
connectAttr "ParkBench_01_0007:polyExtrudeFace1.out" "ParkBench_01_0007:polyExtrudeFace2.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace2.mp"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace2.out" "ParkBench_01_0007:polyExtrudeFace3.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace3.mp"
		;
connectAttr "ParkBench_01_0007:polyTweak2.out" "ParkBench_01_0007:polyExtrudeFace4.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace4.mp"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace3.out" "ParkBench_01_0007:polyTweak2.ip"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace4.out" "ParkBench_01_0007:polyExtrudeFace5.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace5.mp"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace5.out" "ParkBench_01_0007:deleteComponent1.ig"
		;
connectAttr "ParkBench_01_0007:deleteComponent1.og" "ParkBench_01_0007:polySewEdge1.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polySewEdge1.mp"
		;
connectAttr "ParkBench_01_0007:polySewEdge1.out" "ParkBench_01_0007:polyMergeVert1.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert1.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert1.out" "ParkBench_01_0007:polyMergeVert2.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert2.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert2.out" "ParkBench_01_0007:polyMergeVert3.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert3.mp"
		;
connectAttr "ParkBench_01_0007:polyTweak3.out" "ParkBench_01_0007:polyMergeVert4.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert4.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert3.out" "ParkBench_01_0007:polyTweak3.ip"
		;
connectAttr "ParkBench_01_0007:polyTweak4.out" "ParkBench_01_0007:polyExtrudeFace6.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace6.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert4.out" "ParkBench_01_0007:polyTweak4.ip"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace6.out" "ParkBench_01_0007:polyExtrudeFace7.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace7.mp"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace7.out" "ParkBench_01_0007:polyExtrudeFace8.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace8.mp"
		;
connectAttr "ParkBench_01_0007:polyTweak5.out" "ParkBench_01_0007:polyExtrudeFace9.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace9.mp"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace8.out" "ParkBench_01_0007:polyTweak5.ip"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace9.out" "ParkBench_01_0007:polyExtrudeFace10.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace10.mp"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace10.out" "ParkBench_01_0007:polyExtrudeFace11.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace11.mp"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace11.out" "ParkBench_01_0007:polyExtrudeFace12.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace12.mp"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace12.out" "ParkBench_01_0007:polyExtrudeFace13.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace13.mp"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace13.out" "ParkBench_01_0007:deleteComponent2.ig"
		;
connectAttr "ParkBench_01_0007:deleteComponent2.og" "ParkBench_01_0007:deleteComponent3.ig"
		;
connectAttr "ParkBench_01_0007:polyTweak6.out" "ParkBench_01_0007:polyMergeVert5.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert5.mp"
		;
connectAttr "ParkBench_01_0007:deleteComponent3.og" "ParkBench_01_0007:polyTweak6.ip"
		;
connectAttr "ParkBench_01_0007:polyMergeVert5.out" "ParkBench_01_0007:polyMergeVert6.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert6.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert6.out" "ParkBench_01_0007:polyMergeVert7.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert7.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert7.out" "ParkBench_01_0007:polyMergeVert8.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert8.mp"
		;
connectAttr "ParkBench_01_0007:polyTweak7.out" "ParkBench_01_0007:polyMergeVert9.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert9.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert8.out" "ParkBench_01_0007:polyTweak7.ip"
		;
connectAttr "ParkBench_01_0007:polyMergeVert9.out" "ParkBench_01_0007:polyMergeVert10.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert10.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert10.out" "ParkBench_01_0007:polyMergeVert11.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert11.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert11.out" "ParkBench_01_0007:polyMergeVert12.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyMergeVert12.mp"
		;
connectAttr "ParkBench_01_0007:polyTweak8.out" "ParkBench_01_0007:polyExtrudeFace14.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyExtrudeFace14.mp"
		;
connectAttr "ParkBench_01_0007:polyMergeVert12.out" "ParkBench_01_0007:polyTweak8.ip"
		;
connectAttr "ParkBench_01_0007:polyExtrudeFace14.out" "ParkBench_01_0007:polySplitRing1.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polySplitRing1.mp"
		;
connectAttr "ParkBench_01_0007:polySplitRing1.out" "ParkBench_01_0007:polySplitRing2.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polySplitRing2.mp"
		;
connectAttr "ParkBench_01_0007:polySplitRing2.out" "ParkBench_01_0007:polySplitRing3.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polySplitRing3.mp"
		;
connectAttr "ParkBench_01_0007:polySplitRing3.out" "ParkBench_01_0007:polySplitRing4.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polySplitRing4.mp"
		;
connectAttr "ParkBench_01_0007:polyTweak9.out" "ParkBench_01_0007:polySplitRing5.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polySplitRing5.mp"
		;
connectAttr "ParkBench_01_0007:polySplitRing4.out" "ParkBench_01_0007:polyTweak9.ip"
		;
connectAttr "ParkBench_01_0007:polySplitRing5.out" "ParkBench_01_0007:polySplitRing6.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polySplitRing6.mp"
		;
connectAttr "ParkBench_01_0007:polySplitRing6.out" "ParkBench_01_0007:polySplitRing7.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polySplitRing7.mp"
		;
connectAttr "ParkBench_01_0007:polySplitRing7.out" "ParkBench_01_0007:polySplitRing8.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polySplitRing8.mp"
		;
connectAttr "ParkBench_01_0007:polyTweak10.out" "ParkBench_01_0007:polyMapCut1.ip"
		;
connectAttr "ParkBench_01_0007:polySplitRing8.out" "ParkBench_01_0007:polyTweak10.ip"
		;
connectAttr "ParkBench_01_0007:polyMapCut1.out" "ParkBench_01_0007:polyTweakUV1.ip"
		;
connectAttr "ParkBench_01_0007:polyTweakUV1.out" "ParkBench_01_0007:polyAutoProj1.ip"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.wm" "ParkBench_01_0007:polyAutoProj1.mp"
		;
connectAttr "ParkBench_01_0007:mib_amb_occlusion1.S11" "ParkBench_01_0007:AO_SS.oc"
		;
connectAttr "ParkBench_01_0007:AO_SS.oc" "ParkBench_01_0007:surfaceShader1SG.ss"
		;
connectAttr "ParkBench_01_0007:surfaceShader1SG.msg" "ParkBench_01_0007:materialInfo1.sg"
		;
connectAttr "ParkBench_01_0007:AO_SS.msg" "ParkBench_01_0007:materialInfo1.m";
connectAttr "ParkBench_01_0007:AO_SS.msg" "ParkBench_01_0007:materialInfo1.t" -na
		;
connectAttr "ParkBench_01_0007:initialTextureBakeSet.pa" "ParkBench_01_0007:textureBakePartition.st"
		 -na;
connectAttr "ParkBench_01_0007:initialVertexBakeSet.pa" "ParkBench_01_0007:vertexBakePartition.st"
		 -na;
connectAttr "ParkBench_01_0007:lambert2.oc" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.ss"
		;
connectAttr "ParkBench_01_0007:pCubeShape1.iog.og[0]" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.dsm"
		 -na;
connectAttr "ParkBench_01_0007:pCubeShape1.ciog.cog[0]" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.dsm"
		 -na;
connectAttr "groupId1.msg" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.gn"
		 -na;
connectAttr "groupId2.msg" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.gn"
		 -na;
connectAttr "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.msg" "ParkBench_01_0007:materialInfo2.sg"
		;
connectAttr "ParkBench_01_0007:lambert2.msg" "ParkBench_01_0007:materialInfo2.m"
		;
connectAttr "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.msg" "ParkBench_01_0007:materialInfo2.t"
		 -na;
connectAttr "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.oc" "ParkBench_01_0007:materialInfo2.tc"
		;
connectAttr "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.oc" "ParkBench_01_0007:lambert2.ic"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.o" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.uv"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.ofs" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.fs"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.c" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.c"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.tf" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.tf"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.rf" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.rf"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.mu" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.mu"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.mv" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.mv"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.s" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.s"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.wu" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.wu"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.wv" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.wv"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.re" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.re"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.vt1" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.vt1"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.vt2" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.vt2"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.vt3" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.vt3"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.vc1" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.vc1"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.n" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.n"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.of" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.of"
		;
connectAttr "ParkBench_01_0007:place2dTexture1.r" "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.ro"
		;
connectAttr "phong1.oc" "phong1SG.ss";
connectAttr "groupId3.msg" "phong1SG.gn" -na;
connectAttr "ParkBench_01_0007:pCubeShape1.iog.og[1]" "phong1SG.dsm" -na;
connectAttr "phong1SG.msg" "materialInfo1.sg";
connectAttr "phong1.msg" "materialInfo1.m";
connectAttr "ParkBench_01_0007:polyAutoProj1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "ParkBench_01_0007:surfaceShader1SG.pa" ":renderPartition.st" -na;
connectAttr "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1SG.pa" ":renderPartition.st"
		 -na;
connectAttr "phong1SG.pa" ":renderPartition.st" -na;
connectAttr "ParkBench_01_0007:AO_SS.msg" ":defaultShaderList1.s" -na;
connectAttr "ParkBench_01_0007:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "phong1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ParkBench_01_0007:mib_amb_occlusion1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"ParkBench_01_0007:bench_baked_surfaceShader1SG_pCube1_fnbake1\" \"fileTextureName\" \"/Users/matthew/Github/ShipRekD-NarrativeGames/Models/Shiprek-Matthew-MayaProj/renderData/mentalray/lightMap/bench-baked-surfaceShader1SG-pCube1.tif\" 1262550254 \"/Users/matthew/Github/ShipRekD-NarrativeGames/Models/Shiprek-Matthew-MayaProj/renderData/mentalray/lightMap/bench-baked-surfaceShader1SG-pCube1.tif\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of the-park.0001.ma
