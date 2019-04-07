autowatch=1;

// pattr variables
var sync_toggle = [];
declareattribute("sync_toggle");
var sync_frequency = [];
declareattribute("sync_frequency");
var sync_amplitude_mod = [];
declareattribute("sync_amplitude_mod");
var sync_frequency_mod = [];
declareattribute("sync_frequency_mod");
var duty_cycle = [];
declareattribute("duty_cycle");
var cycle_frequency = [];
declareattribute("cycle_frequency");
var tri_frequency = [];
declareattribute("tri_frequency");
var saw_frequency = [];
declareattribute("saw_frequency");
var rect_frequency = [];
declareattribute("rect_frequency");
var cycle_gain = [];
declareattribute("cycle_gain");
var tri_gain = [];
declareattribute("tri_gain");
var saw_gain = [];
declareattribute("saw_gain");
var rect_gain = [];
declareattribute("rect_gain");

// pattr functions
function getSyncToggle(idx) {
    outlet (0, "sync_toggle", sync_toggle[idx]);
}

function getSyncFrequency(idx) {
    outlet (0, "sync_frequency", sync_frequency[idx]);
}

function getSyncAmplitudeMod(idx) {
    outlet (0, "sync_amplitude_mod", sync_amplitude_mod[idx]);
}

function getSyncFrequencyMod(idx) {
    outlet (0, "sync_frequency_mod", sync_frequency_mod[idx]);
}

function getDutyCycle(idx) {
    outlet (0, "duty_cycle", duty_cycle[idx]);
}

function getCycleFrequency(idx) {
    outlet (0, "cycle_frequency", cycle_frequency[idx]);
}

function getTriFrequency(idx) {
    outlet (0, "tri_frequency", tri_frequency[idx]);
}

function getSawFrequency(idx) {
    outlet (0, "saw_frequency", saw_frequency[idx]);
}

function getRectFrequency(idx) {
    outlet (0, "rect_frequency", rect_frequency[idx]);
}

function getCycleGain(idx) {
    outlet (0, "cycle_gain", cycle_gain[idx]);
}

function getTriGain(idx) {
    outlet (0, "tri_gain", tri_gain[idx]);
}

function getSawGain(idx) {
    outlet (0, "saw_gain", saw_gain[idx]);
}

function getRectGain(idx) {
    outlet (0, "rect_gain", rect_gain[idx]);
}

// get all settings at once
function getAllSettings(idx) {
	getSyncToggle(idx);
	getSyncFrequency(idx);
	getSyncAmplitudeMod(idx);
	getSyncFrequencyMod(idx);
	getDutyCycle(idx);
	getCycleFrequency(idx);
	getTriFrequency(idx);
	getSawFrequency(idx);
	getRectFrequency(idx);
	getCycleGain(idx);
	getTriGain(idx);
	getSawGain(idx);
	getRectGain(idx);
}