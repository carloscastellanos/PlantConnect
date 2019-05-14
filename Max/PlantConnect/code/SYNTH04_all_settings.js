autowatch=1;

outlets=2;

// pattr variables
var center_frequency = [];
declareattribute("center_frequency");
var depth = [];
declareattribute("depth");
var phase_begin = [];
declareattribute("phase_begin");
var phase_end = [];
declareattribute("phase_end");
var duration = [];
declareattribute("duration");

// pattr functions
function getCenterFrequency(idx) {
	outlet (0, "center_frequency", center_frequency[idx]);
}

function getDepth(idx) {
	outlet (0, "depth", depth[idx]);
}

function getPhaseBegin(idx) {
	outlet (0, "phase_begin", phase_begin[idx]);
}

function getPhaseEnd(idx) {
	outlet (0, "phase_end", phase_end[idx]);
}

function getDuration(idx) {
	outlet (0, "duration", duration[idx]);
}

// get all settings at once
function getAllSettings(idx) {
	x = idx + 1;
	voice = Math.round(x/2);
	outlet (1, voice);
	getCenterFrequency(idx);
	getDepth(idx);
	getPhaseBegin(idx);
	getPhaseEnd(idx);
	getDuration(idx);
}