class CfgPatches {
  class ML_Weapons_Pistol_Revolver {
    units[] = {};
    weapons[] = {"ML_Weapon_Revolver"};
    requiredVersion=0.1;
    requiredAddons[]={"A3_Weapons_F"};
  };
};

class Mode_SemiAuto;  // External class reference

class CfgWeapons {
  class Pistol;  // External class reference
  
  class Pistol_Base_F : Pistol {
    class WeaponSlotsInfo;
  };
  
  class ML_Weapon_Revolver : Pistol_Base_F {
    author = "$STR_A3_Bohemia_Interactive";
    _generalMacro = "hgun_Pistol_Signal_F";
    overviewPicture = "\A3\Data_F_Kart\Images\watermarkInfo_page09_ca.paa";
    bullet1[] = {"", 0.501187, 1, 15};
    bullet2[] = {"", 0.501187, 1, 15};
    bullet3[] = {"", 0.501187, 1, 15};
    bullet4[] = {"", 0.501187, 1, 15};
    bullet5[] = {"", 0.398107, 1, 15};
    bullet6[] = {"", 0.398107, 1, 15};
    bullet7[] = {"", 0.398107, 1, 15};
    bullet8[] = {"", 0.398107, 1, 15};
    bullet9[] = {"", 0.223872, 1, 15};
    bullet10[] = {"", 0.223872, 1, 15};
    bullet11[] = {"", 0.223872, 1, 15};
    bullet12[] = {"", 0.223872, 1, 15};
    soundBullet[] = {"bullet1", 0.083, "bullet2", 0.083, "bullet3", 0.083, "bullet4", 0.083, "bullet5", 0.083, "bullet6", 0.083, "bullet7", 0.083, "bullet8", 0.083, "bullet9", 0.083, "bullet10", 0.083, "bullet11", 0.083, "bullet12", 0.083};
    sounds[] = {"StandardSound"};
    
    class BaseSoundModeType {
      weaponSoundEffect = "DefaultRifle";
      closure1[] = {"", 1.03514, 1, 10};
      closure2[] = {"", 1.03514, 1.1, 10};
      soundClosure[] = {"closure1", 0.5, "closure2", 0.5};
    };
    
    class StandardSound : BaseSoundModeType {
      begin1[] = {"A3\Sounds_F_Kart\Weapons\starting_pistol_1", 1.0, 1, 700};
      begin2[] = {"A3\Sounds_F_Kart\Weapons\starting_pistol_2", 1.0, 1, 700};
      begin3[] = {"A3\Sounds_F_Kart\Weapons\starting_pistol_3", 1.0, 1, 700};
      soundBegin[] = {"begin1", 0.33, "begin2", 0.33, "begin3", 0.34};
    };
    drySound[] = {"A3\sounds_f\weapons\other\dry1", 0.398107, 1, 20};
    reloadMagazineSound[] = {"A3\Sounds_F_Kart\Weapons\starting_pistol_reload", 0.562341, 1, 30};
    scope = 2;
    model = "\A3\Weapons_F_Kart\Pistols\Pistol_Signal_F\Pistol_Signal_01_F.p3d";
    picture = "\A3\Weapons_F_Kart\Pistols\Pistol_Signal_F\Data\UI\gear_Pistol_Signal_01_X_ca.paa";
    UiPicture = "\A3\weapons_f\data\UI\icon_regular_CA.paa";
    magazines[] = {"6Rnd_45ACP_Cylinder"};
    reloadAction = "GestureReloadPistolHeavy02";
    displayname = "Police Revolver";
    reloadtime = 0.25;
    dispersion = 0.004;
    recoil = "recoil_pistol_light";
    recoilProne = "recoil_prone_pistol_light";
    
    class Library {
      libTextDesc = "$STR_A3_CfgWeapons_hgun_Pistol_Signal_F_Library0";
    };
    descriptionShort = "Nothin' beats a good ol' Revolver.";
    
    class WeaponSlotsInfo : WeaponSlotsInfo {
      mass = 20;
      
      class CowsSlot {};
      
      class MuzzleSlot {};
    };
    
    class ItemInfo {
      priority = 2;
    };
    
    class GunParticles {
      class Effect1 {
        effectName = "StarterPistolCloud1";
        positionName = "usti hlavne";
        directionName = "konec hlavne";
      };
      
      class Effect2 {
        effectName = "StarterPistolCloud2";
        positionName = "konec hlavne";
        directionName = "usti hlavne";
      };
    };
  };
};