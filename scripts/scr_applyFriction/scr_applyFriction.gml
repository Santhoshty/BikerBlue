// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_applyFriction(currentValue, targetValue, changeAmount){
	if (currentValue < targetValue) {
		currentValue += changeAmount;
		currentValue = min(currentValue, targetValue);
	}
	
	else {
		currentValue -= changeAmount;
		currentValue = max (currentValue, targetValue);
	}
	
	return currentValue
}
