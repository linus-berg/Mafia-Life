#include "basicdefines_A3.hpp"

class CfgPatches {
    class ML_Weapons_Rifles_M1928 {
        units[] = {};
        weapons[] = {"ML_Weapon_M1928"};
        requiredVersion=0.1;
        requiredAddons[]={"A3_Weapons_F"};
    };
};

/// All firemodes, to be sure
class Mode_SemiAuto;
class Mode_FullAuto;

class CfgWeapons
{
    class Rifle;
    class Rifle_Base_F: Rifle
    {
        class WeaponSlotsInfo;
        class GunParticles;
    };

    class ML_Weapon_M1928_Base: Rifle_Base_F /// Just basic values common for all testing rifle variants
    {
        magazines[] = {ML_30Rnd_M1928_Mag}; /// original custom made magazines
        reloadAction = "GestureReloadMX"; /// MX hand animation actually fits this rifle well
        discreteDistanceInitIndex = 0; /// Ironsight zeroing is the lowest value by default
        maxZeroing = 100;
        // Size of recoil sway of the cursor
        maxRecoilSway=0.0125;
        // Speed at which the recoil sway goes back to zero (from maxRecoilSway to 0 in 1/swayDecaySpeed seconds)
        swayDecaySpeed=1.25;
        /// inertia coefficient of the weapon
        inertia = 0.5;            

        class GunParticles : GunParticles
        {
            class SecondEffect
            {
                positionName = "Nabojnicestart";
                directionName = "Nabojniceend";
                effectName = "CaselessAmmoCloud";
            };
        };
        
        class WeaponSlotsInfo: WeaponSlotsInfo{};
        
/////////////////////////////////////////////////////  I R O N S I G H T S  /////////////////////////////////////////////////////
        opticsZoomMin=0.375;
        opticsZoomMax=1.1;
        opticsZoomInit=0.75;

        distanceZoomMin = 300;
        distanceZoomMax = 300;
/////////////////////////////////////////////////////  I R O N S I G H T S  /////////////////////////////////////////////////////

        descriptionShort = "M1928"; /// displayed on mouseOver in Inventory
        handAnim[] = {"OFP2_ManSkeleton", "\A3\Weapons_F_EPA\LongRangeRifles\DMR_01\data\Anim\dmr_01.rtm"}; /// MX hand animation actually fits this rifle well
        dexterity = 1.8;
        selectionFireAnim = "zasleh"; /// are we able to get rid of all the zaslehs?
        
        modes[] = {Single, FullAuto, fullauto_medium, single_medium_optics1, single_far_optics2}; /// Includes fire modes for AI
        
////////////////////////////////////////////////////// NO OPTICS ///////////////////////////////////////////////////////////        
        
        class Single: Mode_SemiAuto /// Pew
        {
            sounds[] = {        /// the new parameter to distinguish muzzle accessories type
                StandardSound // default zvuk
            };

            class BaseSoundModeType
            {

                weaponSoundEffect  = "DefaultRifle"; /// custom made sounds

                closure1[] = {"A3\sounds_f\weapons\closure\closure_rifle_2", 0.501187, 1, 10};
                closure2[] = {"A3\sounds_f\weapons\closure\closure_rifle_3", 0.501187, 1, 10};
                soundClosure[]={closure1,0.5, closure2,0.5}; /// custom made sounds
            };

            class StandardSound: BaseSoundModeType
            {
                begin1[] = {"\ML_Weapons\Rifles\M1928\sound\p90-1.ogg", db-5, 1,800}; /// custom made sounds
                begin2[] = {"\ML_Weapons\Rifles\M1928\sound\p90-2.ogg", db-5, 1,800}; /// custom made sounds
                soundBegin[] = {begin1,0.5, begin2,0.5}; /// custom made sounds
            };
            
            reloadTime = 0.083; /// means some 625 rounds per minute
            dispersion = 0.00087; /// A bit less than 3 MOA
            
            recoil = "recoil_single_Test_rifle_01"; /// defined in cfgRecoils
            recoilProne = "recoil_single_prone_Test_rifle_01"; /// defined in cfgRecoils
            
            minRange = 2; minRangeProbab = 0.5;     /// Task Force Balance black magic - this is the probability which AI thinks it would hit target at set range with
            midRange = 200; midRangeProbab = 0.7;     /// it is no real probability of hit, just used for AI to compute if the shot is worth to take - AI chooses highest
            maxRange = 400; maxRangeProbab = 0.3;     /// probability of the weapon, does some calculation and compares it with calculated probability of other weapons
        };
        
        class FullAuto: Mode_FullAuto /// Pew-pew-pew-pew-pew
        {
            sounds[] = {        /// the new parameter to distinguish muzzle accessories type
                StandardSound // default zvuk
            };

            class BaseSoundModeType
            {

                weaponSoundEffect  = "DefaultRifle"; /// custom made sounds

                closure1[] = {"A3\sounds_f\weapons\closure\closure_rifle_2", 0.501187, 1, 10};
                closure2[] = {"A3\sounds_f\weapons\closure\closure_rifle_3", 0.501187, 1, 10};
                soundClosure[]={closure1,0.5, closure2,0.5}; /// custom made sounds
            };

            class StandardSound: BaseSoundModeType
            {
                begin1[] = {"\ML_Weapons\Rifles\M1928\sound\p90-1.ogg", db-5, 1,800}; /// custom made sounds
                begin2[] = {"\ML_Weapons\Rifles\M1928\sound\p90-2.ogg", db-5, 1,800}; /// custom made sounds
                soundBegin[] = {begin1,0.5, begin2,0.5}; /// custom made sounds
            };


            reloadTime = 0.083;
            dispersion = 0.00087;
            
            recoil = "recoil_auto_Test_rifle_01"; /// defined in cfgRecoils
            recoilProne = "recoil_auto_prone_Test_rifle_01"; /// defined in cfgRecoils
            
            minRange = 0; minRangeProbab = 0.9;
            midRange = 15; midRangeProbab = 0.7;
            maxRange = 30; maxRangeProbab = 0.1; 
            
            aiRateOfFire = 0.000001;
        };
        
        class fullauto_medium: FullAuto /// Pew, pew, pew only for AI
        {
            showToPlayer = 0;
            burst = 3;
            
            minRange = 2; minRangeProbab = 0.5;
            midRange = 75; midRangeProbab = 0.7;
            maxRange = 150; maxRangeProbab = 0.05; 
            
            aiRateOfFire = 2.0;
            aiRateOfFireDistance = 200;
        };
    //////////////////////////////////////////////////// OPTICS //////////////////////////////////////////////////

        class single_medium_optics1: Single /// Pew for AI with collimator sights
        {
            requiredOpticType = 1;
            showToPlayer = 0;
            
            minRange = 2; minRangeProbab = 0.2; 
            midRange = 450; midRangeProbab = 0.7; 
            maxRange = 600; maxRangeProbab = 0.2;
    
            aiRateOfFire = 6;
            aiRateOfFireDistance = 600;
        };
        
        class single_far_optics2: single_medium_optics1    /// Pew for AI with better sights
        {
            requiredOpticType = 2;
            showToPlayer = 0;
            
            minRange = 100; minRangeProbab = 0.1; 
            midRange = 500; midRangeProbab = 0.6; 
            maxRange = 700; maxRangeProbab = 0.05; 
            
            aiRateOfFire = 8;
            aiRateOfFireDistance = 700;
        };
        
        aiDispersionCoefY=6.0; /// AI should have some degree of greater dispersion for initial shoots
        aiDispersionCoefX=4.0; /// AI should have some degree of greater dispersion for initial shoots
        drySound[]={"A3\sounds_f\weapons\Other\dry_1", db-5, 1, 10}; /// custom made sounds
        reloadMagazineSound[]={"\ML_Weapons\Rifles\M1928\sound\p90_boltpull.ogg",db-8,1, 30}; /// custom made sounds
    };

    class ML_Weapon_M1928:ML_Weapon_M1928_Base
    {
        scope = 2; /// should be visible and useable in game
        displayName = "M1928"; /// some name
        model = "\ML_Weapons\Rifles\M1928\M1928.p3d"; /// path to model

        picture = "\ML_Weapons\Rifles\M1928\Data\M1928.paa"; /// different accessories have M, S, T instead of X
        UiPicture = "\A3\Weapons_F\Data\UI\icon_gl_CA.paa"; /// weapon with grenade launcher should be marked such way

        //weaponInfoType = "RscWeaponZeroing"; /// display with zeroing is good for iron sights

        class WeaponSlotsInfo: WeaponSlotsInfo
        {
            mass = 100; /// some rough estimate
        };
    };
};
