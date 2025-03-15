globals
//globals from SimError:
constant boolean LIBRARY_SimError=true
sound SimError__error
//endglobals from SimError
//globals from TreeUtils:
constant boolean LIBRARY_TreeUtils=true
constant integer SUMMER_TREE_WALL= 'LTlt'
constant integer ASHENVALE_TREE_WALL= 'ATtr'
constant integer ASHENVALE_CANOPY_TREE= 'ATtc'
constant integer BARRENS_TREE_WALL= 'BTtw'
constant integer BARRENS_CANOPY_TREE= 'BTtc'
constant integer BLACK_CITADEL_TREE_WALL= 'KTtw'
constant integer CITYSCAPE_SNOWY_TREE_WALL= 'YTst'
constant integer CITYSCAPE_FALL_TREE_WALL= 'YTft'
constant integer CITYSCAPE_WINTER_TREE_WALL= 'YTwt'
constant integer CITYSCAPE_SUMMER_TREE_WALL= 'YTct'
constant integer DALARAN_RUINS_TREE_WALL= 'JTtw'
constant integer DUNGEON_TREE_WALL= 'DTsh'
constant integer FELWOOD_TREE_WALL= 'CTtr'
constant integer FELWOOD_CANOPY_TREE= 'CTtc'
constant integer ICECROWN_TREE_WALL= 'ITtw'
constant integer ICECROWN_CANOPY_TREE= 'ITtc'
constant integer WINTER_TREE_WALL= 'WTtw'
constant integer NORTHREND_TREE_WALL= 'NTtw'
constant integer SNOWY_TREE_WALL= 'WTst'
constant integer OUTLAND_TREE_WALL= 'OTtw'
constant integer RUINS_TREE_WALL= 'ZTtw'
constant integer RUINS_CANOPY_TREE= 'ZTtc'
constant integer UNDERGROUND_TREE_WALL= 'GTsh'
constant integer VILLAGE_TREE_WALL= 'VTlt'
constant integer FALL_TREE_WALL= 'FTtw'
constant integer SCORCHED_TREE_WALL= 'Ytsc'
constant integer SILVERMOON_TREE= 'Yts1'

integer array TreeUtils__ids
integer TreeUtils__count= 0
//endglobals from TreeUtils
//globals from HideInTrees:
constant boolean LIBRARY_HideInTrees=true
constant string HideInTrees_ORDER_HIDE= "eattree"
constant integer HideInTrees_ABILITY_ID_HIDE= 'A00Z'
constant integer HideInTrees_ABILITY_ID_UNHIDE= 'A010'
constant integer HideInTrees_ABILITY_ID_LIFE_REGENERATION= 'A01B'
constant integer HideInTrees_ABILITY_ID_MANA_REGENERATION= 'A01C'
    
constant integer HideInTrees__KEY_UNIT= 0
constant integer HideInTrees__KEY_MOVE_TYPE= 1
constant integer HideInTrees__KEY_ATTACK_0_ENABLED= 2
constant integer HideInTrees__KEY_ATTACK_1_ENABLED= 3

trigger HideInTrees__castTrigger= CreateTrigger()
trigger HideInTrees__orderTrigger= CreateTrigger()
trigger HideInTrees__deathTrigger= CreateTrigger()
    
unit HideInTrees__filterCaster= null
destructable HideInTrees__resultingTree= null
    
group HideInTrees__casters= CreateGroup()
hashtable HideInTrees__h= InitHashtable()
//endglobals from HideInTrees
    // User-defined
force udg_RomanPlayers= null
force udg_GermanicPlayers= null
unit udg_TmpUnit= null
group udg_TmpGroup= null
boolean udg_CinematicSkip= false
timer udg_LightningTimer= null
force udg_RomanPlayersUsers= null
force udg_GermanicPlayersUsers= null

    // Generated
rect gg_rct_Fog= null
rect gg_rct_Fog_2= null
rect gg_rct_Fog_3= null
rect gg_rct_Moonlight= null
rect gg_rct_Waygate_Bottom= null
rect gg_rct_Waygate_Top= null
camerasetup gg_cam_Camera_001= null
camerasetup gg_cam_Camera_002= null
camerasetup gg_cam_Camera_003= null
camerasetup gg_cam_Camera_004= null
camerasetup gg_cam_Camera_005= null
camerasetup gg_cam_Camera_006= null
camerasetup gg_cam_Camera_007= null
sound gg_snd_LightningBolt1= null
sound gg_snd_RollingThunder1= null
trigger gg_trg_Cinematic_Intro_Setup= null
trigger gg_trg_Cinematic_Intro= null
trigger gg_trg_Cinematic_Skip= null
trigger gg_trg_Cinematic_Intro_End= null
trigger gg_trg_Cheats_Lightning= null
trigger gg_trg_Cage_1_Death= null
trigger gg_trg_Cage_2_Death= null
trigger gg_trg_Cage_3_Death= null
trigger gg_trg_Cage_4_Death= null
trigger gg_trg_Breeding_Training= null
trigger gg_trg_Breeding_Death= null
trigger gg_trg_Lightning_Start= null
trigger gg_trg_Lightning_Effect= null
trigger gg_trg_Hunt= null
trigger gg_trg_Initialization= null
trigger gg_trg_Game_Start= null
trigger gg_trg_Player_Leaves_Roman= null
trigger gg_trg_Player_Leaves_Germanic= null
trigger gg_trg_Roman_Victory_Kills= null
trigger gg_trg_Germanic_Victory= null
trigger gg_trg_Shrine_Death= null
unit gg_unit_ngol_0004= null
unit gg_unit_ngol_0003= null
unit gg_unit_h009_0132= null
unit gg_unit_h009_0131= null
unit gg_unit_h009_0130= null
unit gg_unit_h009_0129= null
unit gg_unit_h009_0128= null
unit gg_unit_h009_0127= null
unit gg_unit_ngol_0126= null
unit gg_unit_ngol_0125= null
unit gg_unit_ngol_0124= null
unit gg_unit_ngol_0006= null
unit gg_unit_o003_0265= null
unit gg_unit_o003_0264= null
unit gg_unit_o003_0263= null
unit gg_unit_H008_0123= null
unit gg_unit_h009_0140= null
unit gg_unit_h009_0134= null
unit gg_unit_h003_0080= null
unit gg_unit_h009_0135= null
unit gg_unit_H00D_0005= null
unit gg_unit_h009_0139= null
unit gg_unit_h009_0141= null
unit gg_unit_h009_0133= null
unit gg_unit_h009_0136= null
unit gg_unit_h009_0137= null
unit gg_unit_h009_0138= null
unit gg_unit_O001_0002= null
unit gg_unit_o003_0046= null
unit gg_unit_o003_0047= null
unit gg_unit_o003_0048= null
unit gg_unit_o003_0049= null
unit gg_unit_o003_0050= null
unit gg_unit_o003_0051= null
unit gg_unit_o003_0052= null
unit gg_unit_o003_0053= null
unit gg_unit_o003_0054= null
unit gg_unit_o003_0055= null
unit gg_unit_o003_0068= null
unit gg_unit_o003_0069= null
unit gg_unit_o003_0070= null
unit gg_unit_o003_0071= null
unit gg_unit_o003_0075= null
item gg_item_I001_0426= null
unit gg_unit_H006_0213= null
unit gg_unit_O00H_0067= null
unit gg_unit_h009_0236= null
unit gg_unit_h009_0237= null
unit gg_unit_h009_0238= null
unit gg_unit_h009_0239= null
unit gg_unit_h009_0240= null
unit gg_unit_h009_0242= null
unit gg_unit_h009_0243= null
unit gg_unit_h009_0244= null
unit gg_unit_h009_0246= null
unit gg_unit_h009_0247= null
unit gg_unit_H007_0229= null
unit gg_unit_o003_0257= null
unit gg_unit_o003_0258= null
unit gg_unit_o003_0259= null
unit gg_unit_o003_0260= null
unit gg_unit_o003_0261= null
unit gg_unit_o003_0262= null
item gg_item_I000_0421= null
item gg_item_I000_0422= null
item gg_item_I000_0423= null
item gg_item_I001_0424= null
item gg_item_I001_0425= null
destructable gg_dest_B000_0716= null
destructable gg_dest_B000_5163= null
destructable gg_dest_B000_6435= null
destructable gg_dest_B000_7302= null
destructable gg_dest_B000_7505= null
destructable gg_dest_B000_8108= null
destructable gg_dest_LOcg_12552= null
destructable gg_dest_LOcg_12553= null
destructable gg_dest_LOcg_12554= null
destructable gg_dest_LOcg_17750= null
trigger gg_trg_Strings= null

trigger l__library_init

//JASSHelper struct globals:
trigger array st___prototype9
trigger array st___prototype14
unit f__arg_unit1
destructable f__arg_destructable1

endglobals

function sc___prototype9_execute takes integer i,unit a1 returns nothing
    set f__arg_unit1=a1

    call TriggerExecute(st___prototype9[i])
endfunction
function sc___prototype9_evaluate takes integer i,unit a1 returns nothing
    set f__arg_unit1=a1

    call TriggerEvaluate(st___prototype9[i])

endfunction
function sc___prototype14_execute takes integer i,destructable a1 returns nothing
    set f__arg_destructable1=a1

    call TriggerExecute(st___prototype14[i])
endfunction
function sc___prototype14_evaluate takes integer i,destructable a1 returns nothing
    set f__arg_destructable1=a1

    call TriggerEvaluate(st___prototype14[i])

endfunction
function h__RemoveUnit takes unit a0 returns nothing
    //hook: HideInTrees__RemoveUnitHook
    call sc___prototype9_evaluate(1,a0)
call RemoveUnit(a0)
endfunction
function h__RemoveDestructable takes destructable a0 returns nothing
    //hook: HideInTrees__RemoveDestructableHook
    call sc___prototype14_evaluate(1,a0)
call RemoveDestructable(a0)
endfunction

//library SimError:
//**************************************************************************************************
//*
//*  SimError
//*
//*     Mimic an interface error message
//*       call SimError(ForPlayer, msg)
//*         ForPlayer : The player to show the error
//*         msg       : The error
//* 
//*     To implement this function, copy this trigger and paste it in your map.
//* Unless of course you are actually reading the library from wc3c's scripts section, then just
//* paste the contents into some custom text trigger in your map.
//*
//**************************************************************************************************

//==================================================================================================
    //====================================================================================================

    function SimError takes player ForPlayer,string msg returns nothing
        set msg="\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n|cffffcc00" + msg + "|r"
        if ( GetLocalPlayer() == ForPlayer ) then
            call ClearTextMessages()
            call DisplayTimedTextToPlayer(ForPlayer, 0.52, 0.96, 2.00, msg)
            call StartSound(SimError__error)
        endif
    endfunction

    function SimError__init takes nothing returns nothing
         set SimError__error=CreateSoundFromLabel("InterfaceError", false, false, false, 10, 10)
         //call StartSound( error ) //apparently the bug in which you play a sound for the first time
                                    //and it doesn't work is not there anymore in patch 1.22
    endfunction


//library SimError ends
//library TreeUtils:


function AddTree takes integer id returns integer
    local integer index= TreeUtils__count
    set TreeUtils__ids[index]=id
    set TreeUtils__count=index + 1
    return index
endfunction

function GetTree takes integer index returns integer
    return TreeUtils__ids[index]
endfunction

function GetTreeCount takes nothing returns integer
    return TreeUtils__count
endfunction

function IsTree takes integer id returns boolean
    local integer i= 0
    loop
        exitwhen ( i == TreeUtils__count )
        if ( TreeUtils__ids[i] == id ) then
            return true
        endif
        set i=i + 1
    endloop
    return false
endfunction

function IsDestructableTree takes destructable whichDestructable returns boolean
    return IsTree(GetDestructableTypeId(whichDestructable))
endfunction

function TreeUtils__Init takes nothing returns nothing
    call AddTree(SUMMER_TREE_WALL)
    call AddTree(ASHENVALE_TREE_WALL)
    call AddTree(ASHENVALE_CANOPY_TREE)
    call AddTree(BARRENS_TREE_WALL)
    call AddTree(BARRENS_CANOPY_TREE)
    call AddTree(BLACK_CITADEL_TREE_WALL)
    call AddTree(CITYSCAPE_SNOWY_TREE_WALL)
    call AddTree(CITYSCAPE_FALL_TREE_WALL)
    call AddTree(CITYSCAPE_WINTER_TREE_WALL)
    call AddTree(CITYSCAPE_SUMMER_TREE_WALL)
    call AddTree(DALARAN_RUINS_TREE_WALL)
    call AddTree(DUNGEON_TREE_WALL)
    call AddTree(FELWOOD_TREE_WALL)
    call AddTree(FELWOOD_CANOPY_TREE)
    call AddTree(ICECROWN_TREE_WALL)
    call AddTree(ICECROWN_CANOPY_TREE)
    call AddTree(WINTER_TREE_WALL)
    call AddTree(NORTHREND_TREE_WALL)
    call AddTree(SNOWY_TREE_WALL)
    call AddTree(OUTLAND_TREE_WALL)
    call AddTree(RUINS_TREE_WALL)
    call AddTree(RUINS_CANOPY_TREE)
    call AddTree(UNDERGROUND_TREE_WALL)
    call AddTree(VILLAGE_TREE_WALL)
    call AddTree(FALL_TREE_WALL)
    call AddTree(SCORCHED_TREE_WALL)
    call AddTree(SILVERMOON_TREE)
    
    call AddTree('B000') // Oak
    call AddTree('B002') // Birch
    call AddTree('B003') // Pine
endfunction


//library TreeUtils ends
//library HideInTrees:


function HideInTrees__GetTreeHiddenUnit takes destructable t returns unit
    return LoadUnitHandle(HideInTrees__h, GetHandleId(t), HideInTrees__KEY_UNIT)
endfunction

function HideInTrees__HideUnit takes unit whichUnit,destructable tree returns nothing
    call GroupAddUnit(HideInTrees__casters, whichUnit)
    call SetUnitInvulnerable(whichUnit, true)
    call SetUnitPathing(whichUnit, false)
    call SetUnitX(whichUnit, GetDestructableX(tree))
    call SetUnitY(whichUnit, GetDestructableY(tree))
    call BlzUnitDisableAbility(GetTriggerUnit(), 'Amov', true, true)
    call SaveUnitHandle(HideInTrees__h, GetHandleId(tree), HideInTrees__KEY_UNIT, whichUnit)
    call SaveInteger(HideInTrees__h, GetHandleId(whichUnit), HideInTrees__KEY_MOVE_TYPE, BlzGetUnitIntegerField(whichUnit, UNIT_IF_MOVE_TYPE))
    call SaveBoolean(HideInTrees__h, GetHandleId(whichUnit), HideInTrees__KEY_ATTACK_0_ENABLED, BlzGetUnitWeaponBooleanField(whichUnit, UNIT_WEAPON_BF_ATTACKS_ENABLED, 0))
    call SaveBoolean(HideInTrees__h, GetHandleId(whichUnit), HideInTrees__KEY_ATTACK_1_ENABLED, BlzGetUnitWeaponBooleanField(whichUnit, UNIT_WEAPON_BF_ATTACKS_ENABLED, 1))
    call BlzSetUnitIntegerField(whichUnit, UNIT_IF_MOVE_TYPE, 0)
    call BlzSetUnitWeaponBooleanField(whichUnit, UNIT_WEAPON_BF_ATTACKS_ENABLED, 0, false)
    call BlzSetUnitWeaponBooleanField(whichUnit, UNIT_WEAPON_BF_ATTACKS_ENABLED, 1, false)
    call UnitAddAbility(whichUnit, 'Apiv')
    call UnitAddAbility(whichUnit, HideInTrees_ABILITY_ID_LIFE_REGENERATION)
    call UnitAddAbility(whichUnit, HideInTrees_ABILITY_ID_LIFE_REGENERATION)
    call UnitAddAbility(whichUnit, HideInTrees_ABILITY_ID_UNHIDE)
    call UnitAddType(whichUnit, UNIT_TYPE_SNARED)
    //call BJDebugMsg(GetUnitName(whichUnit) + " cast on " + GetDestructableName(tree))
endfunction

function HideInTrees__UnhideUnit takes unit whichUnit returns nothing
    if ( IsUnitInGroup(whichUnit, HideInTrees__casters) ) then
        call GroupRemoveUnit(HideInTrees__casters, whichUnit)
        call SetUnitInvulnerable(whichUnit, false)
        call SetUnitPathing(whichUnit, true)
        call SetUnitPosition(whichUnit, GetUnitX(whichUnit), GetUnitY(whichUnit)) // for collision
        call BlzUnitDisableAbility(GetTriggerUnit(), 'Amov', false, false)
        call UnitRemoveAbility(whichUnit, 'Apiv')
        call UnitRemoveAbility(whichUnit, HideInTrees_ABILITY_ID_LIFE_REGENERATION)
        call UnitRemoveAbility(whichUnit, HideInTrees_ABILITY_ID_MANA_REGENERATION)
        call UnitRemoveAbility(whichUnit, HideInTrees_ABILITY_ID_UNHIDE)
        //call BJDebugMsg(GetUnitName(whichUnit) + " cast unhide")
        
        call BlzSetUnitIntegerField(whichUnit, UNIT_IF_MOVE_TYPE, LoadInteger(HideInTrees__h, GetHandleId(whichUnit), HideInTrees__KEY_MOVE_TYPE))
        call BlzSetUnitWeaponBooleanField(whichUnit, UNIT_WEAPON_BF_ATTACKS_ENABLED, 0, LoadBoolean(HideInTrees__h, GetHandleId(whichUnit), HideInTrees__KEY_ATTACK_0_ENABLED))
        call BlzSetUnitWeaponBooleanField(whichUnit, UNIT_WEAPON_BF_ATTACKS_ENABLED, 1, LoadBoolean(HideInTrees__h, GetHandleId(whichUnit), HideInTrees__KEY_ATTACK_1_ENABLED))
   
        call FlushChildHashtable(HideInTrees__h, GetHandleId(whichUnit))
    endif
endfunction

function HideInTrees__TriggerConditionCast takes nothing returns boolean
    if ( GetSpellAbilityId() == HideInTrees_ABILITY_ID_HIDE ) then
        if ( (LoadUnitHandle(HideInTrees__h, GetHandleId((GetSpellTargetDestructable())), HideInTrees__KEY_UNIT)) == null ) then // INLINED!!
            call HideInTrees__HideUnit(GetTriggerUnit() , GetSpellTargetDestructable())
        else
            call IssueImmediateOrder(GetTriggerUnit(), "stop")
            call SimError(GetOwningPlayer(GetTriggerUnit()) , GetLocalizedString("TRIGSTR_728")) //  "Tree is already occupied."
        endif
    elseif ( GetSpellAbilityId() == HideInTrees_ABILITY_ID_UNHIDE ) then
        call HideInTrees__UnhideUnit(GetTriggerUnit())
    endif
    
    return false
endfunction

function HideInTrees__DistanceBetweenCoordinates takes real x1,real y1,real x2,real y2 returns real
    local real dx= ( x2 - x1 )
    local real dy= ( y2 - y1 )
    return SquareRoot(dx * dx + dy * dy)
endfunction

function HideInTrees__EnumDestructableFreeTree takes nothing returns nothing
    if ( (IsTree(GetDestructableTypeId((GetEnumDestructable())))) and (LoadUnitHandle(HideInTrees__h, GetHandleId((GetEnumDestructable())), HideInTrees__KEY_UNIT)) == null and ( HideInTrees__resultingTree == null or HideInTrees__DistanceBetweenCoordinates(GetUnitX(HideInTrees__filterCaster) , GetUnitY(HideInTrees__filterCaster) , GetDestructableX(GetEnumDestructable()) , GetDestructableY(GetEnumDestructable())) < HideInTrees__DistanceBetweenCoordinates(GetUnitX(HideInTrees__filterCaster) , GetUnitY(HideInTrees__filterCaster) , GetDestructableX(HideInTrees__resultingTree) , GetDestructableY(HideInTrees__resultingTree)) ) ) then // INLINED!!
        set HideInTrees__resultingTree=GetEnumDestructable()
    endif
endfunction

function HideInTrees__GetFreeTreeNextTo takes unit caster,real x,real y returns destructable
    local location l= Location(x, y)
    set HideInTrees__resultingTree=null
    set HideInTrees__filterCaster=caster
    call EnumDestructablesInCircleBJ(64.0, l, function HideInTrees__EnumDestructableFreeTree)
    call RemoveLocation(l)
    set l=null
    return HideInTrees__resultingTree
endfunction

function HideInTrees__OrderNextToTree takes unit caster,real x,real y returns nothing
    local destructable tree= HideInTrees__GetFreeTreeNextTo(caster , x , y)
    if ( tree != null ) then
        //call BJDebugMsg("Found tree " + GetDestructableName(tree))
        call IssueTargetDestructableOrder(caster, HideInTrees_ORDER_HIDE, tree)
        set tree=null
    endif
endfunction

function HideInTrees__TriggerConditionOrder takes nothing returns boolean
    if ( GetIssuedOrderId() == OrderId("smart") and GetUnitAbilityLevel(GetTriggerUnit(), HideInTrees_ABILITY_ID_HIDE) > 0 ) then
        //call BJDebugMsg("Order!")
        call HideInTrees__OrderNextToTree(GetTriggerUnit() , GetOrderPointX() , GetOrderPointY())
    endif
    
    return false
endfunction

function HideInTrees__FilterIsTree takes nothing returns boolean
    return (IsTree(GetDestructableTypeId((GetFilterDestructable())))) // INLINED!!
endfunction

function HideInTrees__RegisterDestDeathInRegionEnumX takes nothing returns nothing
    call TriggerRegisterDeathEvent(bj_destInRegionDiesTrig, GetEnumDestructable())
endfunction

function HideInTrees__TriggerConditionDeath takes nothing returns boolean
    if ( (LoadUnitHandle(HideInTrees__h, GetHandleId((GetTriggerDestructable())), HideInTrees__KEY_UNIT)) != null ) then // INLINED!!
        call HideInTrees__UnhideUnit((LoadUnitHandle(HideInTrees__h, GetHandleId((GetTriggerDestructable())), HideInTrees__KEY_UNIT))) // INLINED!!
        call FlushChildHashtable(HideInTrees__h, GetHandleId(GetTriggerDestructable()))
    endif
    
    return false
endfunction

function HideInTrees__Init takes nothing returns nothing
    call TriggerRegisterAnyUnitEventBJ(HideInTrees__castTrigger, EVENT_PLAYER_UNIT_SPELL_CHANNEL)
    call TriggerAddCondition(HideInTrees__castTrigger, Condition(function HideInTrees__TriggerConditionCast))
    
    call TriggerRegisterAnyUnitEventBJ(HideInTrees__orderTrigger, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(HideInTrees__orderTrigger, Condition(function HideInTrees__TriggerConditionOrder))
    
    set bj_destInRegionDiesTrig=HideInTrees__deathTrigger
    call EnumDestructablesInRect(GetPlayableMapRect(), Filter(function HideInTrees__FilterIsTree), function HideInTrees__RegisterDestDeathInRegionEnumX)
    call TriggerAddCondition(HideInTrees__deathTrigger, Condition(function HideInTrees__TriggerConditionDeath))
endfunction

function HideInTrees__RemoveUnitHook takes unit whichUnit returns nothing
    if ( IsUnitInGroup(whichUnit, HideInTrees__casters) ) then
        call GroupRemoveUnit(HideInTrees__casters, whichUnit)
        call FlushChildHashtable(HideInTrees__h, GetHandleId(whichUnit))
    endif
endfunction

function HideInTrees__RemoveDestructableHook takes destructable whichDestructable returns nothing
    call FlushChildHashtable(HideInTrees__h, GetHandleId(whichDestructable))
endfunction

//processed hook: hook RemoveUnit HideInTrees__RemoveUnitHook
//processed hook: hook RemoveDestructable HideInTrees__RemoveDestructableHook


//library HideInTrees ends
//===========================================================================
// 
// Battle of the Teutoburg Forest 1.3
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Map Author: Baradé
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    set udg_RomanPlayers=CreateForce()
    set udg_GermanicPlayers=CreateForce()
    set udg_TmpGroup=CreateGroup()
    set udg_CinematicSkip=false
    set udg_LightningTimer=CreateTimer()
    set udg_RomanPlayersUsers=CreateForce()
    set udg_GermanicPlayersUsers=CreateForce()
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//***************************************************************************
//*  SimError
//***************************************************************************
//*  TreeUtils
//***************************************************************************
//*  Hide In Trees

//***************************************************************************
//*
//*  Unit Item Tables
//*
//***************************************************************************

function Unit000181_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_ANY, 5), 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000184_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_ANY, 4), 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000188_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_ANY, 4), 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000191_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_ANY, 4), 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000230_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_ANY, 5), 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000235_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_ANY, 5), 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000251_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_ANY, 6), 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000292_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('gfor', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000293_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('rreb', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000294_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('rreb', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000295_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('rreb', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000383_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_ANY, 5), 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Unit000417_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem(ChooseRandomItemEx(ITEM_TYPE_ANY, 8), 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction


//***************************************************************************
//*
//*  Destructible Item Tables
//*
//***************************************************************************

function Doodad005335_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('gobm', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad005337_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('gobm', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad005944_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('gobm', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad012544_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('gobm', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad012545_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('gobm', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad012549_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('gobm', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad012550_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('gobm', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad012551_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('gobm', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad019414_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('rres', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad019415_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('hslv', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad019416_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('rspd', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad019417_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('rres', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad019418_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('hslv', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad019419_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('rspd', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad019420_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('rres', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad019421_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('hslv', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction

function Doodad019422_DropItems takes nothing returns nothing
    local widget trigWidget= null
    local unit trigUnit= null
    local integer itemID= 0
    local boolean canDrop= true

    set trigWidget=bj_lastDyingWidget
    if ( trigWidget == null ) then
        set trigUnit=GetTriggerUnit()
    endif

    if ( trigUnit != null ) then
        set canDrop=not IsUnitHidden(trigUnit)
        if ( canDrop and GetChangingUnit() != null ) then
            set canDrop=( GetChangingUnitPrevOwner() == Player(PLAYER_NEUTRAL_AGGRESSIVE) )
        endif
    endif

    if ( canDrop ) then
        // Item set 0
        call RandomDistReset()
        call RandomDistAddItem('rspd', 100)
        set itemID=RandomDistChoose()
        if ( trigUnit != null ) then
            call UnitDropItem(trigUnit, itemID)
        else
            call WidgetDropItem(trigWidget, itemID)
        endif

    endif

    set bj_lastDyingWidget=null
    call DestroyTrigger(GetTriggeringTrigger())
endfunction


//***************************************************************************
//*
//*  Sound Assets
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_LightningBolt1=CreateSound("Doodads/Cinematic/Lightningbolt/LightningBolt1.flac", false, false, true, 1, 1, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_LightningBolt1, "CinematicLightningBolt")
    call SetSoundDuration(gg_snd_LightningBolt1, 3000)
    call SetSoundChannel(gg_snd_LightningBolt1, 10)
    call SetSoundVolume(gg_snd_LightningBolt1, 127)
    set gg_snd_RollingThunder1=CreateSound("Sound/Ambient/DoodadEffects/RollingThunder1.flac", false, false, false, 0, 0, "DefaultEAXON")
    call SetSoundParamsFromLabel(gg_snd_RollingThunder1, "RollingThunderSound")
    call SetSoundDuration(gg_snd_RollingThunder1, 3831)
    call SetSoundVolume(gg_snd_RollingThunder1, 127)
endfunction

//***************************************************************************
//*
//*  Destructable Objects
//*
//***************************************************************************

function CreateAllDestructables takes nothing returns nothing
    local destructable d
    local trigger t
    local real life
    set gg_dest_B000_0716=BlzCreateDestructableWithSkin('B000', - 3296.0, - 7520.0, 270.000, 0.800, 1, 'B000')
    set gg_dest_B000_5163=BlzCreateDestructableWithSkin('B000', 4320.0, - 6240.0, 270.000, 0.800, 1, 'B000')
    set gg_dest_B000_8108=BlzCreateDestructableWithSkin('B000', 4640.0, - 96.0, 270.000, 0.800, 0, 'B000')
    set gg_dest_B000_7505=BlzCreateDestructableWithSkin('B000', - 672.0, 2208.0, 270.000, 0.800, 2, 'B000')
    set gg_dest_B000_7302=BlzCreateDestructableWithSkin('B000', - 6880.0, - 224.0, 270.000, 0.800, 2, 'B000')
    set gg_dest_B000_6435=BlzCreateDestructableWithSkin('B000', 1248.0, 6624.0, 270.000, 0.800, 2, 'B000')
    set gg_dest_LOcg_17750=BlzCreateDestructableWithSkin('LOcg', 7360.0, - 6400.0, 177.774, 0.921, 0, 'LOcg')
    set gg_dest_LOcg_12553=BlzCreateDestructableWithSkin('LOcg', - 2240.0, - 2240.0, 290.282, 0.915, 0, 'LOcg')
    set gg_dest_LOcg_12554=BlzCreateDestructableWithSkin('LOcg', - 1792.0, - 2368.0, 235.383, 1.091, 0, 'LOcg')
    set gg_dest_LOcg_12552=BlzCreateDestructableWithSkin('LOcg', - 1984.0, - 2240.0, 266.379, 0.921, 0, 'LOcg')
    set d=BlzCreateDestructableWithSkin('LTbr', 3424.0, - 608.0, 109.000, 1.301, 0, 'LTbr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad019421_DropItems)
    set d=BlzCreateDestructableWithSkin('LTbr', - 5920.0, - 800.0, 109.000, 1.301, 0, 'LTbr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad019415_DropItems)
    set d=BlzCreateDestructableWithSkin('LTbr', 3360.0, - 672.0, 110.000, 1.344, 0, 'LTbr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad019420_DropItems)
    set d=BlzCreateDestructableWithSkin('LTbr', - 2144.0, 1312.0, 110.000, 1.344, 0, 'LTbr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad019417_DropItems)
    set d=BlzCreateDestructableWithSkin('LTbr', - 2080.0, 1376.0, 109.000, 1.301, 0, 'LTbr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad019418_DropItems)
    set d=BlzCreateDestructableWithSkin('LTbr', - 5984.0, - 864.0, 110.000, 1.344, 0, 'LTbr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad019414_DropItems)
    set d=BlzCreateDestructableWithSkin('LTbs', - 2208.0, 1376.0, 276.000, 1.349, 0, 'LTbs')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad019419_DropItems)
    set d=BlzCreateDestructableWithSkin('LTbs', - 6048.0, - 800.0, 276.000, 1.349, 0, 'LTbs')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad019416_DropItems)
    set d=BlzCreateDestructableWithSkin('LTbs', 3296.0, - 608.0, 276.000, 1.349, 0, 'LTbs')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad019422_DropItems)
    set d=BlzCreateDestructableWithSkin('LTcr', - 5760.0, - 5120.0, 164.000, 1.027, 1, 'LTcr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad012549_DropItems)
    set d=BlzCreateDestructableWithSkin('LTcr', - 2240.0, 7040.0, 268.000, 0.861, 1, 'LTcr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad012545_DropItems)
    set d=BlzCreateDestructableWithSkin('LTcr', - 2112.0, 7040.0, 206.000, 1.131, 1, 'LTcr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad012544_DropItems)
    set d=BlzCreateDestructableWithSkin('LTcr', 1600.0, - 7424.0, 10.000, 1.025, 1, 'LTcr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad005944_DropItems)
    set d=BlzCreateDestructableWithSkin('LTcr', 1728.0, - 7488.0, 10.000, 1.025, 1, 'LTcr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad005337_DropItems)
    set d=BlzCreateDestructableWithSkin('LTcr', 1856.0, - 7552.0, 10.000, 1.025, 1, 'LTcr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad005335_DropItems)
    set d=BlzCreateDestructableWithSkin('LTcr', - 5696.0, - 4992.0, 312.000, 1.131, 0, 'LTcr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad012551_DropItems)
    set d=BlzCreateDestructableWithSkin('LTcr', - 5632.0, - 5120.0, 10.000, 1.025, 1, 'LTcr')
    set t=CreateTrigger()
    call TriggerRegisterDeathEvent(t, d)
    call TriggerAddAction(t, function SaveDyingWidget)
    call TriggerAddAction(t, function Doodad012550_DropItems)
endfunction

//***************************************************************************
//*
//*  Items
//*
//***************************************************************************

function CreateAllItems takes nothing returns nothing
    local integer itemID

    set gg_item_I000_0422=BlzCreateItemWithSkin('I000', - 2324.1, 1111.3, 'I000')
    set gg_item_I000_0423=BlzCreateItemWithSkin('I000', 3616.1, - 666.5, 'I000')
    set gg_item_I000_0421=BlzCreateItemWithSkin('I000', - 5332.1, - 537.4, 'I000')
    set gg_item_I001_0424=BlzCreateItemWithSkin('I001', - 4793.4, - 5626.4, 'I001')
    set gg_item_I001_0426=BlzCreateItemWithSkin('I001', 243.4, 5649.5, 'I001')
    set gg_item_I001_0425=BlzCreateItemWithSkin('I001', 3132.7, - 6009.8, 'I001')
    call BlzCreateItemWithSkin('gold', 7272.1, - 6156.1, 'gold')
    call BlzCreateItemWithSkin('gold', 7155.2, - 6161.5, 'gold')
    call BlzCreateItemWithSkin('lmbr', 7032.9, - 6400.7, 'lmbr')
    call BlzCreateItemWithSkin('lmbr', 7035.2, - 6282.4, 'lmbr')
    call BlzCreateItemWithSkin('rhe2', 7261.7, 2550.5, 'rhe2')
    call BlzCreateItemWithSkin('rman', 7249.2, 2283.7, 'rman')
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'h00C', - 5568.0, - 64.0, 270.000, 'h00C')
    set u=BlzCreateUnitWithSkin(p, 'h00A', - 6528.0, - 384.0, 270.000, 'h00A')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 4992.0, - 960.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 4736.0, - 896.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 4864.0, - 1152.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 4672.0, - 1088.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00P', - 5920.0, - 544.0, 270.000, 'h00P')
    set u=BlzCreateUnitWithSkin(p, 'h00F', - 4992.0, 0.0, 270.000, 'h00F')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 5376.0, - 1216.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 5184.0, - 1088.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 5248.0, - 1408.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 5056.0, - 1280.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00J', - 6528.0, - 896.0, 270.000, 'h00J')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 5440.0, - 1536.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 5568.0, - 1344.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 5760.0, - 1472.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 5632.0, - 1664.0, 270.000, 'h00H')
endfunction

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_H00D_0005=BlzCreateUnitWithSkin(p, 'H00D', - 6485.8, - 1510.1, 207.208, 'H00D')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5490.8, - 924.2, 210.759, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5427.3, - 1006.4, 205.515, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5336.9, - 928.8, 226.733, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5128.2, - 755.7, 228.766, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5226.0, - 845.2, 217.981, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5303.0, - 770.6, 214.881, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5401.7, - 849.2, 222.389, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 4964.7, - 619.8, 220.541, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5040.3, - 553.3, 213.046, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5053.6, - 689.4, 222.083, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5116.2, - 613.3, 214.254, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 5196.6, - 680.3, 219.060, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h001', - 6170.7, - 1290.7, 203.739, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h001', - 6127.6, - 1404.4, 203.739, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h001', - 6346.6, - 1378.3, 203.739, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h001', - 6297.7, - 1492.0, 203.739, 'h001')
    set gg_unit_h003_0080=BlzCreateUnitWithSkin(p, 'h003', - 5571.4, - 1079.5, 207.634, 'h003')
    set u=BlzCreateUnitWithSkin(p, 'h00G', - 4857.9, - 552.2, 209.402, 'h00G')
    set u=BlzCreateUnitWithSkin(p, 'h00G', - 4930.3, - 462.6, 213.716, 'h00G')
    set gg_unit_h009_0127=BlzCreateUnitWithSkin(p, 'h009', - 5693.7, 386.1, 270.000, 'h009')
    set gg_unit_h009_0128=BlzCreateUnitWithSkin(p, 'h009', - 5580.4, 399.2, 270.000, 'h009')
    set gg_unit_h009_0129=BlzCreateUnitWithSkin(p, 'h009', - 5702.2, 259.6, 270.000, 'h009')
    set gg_unit_h009_0130=BlzCreateUnitWithSkin(p, 'h009', - 5577.3, 266.5, 270.000, 'h009')
    set gg_unit_h009_0131=BlzCreateUnitWithSkin(p, 'h009', - 5650.1, 163.5, 270.000, 'h009')
    set u=BlzCreateUnitWithSkin(p, 'h00I', - 5916.7, - 1207.8, 207.537, 'h00I')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 4808.6, - 393.1, 208.593, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 4678.3, - 339.0, 219.710, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 4566.4, - 279.7, 220.058, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 4451.6, - 228.4, 221.283, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 4742.6, - 479.8, 215.676, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 4613.7, - 427.5, 211.708, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 4500.7, - 380.9, 212.615, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 4375.5, - 326.0, 209.248, 'n001')
    set gg_unit_h009_0236=BlzCreateUnitWithSkin(p, 'h009', - 6836.4, - 563.2, 270.000, 'h009')
    set gg_unit_h009_0237=BlzCreateUnitWithSkin(p, 'h009', - 6961.3, - 570.1, 270.000, 'h009')
    set gg_unit_h009_0238=BlzCreateUnitWithSkin(p, 'h009', - 6839.5, - 430.5, 270.000, 'h009')
    set gg_unit_h009_0239=BlzCreateUnitWithSkin(p, 'h009', - 6952.8, - 443.6, 270.000, 'h009')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 4238.0, - 180.8, 216.528, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'h004', - 4062.3, - 7.5, 222.003, 'h004')
    set u=BlzCreateUnitWithSkin(p, 'h004', - 3976.6, - 81.9, 216.248, 'h004')
endfunction

//===========================================================================
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'h00C', - 640.0, 512.0, 270.000, 'h00C')
    set u=BlzCreateUnitWithSkin(p, 'h00A', - 768.0, 1792.0, 270.000, 'h00A')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 2176.0, 1600.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 2368.0, 1472.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 2496.0, 1664.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 2304.0, 1792.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 2560.0, 1344.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 2752.0, 1216.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 2880.0, 1408.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 2688.0, 1536.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00P', - 1696.0, 1760.0, 270.000, 'h00P')
    set u=BlzCreateUnitWithSkin(p, 'h00F', - 1216.0, 1792.0, 270.000, 'h00F')
    set u=BlzCreateUnitWithSkin(p, 'h00J', - 1600.0, 448.0, 270.000, 'h00J')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 3072.0, 1280.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 2944.0, 1088.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 3264.0, 1088.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', - 3136.0, 896.0, 270.000, 'h00H')
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'h000', - 2619.8, 817.8, 212.048, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2493.0, 731.8, 209.616, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2391.4, 766.2, 210.349, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2306.4, 778.5, 192.817, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2196.8, 796.2, 226.307, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2310.9, 885.1, 196.312, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2409.9, 877.6, 210.972, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2582.3, 718.4, 213.829, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2506.1, 845.4, 219.209, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2213.2, 896.6, 217.927, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2138.2, 953.7, 230.854, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', - 2080.6, 874.2, 228.601, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h001', - 3314.8, 483.4, 202.942, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h003', - 2680.1, 740.4, 225.223, 'h003')
    set u=BlzCreateUnitWithSkin(p, 'h00G', - 1965.4, 947.6, 210.905, 'h00G')
    set u=BlzCreateUnitWithSkin(p, 'h00G', - 2046.6, 1012.9, 225.779, 'h00G')
    set gg_unit_H008_0123=BlzCreateUnitWithSkin(p, 'H008', - 3494.1, 341.9, 217.193, 'H008')
    set gg_unit_h009_0132=BlzCreateUnitWithSkin(p, 'h009', - 1147.6, 583.7, 270.000, 'h009')
    set gg_unit_h009_0133=BlzCreateUnitWithSkin(p, 'h009', - 1034.3, 596.8, 270.000, 'h009')
    set gg_unit_h009_0134=BlzCreateUnitWithSkin(p, 'h009', - 1156.1, 457.1, 270.000, 'h009')
    set gg_unit_h009_0135=BlzCreateUnitWithSkin(p, 'h009', - 1031.2, 464.1, 270.000, 'h009')
    set gg_unit_h009_0136=BlzCreateUnitWithSkin(p, 'h009', - 1104.0, 361.0, 270.000, 'h009')
    set u=BlzCreateUnitWithSkin(p, 'h00I', - 2926.4, 585.6, 207.984, 'h00I')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 1923.4, 1095.7, 226.561, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 1826.6, 1156.2, 233.751, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 1708.4, 1204.2, 224.114, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 1585.1, 1234.2, 209.361, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 1849.0, 1026.1, 236.842, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 1766.2, 1078.8, 233.898, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 1653.9, 1117.7, 237.360, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', - 1557.8, 1135.5, 202.577, 'n001')
    set gg_unit_h009_0240=BlzCreateUnitWithSkin(p, 'h009', - 459.5, 1965.0, 270.000, 'h009')
    set u=BlzCreateUnitWithSkin(p, 'h009', - 584.4, 1958.1, 270.000, 'h009')
    set gg_unit_h009_0242=BlzCreateUnitWithSkin(p, 'h009', - 462.6, 2097.7, 270.000, 'h009')
    set gg_unit_h009_0243=BlzCreateUnitWithSkin(p, 'h009', - 575.9, 2084.6, 270.000, 'h009')
    set u=BlzCreateUnitWithSkin(p, 'h001', - 3281.0, 362.9, 202.942, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h001', - 3137.8, 528.4, 202.942, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h001', - 3090.1, 426.5, 202.942, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'e001', - 1368.7, 1200.5, 176.420, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'h004', - 1127.1, 1144.3, 186.160, 'h004')
    set u=BlzCreateUnitWithSkin(p, 'h004', - 1134.9, 1238.4, 186.160, 'h004')
endfunction

//===========================================================================
function CreateBuildingsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'h00C', 4992.0, - 1600.0, 270.000, 'h00C')
    set u=BlzCreateUnitWithSkin(p, 'h00A', 4544.0, - 512.0, 270.000, 'h00A')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 5504.0, - 1408.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 5696.0, - 1408.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 5504.0, - 1600.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 5888.0, - 1408.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00J', 4224.0, - 1600.0, 270.000, 'h00J')
    set u=BlzCreateUnitWithSkin(p, 'h00P', 3680.0, - 1504.0, 270.000, 'h00P')
    set u=BlzCreateUnitWithSkin(p, 'h00F', 3776.0, - 320.0, 270.000, 'h00F')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 2944.0, - 256.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 3136.0, - 256.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 3328.0, - 256.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 3136.0, - 448.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 3328.0, - 448.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 2944.0, - 448.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 6080.0, - 1408.0, 270.000, 'h00H')
    set u=BlzCreateUnitWithSkin(p, 'h00H', 6272.0, - 1408.0, 270.000, 'h00H')
endfunction

//===========================================================================
function CreateUnitsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'h000', 3133.7, - 895.3, 155.903, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3213.7, - 948.4, 161.711, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3573.5, - 954.7, 177.357, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3310.3, - 991.4, 155.459, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3480.9, - 942.3, 166.010, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3550.1, - 1064.6, 176.958, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3286.3, - 847.3, 161.788, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3202.6, - 810.7, 159.307, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3104.9, - 756.9, 157.116, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3377.2, - 902.4, 156.296, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3416.1, - 1038.5, 158.563, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'h001', 2234.3, - 350.9, 188.955, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h001', 2417.1, - 417.2, 162.612, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h001', 2454.7, - 321.9, 155.975, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h001', 2221.6, - 240.4, 188.955, 'h001')
    set u=BlzCreateUnitWithSkin(p, 'h003', 2969.9, - 732.8, 165.248, 'h003')
    set u=BlzCreateUnitWithSkin(p, 'h00G', 3660.1, - 1080.9, 171.154, 'h00G')
    set u=BlzCreateUnitWithSkin(p, 'h00G', 3668.3, - 980.9, 176.700, 'h00G')
    set gg_unit_h009_0137=BlzCreateUnitWithSkin(p, 'h009', 4645.1, - 1813.8, 270.000, 'h009')
    set gg_unit_h009_0138=BlzCreateUnitWithSkin(p, 'h009', 4758.4, - 1800.7, 270.000, 'h009')
    set gg_unit_h009_0139=BlzCreateUnitWithSkin(p, 'h009', 4636.6, - 1940.4, 270.000, 'h009')
    set gg_unit_h009_0140=BlzCreateUnitWithSkin(p, 'h009', 4761.5, - 1933.4, 270.000, 'h009')
    set gg_unit_h009_0141=BlzCreateUnitWithSkin(p, 'h009', 4688.8, - 2036.5, 270.000, 'h009')
    set u=BlzCreateUnitWithSkin(p, 'h00I', 2689.6, - 563.0, 149.656, 'h00I')
    set u=BlzCreateUnitWithSkin(p, 'n001', 3751.8, - 964.2, 181.472, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', 3845.6, - 939.5, 209.399, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', 3935.4, - 904.6, 216.039, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', 4072.3, - 957.4, 205.439, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', 3763.6, - 1068.7, 208.471, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', 3867.9, - 1033.4, 211.530, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', 3970.3, - 1001.2, 212.283, 'n001')
    set u=BlzCreateUnitWithSkin(p, 'n001', 4027.2, - 869.3, 233.765, 'n001')
    set gg_unit_H007_0229=BlzCreateUnitWithSkin(p, 'H007', 2021.3, - 272.0, 206.890, 'H007')
    set gg_unit_h009_0244=BlzCreateUnitWithSkin(p, 'h009', 4275.4, - 308.4, 270.000, 'h009')
    set u=BlzCreateUnitWithSkin(p, 'h009', 4150.5, - 315.3, 270.000, 'h009')
    set gg_unit_h009_0246=BlzCreateUnitWithSkin(p, 'h009', 4272.3, - 175.7, 270.000, 'h009')
    set gg_unit_h009_0247=BlzCreateUnitWithSkin(p, 'h009', 4159.0, - 188.8, 270.000, 'h009')
    set u=BlzCreateUnitWithSkin(p, 'h000', 3043.9, - 829.0, 157.116, 'h000')
    set u=BlzCreateUnitWithSkin(p, 'e001', 4298.4, - 893.0, 176.420, 'e001')
    set u=BlzCreateUnitWithSkin(p, 'h004', 4558.4, - 948.7, 186.160, 'h004')
    set u=BlzCreateUnitWithSkin(p, 'h004', 4550.6, - 854.6, 186.160, 'h004')
endfunction

//===========================================================================
function CreateBuildingsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'o00F', - 4480.0, - 6144.0, 270.000, 'o00F')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 5536.0, - 5856.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o006', - 3648.0, - 5760.0, 270.000, 'o006')
    set u=BlzCreateUnitWithSkin(p, 'o008', - 3488.0, - 7008.0, 270.000, 'o008')
    set u=BlzCreateUnitWithSkin(p, 'o00B', - 4064.0, - 5344.0, 270.000, 'o00B')
    set u=BlzCreateUnitWithSkin(p, 'o00C', - 5312.0, - 6464.0, 270.000, 'o00C')
    set u=BlzCreateUnitWithSkin(p, 'o007', - 3264.0, - 6336.0, 270.000, 'o007')
    set u=BlzCreateUnitWithSkin(p, 'o00D', - 5888.0, - 5504.0, 270.000, 'o00D')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 5472.0, - 5536.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 5152.0, - 5600.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 5216.0, - 5920.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o00I', - 6336.0, - 5248.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o00I', - 3776.0, - 4736.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o00I', - 2560.0, - 6592.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 4000.0, - 6496.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 3872.0, - 6240.0, 270.000, 'o005')
endfunction

//===========================================================================
function CreateUnitsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_O001_0002=BlzCreateUnitWithSkin(p, 'O001', - 4157.8, - 5007.7, 90.849, 'O001')
    set gg_unit_o003_0046=BlzCreateUnitWithSkin(p, 'o003', - 4795.1, - 6454.7, 270.000, 'o003')
    set gg_unit_o003_0047=BlzCreateUnitWithSkin(p, 'o003', - 4651.0, - 6459.0, 270.000, 'o003')
    set gg_unit_o003_0048=BlzCreateUnitWithSkin(p, 'o003', - 4536.8, - 6455.2, 270.000, 'o003')
    set gg_unit_o003_0049=BlzCreateUnitWithSkin(p, 'o003', - 4413.4, - 6461.9, 270.000, 'o003')
    set gg_unit_o003_0050=BlzCreateUnitWithSkin(p, 'o003', - 4291.3, - 6461.8, 270.000, 'o003')
    set u=BlzCreateUnitWithSkin(p, 'o004', - 4796.2, - 5313.1, 90.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'o004', - 4666.2, - 5302.7, 90.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'o004', - 4921.0, - 5301.5, 90.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 4940.3, - 5042.3, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 4800.3, - 5045.5, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 4671.1, - 5053.6, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'o00E', - 5441.8, - 5178.0, 90.000, 'o00E')
    set u=BlzCreateUnitWithSkin(p, 'o00A', - 5443.4, - 5311.8, 90.000, 'o00A')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 4939.4, - 4937.0, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 4804.6, - 4936.2, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 4666.5, - 4942.7, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n003', - 5059.3, - 4929.7, 90.000, 'n003')
    set u=BlzCreateUnitWithSkin(p, 'n003', - 5059.5, - 5054.4, 90.000, 'n003')
    set u=BlzCreateUnitWithSkin(p, 'n003', - 5182.1, - 5047.1, 90.000, 'n003')
    set u=BlzCreateUnitWithSkin(p, 'n003', - 5186.0, - 4929.8, 90.000, 'n003')
    set gg_unit_o003_0257=BlzCreateUnitWithSkin(p, 'o003', - 3221.3, - 7223.1, 270.000, 'o003')
    set gg_unit_o003_0258=BlzCreateUnitWithSkin(p, 'o003', - 3097.9, - 7229.7, 270.000, 'o003')
    set gg_unit_o003_0259=BlzCreateUnitWithSkin(p, 'o003', - 2975.8, - 7229.6, 270.000, 'o003')
    set u=BlzCreateUnitWithSkin(p, 'o004', - 5039.0, - 5305.4, 90.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 4550.8, - 5050.5, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 4537.4, - 4936.9, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'o00E', - 5304.9, - 5187.6, 90.000, 'o00E')
    set u=BlzCreateUnitWithSkin(p, 'o00A', - 5306.4, - 5321.4, 90.000, 'o00A')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 4421.0, - 5056.5, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 4407.6, - 4942.9, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 4293.4, - 5054.5, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 4280.1, - 4941.0, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'h00S', - 4478.6, - 5246.4, 90.000, 'h00S')
endfunction

//===========================================================================
function CreateBuildingsForPlayer4 takes nothing returns nothing
    local player p= Player(4)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'o00F', 3264.0, - 6400.0, 270.000, 'o00F')
    set u=BlzCreateUnitWithSkin(p, 'o007', 4352.0, - 6784.0, 270.000, 'o007')
    set u=BlzCreateUnitWithSkin(p, 'o00C', 2496.0, - 7040.0, 270.000, 'o00C')
    set u=BlzCreateUnitWithSkin(p, 'o006', 2688.0, - 5952.0, 270.000, 'o006')
    set u=BlzCreateUnitWithSkin(p, 'o008', 3872.0, - 6176.0, 270.000, 'o008')
    set u=BlzCreateUnitWithSkin(p, 'o005', 2656.0, - 6560.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', 3360.0, - 5728.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o00D', 1984.0, - 7104.0, 270.000, 'o00D')
    set u=BlzCreateUnitWithSkin(p, 'o005', 2336.0, - 6496.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', 3168.0, - 5472.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o00I', 1536.0, - 7168.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o00I', 3584.0, - 5248.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o00I', 4800.0, - 7040.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o00I', 2112.0, - 5888.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o00B', 3808.0, - 7136.0, 270.000, 'o00B')
    set u=BlzCreateUnitWithSkin(p, 'o005', 4256.0, - 7328.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', 4512.0, - 7328.0, 270.000, 'o005')
endfunction

//===========================================================================
function CreateUnitsForPlayer4 takes nothing returns nothing
    local player p= Player(4)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_o003_0051=BlzCreateUnitWithSkin(p, 'o003', 3042.9, - 6829.5, 270.000, 'o003')
    set gg_unit_o003_0052=BlzCreateUnitWithSkin(p, 'o003', 3129.2, - 6829.1, 270.000, 'o003')
    set gg_unit_o003_0053=BlzCreateUnitWithSkin(p, 'o003', 3263.7, - 6830.9, 270.000, 'o003')
    set gg_unit_o003_0054=BlzCreateUnitWithSkin(p, 'o003', 3384.2, - 6829.3, 270.000, 'o003')
    set gg_unit_o003_0055=BlzCreateUnitWithSkin(p, 'o003', 3503.7, - 6826.2, 270.000, 'o003')
    set gg_unit_O00H_0067=BlzCreateUnitWithSkin(p, 'O00H', 1835.6, - 4844.6, 90.000, 'O00H')
    set u=BlzCreateUnitWithSkin(p, 'o00E', 2664.4, - 7169.6, 248.496, 'o00E')
    set u=BlzCreateUnitWithSkin(p, 'o00A', 2523.7, - 7269.0, 326.388, 'o00A')
    set u=BlzCreateUnitWithSkin(p, 'n002', 1654.5, - 5002.6, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n002', 1789.2, - 5001.8, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n002', 1927.4, - 5008.3, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'o004', 1879.1, - 5421.5, 90.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'o004', 2009.0, - 5411.2, 90.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'o004', 1754.2, - 5409.9, 90.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'n000', 1680.0, - 5147.2, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n000', 1820.0, - 5150.4, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n000', 1949.2, - 5158.5, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n003', 2492.3, - 5461.5, 90.000, 'n003')
    set u=BlzCreateUnitWithSkin(p, 'n003', 2492.1, - 5586.2, 90.000, 'n003')
    set u=BlzCreateUnitWithSkin(p, 'n003', 2369.5, - 5578.9, 90.000, 'n003')
    set u=BlzCreateUnitWithSkin(p, 'n003', 2365.6, - 5461.6, 90.000, 'n003')
    set gg_unit_o003_0260=BlzCreateUnitWithSkin(p, 'o003', 4110.9, - 6365.4, 90.000, 'o003')
    set gg_unit_o003_0261=BlzCreateUnitWithSkin(p, 'o003', 4231.4, - 6363.9, 90.000, 'o003')
    set gg_unit_o003_0262=BlzCreateUnitWithSkin(p, 'o003', 4350.9, - 6360.8, 90.000, 'o003')
    set u=BlzCreateUnitWithSkin(p, 'o004', 2136.0, - 5409.5, 90.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'n000', 2059.2, - 5150.8, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n002', 2055.9, - 5003.4, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'o00E', 1850.1, - 5580.0, 90.000, 'o00E')
    set u=BlzCreateUnitWithSkin(p, 'o00A', 1848.5, - 5713.8, 90.000, 'o00A')
    set u=BlzCreateUnitWithSkin(p, 'o00E', 1987.0, - 5589.7, 90.000, 'o00E')
    set u=BlzCreateUnitWithSkin(p, 'o00A', 1985.5, - 5723.5, 90.000, 'o00A')
    set u=BlzCreateUnitWithSkin(p, 'n002', 1540.6, - 5005.9, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n000', 1566.2, - 5150.4, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n002', 2167.4, - 5005.7, 90.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n000', 2162.5, - 5149.0, 90.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'h00S', 2202.3, - 5646.3, 90.000, 'h00S')
endfunction

//===========================================================================
function CreateBuildingsForPlayer5 takes nothing returns nothing
    local player p= Player(5)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'o00F', 64.0, 6080.0, 270.000, 'o00F')
    set u=BlzCreateUnitWithSkin(p, 'o00D', - 192.0, 5440.0, 270.000, 'o00D')
    set u=BlzCreateUnitWithSkin(p, 'o00B', 736.0, 5920.0, 270.000, 'o00B')
    set u=BlzCreateUnitWithSkin(p, 'o00C', - 704.0, 6016.0, 270.000, 'o00C')
    set u=BlzCreateUnitWithSkin(p, 'o006', - 1472.0, 6208.0, 270.000, 'o006')
    set u=BlzCreateUnitWithSkin(p, 'o007', - 1856.0, 6720.0, 270.000, 'o007')
    set u=BlzCreateUnitWithSkin(p, 'o008', 672.0, 6560.0, 270.000, 'o008')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 800.0, 6368.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 1056.0, 6560.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 608.0, 6624.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 864.0, 6752.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o00I', 1408.0, 6144.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o00I', - 2368.0, 6336.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o00I', - 192.0, 4992.0, 270.000, 'o00I')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 2464.0, 6944.0, 270.000, 'o005')
    set u=BlzCreateUnitWithSkin(p, 'o005', - 2464.0, 6688.0, 270.000, 'o005')
endfunction

//===========================================================================
function CreateUnitsForPlayer5 takes nothing returns nothing
    local player p= Player(5)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_o003_0068=BlzCreateUnitWithSkin(p, 'o003', - 153.6, 6634.0, 90.000, 'o003')
    set gg_unit_o003_0069=BlzCreateUnitWithSkin(p, 'o003', - 85.7, 6632.9, 90.000, 'o003')
    set gg_unit_o003_0070=BlzCreateUnitWithSkin(p, 'o003', 9.8, 6634.0, 90.000, 'o003')
    set gg_unit_o003_0071=BlzCreateUnitWithSkin(p, 'o003', 96.7, 6630.1, 90.000, 'o003')
    set gg_unit_o003_0075=BlzCreateUnitWithSkin(p, 'o003', 186.9, 6630.2, 90.000, 'o003')
    set u=BlzCreateUnitWithSkin(p, 'o00E', - 509.8, 5919.2, 248.496, 'o00E')
    set u=BlzCreateUnitWithSkin(p, 'o00A', - 650.5, 5819.9, 326.388, 'o00A')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 680.5, 4982.0, 270.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 563.1, 4982.7, 270.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 424.9, 4976.2, 270.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'o004', - 481.3, 4667.2, 270.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'o004', - 351.3, 4677.6, 270.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'o004', - 606.2, 4678.8, 270.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 672.3, 4837.4, 270.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 532.3, 4834.2, 270.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 403.1, 4826.0, 270.000, 'n000')
    set gg_unit_H006_0213=BlzCreateUnitWithSkin(p, 'H006', - 529.5, 4531.2, 270.000, 'H006')
    set u=BlzCreateUnitWithSkin(p, 'n003', 177.2, 5395.6, 270.000, 'n003')
    set u=BlzCreateUnitWithSkin(p, 'n003', 176.9, 5270.9, 270.000, 'n003')
    set u=BlzCreateUnitWithSkin(p, 'n003', 54.3, 5278.2, 270.000, 'n003')
    set u=BlzCreateUnitWithSkin(p, 'n003', 50.5, 5395.5, 270.000, 'n003')
    set gg_unit_o003_0263=BlzCreateUnitWithSkin(p, 'o003', 1028.0, 6452.9, 90.000, 'o003')
    set gg_unit_o003_0264=BlzCreateUnitWithSkin(p, 'o003', 1114.8, 6449.0, 90.000, 'o003')
    set gg_unit_o003_0265=BlzCreateUnitWithSkin(p, 'o003', 1205.0, 6449.1, 90.000, 'o003')
    set u=BlzCreateUnitWithSkin(p, 'o004', - 715.6, 4672.9, 270.000, 'o004')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 790.5, 4842.5, 270.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 804.6, 4973.3, 270.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'o00E', 308.4, 5430.4, 270.000, 'o00E')
    set u=BlzCreateUnitWithSkin(p, 'o00A', 306.9, 5296.6, 270.000, 'o00A')
    set u=BlzCreateUnitWithSkin(p, 'o00E', 445.4, 5420.7, 270.000, 'o00E')
    set u=BlzCreateUnitWithSkin(p, 'o00A', 443.8, 5286.9, 270.000, 'o00A')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 312.8, 4964.2, 270.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 288.1, 4820.4, 270.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'n002', - 933.5, 4985.3, 270.000, 'n002')
    set u=BlzCreateUnitWithSkin(p, 'n000', - 911.7, 4835.2, 270.000, 'n000')
    set u=BlzCreateUnitWithSkin(p, 'h00S', - 548.8, 5157.2, 270.000, 'h00S')
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'n004', - 7053.7, - 7317.3, 36.836, 'n004')
    set u=BlzCreateUnitWithSkin(p, 'n004', - 6966.8, - 7513.4, 66.848, 'n004')
    set u=BlzCreateUnitWithSkin(p, 'n005', - 6896.9, - 7373.0, 28.730, 'n005')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000230_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n004', 485.8, - 2324.9, 150.045, 'n004')
    set u=BlzCreateUnitWithSkin(p, 'n005', 533.8, - 2499.1, 342.290, 'n005')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000181_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n005', 642.6, - 2380.7, 83.604, 'n005')
    set u=BlzCreateUnitWithSkin(p, 'n006', - 6162.6, - 3305.2, 38.585, 'n006')
    set u=BlzCreateUnitWithSkin(p, 'n007', - 6088.5, - 3574.3, 167.110, 'n007')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000184_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n006', - 5986.8, - 3416.2, 117.809, 'n006')
    set u=BlzCreateUnitWithSkin(p, 'n006', - 7145.9, 4917.8, 38.585, 'n006')
    set u=BlzCreateUnitWithSkin(p, 'n006', - 7143.7, 4718.0, 316.358, 'n006')
    set u=BlzCreateUnitWithSkin(p, 'n007', - 6956.9, 4769.8, 317.550, 'n007')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000188_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n004', 4762.3, 4501.3, 150.045, 'n004')
    set u=BlzCreateUnitWithSkin(p, 'n005', 4810.3, 4327.1, 178.432, 'n005')
    set u=BlzCreateUnitWithSkin(p, 'n005', 4960.8, 4495.5, 171.010, 'n005')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000191_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n004', - 988.9, - 5773.3, 204.396, 'n004')
    set u=BlzCreateUnitWithSkin(p, 'n005', - 938.4, - 5950.7, 265.235, 'n005')
    set u=BlzCreateUnitWithSkin(p, 'n004', - 5224.7, 6911.1, 192.804, 'n004')
    set u=BlzCreateUnitWithSkin(p, 'n005', - 5176.8, 6736.9, 250.070, 'n005')
    set u=BlzCreateUnitWithSkin(p, 'n005', - 5011.2, 6857.4, 229.524, 'n005')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000235_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n008', 5869.2, - 4497.1, 217.261, 'n008')
    set u=BlzCreateUnitWithSkin(p, 'n008', 5705.3, - 4562.5, 348.134, 'n008')
    set u=BlzCreateUnitWithSkin(p, 'n009', 5818.4, - 4686.6, 157.630, 'n009')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000251_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n004', - 793.4, - 5795.1, 290.900, 'n004')
    set u=BlzCreateUnitWithSkin(p, 'n00B', 7004.0, 2368.8, 155.660, 'n00B')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000292_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n00C', 7023.6, 2167.1, 201.410, 'n00C')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000293_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n00C', 6928.1, 2678.8, 221.190, 'n00C')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000294_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n00C', 6799.4, 2374.0, 201.410, 'n00C')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000295_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n00H', 4024.6, 1828.1, 122.534, 'n00H')
    set u=BlzCreateUnitWithSkin(p, 'n00H', 4078.9, 1718.3, 265.416, 'n00H')
    set u=BlzCreateUnitWithSkin(p, 'n00I', 3970.7, 1746.7, 214.712, 'n00I')
    set u=BlzCreateUnitWithSkin(p, 'n00J', 4108.5, 1778.3, 19.633, 'n00J')
    set u=BlzCreateUnitWithSkin(p, 'n00J', - 2013.4, - 2448.7, 268.951, 'n00J')
    set u=BlzCreateUnitWithSkin(p, 'n00I', - 1903.4, - 2521.4, 234.451, 'n00I')
    set u=BlzCreateUnitWithSkin(p, 'n00H', - 2149.4, - 2401.3, 295.450, 'n00H')
    set u=BlzCreateUnitWithSkin(p, 'n009', 5169.1, 6701.9, 287.560, 'n009')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000383_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n008', 5351.9, 6653.8, 276.399, 'n008')
    set u=BlzCreateUnitWithSkin(p, 'n008', 5022.1, 6578.9, 322.729, 'n008')
    set u=BlzCreateUnitWithSkin(p, 'n00B', 6473.6, - 7152.3, 306.700, 'n00B')
    set t=CreateTrigger()
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(t, u, EVENT_UNIT_CHANGE_OWNER)
    call TriggerAddAction(t, function Unit000417_DropItems)
    set u=BlzCreateUnitWithSkin(p, 'n00C', 6617.9, - 7011.7, 276.577, 'n00C')
    set u=BlzCreateUnitWithSkin(p, 'n00C', 6319.6, - 7199.1, 319.377, 'n00C')
    set u=BlzCreateUnitWithSkin(p, 'n005', 7045.4, - 7394.4, 156.571, 'n005')
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_ngol_0003=BlzCreateUnitWithSkin(p, 'ngol', - 6080.0, 192.0, 270.000, 'ngol')
    call SetResourceAmount(gg_unit_ngol_0003, 1000000)
    set gg_unit_ngol_0004=BlzCreateUnitWithSkin(p, 'ngol', 4992.0, - 2112.0, 270.000, 'ngol')
    call SetResourceAmount(gg_unit_ngol_0004, 1000000)
    set gg_unit_ngol_0006=BlzCreateUnitWithSkin(p, 'ngol', - 1152.0, 64.0, 270.000, 'ngol')
    call SetResourceAmount(gg_unit_ngol_0006, 1000000)
    set gg_unit_ngol_0124=BlzCreateUnitWithSkin(p, 'ngol', 3264.0, - 7104.0, 270.000, 'ngol')
    call SetResourceAmount(gg_unit_ngol_0124, 1000000)
    set gg_unit_ngol_0125=BlzCreateUnitWithSkin(p, 'ngol', - 4480.0, - 6784.0, 270.000, 'ngol')
    call SetResourceAmount(gg_unit_ngol_0125, 1000000)
    set gg_unit_ngol_0126=BlzCreateUnitWithSkin(p, 'ngol', 0.0, 6848.0, 270.000, 'ngol')
    call SetResourceAmount(gg_unit_ngol_0126, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'n00A', - 6144.0, 3648.0, 270.000, 'n00A')
    call SetUnitColor(u, ConvertPlayerColor(11))
    set u=BlzCreateUnitWithSkin(p, 'nfoh', 5888.0, 5696.0, 270.000, 'nfoh')
    set u=BlzCreateUnitWithSkin(p, 'nmoo', 5952.0, - 5248.0, 270.000, 'nmoo')
    set u=BlzCreateUnitWithSkin(p, 'nwgt', - 896.0, - 5056.0, 270.000, 'nwgt')
    call WaygateSetDestination(u, GetRectCenterX(gg_rct_Waygate_Top), GetRectCenterY(gg_rct_Waygate_Top))
    call WaygateActivate(u, true)
    call SetUnitColor(u, ConvertPlayerColor(10))
    set u=BlzCreateUnitWithSkin(p, 'nwgt', 2752.0, 6656.0, 270.000, 'nwgt')
    call WaygateSetDestination(u, GetRectCenterX(gg_rct_Waygate_Bottom), GetRectCenterY(gg_rct_Waygate_Bottom))
    call WaygateActivate(u, true)
    call SetUnitColor(u, ConvertPlayerColor(10))
    set u=BlzCreateUnitWithSkin(p, 'n00A', - 320.0, - 640.0, 270.000, 'n00A')
    call SetUnitColor(u, ConvertPlayerColor(11))
    set u=BlzCreateUnitWithSkin(p, 'ngme', 3712.0, 2240.0, 270.000, 'ngme')
    set u=BlzCreateUnitWithSkin(p, 'ngol', - 6464.0, - 7232.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'ngol', - 768.0, - 6144.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'ngol', - 2944.0, 6912.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'ngol', - 2752.0, - 1088.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'ngol', - 4096.0, 896.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'ngol', 1152.0, - 1664.0, 270.000, 'ngol')
    call SetResourceAmount(u, 1000000)
    set u=BlzCreateUnitWithSkin(p, 'n00L', 5120.0, 6912.0, 270.000, 'n00L')
    set u=BlzCreateUnitWithSkin(p, 'ntav', - 832.0, - 2176.0, 270.000, 'ntav')
    call SetUnitColor(u, ConvertPlayerColor(0))
    set u=BlzCreateUnitWithSkin(p, 'ngme', - 512.0, - 1792.0, 270.000, 'ngme')
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=BlzCreateUnitWithSkin(p, 'nder', - 2912.5, - 2844.1, 220.964, 'nder')
    set u=BlzCreateUnitWithSkin(p, 'nder', 973.2, - 3527.1, 266.328, 'nder')
    set u=BlzCreateUnitWithSkin(p, 'nder', - 116.6, - 1758.3, 355.397, 'nder')
    set u=BlzCreateUnitWithSkin(p, 'nder', - 3078.4, 5801.8, 220.964, 'nder')
    set u=BlzCreateUnitWithSkin(p, 'nder', - 6698.5, 5441.0, 220.964, 'nder')
    set u=BlzCreateUnitWithSkin(p, 'nder', 3208.5, 5608.1, 220.964, 'nder')
    set u=BlzCreateUnitWithSkin(p, 'nder', 6585.9, 5448.8, 220.964, 'nder')
    set u=BlzCreateUnitWithSkin(p, 'n00K', 3930.1, - 2667.6, 228.951, 'n00K')
    set u=BlzCreateUnitWithSkin(p, 'n00K', 5261.2, 3506.9, 112.185, 'n00K')
    set u=BlzCreateUnitWithSkin(p, 'n00K', - 2277.4, 4527.5, 54.109, 'n00K')
    set u=BlzCreateUnitWithSkin(p, 'n00K', - 6779.0, 2534.8, 128.313, 'n00K')
    set u=BlzCreateUnitWithSkin(p, 'n00K', - 6953.4, - 2138.5, 277.842, 'n00K')
    set u=BlzCreateUnitWithSkin(p, 'n00K', - 7149.1, - 4777.2, 37.091, 'n00K')
    set u=BlzCreateUnitWithSkin(p, 'nfro', - 3673.1, 3439.1, 136.114, 'nfro')
    set u=BlzCreateUnitWithSkin(p, 'nfro', - 3169.2, 3196.2, 60.350, 'nfro')
    set u=BlzCreateUnitWithSkin(p, 'nfro', - 6351.4, 1257.0, 158.307, 'nfro')
    set u=BlzCreateUnitWithSkin(p, 'nfro', - 5895.0, 1097.7, 202.572, 'nfro')
    set u=BlzCreateUnitWithSkin(p, 'nfro', 5.7, 3113.3, 89.464, 'nfro')
    set u=BlzCreateUnitWithSkin(p, 'nfro', 566.9, 3135.2, 216.152, 'nfro')
    set u=BlzCreateUnitWithSkin(p, 'nfro', 3197.5, 972.7, 19.710, 'nfro')
    set u=BlzCreateUnitWithSkin(p, 'nfro', 3777.4, 1238.0, 11.910, 'nfro')
    set u=BlzCreateUnitWithSkin(p, 'n00M', - 7318.9, - 220.5, 350.749, 'n00M')
    set u=BlzCreateUnitWithSkin(p, 'n00M', 4401.9, 374.6, 29.181, 'n00M')
    set u=BlzCreateUnitWithSkin(p, 'n00M', 7237.7, 3671.7, 205.139, 'n00M')
    set u=BlzCreateUnitWithSkin(p, 'n00M', 2088.6, 7044.8, 221.441, 'n00M')
    set u=BlzCreateUnitWithSkin(p, 'nsno', 3317.3, - 1526.3, 195.672, 'nsno')
    set u=BlzCreateUnitWithSkin(p, 'nsno', 6615.9, 467.2, 307.824, 'nsno')
    set u=BlzCreateUnitWithSkin(p, 'nsno', 5756.0, 672.8, 251.188, 'nsno')
    set u=BlzCreateUnitWithSkin(p, 'nsno', 5599.1, 950.1, 311.889, 'nsno')
    set u=BlzCreateUnitWithSkin(p, 'nsno', - 5171.6, 4980.5, 50.132, 'nsno')
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
    call CreateBuildingsForPlayer1()
    call CreateBuildingsForPlayer2()
    call CreateBuildingsForPlayer3()
    call CreateBuildingsForPlayer4()
    call CreateBuildingsForPlayer5()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer1()
    call CreateUnitsForPlayer2()
    call CreateUnitsForPlayer3()
    call CreateUnitsForPlayer4()
    call CreateUnitsForPlayer5()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreateNeutralHostile()
    call CreateNeutralPassive()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_Fog=Rect(5408.0, - 4640.0, 6176.0, - 4096.0)
    set we=AddWeatherEffect(gg_rct_Fog, 'FDwh')
    call EnableWeatherEffect(we, true)
    set gg_rct_Fog_2=Rect(6560.0, 1856.0, 7360.0, 2912.0)
    set we=AddWeatherEffect(gg_rct_Fog_2, 'FDgh')
    call EnableWeatherEffect(we, true)
    set gg_rct_Fog_3=Rect(6080.0, - 7680.0, 7040.0, - 6720.0)
    set we=AddWeatherEffect(gg_rct_Fog_3, 'FDwh')
    call EnableWeatherEffect(we, true)
    set gg_rct_Moonlight=Rect(- 5472.0, 6464.0, - 4704.0, 7072.0)
    set we=AddWeatherEffect(gg_rct_Moonlight, 'LRma')
    call EnableWeatherEffect(we, true)
    set gg_rct_Waygate_Bottom=Rect(- 1312.0, - 5504.0, - 448.0, - 4672.0)
    set gg_rct_Waygate_Top=Rect(2336.0, 6208.0, 3200.0, 7040.0)
endfunction

//***************************************************************************
//*
//*  Cameras
//*
//***************************************************************************

function CreateCameras takes nothing returns nothing

    set gg_cam_Camera_001=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_ROTATION, 38.8, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_ANGLE_OF_ATTACK, 321.4, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_TARGET_DISTANCE, 3000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_001, - 5774.8, - 1246.2, 0.0)

    set gg_cam_Camera_002=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_ROTATION, 37.1, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_ANGLE_OF_ATTACK, 321.5, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_TARGET_DISTANCE, 3000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_002, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_002, - 2887.1, 606.2, 0.0)

    set gg_cam_Camera_003=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_ROTATION, 334.4, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_ANGLE_OF_ATTACK, 325.9, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_TARGET_DISTANCE, 3000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_003, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_003, - 662.4, 1134.4, 0.0)

    set gg_cam_Camera_004=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_ROTATION, 343.6, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_ANGLE_OF_ATTACK, 328.5, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_TARGET_DISTANCE, 3000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_004, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_004, 2346.6, - 377.8, 0.0)

    set gg_cam_Camera_005=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_ROTATION, 359.3, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_ANGLE_OF_ATTACK, 317.3, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_TARGET_DISTANCE, 3000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_005, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_005, 5034.5, - 1000.9, 0.0)

    set gg_cam_Camera_006=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_ROTATION, 122.6, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_ANGLE_OF_ATTACK, 352.3, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_TARGET_DISTANCE, 718.2, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_006, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_006, - 5430.7, - 2179.8, 0.0)

    set gg_cam_Camera_007=CreateCameraSetup()
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_ROTATION, 87.5, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_ANGLE_OF_ATTACK, 351.4, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_TARGET_DISTANCE, 653.2, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_ROLL, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_FARZ, 10000.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    call CameraSetupSetField(gg_cam_Camera_007, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    call CameraSetupSetDestPosition(gg_cam_Camera_007, - 5430.7, - 2179.8, 0.0)

endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Strings
//===========================================================================
function Trig_Strings_Actions takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_730")
endfunction

//===========================================================================
function InitTrig_Strings takes nothing returns nothing
    set gg_trg_Strings=CreateTrigger()
    call TriggerAddAction(gg_trg_Strings, function Trig_Strings_Actions)
endfunction

//===========================================================================
// Trigger: Cinematic Intro Setup
//===========================================================================
function Trig_Cinematic_Intro_Setup_Func006A takes nothing returns nothing
    call CameraSetupApplyForPlayer(true, gg_cam_Camera_006, GetEnumPlayer(), 0.00)
endfunction

function Trig_Cinematic_Intro_Setup_Actions takes nothing returns nothing
    call StopMusicBJ(false)
    call CinematicModeBJ(true, GetPlayersAll())
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0.00, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call SetTimeOfDay(6.00)
    call UseTimeOfDayBJ(false)
    call ForForce(GetPlayersAll(), function Trig_Cinematic_Intro_Setup_Func006A)
endfunction

//===========================================================================
function InitTrig_Cinematic_Intro_Setup takes nothing returns nothing
    set gg_trg_Cinematic_Intro_Setup=CreateTrigger()
    call TriggerAddAction(gg_trg_Cinematic_Intro_Setup, function Trig_Cinematic_Intro_Setup_Actions)
endfunction

//===========================================================================
// Trigger: Cinematic Intro
//===========================================================================
function Trig_Cinematic_Intro_Func005A takes nothing returns nothing
    call CameraSetupApplyForPlayer(true, gg_cam_Camera_007, GetEnumPlayer(), 6.00)
endfunction

function Trig_Cinematic_Intro_Func008001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func011001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func013001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func016001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func017A takes nothing returns nothing
    call CameraSetupApplyForPlayer(true, gg_cam_Camera_001, GetEnumPlayer(), 0.00)
    call CameraSetupApplyForPlayer(true, gg_cam_Camera_002, GetEnumPlayer(), 4.00)
endfunction

function Trig_Cinematic_Intro_Func020001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func022001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func024001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func025A takes nothing returns nothing
    call CameraSetupApplyForPlayer(true, gg_cam_Camera_003, GetEnumPlayer(), 3.00)
endfunction

function Trig_Cinematic_Intro_Func026001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func028001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func029A takes nothing returns nothing
    call CameraSetupApplyForPlayer(true, gg_cam_Camera_004, GetEnumPlayer(), 3.00)
endfunction

function Trig_Cinematic_Intro_Func030001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func032001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func033A takes nothing returns nothing
    call CameraSetupApplyForPlayer(true, gg_cam_Camera_005, GetEnumPlayer(), 3.00)
endfunction

function Trig_Cinematic_Intro_Func034001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Func036001 takes nothing returns boolean
    return ( udg_CinematicSkip == true )
endfunction

function Trig_Cinematic_Intro_Actions takes nothing returns nothing
    call SetSkyModel("Environment\\Sky\\FoggedSky\\FoggedSky.mdl")
    call SetTerrainFogExBJ(0, 200.00, 8000, 0.00, 60.00, 60.00, 60.00)
    call PauseAllUnitsBJ(true)
    call PlayThematicMusicBJ("Tension")
    call ForForce(GetPlayersAll(), function Trig_Cinematic_Intro_Func005A)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 1.50, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 0, 0, 0, 0)
    call PolledWait(1.50)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), gg_unit_O001_0002, "TRIGSTR_374", null, "TRIGSTR_375", bj_TIMETYPE_ADD, 0, false)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call PolledWait(5.50)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call PolledWait(2.00)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call ForForce(GetPlayersAll(), function Trig_Cinematic_Intro_Func017A)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 2, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call PolledWait(2.00)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call TransmissionFromUnitWithNameBJ(GetPlayersAll(), gg_unit_h003_0080, "TRIGSTR_113", null, "TRIGSTR_114", bj_TIMETYPE_ADD, 0, false)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call PolledWait(1.50)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call ForForce(GetPlayersAll(), function Trig_Cinematic_Intro_Func025A)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call PolledWait(2.00)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call ForForce(GetPlayersAll(), function Trig_Cinematic_Intro_Func029A)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call PolledWait(2.00)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call ForForce(GetPlayersAll(), function Trig_Cinematic_Intro_Func033A)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call PolledWait(1.50)
    if ( (udg_CinematicSkip == true) ) then // INLINED!!
        return
    else
        call DoNothing()
    endif
    call DisableTrigger(gg_trg_Cinematic_Skip)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call PolledWait(2)
    call ConditionalTriggerExecute(gg_trg_Cinematic_Intro_End)
endfunction

//===========================================================================
function InitTrig_Cinematic_Intro takes nothing returns nothing
    set gg_trg_Cinematic_Intro=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Cinematic_Intro, 0.00)
    call TriggerAddAction(gg_trg_Cinematic_Intro, function Trig_Cinematic_Intro_Actions)
endfunction

//===========================================================================
// Trigger: Cinematic Skip
//===========================================================================
function Trig_Cinematic_Skip_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    set udg_CinematicSkip=true
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 2, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call ClearTextMessagesBJ(GetPlayersAll())
    call StopMusicBJ(true)
    call ConditionalTriggerExecute(gg_trg_Cinematic_Intro_End)
endfunction

//===========================================================================
function InitTrig_Cinematic_Skip takes nothing returns nothing
    set gg_trg_Cinematic_Skip=CreateTrigger()
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Cinematic_Skip, Player(0))
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Cinematic_Skip, Player(1))
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Cinematic_Skip, Player(2))
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Cinematic_Skip, Player(3))
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Cinematic_Skip, Player(4))
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Cinematic_Skip, Player(5))
    call TriggerAddAction(gg_trg_Cinematic_Skip, function Trig_Cinematic_Skip_Actions)
endfunction

//===========================================================================
// Trigger: Cinematic Intro End
//===========================================================================
function Trig_Cinematic_Intro_End_Func005A takes nothing returns nothing
    call ResetToGameCameraForPlayer(GetEnumPlayer(), 0)
    call PanCameraToTimedLocForPlayer(GetEnumPlayer(), GetPlayerStartLocationLoc(GetEnumPlayer()), 0)
endfunction

function Trig_Cinematic_Intro_End_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_Cinematic_Skip)
    // End
    call CinematicModeBJ(false, GetPlayersAll())
    call SetTerrainFogExBJ(0, 0.00, 4000.00, 0.50, 50.00, 50.00, 50.00)
    call ForForce(GetPlayersAll(), function Trig_Cinematic_Intro_End_Func005A)
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 2, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0)
    call PolledWait(2)
    call PauseAllUnitsBJ(false)
    // End
    call ConditionalTriggerExecute(gg_trg_Game_Start)
endfunction

//===========================================================================
function InitTrig_Cinematic_Intro_End takes nothing returns nothing
    set gg_trg_Cinematic_Intro_End=CreateTrigger()
    call TriggerAddAction(gg_trg_Cinematic_Intro_End, function Trig_Cinematic_Intro_End_Actions)
endfunction

//===========================================================================
// Trigger: Cage 1 Death
//===========================================================================
function Trig_Cage_1_Death_Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'h00B', Player(3), GetDestructableLoc(GetDyingDestructable()), 315.00)
endfunction

//===========================================================================
function InitTrig_Cage_1_Death takes nothing returns nothing
    set gg_trg_Cage_1_Death=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Cage_1_Death, gg_dest_LOcg_12553)
    call TriggerAddAction(gg_trg_Cage_1_Death, function Trig_Cage_1_Death_Actions)
endfunction

//===========================================================================
// Trigger: Cage 2 Death
//===========================================================================
function Trig_Cage_2_Death_Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'o00A', Player(4), GetDestructableLoc(GetDyingDestructable()), 270.00)
endfunction

//===========================================================================
function InitTrig_Cage_2_Death takes nothing returns nothing
    set gg_trg_Cage_2_Death=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Cage_2_Death, gg_dest_LOcg_12552)
    call TriggerAddAction(gg_trg_Cage_2_Death, function Trig_Cage_2_Death_Actions)
endfunction

//===========================================================================
// Trigger: Cage 3 Death
//===========================================================================
function Trig_Cage_3_Death_Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'o00E', Player(4), GetDestructableLoc(GetDyingDestructable()), 225.00)
endfunction

//===========================================================================
function InitTrig_Cage_3_Death takes nothing returns nothing
    set gg_trg_Cage_3_Death=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Cage_3_Death, gg_dest_LOcg_12554)
    call TriggerAddAction(gg_trg_Cage_3_Death, function Trig_Cage_3_Death_Actions)
endfunction

//===========================================================================
// Trigger: Cage 4 Death
//===========================================================================
function Trig_Cage_4_Death_Actions takes nothing returns nothing
    call CreateNUnitsAtLoc(1, 'o00E', Player(4), GetDestructableLoc(GetDyingDestructable()), 180.00)
endfunction

//===========================================================================
function InitTrig_Cage_4_Death takes nothing returns nothing
    set gg_trg_Cage_4_Death=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Cage_4_Death, gg_dest_LOcg_17750)
    call TriggerAddAction(gg_trg_Cage_4_Death, function Trig_Cage_4_Death_Actions)
endfunction

//===========================================================================
// Trigger: Breeding Training
//===========================================================================
function Trig_Breeding_Training_Func002C takes nothing returns boolean
    if ( ( GetUnitTypeId(GetTrainedUnit()) == 'n00F' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetTrainedUnit()) == 'n00G' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetTrainedUnit()) == 'n00N' ) ) then
        return true
    endif
    return false
endfunction

function Trig_Breeding_Training_Conditions takes nothing returns boolean
    if ( not Trig_Breeding_Training_Func002C() ) then
        return false
    endif
    return true
endfunction

function Trig_Breeding_Training_Actions takes nothing returns nothing
    call UnitApplyTimedLifeBJ(60, 'BTLF', GetTrainedUnit())
endfunction

//===========================================================================
function InitTrig_Breeding_Training takes nothing returns nothing
    set gg_trg_Breeding_Training=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Breeding_Training, EVENT_PLAYER_UNIT_TRAIN_FINISH)
    call TriggerAddCondition(gg_trg_Breeding_Training, Condition(function Trig_Breeding_Training_Conditions))
    call TriggerAddAction(gg_trg_Breeding_Training, function Trig_Breeding_Training_Actions)
endfunction

//===========================================================================
// Trigger: Breeding Death
//===========================================================================
function Trig_Breeding_Death_Func018C takes nothing returns boolean
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'n00F' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'n00G' ) ) then
        return true
    endif
    return false
endfunction

function Trig_Breeding_Death_Conditions takes nothing returns boolean
    if ( not ( GetKillingUnitBJ() == null ) ) then
        return false
    endif
    if ( not Trig_Breeding_Death_Func018C() ) then
        return false
    endif
    return true
endfunction

function Trig_Breeding_Death_Actions takes nothing returns nothing
    call CreateTextTagUnitBJ("TRIGSTR_580", GetDyingUnit(), 0, 10, 100, 80.00, 7.00, 0)
    call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
    call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), udg_GermanicPlayers)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 1.50)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 0.75)
    call CreateTextTagUnitBJ("TRIGSTR_581", GetDyingUnit(), 10.00, 10, 100, 0.00, 0.00, 0)
    call ShowTextTagForceBJ(false, GetLastCreatedTextTag(), GetPlayersAll())
    call ShowTextTagForceBJ(true, GetLastCreatedTextTag(), udg_GermanicPlayers)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 64, 90)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 1.50)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 0.75)
    call AdjustPlayerStateBJ(30, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(30, GetOwningPlayer(GetTriggerUnit()), PLAYER_STATE_RESOURCE_LUMBER)
endfunction

//===========================================================================
function InitTrig_Breeding_Death takes nothing returns nothing
    set gg_trg_Breeding_Death=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Breeding_Death, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Breeding_Death, Condition(function Trig_Breeding_Death_Conditions))
    call TriggerAddAction(gg_trg_Breeding_Death, function Trig_Breeding_Death_Actions)
endfunction

//===========================================================================
// Trigger: Lightning Start
//===========================================================================
function Trig_Lightning_Start_Actions takes nothing returns nothing
    call StartTimerBJ(udg_LightningTimer, false, GetRandomReal(30.00, 70.00))
endfunction

//===========================================================================
function InitTrig_Lightning_Start takes nothing returns nothing
    set gg_trg_Lightning_Start=CreateTrigger()
    call TriggerAddAction(gg_trg_Lightning_Start, function Trig_Lightning_Start_Actions)
endfunction

//===========================================================================
// Trigger: Lightning Effect
//===========================================================================
function Trig_Lightning_Effect_Func003C takes nothing returns boolean
    if ( not ( GetRandomInt(1, 2) == 1 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Lightning_Effect_Actions takes nothing returns nothing
    call CinematicFadeBJ(bj_CINEFADETYPE_FADEOUTIN, 0.30, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 100.00, 100.00, 100.00, 0)
    if ( Trig_Lightning_Effect_Func003C() ) then
        call PlaySoundBJ(gg_snd_LightningBolt1)
    else
        call PlaySoundBJ(gg_snd_RollingThunder1)
    endif
    call ConditionalTriggerExecute(gg_trg_Lightning_Start)
endfunction

//===========================================================================
function InitTrig_Lightning_Effect takes nothing returns nothing
    set gg_trg_Lightning_Effect=CreateTrigger()
    call TriggerRegisterTimerExpireEventBJ(gg_trg_Lightning_Effect, udg_LightningTimer)
    call TriggerAddAction(gg_trg_Lightning_Effect, function Trig_Lightning_Effect_Actions)
endfunction

//===========================================================================
// Trigger: Hunt
//===========================================================================
function Trig_Hunt_Func009C takes nothing returns boolean
    if ( ( GetUnitTypeId(GetOrderTargetUnit()) == 'n00K' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetOrderTargetUnit()) == 'n00M' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetOrderTargetUnit()) == 'nder' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetOrderTargetUnit()) == 'nfro' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetOrderTargetUnit()) == 'nsno' ) ) then
        return true
    endif
    return false
endfunction

function Trig_Hunt_Conditions takes nothing returns boolean
    if ( not ( GetUnitAbilityLevelSwapped('A016', GetTriggerUnit()) > 0 ) ) then
        return false
    endif
    if ( not ( GetOrderTargetUnit() != null ) ) then
        return false
    endif
    if ( not Trig_Hunt_Func009C() ) then
        return false
    endif
    return true
endfunction

function Trig_Hunt_Actions takes nothing returns nothing
    local unit u= GetTriggerUnit()
    local unit t= GetOrderTargetUnit()
    call PolledWait(0.50)
    call IssueTargetOrderBJ(u, "transmute", t)
    set u=null
    set t=null
endfunction

//===========================================================================
function InitTrig_Hunt takes nothing returns nothing
    set gg_trg_Hunt=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Hunt, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddCondition(gg_trg_Hunt, Condition(function Trig_Hunt_Conditions))
    call TriggerAddAction(gg_trg_Hunt, function Trig_Hunt_Actions)
endfunction

//===========================================================================
// Trigger: Initialization
//
// Default melee game initialization for all players
//===========================================================================
function Trig_Initialization_Func012Func001C takes nothing returns boolean
    if ( not ( GetPlayerSlotState(GetEnumPlayer()) == PLAYER_SLOT_STATE_PLAYING ) ) then
        return false
    endif
    if ( not ( GetPlayerController(GetEnumPlayer()) == MAP_CONTROL_USER ) ) then
        return false
    endif
    return true
endfunction

function Trig_Initialization_Func012Func002Func001C takes nothing returns boolean
    if ( ( GetPlayerSlotState(GetEnumPlayer()) == PLAYER_SLOT_STATE_EMPTY ) ) then
        return true
    endif
    if ( ( GetPlayerController(GetEnumPlayer()) != MAP_CONTROL_USER ) ) then
        return true
    endif
    return false
endfunction

function Trig_Initialization_Func012Func002C takes nothing returns boolean
    if ( not Trig_Initialization_Func012Func002Func001C() ) then
        return false
    endif
    return true
endfunction

function Trig_Initialization_Func012A takes nothing returns nothing
    if ( Trig_Initialization_Func012Func001C() ) then
        call ForceAddPlayerSimple(GetEnumPlayer(), udg_RomanPlayersUsers)
    else
        call DoNothing()
    endif
    if ( Trig_Initialization_Func012Func002C() ) then
        call SetForceAllianceStateBJ(GetForceOfPlayer(GetEnumPlayer()), udg_RomanPlayers, bj_ALLIANCE_ALLIED_ADVUNITS)
    else
        call DoNothing()
    endif
endfunction

function Trig_Initialization_Func013Func001C takes nothing returns boolean
    if ( not ( GetPlayerSlotState(GetEnumPlayer()) == PLAYER_SLOT_STATE_PLAYING ) ) then
        return false
    endif
    if ( not ( GetPlayerController(GetEnumPlayer()) == MAP_CONTROL_USER ) ) then
        return false
    endif
    return true
endfunction

function Trig_Initialization_Func013Func002Func003C takes nothing returns boolean
    if ( ( GetPlayerSlotState(GetEnumPlayer()) == PLAYER_SLOT_STATE_EMPTY ) ) then
        return true
    endif
    if ( ( GetPlayerController(GetEnumPlayer()) != MAP_CONTROL_USER ) ) then
        return true
    endif
    return false
endfunction

function Trig_Initialization_Func013Func002C takes nothing returns boolean
    if ( not Trig_Initialization_Func013Func002Func003C() ) then
        return false
    endif
    return true
endfunction

function Trig_Initialization_Func013A takes nothing returns nothing
    if ( Trig_Initialization_Func013Func001C() ) then
        call ForceAddPlayerSimple(GetEnumPlayer(), udg_GermanicPlayersUsers)
    else
        call DoNothing()
    endif
    if ( Trig_Initialization_Func013Func002C() ) then
        call SetForceAllianceStateBJ(GetForceOfPlayer(GetEnumPlayer()), udg_GermanicPlayers, bj_ALLIANCE_ALLIED_ADVUNITS)
    else
        call DoNothing()
    endif
endfunction

function Trig_Initialization_Actions takes nothing returns nothing
    call MeleeStartingVisibility()
    call MeleeStartingResources()
    call MeleeInitVictoryDefeat()
    call BlzShowUnitTeamGlow(gg_unit_H00D_0005, true)
    call ForceAddPlayerSimple(Player(0), udg_RomanPlayers)
    call ForceAddPlayerSimple(Player(1), udg_RomanPlayers)
    call ForceAddPlayerSimple(Player(2), udg_RomanPlayers)
    call ForceAddPlayerSimple(Player(3), udg_GermanicPlayers)
    call ForceAddPlayerSimple(Player(4), udg_GermanicPlayers)
    call ForceAddPlayerSimple(Player(5), udg_GermanicPlayers)
    call ForForce(udg_RomanPlayers, function Trig_Initialization_Func012A)
    call ForForce(udg_GermanicPlayers, function Trig_Initialization_Func013A)
    call UnitAddItemByIdSwapped('stwp', gg_unit_H00D_0005)
    call UnitAddItemByIdSwapped('stwp', gg_unit_H008_0123)
    call UnitAddItemByIdSwapped('stwp', gg_unit_H007_0229)
    call UnitAddItemByIdSwapped('stwp', gg_unit_O001_0002)
    call UnitAddItemByIdSwapped('stwp', gg_unit_O00H_0067)
    call UnitAddItemByIdSwapped('stwp', gg_unit_H006_0213)
    call SetItemInvulnerableBJ(gg_item_I001_0424, true)
    call SetItemInvulnerableBJ(gg_item_I001_0425, true)
    call SetItemInvulnerableBJ(gg_item_I001_0426, true)
    call SetItemInvulnerableBJ(gg_item_I000_0421, true)
    call SetItemInvulnerableBJ(gg_item_I000_0422, true)
    call SetItemInvulnerableBJ(gg_item_I000_0423, true)
endfunction

//===========================================================================
function InitTrig_Initialization takes nothing returns nothing
    set gg_trg_Initialization=CreateTrigger()
    call TriggerAddAction(gg_trg_Initialization, function Trig_Initialization_Actions)
endfunction

//===========================================================================
// Trigger: Game Start
//===========================================================================
function Trig_Game_Start_Func060Func001C takes nothing returns boolean
    if ( not ( GetPlayerController(GetEnumPlayer()) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    return true
endfunction

function Trig_Game_Start_Func060A takes nothing returns nothing
    if ( Trig_Game_Start_Func060Func001C() ) then
        call StartCampaignAI(GetEnumPlayer(), "war3mapImported/Roman.ai")
    else
        call DoNothing()
    endif
endfunction

function Trig_Game_Start_Func061Func001C takes nothing returns boolean
    if ( not ( GetPlayerController(GetEnumPlayer()) == MAP_CONTROL_COMPUTER ) ) then
        return false
    endif
    return true
endfunction

function Trig_Game_Start_Func061A takes nothing returns nothing
    if ( Trig_Game_Start_Func061Func001C() ) then
        call StartCampaignAI(GetEnumPlayer(), "war3mapImported/Germanic.ai")
    else
        call DoNothing()
    endif
endfunction

function Trig_Game_Start_Actions takes nothing returns nothing
    call UseTimeOfDayBJ(true)
    // Red
    call IssueTargetOrderBJ(gg_unit_h009_0127, "harvest", gg_unit_ngol_0003)
    call IssueTargetOrderBJ(gg_unit_h009_0128, "harvest", gg_unit_ngol_0003)
    call IssueTargetOrderBJ(gg_unit_h009_0129, "harvest", gg_unit_ngol_0003)
    call IssueTargetOrderBJ(gg_unit_h009_0130, "harvest", gg_unit_ngol_0003)
    call IssueTargetOrderBJ(gg_unit_h009_0131, "harvest", gg_unit_ngol_0003)
    call IssueTargetDestructableOrder(gg_unit_h009_0239, "harvest", gg_dest_B000_7302)
    call IssueTargetDestructableOrder(gg_unit_h009_0238, "harvest", gg_dest_B000_7302)
    call IssueTargetDestructableOrder(gg_unit_h009_0237, "harvest", gg_dest_B000_7302)
    call IssueTargetDestructableOrder(gg_unit_h009_0236, "harvest", gg_dest_B000_7302)
    // Blue
    call IssueTargetOrderBJ(gg_unit_h009_0136, "harvest", gg_unit_ngol_0006)
    call IssueTargetOrderBJ(gg_unit_h009_0134, "harvest", gg_unit_ngol_0006)
    call IssueTargetOrderBJ(gg_unit_h009_0135, "harvest", gg_unit_ngol_0006)
    call IssueTargetOrderBJ(gg_unit_h009_0132, "harvest", gg_unit_ngol_0006)
    call IssueTargetOrderBJ(gg_unit_h009_0133, "harvest", gg_unit_ngol_0006)
    call IssueTargetDestructableOrder(gg_unit_h009_0243, "harvest", gg_dest_B000_7505)
    call IssueTargetDestructableOrder(gg_unit_h009_0240, "harvest", gg_dest_B000_7505)
    call IssueTargetDestructableOrder(gg_unit_h009_0243, "harvest", gg_dest_B000_7505)
    call IssueTargetDestructableOrder(gg_unit_h009_0242, "harvest", gg_dest_B000_7505)
    // Teal
    call IssueTargetOrderBJ(gg_unit_h009_0141, "harvest", gg_unit_ngol_0004)
    call IssueTargetOrderBJ(gg_unit_h009_0139, "harvest", gg_unit_ngol_0004)
    call IssueTargetOrderBJ(gg_unit_h009_0140, "harvest", gg_unit_ngol_0004)
    call IssueTargetOrderBJ(gg_unit_h009_0137, "harvest", gg_unit_ngol_0004)
    call IssueTargetOrderBJ(gg_unit_h009_0138, "harvest", gg_unit_ngol_0004)
    call IssueTargetDestructableOrder(gg_unit_h009_0247, "harvest", gg_dest_B000_8108)
    call IssueTargetDestructableOrder(gg_unit_h009_0244, "harvest", gg_dest_B000_8108)
    call IssueTargetDestructableOrder(gg_unit_h009_0247, "harvest", gg_dest_B000_8108)
    call IssueTargetDestructableOrder(gg_unit_h009_0246, "harvest", gg_dest_B000_8108)
    // Purple
    call IssueTargetOrderBJ(gg_unit_o003_0046, "harvest", gg_unit_ngol_0125)
    call IssueTargetOrderBJ(gg_unit_o003_0047, "harvest", gg_unit_ngol_0125)
    call IssueTargetOrderBJ(gg_unit_o003_0048, "harvest", gg_unit_ngol_0125)
    call IssueTargetOrderBJ(gg_unit_o003_0049, "harvest", gg_unit_ngol_0125)
    call IssueTargetOrderBJ(gg_unit_o003_0050, "harvest", gg_unit_ngol_0125)
    call IssueTargetDestructableOrder(gg_unit_o003_0257, "harvest", gg_dest_B000_0716)
    call IssueTargetDestructableOrder(gg_unit_o003_0258, "harvest", gg_dest_B000_0716)
    call IssueTargetDestructableOrder(gg_unit_o003_0259, "harvest", gg_dest_B000_0716)
    // Yellow
    call IssueTargetOrderBJ(gg_unit_o003_0051, "harvest", gg_unit_ngol_0124)
    call IssueTargetOrderBJ(gg_unit_o003_0052, "harvest", gg_unit_ngol_0124)
    call IssueTargetOrderBJ(gg_unit_o003_0053, "harvest", gg_unit_ngol_0124)
    call IssueTargetOrderBJ(gg_unit_o003_0054, "harvest", gg_unit_ngol_0124)
    call IssueTargetOrderBJ(gg_unit_o003_0055, "harvest", gg_unit_ngol_0124)
    call IssueTargetDestructableOrder(gg_unit_o003_0260, "harvest", gg_dest_B000_5163)
    call IssueTargetDestructableOrder(gg_unit_o003_0261, "harvest", gg_dest_B000_5163)
    call IssueTargetDestructableOrder(gg_unit_o003_0262, "harvest", gg_dest_B000_5163)
    // Orange
    call IssueTargetOrderBJ(gg_unit_o003_0068, "harvest", gg_unit_ngol_0126)
    call IssueTargetOrderBJ(gg_unit_o003_0069, "harvest", gg_unit_ngol_0126)
    call IssueTargetOrderBJ(gg_unit_o003_0070, "harvest", gg_unit_ngol_0126)
    call IssueTargetOrderBJ(gg_unit_o003_0071, "harvest", gg_unit_ngol_0126)
    call IssueTargetOrderBJ(gg_unit_o003_0075, "harvest", gg_unit_ngol_0126)
    call IssueTargetDestructableOrder(gg_unit_o003_0263, "harvest", gg_dest_B000_6435)
    call IssueTargetDestructableOrder(gg_unit_o003_0264, "harvest", gg_dest_B000_6435)
    call IssueTargetDestructableOrder(gg_unit_o003_0265, "harvest", gg_dest_B000_6435)
    // AI
    call ForForce(udg_RomanPlayers, function Trig_Game_Start_Func060A)
    call ForForce(udg_GermanicPlayers, function Trig_Game_Start_Func061A)
    // Objectives
    call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_211", "TRIGSTR_212", "ReplaceableTextures\\CommandButtons\\BTNBanditHide.blp")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_213")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_214")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_616")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_617")
    call QuestMessageBJ(udg_RomanPlayers, bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_112")
    call QuestMessageBJ(udg_GermanicPlayers, bj_QUESTMESSAGE_DISCOVERED, "TRIGSTR_111")
    // Credits
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_645", "TRIGSTR_646", "ReplaceableTextures\\CommandButtons\\BTNBanditLord.blp")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_647")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_648")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_649")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_650")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_651")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_652")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_653")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_654")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_655")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_656")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_657")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_658")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_659")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_660")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_661")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_662")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_663")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_664")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_665")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_666")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_667")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_668")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_669")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_670")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_671")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_672")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_673")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_674")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_675")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_676")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_677")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_706")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_678")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_679")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_680")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_681")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_682")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_683")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_684")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_685")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_686")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_687")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_688")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_689")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_690")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_691")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_692")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_693")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_694")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_695")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_696")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_697")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_698")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_699")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_700")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_701")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_702")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_703")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_704")
    // Change Logs
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_722", "TRIGSTR_723", "ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_724")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_725")
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_618", "TRIGSTR_619", "ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_620")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_621")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_622")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_623")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_627")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_628")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_629")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_630")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_632")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_633")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_636")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_705")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_707")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_718")
    call CreateQuestBJ(bj_QUESTTYPE_OPT_DISCOVERED, "TRIGSTR_483", "TRIGSTR_484", "ReplaceableTextures\\CommandButtons\\BTNSnazzyScroll.blp")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_485")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_489")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_499")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_500")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_501")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_516")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_588")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_517")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_518")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_538")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_539")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_540")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_541")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_542")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_543")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_550")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_551")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_577")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_578")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_582")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_584")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_585")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_586")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_587")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_603")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_609")
    call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_613")
    // Weather
    call ConditionalTriggerExecute(gg_trg_Lightning_Start)
endfunction

//===========================================================================
function InitTrig_Game_Start takes nothing returns nothing
    set gg_trg_Game_Start=CreateTrigger()
    call TriggerAddAction(gg_trg_Game_Start, function Trig_Game_Start_Actions)
endfunction

//===========================================================================
// Trigger: Player Leaves Roman
//===========================================================================
function Trig_Player_Leaves_Roman_Func003Func002A takes nothing returns nothing
    call CustomVictoryBJ(GetEnumPlayer(), true, true)
endfunction

function Trig_Player_Leaves_Roman_Func003Func003A takes nothing returns nothing
    call CustomDefeatBJ(GetEnumPlayer(), "TRIGSTR_625")
endfunction

function Trig_Player_Leaves_Roman_Func003C takes nothing returns boolean
    if ( not ( CountPlayersInForceBJ(udg_RomanPlayersUsers) == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Player_Leaves_Roman_Actions takes nothing returns nothing
    call SetForceAllianceStateBJ(GetForceOfPlayer(GetTriggerPlayer()), udg_RomanPlayers, bj_ALLIANCE_ALLIED_ADVUNITS)
    call ForceRemovePlayerSimple(GetTriggerPlayer(), udg_RomanPlayersUsers)
    if ( Trig_Player_Leaves_Roman_Func003C() ) then
        call ForForce(udg_GermanicPlayers, function Trig_Player_Leaves_Roman_Func003Func002A)
        call ForForce(udg_RomanPlayers, function Trig_Player_Leaves_Roman_Func003Func003A)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Player_Leaves_Roman takes nothing returns nothing
    set gg_trg_Player_Leaves_Roman=CreateTrigger()
    call TriggerRegisterPlayerEventLeave(gg_trg_Player_Leaves_Roman, Player(0))
    call TriggerRegisterPlayerEventLeave(gg_trg_Player_Leaves_Roman, Player(1))
    call TriggerRegisterPlayerEventLeave(gg_trg_Player_Leaves_Roman, Player(2))
    call TriggerAddAction(gg_trg_Player_Leaves_Roman, function Trig_Player_Leaves_Roman_Actions)
endfunction

//===========================================================================
// Trigger: Player Leaves Germanic
//===========================================================================
function Trig_Player_Leaves_Germanic_Func003Func002A takes nothing returns nothing
    call CustomVictoryBJ(GetEnumPlayer(), true, true)
endfunction

function Trig_Player_Leaves_Germanic_Func003Func003A takes nothing returns nothing
    call CustomDefeatBJ(GetEnumPlayer(), "TRIGSTR_626")
endfunction

function Trig_Player_Leaves_Germanic_Func003C takes nothing returns boolean
    if ( not ( CountPlayersInForceBJ(udg_GermanicPlayersUsers) == 0 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Player_Leaves_Germanic_Actions takes nothing returns nothing
    call SetForceAllianceStateBJ(GetForceOfPlayer(GetTriggerPlayer()), udg_GermanicPlayers, bj_ALLIANCE_ALLIED_ADVUNITS)
    call ForceRemovePlayerSimple(GetTriggerPlayer(), udg_GermanicPlayersUsers)
    if ( Trig_Player_Leaves_Germanic_Func003C() ) then
        call ForForce(udg_RomanPlayers, function Trig_Player_Leaves_Germanic_Func003Func002A)
        call ForForce(udg_GermanicPlayers, function Trig_Player_Leaves_Germanic_Func003Func003A)
    else
        call DoNothing()
    endif
endfunction

//===========================================================================
function InitTrig_Player_Leaves_Germanic takes nothing returns nothing
    set gg_trg_Player_Leaves_Germanic=CreateTrigger()
    call TriggerRegisterPlayerEventLeave(gg_trg_Player_Leaves_Germanic, Player(3))
    call TriggerRegisterPlayerEventLeave(gg_trg_Player_Leaves_Germanic, Player(4))
    call TriggerRegisterPlayerEventLeave(gg_trg_Player_Leaves_Germanic, Player(5))
    call TriggerAddAction(gg_trg_Player_Leaves_Germanic, function Trig_Player_Leaves_Germanic_Actions)
endfunction

//===========================================================================
// Trigger: Shrine Death
//
// Fixes the missing death animation.
//===========================================================================
function Trig_Shrine_Death_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetTriggerUnit()) == 'o00C' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Shrine_Death_Actions takes nothing returns nothing
    call ShowUnitHide(GetTriggerUnit())
endfunction

//===========================================================================
function InitTrig_Shrine_Death takes nothing returns nothing
    set gg_trg_Shrine_Death=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Shrine_Death, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Shrine_Death, Condition(function Trig_Shrine_Death_Conditions))
    call TriggerAddAction(gg_trg_Shrine_Death, function Trig_Shrine_Death_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_Strings()
    call InitTrig_Cinematic_Intro_Setup()
    call InitTrig_Cinematic_Intro()
    call InitTrig_Cinematic_Skip()
    call InitTrig_Cinematic_Intro_End()
    call InitTrig_Cage_1_Death()
    call InitTrig_Cage_2_Death()
    call InitTrig_Cage_3_Death()
    call InitTrig_Cage_4_Death()
    call InitTrig_Breeding_Training()
    call InitTrig_Breeding_Death()
    call InitTrig_Lightning_Start()
    call InitTrig_Lightning_Effect()
    call InitTrig_Hunt()
    call InitTrig_Initialization()
    call InitTrig_Game_Start()
    call InitTrig_Player_Leaves_Roman()
    call InitTrig_Player_Leaves_Germanic()
    call InitTrig_Shrine_Death()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Cinematic_Intro_Setup)
    call ConditionalTriggerExecute(gg_trg_Initialization)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)

    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)

    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)

    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call ForcePlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_083
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)

    // Force: TRIGSTR_084
    call SetPlayerTeam(Player(3), 1)
    call SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(4), 1)
    call SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(5), 1)
    call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(0, 2)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 3, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(1, 3)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(1, 1, 2, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(1, 2, 5, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(2, 3)
    call SetStartLocPrio(2, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 2, 5, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(3, 3)
    call SetStartLocPrio(3, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 1, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(3, 2, 4, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(4, 2)
    call SetStartLocPrio(4, 0, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(4, 1, 3, MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(5, 1)
    call SetStartLocPrio(5, 0, 1, MAP_LOC_PRIO_HIGH)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    local weathereffect we
    call SetCameraBounds(- 7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 7424.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 7168.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 7424.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 7680.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCAshenvale\\DNCAshenvaleTerrain\\DNCAshenvaleTerrain.mdl", "Environment\\DNC\\DNCAshenvale\\DNCAshenvaleUnit\\DNCAshenvaleUnit.mdl")
    call SetTerrainFogEx(0, 0.0, 4000.0, 0.500, 0.000, 0.000, 0.000)
    call SetWaterBaseColor(0, 0, 128, 255)
    set we=AddWeatherEffect(Rect(- 8192.0, - 8192.0, 8192.0, 8192.0), 'RLhr')
    call EnableWeatherEffect(we, true)
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call InitSounds()
    call CreateRegions()
    call CreateCameras()
    call CreateAllDestructables()
    call CreateAllItems()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs3853875")
call ExecuteFunc("SimError__init")
call ExecuteFunc("TreeUtils__Init")
call ExecuteFunc("HideInTrees__Init")

    call InitGlobals()
    call InitCustomTriggers()
    call RunInitializationTriggers()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_003")
    call SetMapDescription("TRIGSTR_263")
    call SetPlayers(6)
    call SetTeams(6)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0, - 4864.0, - 576.0)
    call DefineStartLocation(1, - 896.0, 1280.0)
    call DefineStartLocation(2, 4928.0, - 960.0)
    call DefineStartLocation(3, - 4480.0, - 6208.0)
    call DefineStartLocation(4, 3264.0, - 6464.0)
    call DefineStartLocation(5, 64.0, 6016.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:
function sa___prototype9_HideInTrees__RemoveUnitHook takes nothing returns boolean
    call HideInTrees__RemoveUnitHook(f__arg_unit1)
    return true
endfunction
function sa___prototype14_HideInTrees__RemoveDestructableHook takes nothing returns boolean
    call FlushChildHashtable(HideInTrees__h, GetHandleId((f__arg_destructable1))) // INLINED!!
    return true
endfunction

function jasshelper__initstructs3853875 takes nothing returns nothing
    set st___prototype9[1]=CreateTrigger()
    call TriggerAddAction(st___prototype9[1],function sa___prototype9_HideInTrees__RemoveUnitHook)
    call TriggerAddCondition(st___prototype9[1],Condition(function sa___prototype9_HideInTrees__RemoveUnitHook))
    set st___prototype14[1]=CreateTrigger()
    call TriggerAddAction(st___prototype14[1],function sa___prototype14_HideInTrees__RemoveDestructableHook)
    call TriggerAddCondition(st___prototype14[1],Condition(function sa___prototype14_HideInTrees__RemoveDestructableHook))

endfunction

