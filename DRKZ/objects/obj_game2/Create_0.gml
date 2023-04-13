/// @description Insert description here
// You can write your code in this editor
object_set_visible(obj_fn_0, false);
//Counts number of times a possible answer collides with an obstacle
global.numCollisions = 0;
/** Used to keep a function that collides from counting towards numCollisions multiple times
  (drawing function means numCollisions would otherwise count multiple line fragments of one function
  as multiple collisions) */
//global.nonRepeat = true;

global.varA = 0;

global.varH = 0;

global.varK = 0;

global.display = false;

global.retry = false;

global.nextLvlBtn = false;

global.canRepeat = true;

global.scoreBtn = false;

global.levelTwoScore = 0;

global.train = false;