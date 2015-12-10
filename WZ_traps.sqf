
    private ["_randvec","_randpoint","_t","_u","_r"];

    for "_i" from 0 to 35 do
    {
        _t = pi * 2 * random 1;
        _u = random 1 + random 1;
        _r = if (_u > 1) then { 2 - _u } else { _u };
        _randvec = [_r * cos (180 * _t), _r * sin (180 * _t)];
        _randvec set [2, 0];
        _randvec = _randvec vectorMultiply 750;             // 750 m à la ronde
        _randpoint = (getMarkerPos "WZ_traps") vectorAdd _randvec;
        
        _trg = createTrigger ["EmptyDetector", _randpoint, true];
        _trg setTriggerArea [1, 1, 0, false];
        _trg setTriggerActivation ["WEST", "PRESENT", false];
        _trg setTriggerStatements ["this", "
         {[_x, 'body', 0.3, objNull, 'Bullet'] call ace_medical_fnc_handleDamage;_x say3D 'wz_aie';

_unit = _x;  _particle = '\A3\data_f\cl_basic.p3d';    drop [_particle,'','Billboard',100,1,[(getPos _unit) select 0,(getPos _unit) select 1,0.2],[0,0,0],10,25.5,20,0.14,[0.4,1.0],[[0.8,0.6,0.3,1],[0.8,0.6,0.4,1],[0.9,0.7,0.4,1],[0.8,0.7,0,0]],[0,1,0,1],0,0,'','',''];

} forEach thisList; 
        ", ""];
        
        //[_randpoint, "mil_dot", "ColorBLACK", [.5]] call BIS_fnc_markerCreate;
        
    };