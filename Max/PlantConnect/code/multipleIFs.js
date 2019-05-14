autowatch=1;

/*
A little script to keep numbers within a range and facilitate
numbers for circular panning (e.g. descending numbers < 0 jump to
1.0 and go down as negative values increase; ascending numbers > 1
circle back to 0 and ascend from there) 
*/

function msg_float(f) {
	var num = constrain(f, -1.0, 2.0);
	var out = 0.0;
	if(num < 0.0) {
		out = 1.0 + num;
	} else if(num >= 0 && num <= 1.0) {
		out = num;
	} else if(num > 1.0) {
		out = -1.0 + num;
	}
	outlet(0, out);
}

function constrain(val, lo, hi) {
    return val > hi ? hi : val < lo ? lo : val;
}
