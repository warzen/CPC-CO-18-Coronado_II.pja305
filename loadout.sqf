/*-----------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------
***	Author: Hardballer

***	Description : 
	Loadouts de la mission

*** Utilisation :
	1/ Copiez les fichiers 'loadout.sqf', 'initPlayerLocal.sqf' et 'inventory_briefing.sqf' dans le dossier de votre mission.
	2/ Modifiez le fichier loadout.sqf à votre convenance.
		- Vous pouvez creer vos loadouts dans l'arsenal virtuel de Arma 3, les exporter avec la commande ingame et les coller dans le script comme ci-dessous.
		- Une fois ceci fait, remplacez tout les 'this' par '_unit'.
	3/ Dans l'éditeur, placez la commande ci-dessous dans les init d'unités jouables pour leur attribuer le loadout souhaité :
		this setVariable ["loadout", "aaf_officer"];
		
	PS :Dans l'exemple ci-dessous les lignes des commentaires issues de l'exportation avec l'arsenal vitruel ont été supprimées pour une meilleure lisibilité.

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------*/


hard_setLoadout = 
{
	_unit = _this select 0;
	_loadout = _unit getVariable "loadout";
	switch _loadout do 
	{
		case "us_sl": {[_unit] call loadoutUS_SL};
		case "us_doc": {[_unit] call loadoutUS_DOC};
		case "us_ar": {[_unit] call loadoutUS_AR};
		case "us_demo": {[_unit] call loadoutUS_DEMO};
		case "us_r": {[_unit] call loadoutUS_R};
		case "us_rto": {[_unit] call loadoutUS_RTO};
	};
};



loadoutUS_SL = //
{
	_unit = _this select 0;
	this = _unit;

	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	
	
	this forceAddUniform "CPC_nam_gear_us_uniform";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_morphine";
	this addItemToUniform "ACE_EarPlugs";
	this addItemToUniform "ACE_Flashlight_XL50";
	for "_i" from 1 to 2 do {this addItemToUniform "CPC_nam_mag_20rnd_556x45";};
	this addItemToUniform "HandGrenade";
	this addItemToUniform "CUP_7Rnd_45ACP_1911";
	this addVest "CPC_nam_gear_us_vest_2";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
	for "_i" from 1 to 4 do {this addItemToVest "CPC_nam_mag_20rnd_556x45";};
	this addItemToVest "CUP_7Rnd_45ACP_1911";
	this addHeadgear "CPC_nam_gear_us_helmet_m1a1_4";
	
	
	this addWeapon "CPC_nam_weapon_m16a1";
	this addWeapon "CUP_hgun_Colt1911";
	
	
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";




};

loadoutUS_DOC = //
{
	_unit = _this select 0;
	this = _unit;


	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	
	
	this forceAddUniform "CPC_nam_gear_us_uniform";
	this addItemToUniform "ACE_EarPlugs";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_morphine";
	for "_i" from 1 to 3 do {this addItemToUniform "CPC_nam_mag_20rnd_556x45";};
	this addItemToUniform "HandGrenade";
	this addVest "CPC_nam_gear_us_vest_2";
	for "_i" from 1 to 20 do {this addItemToVest "ACE_fieldDressing";};
	for "_i" from 1 to 10 do {this addItemToVest "ACE_morphine";};
	for "_i" from 1 to 6 do {this addItemToVest "ACE_epinephrine";};
	for "_i" from 1 to 4 do {this addItemToVest "ACE_bloodIV_250";};
	for "_i" from 1 to 20 do {this addItemToVest "ACE_quikclot";};
	this addItemToVest "ACE_tourniquet";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
	for "_i" from 1 to 5 do {this addItemToVest "CPC_nam_mag_20rnd_556x45";};
	this addHeadgear "CPC_nam_gear_us_helmet_m1a1_doc";
	
	
	this addWeapon "CPC_nam_weapon_m16a1";
	

	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";



};

loadoutUS_AR = //
{
	_unit = _this select 0;
	this = _unit;


	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	
	
	this forceAddUniform "CPC_nam_gear_us_uniform";
	this addItemToUniform "ACE_EarPlugs";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_morphine";
	for "_i" from 1 to 2 do {this addItemToUniform "HandGrenade";};
	this addVest "CPC_nam_gear_us_vest_2";
	for "_i" from 1 to 2 do {this addItemToVest "CPC_nam_mag_100rnd_762x51";};
	this addBackpack "CPC_nam_gear_bag_alice_green";
	for "_i" from 1 to 5 do {this addItemToBackpack "CPC_nam_mag_100rnd_762x51";};
	this addHeadgear "TRYK_H_Bandana_H";
	
	
	this addWeapon "CPC_nam_weapon_m60";
	this addItemToVest "CPC_nam_mag_100rnd_762x51";
	
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";




};

loadoutUS_DEMO = //
{
	_unit = _this select 0;
	this = _unit;

	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	
	
	this forceAddUniform "CPC_nam_gear_us_uniform";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_morphine";
	this addItemToUniform "ACE_EarPlugs";
	for "_i" from 1 to 2 do {this addItemToUniform "CPC_nam_mag_20rnd_556x45";};
	this addItemToUniform "HandGrenade";
	this addVest "CPC_nam_gear_us_vest_2";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
	for "_i" from 1 to 5 do {this addItemToVest "CPC_nam_mag_20rnd_556x45";};
	for "_i" from 1 to 3 do {this addItemToVest "DemoCharge_Remote_Mag";};
	this addBackpack "CPC_nam_gear_bag_alice_green";
	this addItemToBackpack "ACE_Clacker";
	this addItemToBackpack "ACE_M26_Clacker";
	this addItemToBackpack "ACE_DefusalKit";
	this addItemToBackpack "ACE_DeadManSwitch";
	for "_i" from 1 to 10 do {this addItemToBackpack "DemoCharge_Remote_Mag";};
	for "_i" from 1 to 2 do {this addItemToBackpack "CPC_nam_mag_20rnd_556x45";};
	this addHeadgear "CPC_nam_gear_us_helmet_m1a1_eng";
	
	
	this addWeapon "CPC_nam_weapon_m16a1";
	
	
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";




};

loadoutUS_R = //
{
	_unit = _this select 0;
	this = _unit;

	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;


	this forceAddUniform "CPC_nam_gear_us_uniform";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_EarPlugs";
	this addItemToUniform "ACE_morphine";
	for "_i" from 1 to 3 do {this addItemToUniform "CPC_nam_mag_20rnd_556x45";};
	this addItemToUniform "HandGrenade";
	this addVest "CPC_nam_gear_us_vest_2";
	this addItemToVest "HandGrenade";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
	for "_i" from 1 to 8 do {this addItemToVest "CPC_nam_mag_20rnd_556x45";};
	
	_rnd_helmet = ["CPC_nam_gear_us_helmet_m1a1_1","CPC_nam_gear_us_helmet_m1a1_2","CPC_nam_gear_us_helmet_m1a1_3","CPC_nam_gear_us_helmet_m1a1_5","CPC_nam_gear_us_helmet_m1a1_7"] call BIS_fnc_selectRandom;
	this addHeadgear _rnd_helmet;

	this addWeapon "CPC_nam_weapon_m16a1";
	
	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";


};

loadoutUS_RTO = //
{
	_unit = _this select 0;
	this = _unit;

	removeAllWeapons this;
	removeAllItems this;
	removeAllAssignedItems this;
	removeUniform this;
	removeVest this;
	removeBackpack this;
	removeHeadgear this;
	removeGoggles this;
	
	
	this forceAddUniform "CPC_nam_gear_us_uniform";
	for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
	this addItemToUniform "ACE_EarPlugs";
	this addItemToUniform "ACE_morphine";
	for "_i" from 1 to 2 do {this addItemToUniform "CPC_nam_mag_20rnd_556x45";};
	this addItemToUniform "HandGrenade";
	this addVest "CPC_nam_gear_us_vest_2";
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
	for "_i" from 1 to 6 do {this addItemToVest "CPC_nam_mag_20rnd_556x45";};
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShellRed";};
	this addItemToVest "SmokeShellGreen";
	this addBackpack "CPC_nam_gear_bag_alice_green";
	this addItemToBackpack "ACRE_PRC117F";

	_rnd_helmet = ["CPC_nam_gear_us_helmet_m1a1_1","CPC_nam_gear_us_helmet_m1a1_2","CPC_nam_gear_us_helmet_m1a1_3","CPC_nam_gear_us_helmet_m1a1_5","CPC_nam_gear_us_helmet_m1a1_7"] call BIS_fnc_selectRandom;
	this addHeadgear _rnd_helmet;


	this addWeapon "CPC_nam_weapon_m16a1";
	

	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";

};