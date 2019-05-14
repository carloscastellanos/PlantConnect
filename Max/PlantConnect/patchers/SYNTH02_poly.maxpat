{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1467.0, 79.0, 1132.0, 877.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 717.5, 636.0, 41.0, 20.0 ],
					"text" : "zl.iter 2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 717.5, 662.5, 233.0, 20.0 ],
					"text" : "route preset sweep_mod_level sweep_carrier_freq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 756.0, 503.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 919.0, 543.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 756.0, 528.5, 105.0, 22.0 ],
					"text" : "comment duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 756.0, 560.0, 28.0, 22.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : "duration"
					}
,
					"text" : "in 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 640.0, 662.5, 29.5, 22.0 ],
					"text" : "0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 640.0, 636.0, 67.0, 22.0 ],
					"text" : "delay 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "float", "" ],
					"patching_rect" : [ 695.5, 595.0, 41.0, 22.0 ],
					"text" : "t b 1. l"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-68",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 66.0, 206.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 47.5, 175.0, 110.0, 22.0 ],
					"text" : "scale 0. 1. 0.01 0.1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 47.5, 146.0, 28.0, 22.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}
,
					"text" : "in 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 178.0, 175.0, 97.0, 22.0 ],
					"text" : "scale 0. 1. 5. 25."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 178.0, 146.0, 28.0, 22.0 ],
					"text" : "in 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 274.0, 588.0, 139.0, 22.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr sweep_carrier_freq",
					"varname" : "sweep_carrier_freq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 316.0, 457.0, 132.0, 22.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr sweep_mod_level",
					"varname" : "sweep_mod_level"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 756.0, 373.5, 201.0, 35.0 ],
					"text" : "455 87 98 182 332 234 227 56 406 206 185 133 150 143 276 287"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 630.0, 89.0, 361.0, 22.0 ],
					"text" : "455 87 98 182 332 234 227 56 406 206 185 133 150 143 276 287"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 717.5, 691.5, 71.0, 22.0 ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr preset",
					"varname" : "preset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 76.0, 239.0, 46.0, 22.0 ],
					"text" : "noise~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 867.0, 543.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 867.0, 509.0, 58.0, 22.0 ],
					"text" : "thispoly~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 361.5, 790.0, 29.5, 22.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 668.0, 45.0, 103.0, 22.0 ],
					"text" : "comment release"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.0, 45.0, 101.0, 22.0 ],
					"text" : "comment sustain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 460.0, 45.0, 95.0, 22.0 ],
					"text" : "comment decay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 355.0, 45.0, 95.0, 22.0 ],
					"text" : "comment attack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 242.0, 10.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 242.0, 45.0, 97.0, 22.0 ],
					"text" : "comment trigger"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 538.75, 76.0, 30.0, 22.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : "release"
					}
,
					"text" : "in 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 336.75, 106.0, 221.0, 22.0 ],
					"text" : "adsr~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 488.25, 76.0, 30.0, 22.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : "sustain"
					}
,
					"text" : "in 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 437.75, 76.0, 30.0, 22.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : "decay"
					}
,
					"text" : "in 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 387.25, 76.0, 30.0, 22.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : "attack"
					}
,
					"text" : "in 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 336.75, 76.0, 30.0, 22.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : "trigger"
					}
,
					"text" : "in 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.5, 568.0, 30.0, 22.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}
,
					"text" : "in 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 361.5, 823.0, 44.0, 22.0 ],
					"saved_object_attributes" : 					{
						"attr_comment" : ""
					}
,
					"text" : "out~ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 229.0, 261.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 205.0, 321.0, 168.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"comment" : "offset",
									"id" : "obj-11",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 374.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "range",
									"id" : "obj-10",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 262.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 127.0, 321.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "frequency",
									"id" : "obj-8",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 61.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Arial",
									"fontsize" : 16.0,
									"id" : "obj-39",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 127.0, 29.0, 89.0, 24.0 ],
									"text" : "LFO"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 277.0, 253.5, 69.0, 20.0 ],
									"text" : "offset"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 257.0, 182.5, 69.0, 20.0 ],
									"text" : "range"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 177.0, 100.5, 69.0, 20.0 ],
									"text" : "frequency"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-31",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 75.0, 99.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-24",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 214.5, 253.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-22",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 205.0, 182.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 127.0, 182.5, 32.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 127.0, 133.5, 65.0, 22.0 ],
									"text" : "cycle~ 0.5"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 127.0, 278.5, 48.0, 22.0 ],
									"text" : "+~ 500"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 127.0, 235.5, 52.0, 22.0 ],
									"text" : "*~ 1000"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"order" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"order" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 1,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"order" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "newobjYellow-1",
								"default" : 								{
									"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
									"fontsize" : [ 12.059008 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 544.0, 696.0, 133.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p LFO"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 478.0, 153.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 585.0, 495.0, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.0, 620.0, 109.0, 22.0 ],
					"text" : "scale~ 0. 1. 0 15.5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 27.0, 588.0, 118.0, 74.0 ],
					"text" : "scale ot fit # of positions in buffer~\n\n(can also use *~ 16 followed by -~ .5)"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-80",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 283.0, 185.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-78",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 344.25, 389.0, 54.5, 33.0 ],
					"text" : "counter on/off"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 312.0, 389.0, 21.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.0, 426.0, 34.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 342.0, 312.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 961.0, 595.0, 150.0, 167.0 ],
					"text" : "Combination of FM & wavetable synthesis with a sah\n\nAdapted from/inspired by the supposed Autechre patch floating around the Max forums\n\nhttps://cycling74.com/forums/topic/autechre-patch/#.WNK7wXQrLMU"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-39",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 370.0, 212.0, 109.0, 87.0 ],
					"text" : "this table stores frequency values that phasor~ & index~ use to send to the cycle~ at the bottom left"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 92.5, 670.0, 63.0, 33.0 ],
					"text" : "read from buffer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 420.0, 528.5, 54.5, 33.0 ],
					"text" : "write to buffer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-108",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 816.0, 239.0, 161.0, 47.0 ],
					"text" : "change the range based on the current voltage (some sort of runnig average)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-106",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 798.0, 208.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-105",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 725.0, 208.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 725.0, 249.0, 69.0, 22.0 ],
					"text" : "pack 0 500"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-100",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 725.0, 282.0, 75.0, 22.0 ],
					"text" : "range $1 $2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-98",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 565.0, 350.0, 150.0, 60.0 ],
					"text" : "these silders could represent the 16 most recent voltage readings from MFC (taken 1 per hr)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"interpinlet" : 1,
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 361.5, 720.0, 95.0, 14.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-84",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 479.5, 696.0, 50.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 361.5, 753.0, 121.0, 23.0 ],
					"text" : "lores~ 200 0.75"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-82",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 194.0, 361.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 267.0, 380.0, 34.0, 22.0 ],
					"text" : "/ 16."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-9",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 178.0, 206.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "scope~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 355.0, 132.0, 71.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.0, 316.0, 38.0, 23.0 ],
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 178.0, 276.0, 55.0, 23.0 ],
					"text" : ">~ 0.05"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 178.0, 239.0, 69.0, 23.0 ],
					"text" : "phasor~ 5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 76.0, 276.0, 68.0, 23.0 ],
					"text" : "sah~ 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 717.5, 721.0, 100.0, 55.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 677.001037999999994, 5, "obj-43", "live.dial", "float", 677.001037999999994, 5, "obj-44", "live.dial", "float", 10.0, 5, "obj-62", "flonum", "float", 10.0, 20, "obj-406", "multislider", "list", 42, 14, 52, 52, 378, 24, 28, 35, 35, 35, 31, 24, 87, 91, 77, 115, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 709.095398000000046, 5, "obj-43", "live.dial", "float", 709.095398000000046, 5, "obj-44", "live.dial", "float", 10.0, 5, "obj-62", "flonum", "float", 10.0, 20, "obj-406", "multislider", "list", 101, 84, 108, 311, 119, 119, 143, 35, 133, 35, 31, 24, 87, 91, 77, 115, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 3,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 709.095398000000046, 5, "obj-43", "live.dial", "float", 709.095398000000046, 5, "obj-44", "live.dial", "float", 10.27342, 5, "obj-62", "flonum", "float", 10.27342, 20, "obj-406", "multislider", "list", 101, 84, 108, 364, 119, 119, 143, 35, 133, 35, 31, 24, 87, 91, 77, 115, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 4,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 720.004332999999974, 5, "obj-43", "live.dial", "float", 720.004332999999974, 5, "obj-44", "live.dial", "float", 10.486081, 5, "obj-62", "flonum", "float", 10.486081, 20, "obj-406", "multislider", "list", 101, 185, 108, 364, 119, 119, 143, 101, 119, 94, 101, 84, 87, 91, 77, 115, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 5,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 720.004332999999974, 5, "obj-43", "live.dial", "float", 720.004332999999974, 5, "obj-44", "live.dial", "float", 10.759501, 5, "obj-62", "flonum", "float", 10.759501, 20, "obj-406", "multislider", "list", 101, 185, 259, 266, 280, 290, 290, 308, 325, 343, 346, 126, 273, 91, 77, 115, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 6,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 753.363524999999981, 5, "obj-43", "live.dial", "float", 753.363524999999981, 5, "obj-44", "live.dial", "float", 10.759501, 5, "obj-62", "flonum", "float", 10.759501, 20, "obj-406", "multislider", "list", 367, 133, 259, 325, 346, 353, 371, 318, 325, 364, 276, 308, 343, 91, 77, 115, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 7,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 753.363524999999981, 5, "obj-43", "live.dial", "float", 753.363524999999981, 5, "obj-44", "live.dial", "float", 11.093681999999999, 5, "obj-62", "flonum", "float", 11.093681999999999, 20, "obj-406", "multislider", "list", 367, 150, 147, 164, 259, 297, 315, 290, 427, 301, 343, 430, 423, 91, 77, 115, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 742.138427999999976, 5, "obj-43", "live.dial", "float", 742.138427999999976, 5, "obj-44", "live.dial", "float", 11.944324, 5, "obj-62", "flonum", "float", 11.944324, 20, "obj-406", "multislider", "list", 241, 294, 332, 252, 196, 196, 241, 259, 185, 406, 406, 164, 182, 91, 77, 115, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 742.138427999999976, 5, "obj-43", "live.dial", "float", 742.138427999999976, 5, "obj-44", "live.dial", "float", 13.038007, 5, "obj-62", "flonum", "float", 13.038007, 20, "obj-406", "multislider", "list", 241, 112, 350, 87, 94, 112, 126, 196, 143, 154, 322, 276, 252, 56, 388, 318, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 10,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 764.694091999999955, 5, "obj-43", "live.dial", "float", 764.694091999999955, 5, "obj-44", "live.dial", "float", 13.675988, 5, "obj-62", "flonum", "float", 13.675988, 20, "obj-406", "multislider", "list", 259, 273, 311, 332, 336, 294, 339, 56, 73, 364, 56, 56, 290, 283, 266, 178, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 11,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 731.018737999999985, 5, "obj-43", "live.dial", "float", 731.018737999999985, 5, "obj-44", "live.dial", "float", 15.134232000000001, 5, "obj-62", "flonum", "float", 15.134232000000001, 20, "obj-406", "multislider", "list", 192, 220, 311, 332, 336, 294, 339, 56, 280, 364, 157, 56, 290, 283, 266, 238, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 12,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 720.004395000000045, 5, "obj-43", "live.dial", "float", 720.004395000000045, 5, "obj-44", "live.dial", "float", 15.954494, 5, "obj-62", "flonum", "float", 15.954494, 20, "obj-406", "multislider", "list", 378, 84, 217, 248, 217, 168, 17, 77, 346, 332, 192, 94, 248, 455, 21, 238, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 13,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 742.138427999999976, 5, "obj-43", "live.dial", "float", 742.138427999999976, 5, "obj-44", "live.dial", "float", 18.77984, 5, "obj-62", "flonum", "float", 18.77984, 20, "obj-406", "multislider", "list", 217, 245, 245, 220, 147, 59, 59, 59, 63, 66, 80, 77, 35, 143, 147, 402, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 14,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 811.070190000000025, 5, "obj-43", "live.dial", "float", 811.070190000000025, 5, "obj-44", "live.dial", "float", 19.843143000000001, 5, "obj-62", "flonum", "float", 19.843143000000001, 20, "obj-406", "multislider", "list", 217, 245, 245, 63, 70, 91, 157, 455, 203, 175, 59, 112, 164, 178, 161, 402, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 15,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 799.318053999999961, 5, "obj-43", "live.dial", "float", 799.318053999999961, 5, "obj-44", "live.dial", "float", 20.967205, 5, "obj-62", "flonum", "float", 20.967205, 20, "obj-406", "multislider", "list", 455, 66, 84, 108, 157, 192, 206, 266, 311, 353, 385, 416, 297, 465, 472, 402, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 16,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 753.363586000000055, 5, "obj-43", "live.dial", "float", 753.363586000000055, 5, "obj-44", "live.dial", "float", 23.39761, 5, "obj-62", "flonum", "float", 23.39761, 20, "obj-406", "multislider", "list", 10, 21, 59, 119, 105, 157, 35, 31, 24, 24, 17, 24, 38, 52, 52, 402, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 17,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 753.363586000000055, 5, "obj-43", "live.dial", "float", 753.363586000000055, 5, "obj-44", "live.dial", "float", 27.498919000000001, 5, "obj-62", "flonum", "float", 27.498919000000001, 20, "obj-406", "multislider", "list", 10, 168, 101, 234, 308, 329, 329, 311, 290, 38, 59, 70, 38, 52, 52, 248, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 18,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 883.796326000000022, 5, "obj-43", "live.dial", "float", 883.796326000000022, 5, "obj-44", "live.dial", "float", 28.987541, 5, "obj-62", "flonum", "float", 28.987541, 20, "obj-406", "multislider", "list", 10, 168, 101, 234, 308, 329, 329, 311, 290, 38, 59, 70, 38, 52, 52, 248, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 19,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 799.318053999999961, 5, "obj-43", "live.dial", "float", 799.318053999999961, 5, "obj-44", "live.dial", "float", 32.147067999999997, 5, "obj-62", "flonum", "float", 32.147067999999997, 20, "obj-406", "multislider", "list", 10, 168, 101, 234, 94, 318, 192, 182, 84, 80, 423, 80, 80, 112, 388, 248, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 20,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 799.318053999999961, 5, "obj-43", "live.dial", "float", 799.318053999999961, 5, "obj-44", "live.dial", "float", 41.109188000000003, 5, "obj-62", "flonum", "float", 41.109188000000003, 20, "obj-406", "multislider", "list", 10, 168, 101, 234, 94, 315, 192, 182, 84, 80, 423, 3, 234, 112, 388, 248, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 21,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 799.318053999999961, 5, "obj-43", "live.dial", "float", 799.318053999999961, 5, "obj-44", "live.dial", "float", 56.208080000000002, 5, "obj-62", "flonum", "float", 56.208080000000002, 20, "obj-406", "multislider", "list", 332, 168, 101, 234, 94, 346, 112, 259, 262, 255, 157, 413, 199, 77, 371, 248, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 22,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 799.318053999999961, 5, "obj-43", "live.dial", "float", 799.318053999999961, 5, "obj-44", "live.dial", "float", 115.753005999999999, 5, "obj-62", "flonum", "float", 115.753005999999999, 20, "obj-406", "multislider", "list", 94, 269, 70, 66, 63, 91, 147, 210, 297, 392, 437, 437, 395, 199, 185, 385, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 23,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 799.318053999999961, 5, "obj-43", "live.dial", "float", 799.318053999999961, 5, "obj-44", "live.dial", "float", 126.780968000000001, 5, "obj-62", "flonum", "float", 126.780968000000001, 20, "obj-406", "multislider", "list", 94, 66, 122, 136, 147, 157, 213, 287, 266, 259, 252, 248, 248, 245, 234, 385, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 24,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 799.318053999999961, 5, "obj-43", "live.dial", "float", 799.318053999999961, 5, "obj-44", "live.dial", "float", 134.436736999999994, 5, "obj-62", "flonum", "float", 134.436736999999994, 20, "obj-406", "multislider", "list", 199, 220, 213, 73, 56, 73, 157, 213, 304, 385, 392, 357, 325, 318, 339, 385, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 25,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 787.671326000000022, 5, "obj-43", "live.dial", "float", 787.671326000000022, 5, "obj-44", "live.dial", "float", 150.477417000000003, 5, "obj-62", "flonum", "float", 150.477417000000003, 20, "obj-406", "multislider", "list", 49, 63, 80, 161, 266, 280, 276, 203, 136, 143, 304, 206, 140, 395, 308, 269, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 26,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 742.138427999999976, 5, "obj-43", "live.dial", "float", 742.138427999999976, 5, "obj-44", "live.dial", "float", 167.490250000000003, 5, "obj-62", "flonum", "float", 167.490250000000003, 20, "obj-406", "multislider", "list", 49, 161, 182, 164, 112, 322, 94, 203, 136, 143, 304, 206, 332, 374, 308, 269, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 27,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 742.138427999999976, 5, "obj-43", "live.dial", "float", 742.138427999999976, 5, "obj-44", "live.dial", "float", 185.475249999999988, 5, "obj-62", "flonum", "float", 185.475249999999988, 20, "obj-406", "multislider", "list", 308, 161, 182, 164, 112, 115, 126, 133, 143, 143, 304, 206, 332, 374, 308, 269, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 28,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 720.004395000000045, 5, "obj-43", "live.dial", "float", 720.004395000000045, 5, "obj-44", "live.dial", "float", 199.601974000000013, 5, "obj-62", "flonum", "float", 199.601974000000013, 20, "obj-406", "multislider", "list", 308, 336, 381, 357, 304, 150, 161, 227, 283, 444, 304, 206, 332, 374, 308, 269, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 29,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 742.138427999999976, 5, "obj-43", "live.dial", "float", 742.138427999999976, 5, "obj-44", "live.dial", "float", 204.432403999999991, 5, "obj-62", "flonum", "float", 204.432403999999991, 20, "obj-406", "multislider", "list", 308, 336, 381, 357, 304, 150, 161, 227, 283, 444, 304, 206, 332, 374, 308, 269, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 30,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 731.018677000000025, 5, "obj-43", "live.dial", "float", 731.018677000000025, 5, "obj-44", "live.dial", "float", 229.495956000000007, 5, "obj-62", "flonum", "float", 229.495956000000007, 20, "obj-406", "multislider", "list", 308, 336, 381, 357, 304, 115, 161, 227, 283, 325, 406, 423, 423, 374, 308, 269, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 31,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 742.138427999999976, 5, "obj-43", "live.dial", "float", 742.138427999999976, 5, "obj-44", "live.dial", "float", 256.078522000000021, 5, "obj-62", "flonum", "float", 256.078522000000021, 20, "obj-406", "multislider", "list", 308, 336, 381, 357, 304, 115, 161, 227, 283, 325, 406, 423, 423, 374, 308, 269, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
, 						{
							"number" : 32,
							"data" : [ 5, "obj-27", "number", "int", 588, 5, "obj-38", "flonum", "float", 2.45, 5, "obj-40", "flonum", "float", 986.666930999999977, 5, "obj-43", "live.dial", "float", 986.666930999999977, 5, "obj-44", "live.dial", "float", 278.438263000000006, 5, "obj-62", "flonum", "float", 278.438263000000006, 20, "obj-406", "multislider", "list", 455, 87, 98, 182, 332, 234, 227, 56, 406, 206, 185, 133, 150, 143, 276, 287, 5, "obj-9", "flonum", "float", 18.0, 5, "obj-82", "flonum", "float", 33.0, 5, "obj-84", "flonum", "float", 0.72, 6, "obj-90", "gain~", "list", 131, 10.0, 5, "obj-105", "number", "int", 0, 5, "obj-106", "number", "int", 500, 5, "obj-73", "number", "int", 256, 5, "obj-77", "toggle", "int", 0, 5, "obj-80", "flonum", "float", 0.05, 5, "obj-72", "number", "int", 0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-406",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 478.0, 207.0, 206.0, 143.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"setminmax" : [ 0.0, 500.0 ],
					"settype" : 0,
					"size" : 16
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-62",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 182.0, 475.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 523.0, 384.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 523.0, 418.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 370.0, 350.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 182.0, 418.0, 85.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "Sweep Modulator",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1,
							"parameter_mmin" : 10.0,
							"parameter_exponent" : 2.0,
							"parameter_longname" : "Sweep Modulator",
							"parameter_initial_enable" : 1,
							"parameter_mmax" : 500.0
						}

					}
,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 274.0, 620.0, 72.0, 48.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "Sweep Carrier",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1,
							"parameter_mmin" : 150.0,
							"parameter_exponent" : 2.0,
							"parameter_longname" : "Sweep Carrier",
							"parameter_initial_enable" : 1,
							"parameter_mmax" : 1000.0
						}

					}
,
					"varname" : "live.dial[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 551.0, 457.0, 41.0, 22.0 ],
					"text" : "/ 500."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-40",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 267.0, 675.5, 53.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-38",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 251.0, 539.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.0, 802.0, 68.0, 22.0 ],
					"text" : "cycle~ 100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.0, 760.0, 34.0, 22.0 ],
					"text" : "/~ 4."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.0, 716.0, 56.0, 22.0 ],
					"text" : "*~ 1000."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.0, 675.5, 98.0, 22.0 ],
					"text" : "index~ buffsteps"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 251.0, 505.5, 41.0, 22.0 ],
					"text" : "/ 240."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 251.0, 472.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 267.0, 350.0, 94.0, 22.0 ],
					"text" : "counter 0 1 256"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 267.0, 282.0, 38.0, 22.0 ],
					"text" : "<~ 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 267.0, 312.0, 44.0, 22.0 ],
					"text" : "edge~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 267.0, 249.0, 44.0, 22.0 ],
					"text" : "delta~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.0, 503.0, 42.0, 22.0 ],
					"text" : "*~ 32."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.0, 389.0, 54.0, 22.0 ],
					"text" : "log~ 32."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.0, 577.0, 81.0, 22.0 ],
					"text" : "phasor~ 0.25"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 478.0, 418.0, 30.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 384.0, 27.0, 22.0 ],
					"text" : "iter"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 585.0, 534.0, 122.0, 22.0 ],
					"text" : "buffer~ buffsteps 110"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 478.0, 534.0, 95.0, 22.0 ],
					"text" : "peek~ buffsteps"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 495.0, 59.0, 22.0 ],
					"text" : "pack 0 0."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 478.0, 457.0, 61.0, 22.0 ],
					"text" : "counter"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-406", 0 ],
					"midpoints" : [ 734.5, 309.0, 703.0, 309.0, 703.0, 196.0, 487.5, 196.0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 1 ],
					"midpoints" : [ 807.5, 234.0, 784.5, 234.0 ],
					"order" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"midpoints" : [ 807.5, 435.0, 582.5, 435.0 ],
					"order" : 1,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 498.5, 448.0, 560.5, 448.0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 276.5, 341.5, 379.5, 341.5 ],
					"order" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 1 ],
					"midpoints" : [ 346.25, 137.0, 1119.0, 137.0, 1119.0, 781.0, 381.5, 781.0 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 480.916666666666629, 145.0, 985.0, 145.0, 985.0, 474.0, 876.5, 474.0 ],
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"midpoints" : [ 346.25, 137.0, 996.0, 137.0, 996.0, 482.0, 876.5, 482.0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-406", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-406", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 57.0, 269.0, 85.5, 269.0 ],
					"order" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"order" : 1,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"midpoints" : [ 168.5, 834.0, 269.75, 834.0, 269.75, 710.0, 371.0, 710.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 260.5, 569.0, 168.5, 569.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"midpoints" : [ 276.5, 709.5, 205.5, 709.5 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 2,
					"source" : [ "obj-406", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 0,
					"source" : [ "obj-406", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 487.5, 366.5, 532.5, 366.5 ],
					"order" : 1,
					"source" : [ "obj-406", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"midpoints" : [ 560.5, 486.5, 527.5, 486.5 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 2 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"midpoints" : [ 187.5, 268.0, 134.5, 268.0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 3 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 4 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 2 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"order" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"order" : 1,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"order" : 2,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"order" : 3,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"order" : 4,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"midpoints" : [ 85.5, 309.0, 168.5, 309.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 716.0, 625.0, 747.0, 625.0, 747.0, 420.0, 726.0, 420.0, 726.0, 315.0, 696.0, 315.0, 696.0, 138.0, 327.0, 138.0, 327.0, 102.0, 346.25, 102.0 ],
					"source" : [ "obj-67", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-67", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"midpoints" : [ 915.5, 536.5, 928.5, 536.5 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 168.5, 343.0, 254.5, 343.0, 254.5, 238.0, 276.5, 238.0 ],
					"order" : 0,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 168.5, 346.5, 27.5, 346.5 ],
					"order" : 2,
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 4 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 649.5, 690.0, 627.0, 690.0, 627.0, 567.0, 474.0, 567.0, 474.0, 513.0, 459.0, 513.0, 459.0, 309.0, 357.0, 309.0, 357.0, 138.0, 333.0, 138.0, 333.0, 102.0, 346.25, 102.0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 2 ],
					"midpoints" : [ 489.0, 748.5, 473.0, 748.5 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-85", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-85", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 1 ],
					"midpoints" : [ 765.5, 630.0, 697.5, 630.0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-44" : [ "Sweep Modulator", "Sweep Modulator", 0 ],
			"obj-43" : [ "Sweep Carrier", "Sweep Carrier", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [  ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "cc01",
				"default" : 				{
					"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "dialGold",
				"default" : 				{
					"bgcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "ksliderWhite",
				"default" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjCyan-1",
				"default" : 				{
					"accentcolor" : [ 0.029546, 0.773327, 0.821113, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0.0, 0.533333, 0.168627, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjMagenta-1",
				"default" : 				{
					"accentcolor" : [ 0.840663, 0.060168, 0.769195, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
