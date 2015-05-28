#define VEST_SLOT 701
#define UNIFORM_SLOT 801
#define BACKPACK_SLOT 901

class CfgMagazines {
  //class ItemCore;
  class Default;

  class CA_Magazine;
  class ML_Item : CA_Magazine {
    model = "\A3\weapons_F\ammo\mag_univ.p3d";
    scope = 2;
    count = 1;
    class ItemInfo {
      scope = 0;
      type = 201;
      allowedSlots[] = {VEST_SLOT, BACKPACK_SLOT};
      mass = 1;
    };
  };
  /* General */
  class ML_Item_Rope : ML_Item {
    displayName = "Rope";
    picture = "\ML_Images\Items\Inventory\Rope.paa";
    descriptionShort = "A rope.";
  };
  class ML_Item_Hammer : ML_Item {
    displayName = "Hammer";
    picture = "\ML_Images\Items\Inventory\Hammer.paa";
    descriptionShort = "For nails and stuff.";
  };
  class ML_Item_TyreIron : ML_Item {
    displayName = "Tyre iron";
    picture = "\ML_Images\Items\Inventory\Tyreiron.paa";
    descriptionShort = "Tyre iron, used only to change wheels, right?";
  };
  class ML_Item_Cigarette : ML_Item {
    displayName = "Cigarette";
    picture = "\ML_Images\Items\Inventory\Cigarette.paa";
    descriptionShort = "Smoking will kill you.";
  };
  /* Medical */
  class ML_Item_Bandages : ML_Item {
    displayName = "Bundle of bandages";
    picture = "\ML_Images\Items\Inventory\Bandages.paa";
    descriptionShort = "What's up doc?";
  };
  /* Drugs */
  class ML_Item_Cocaine : ML_Item {
    displayName = "Cocaine Brick";
    picture = "\ML_Images\Items\Inventory\CocaineBrick.paa";
    descriptionShort = "Did someone say drugs?";
  };
  class ML_Item_OpiumSeeds : ML_Item {
    displayName = "Opium Seeds";
    picture = "\ML_Images\Items\Inventory\OpiumSeeds.paa";
    descriptionShort = "Do not consume!";
  };
  /* Vehicle parts */
  class ML_Item_Wheel : ML_Item {
    displayName = "Wheel";
    picture = "\ML_Images\Items\Inventory\Wheel.paa";
    descriptionShort = "Spins like a record.";
    mass = 40;
  };
  class ML_Item_Engine : ML_Item {
    displayName = "Engine";
    picture = "\ML_Images\Items\Inventory\Engine.paa";
    descriptionShort = "Purrs like a kitty.";
    mass = 100;
  };
  /* Quest Items */
  class ML_Item_BossHat : ML_Item {
    displayName = "Boss's Hat";
    picture = "\ML_Images\Items\Inventory\boss_hat.paa";
    descriptionShort = "This is the boss's hat, he probably wants this back!";
  };
};
