execVM "briefing.sqf"; // exécute le fichier contenant le briefing

// Variable(s)  crée(s) pour la mission et utilisée(s) durant la mission

// gestion des renforts aériens
WZ_backup_used = 0;
WZ_backup2_used = 0;

// gestion des drapeaux
WZ_flag1_down = 0;
WZ_flag2_down = 0;

asr_ai3_main_enabled = 0;
asr_ai3_main_radiorange = 0;		
asr_ai3_main_joinlast = 0;
asr_ai3_main_seekcover = 0;

asr_ai3_main_sets = [ // for each level: skilltype, [<min value>, <random value added to min>]
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],	// 0:  super-AI (only used for testing)
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],	// 1:  sf 1
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],	// 2:  sf 2 (recon units, divers and spotters)
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],	// 3:  regular 1 (regular army leaders, marksmen)
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],	// 4:  regular 2 (regulars)
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],  // 5:  militia or trained insurgents, former regulars (insurgent leaders, marksmen)
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],	// 6:  some military training (insurgents)
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],	// 7:  no military training
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],	// 8:  pilot 1 (regular)
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	],	// 9:  pilot 2 (insurgent)
	[	"general",[0.65,0.1],	"aiming",[0.17,0.2],	"spotting",[0.10,0.1]	]	// 10: sniper 
];

// on efface les markers
//WZ_mkr= [ "WZ_A1", "WZ_A2", "WZ_AO1"];
"WZ_A1" setMarkerAlpha 0;
"WZ_A2" setMarkerAlpha 0;
"WZ_AO1" setMarkerAlpha 0;

// initialisation T8 Units
[] execVM "T8_missionEXEC.sqf";

[] execVM "Spawn_AI\Spawn_AI.sqf";

// Lancement du script qui permet l'affichage du team roster lors du briefing
[2,true,true] execVM "roster.sqf";

// gestion des addAction des drapeaux et du piège
WZ_flg1 addAction ["Tiens, un drapeau",
		{
		}];

WZ_flg1 addAction ["Abaisser le drapeau Vietcong",
		{
		WZ_flag1_down = 1; publicVariable "WZ_flag1_down";
		hint "Le drapeau était piégé !";
		sleep 0.5;
		bomb = "GrenadeHand" createVehicle [(getPos WZ_flg1 select 0),( getPos WZ_flg1 select 1), 1];
		sleep 5;
		WZ_flg1 setFlagTexture "";
		deleteVehicle WZ_flg1;
		sleep 10;
		hint "Ce drapeau a été détruit";
		}];

WZ_flg1 addAction ["Inspecter le drapeau", 
		{
		WZ_flag1_down = 1; publicVariable "WZ_flag1_down";
		hint "Le drapeau est piégé ! Fuyez !";
		sleep 6;
		bomb = "GrenadeHand" createVehicle [(getPos WZ_flg1 select 0),( getPos WZ_flg1 select 1), 1];
		WZ_flg1 setFlagTexture "";
		deleteVehicle WZ_flg1;
		sleep 15;
		hint "Ce drapeau a été détruit.";
		}];

WZ_flg2 addAction ["Tiens, un drapeau",
		{
		}];

WZ_flg2 addAction ["Abaisser le drapeau Vietcong",
		{
		WZ_flag2_down = 1; publicVariable "WZ_flag2_down";
		WZ_flg2 setFlagTexture "";
		sleep 3;
		hint "Drapeau abaissé.";
		}];

WZ_flg2 addAction ["Inspecter le drapeau", 
		{
		hint "Un simple drapeau.";
		}];


// script pour pouvoir appeler le support aérien
CPC_ACRE_chan = 5;                              //Channel radio à utiliser sur la radio longue ACRE
CPC_ACRE_radio = "ACRE_PRC117F";                  //Le Type de radio requis pour faire une demande

interface_active = false;

waitUntil {time > 0};
while {alive player} do {
         sleep 1;
         if ((([] call acre_api_fnc_getCurrentRadioChannelNumber)-1 == CPC_ACRE_chan) AND (([([] call acre_api_fnc_getCurrentRadio)] call acre_api_fnc_getBaseRadio) == CPC_ACRE_radio))
            then {if (!interface_active) then {
				ActionAppelAS1 = player addAction ["Demande support village nord", "WZ_backup.sqf",0,0,false,true,"","(_target == _this)"];
				ActionAppelAS2 = player addAction ["Demande support village sud", "WZ_backup2.sqf",0,0,false,true,"","(_target == _this)"];
				if ( WZ_flag1_down==1 && WZ_flag2_down==1) then {
					ActionAppelEND = player addAction ["<t color='#33FF66'>Réussite de la mission</t>", { ["End1",true,true] remoteExec ["BIS_fnc_endMission",0];}];
				};
				interface_active = true;
				};}
            else {if (interface_active) then {player removeaction ActionAppelAS1; player removeaction ActionAppelAS2; player removeaction ActionAppelEND; interface_active = false;};};
         sleep 3;
};

