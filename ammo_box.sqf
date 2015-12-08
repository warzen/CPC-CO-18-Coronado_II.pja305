/////////   MP Ammo Box script
/////////   By: Riouken
/////////   For Arma 3
/////////   calling the scipt in the init of the object :
/////////	nul =[this] execVM "ammo_box.sqf";

if (! isServer) exitWith {};

_crate = _this select 0;


clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearItemCargoGlobal _crate;
clearBackpackCargoGlobal _crate;


/*
///Else///
_crate additemCargoGlobal ["SatchelCharge_Remote_Mag",2];
_crate additemCargoGlobal ["DemoCharge_Remote_Mag",4];

///Backpack///
_crate addBackpackCargoGlobal ["B_Carryall_oli",1];
*/