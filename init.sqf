execVM "briefing.sqf"; // exécute le fichier contenant le briefing

// Variable(s)  crée(s) pour la mission et utilisée(s) durant la mission

asr_ai3_main_enabled = 0;
asr_ai3_main_radiorange = 0;		
asr_ai3_main_joinlast = 0;

// initialisation T8 Units
[] execVM "T8_UnitsINIT.sqf"; 
[] execVM "T8_missionEXEC.sqf";

[] execVM "Spawn_AI\Spawn_AI.sqf";

// Lancement du script qui permet l'affichage du team roster lors du briefing
[2,true,true] execVM "roster.sqf";