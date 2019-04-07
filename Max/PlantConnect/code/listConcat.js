autowatch = 1;
inlets = 2;
outlets = 2;
var arr_0 = [];
var arr_1 = [];

setinletassist(1,"list");
setinletassist(0,"list");
setoutletassist(1,"length of new list");
setoutletassist(0,"new list");

function list() {
	if (inlet === 1) {
		if(arguments.length) {
			arr_1 = arrayfromargs(arguments);
		}

	}
	
	if(inlet === 0) {
		if(arguments.length) {
			arr_0 = arrayfromargs(arguments);
		}
		outlet(0, doConcat(arr_0,arr_1));
	}
}

function doConcat(arr0,arr1) {
	var i, idx = 0;
	var outList = [];
	var len0 = arr0.length;
	var len1 = arr1.length;
	if(len1 && len0) {
		for(i = 0; i < len0; i++) {
			if(arr0[i] == 0) {
				outList.push(0,0);
			} else {
				outList.push(1, arr1[idx]);
				idx++;
			}
		}
	}
	outlet(1, outList.length);
	return outList;
}
