autowatch=1;

// pattr variables
var preset = [];
declareattribute("preset");
var sweep_mod_level = [];
declareattribute("sweep_mod_level");
var sweep_carrier_freq = [];
declareattribute("sweep_carrier_freq");

// pattr functions
function getPreset(idx) {
	outlet (0, "preset", preset[idx]);
}

function getSweepModLevel(idx) {
	outlet (0, "sweep_mod_level", sweep_mod_level[idx]);
}

function getSweepCarrierFreq(idx) {
	outlet (0, "sweep_carrier_freq", sweep_carrier_freq[idx]);
}

// get all settings at once
function getAllSettings(idx) {
	getPreset(idx);
	getSweepModLevel(idx);
	getSweepCarrierFreq(idx);
}