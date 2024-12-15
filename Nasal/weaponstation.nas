# if we detect that a weapon was changed we update its station so that missile. can shoot it
# starting vars

var wep0 = "NONE";
var wep1 = "NONE";
var wep2 = "NONE";
var wep3 = "NONE";
var wep4 = "NONE";
var wep5 = "NONE";
var wep6 = "NONE";
var wep7 = "NONE";
var wep8 = "NONE";
var wep9 = "NONE";
var wep10 = "NONE";
var wep11 = "NONE";
var wep12 = "NONE";


var update = func() {
if (getprop("sim/weight[0]/selected") != wep0){
setprop("controls/armament[0]/station/release", "false");
}
if (getprop("sim/weight[1]/selected") != wep1){
setprop("controls/armament[1]/station/release", "false");    
}
if (getprop("sim/weight[2]/selected") != wep2){
setprop("controls/armament[2]/station/release", "false");    
}
if (getprop("sim/weight[3]/selected") != wep3){
setprop("controls/armament[3]/station/release", "false");    
}
if (getprop("sim/weight[4]/selected") != wep4){
setprop("controls/armament[4]/station/release", "false");    
}
if (getprop("sim/weight[5]/selected") != wep5){
setprop("controls/armament[5]/station/release", "false");    
}
if (getprop("sim/weight[6]/selected") != wep6){
setprop("controls/armament[5]/station/release", "false");    
}
if (getprop("sim/weight[7]/selected") != wep7){
setprop("controls/armament[7]/station/release", "false");    
}
if (getprop("sim/weight[8]/selected") != wep8){
setprop("controls/armament[8]/station/release", "false");    
}
if (getprop("sim/weight[9]/selected") != wep9){
setprop("controls/armament[9]/station/release", "false");    
}
if (getprop("sim/weight[10]/selected") != wep10){
setprop("controls/armament[10]/station/release", "false");    
}
if (getprop("sim/weight[11]/selected") != wep11){
setprop("controls/armament[11]/station/release", "false");   
}
if (getprop("sim/weight[12]/selected") != wep12){
setprop("controls/armament[12]/station/release", "false");
}

wep0 =  getprop("sim/weight[0]/selected");
wep1 =  getprop("sim/weight[1]/selected");
wep2 =  getprop("sim/weight[2]/selected");
wep3 =  getprop("sim/weight[3]/selected");
wep4 =  getprop("sim/weight[4]/selected");
wep5 =  getprop("sim/weight[5]/selected");
wep6 =  getprop("sim/weight[6]/selected");
wep7 =  getprop("sim/weight[7]/selected");
wep8 =  getprop("sim/weight[8]/selected");
wep9 =  getprop("sim/weight[9]/selected");
wep10 = getprop("sim/weight[10]/selected");
wep11 = getprop("sim/weight[11]/selected");
wep12 = getprop("sim/weight[12]/selected");
setprop("sim/crashed", "false");
}

# loop it now
# no var here
loop_timer = maketimer(0.5, update);
loop_timer.start();


	    myRadar = radar.Radar.new();
		myRadar.init();


var flares = func{
  #flare();
	var flarerand = rand();
props.globals.getNode("/rotors/main/blade[3]/flap-deg",1).setValue(flarerand);
props.globals.getNode("/rotors/main/blade[3]/position-deg",1).setValue(flarerand);
settimer(func   {
    props.globals.getNode("/rotors/main/blade[3]/flap-deg").setValue(0);
    props.globals.getNode("/rotors/main/blade[3]/position-deg").setValue(0);
                },1);

}

# 20 19, 18 17, 16 15, 14 13, 
var checkpylons = func{
    if(getprop("sim/weight[1]/selected") != "NONE") {
        setprop("sim/weight[14]/selected", "NONE");
        setprop("sim/weight[13]/selected", "NONE");
    }
    if(getprop("sim/weight[2]/selected") != "NONE") {
        setprop("sim/weight[15]/selected", "NONE");
        setprop("sim/weight[16]/selected", "NONE");
    }
    if(getprop("sim/weight[10]/selected") != "NONE") {
        setprop("sim/weight[18]/selected", "NONE");
        setprop("sim/weight[17]/selected", "NONE");
    }
    if(getprop("sim/weight[11]/selected") != "NONE") {
        setprop("sim/weight[20]/selected", "NONE");
        setprop("sim/weight[19]/selected", "NONE");
    }
}


var tgtlock = func{
if (getprop("instrumentation/radar/lock") == 1){
var target1_x = radar.tgts_list[radar.Target_Index].TgtsFiles.getNode("h-offset",1).getValue();
var target1_z = radar.tgts_list[radar.Target_Index].TgtsFiles.getNode("v-offset",1).getValue();
setprop("instrumentation/radar2/lockmarker", target1_x / 10);
setprop("instrumentation/radar2/lockmarker", target1_x / 10);
setprop("instrumentation/radar/az-field", 161);
# setprop("instrumentation/radar/grid", 0);
#print(target1_x / 10);
setprop("instrumentation/radar2/sweep-speed", 10);
setprop("instrumentation/radar/lock2", 2);
  } elsif (getprop("instrumentation/radar/lock") == 0){
setprop("instrumentation/radar/lock2", 0);
  
    if(getprop("instrumentation/radar/mode/main") == 1)
    {
        setprop("instrumentation/radar/az-field", 120);
        setprop("instrumentation/radar2/sweep-display-width", 0.0846);        
        setprop("instrumentation/radar2/sweep-speed", 1);   
      #  wcs_mode = "pulse-srch";
      #  AzField.setValue(120);
      #  swp_diplay_width = 0.0844;
    }
    elsif(getprop("instrumentation/radar/mode/main") == 0)
    {
        setprop("instrumentation/radar/az-field", 60);
        setprop("instrumentation/radar/mode/main", 0);
        #wcs_mode = "tws-auto";
        setprop("instrumentation/radar2/sweep-display-width", 0.0446);        
        setprop("instrumentation/radar2/sweep-speed", 2);   
        tgts_list = [];
    }
  }
}


loop_timer2 = maketimer(0.3, checkpylons);
loop_timer2.start();


locktgt_timer = maketimer(0.1, tgtlock);
    locktgt_timer.start();