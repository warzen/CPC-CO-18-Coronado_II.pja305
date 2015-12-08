

SOLDAT = "CPC_nam_soldier_vc_r";		// rifleman
SOLDATGRE = "CPC_nam_soldier_vc_r";		// grenadier
SOLDATMG = "CPC_nam_soldier_vc_ar";		// machinegunner
SOLDATMED = "CPC_nam_soldier_vc_doc";		// medic
SOLDATAT = "CPC_nam_soldier_vc_at";		// AT
SOLDATSNI = "CPC_nam_soldier_vc_r";		// sniper
SOLDATSER = "CPC_nam_soldier_vc_tl";		// sergeant - squad leader
SOLDATOFF = "CPC_nam_soldier_vc_tl";		// officer
SOLDATAA = "CPC_nam_soldier_vc_at";		// AA
SOLDATENG = "CPC_nam_soldier_vc_eng";		// engineer - pas dispo
SOLDATAR = "CPC_nam_soldier_vc_ar";	 	// automatic rifleman
SOLDATNAMED = "CPC_nam_soldier_vc_r";		// pas dispo


PATSNI = [SOLDAT,SOLDATSNI];
PAT2 = [SOLDAT,SOLDAT];
PAT4 = [SOLDATSER, SOLDAT, SOLDAT, SOLDATMG];
PAT6 = [SOLDATSER, SOLDAT, SOLDAT, SOLDATGRE, SOLDAT, SOLDATMG];
PAT6AT = [SOLDATSER, SOLDAT, SOLDAT, SOLDATGRE, SOLDATAT, SOLDATMG];
PAT8 = [SOLDATSER, SOLDAT, SOLDAT, SOLDATGRE, SOLDAT, SOLDATMG, SOLDATMED, SOLDAT];
PAT8AT = [SOLDATSER, SOLDAT, SOLDAT, SOLDATGRE, SOLDAT, SOLDATMG, SOLDATMED, SOLDATAT];
PAT8AA = [SOLDATSER, SOLDAT, SOLDAT, SOLDATGRE, SOLDAT, SOLDATMG, SOLDATMED, SOLDATAA];
PAT8AAAT = [SOLDATSER, SOLDAT, SOLDATGRE, SOLDAT, SOLDATAT, SOLDATMG, SOLDATMED, SOLDATAA];
PAT10 = PAT8 + PAT2;
PAT10AT = PAT8AT + [SOLDATAT,SOLDAT];
PAT10AA = PAT8AA + [SOLDATAA,SOLDAT];
PAT10AAAT = PAT8AAAT + [SOLDATAA,SOLDATAT];
PAT12 = PAT6 + PAT6;
PAT14 = PAT8 + PAT6;
PAT16 = PAT8 + PAT8;

// les zones à protéger / patrouiller sont WZ_A1, WZ_A2..Etc

// par défaut, on met deux patrouilles de 6 dans la zone en PATROL , une patrouille de 6 en PATROL GARRISON ie va dans les batiments
// deux patrouilles de 4 autours de la zone et une patrouille de 6 en DEFEND
// par défaut, seules une des patrouilles hors zone et une patrouille dans la zone ont le droit de répondre à une demande à l'aide.

WZ_A1_AI_Spawn=
[
	[ [PAT6, "WZ_A1"], ["PATROL"] ],
	[ [PAT6, "WZ_A1"], ["PATROL"], [true, false, true] ],
	[ [PAT6, "WZ_A1"], ["PATROL_GARRISON"], [true, false, true] ],
	[ [PAT4, "WZ_A1"], ["PATROL_AROUND"] ],
	[ [PAT4, "WZ_A1"], ["PATROL_AROUND"], [true, false, true] ],
	[ [PAT6, "WZ_A1"], ["DEFEND"], [true, false, false] ]
];

WZ_A2_AI_Spawn=
[
	[ [PAT6, "WZ_A2"], ["PATROL"] ],
	[ [PAT6, "WZ_A2"], ["PATROL"], [true, false, true] ],
	[ [PAT6, "WZ_A2"], ["PATROL_GARRISON"], [true, false, true] ],
	[ [PAT4, "WZ_A2"], ["PATROL_AROUND"] ],
	[ [PAT4, "WZ_A2"], ["PATROL_AROUND"], [true, false, true] ],
	[ [PAT6, "WZ_A2"], ["DEFEND"], [true, false, false] ]
];

// WZ_AO sert pour l'area of operation, la vaste zone pour des patrouilles de petites tailles mais prêtes à appuyer n'importe qui

WZ_AO_AI_Spawn=
[
	[[PAT2, "WZ_AO"], ["PATROL"] ],
	[[PAT2, "WZ_AO"], ["PATROL"] ],
	[[PAT2, "WZ_AO"], ["PATROL"] ],
	[[PAT2, "WZ_AO"], ["PATROL"] ],
	[[PAT4, "WZ_AO"], ["PATROL"] ],
	[[PAT4, "WZ_AO"], ["PATROL"] ]
];

// les WZ_QRF_A1 (etc...) sont des troupes de renfort dont le but est de réattaquer des zones contestées et spawnées par trigger

WZ_A1_QRF_Spawn=
[
	[ [PAT6, "WZ_A1_QRF"], ["ATTACK", "WZ_A1"], [true, false, true] ],
	[ [PAT6, "WZ_A1_QRF"], ["ATTACK", "WZ_A1"], [true, false, true] ]
];

WZ_A2_QRF_Spawn=
[
	[ [PAT6, "WZ_A2_QRF"], ["ATTACK", "WZ_A2"], [true, false, true] ],
	[ [PAT6, "WZ_A2_QRF"], ["ATTACK", "WZ_A2"], [true, false, true] ]
];

[WZ_A1_AI_Spawn] spawn T8U_fnc_Spawn;
[WZ_A2_AI_Spawn] spawn T8U_fnc_Spawn;
[WZ_AO_AI_Spawn] spawn T8U_fnc_Spawn;