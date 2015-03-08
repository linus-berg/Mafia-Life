class CfgMagazines
{
  class Default;

  class CA_Magazine;

  class ML_30Rnd_M1928_Mag: CA_Magazine 
  {
    scope = 2; /// or 2, to be precise
    displayName = "M1928 Magazine";
    picture = "\ML_Weapons\Ammo\Data\M1928\M1928_Mag.paa"; /// just some icon
    ammo = ML_M1928_Ammo;
    count = 30; /// 30 rounds is enough
    initSpeed = 795; /// standard muzzle speed
    tracersEvery = 0; /// disable tracers by default
    lastRoundsTracer = 4; /// tracers to track low ammo
    descriptionShort = "Fits the M1928."; /// on mouse-over in Inventory
  };

/*  class 30Rnd_test_mag_Tracer: 30Rnd_test_mag /// a magazine full of tracer rounds
  {
    tracersEvery = 1; /// moar tracers
    lastRoundsTracer = 30; /// tracers everywhere
    displayName = "Test tracer magazine";
    descriptionShort = "Used to shoot test tracer bullets";
    displaynameshort = "Tracers";
  };*/
};
