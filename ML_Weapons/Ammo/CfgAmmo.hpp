class CfgAmmo
{
  class BulletBase;
  class ML_M1928_Ammo: BulletBase
  {
    hit = 10;
    indirectHit = 0;
    indirectHitRange = 0; /// seems like standard 6.5mm round
    cartridge = "FxCartridge_Small"; /// seems like standard 6.5mm round
    visibleFire = 5; /// how big does the shooter seem to be for AI to take notice after he shoots
    audibleFire = 8; /// how big does the shooter seem to be for AI to take notice after he shoots
    cost = 1.2; /// pretty cheap to fire at anything, comes into shoot efficiency calculation mentioned in the weapon
    airLock = true; /// allows to be fired upon air targets
    typicalSpeed = 820;
    caliber = 1.0; /// caliber 1 equals 6.5mm round

    model = \A3\Weapons_f\Data\bullettracer\tracer_red; /// just for tracer
    tracerScale = 1.0; /// how big is the flying tracer
    tracerStartTime = 0.05; // seconds
    tracerEndTime = 1; // seconds
    airFriction = -0.00096;
    /* z:
      air friction value was set carefully to match RL ballistic table with high fidelity
      source: http://www.shootingtimes.com/wp-content/blogs.dir/11/files/6-5mm-grendel-the-round-the-military-ought-to-have/6-5mm-grendel_009.jpg
    */
    
    class CamShakeFire /// doesn't cause any camera shake
    {
      power = 0;
      duration = 0;
      frequency = 0;
      distance = 0;
    };
    class CamShakePlayerFire /// doesn't cause any camera shake
    {
      power = 0;
      duration = 0;
      frequency = 0;
      distance = 0;
    };
    
  };
};