execVM "briefing.sqf"; // exécute le fichier contenant le briefing

// Variable(s)  crée(s) pour la mission et utilisée(s) durant la mission

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

// initialisation T8 Units
[] execVM "T8_UnitsINIT.sqf"; 
[] execVM "T8_missionEXEC.sqf";

[] execVM "Spawn_AI\Spawn_AI.sqf";

// Lancement du script qui permet l'affichage du team roster lors du briefing
[2,true,true] execVM "roster.sqf";