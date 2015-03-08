removeAllWeapons player;
removeGoggles player;
removeHeadGear player;
removeUniform player;
removeVest player;
removeBackpack player;

{
  player unassignItem _x;
  player removeItem _x;
} forEach (assignedItems player);

{
  player removeMagazine _x;
} forEach (magazines player);