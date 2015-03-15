// by commy2

["ACE3", QGVAR(AzimuthKey), localize "STR_ACE_Vector_AzimuthKey",
{
    // Conditions: canInteract
    if !([ACE_player, objNull, []] call EGVAR(common,canInteractWith)) exitWith {false};
    // Conditions: specific
    if !(currentWeapon ACE_player == "ACE_Vector" && {ACE_player == cameraOn} && {cameraView == "GUNNER"}) exitWith {false};

    // prevent holding down
    if (GETGVAR(isDownStateKey1,false)) exitWith {false};
    GVAR(isDownStateKey1) = true;

    // Statement
    ["azimuth"] call FUNC(onKeyDown);
    true
},
{
    // prevent holding down
    GVAR(isDownStateKey1) = false;

    // Conditions: canInteract
    if !([ACE_player, objNull, []] call EGVAR(common,canInteractWith)) exitWith {false};

    // Statement
    ["azimuth"] call FUNC(onKeyUp);
    true
},
[15, [false, false, false]], false, 0] call CBA_fnc_addKeybind; //Tab Key


["ACE3", QGVAR(DistanceKey), localize "STR_ACE_Vector_DistanceKey",
{
    // Conditions: canInteract
    if !([ACE_player, objNull, []] call EGVAR(common,canInteractWith)) exitWith {false};
    // Conditions: specific
    if !(currentWeapon ACE_player == "ACE_Vector" && {ACE_player == cameraOn} && {cameraView == "GUNNER"}) exitWith {false};

    // prevent holding down
    if (GETGVAR(isDownStateKey2,false)) exitWith {false};
    GVAR(isDownStateKey2) = true;

    // Statement
    ["distance"] call FUNC(onKeyDown);
    true
},
{
    // prevent holding down
    GVAR(isDownStateKey2) = false;

    // Conditions: canInteract
    if !([ACE_player, objNull, []] call EGVAR(common,canInteractWith)) exitWith {false};

    // Statement
    ["distance"] call FUNC(onKeyUp);
    true
},
[19, [false, false, false]], false] call CBA_fnc_addKeybind; //R Key
