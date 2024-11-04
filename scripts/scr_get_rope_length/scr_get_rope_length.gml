// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_rope_length(){
	sum = 0;
	for(i = 1; i < array_length(global.rope_array); i++){
		height = global.rope_array[i - 1].y - global.rope_array[i].y
		width = global.rope_array[i - 1].x - global.rope_array[i].x
		sum += sqrt(height * height + width * width);
	}
	return sum;
}