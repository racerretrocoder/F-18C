

#On verifie et on largue
var dropTanks = func(){
        for(var i = 2 ;i < 5 ; i = i + 1 ){
           var select = getprop("sim/weight["~ i ~"]/selected");
           if(select == "droptank"){ load.dropLoad(i);}

        }
}



var reloadmissile = func() {
       


setprop("controls/armament/station[0]/release", "false");
setprop("controls/armament/station[1]/release", "false");
setprop("controls/armament/station[2]/release", "false");
setprop("controls/armament/station[3]/release", "false");
setprop("controls/armament/station[4]/release", "false");
setprop("controls/armament/station[5]/release", "false");
setprop("controls/armament/station[6]/release", "false");
setprop("controls/armament/station[7]/release", "false");
setprop("controls/armament/station[8]/release", "false");
 setprop("controls/armament/station[9]/release", "false");
setprop("controls/armament/station[10]/release", "false");
setprop("controls/armament/station[11]/release", "false");
setprop("controls/armament/station[12]/release", "false");	

setprop("controls/armament/station[13]/release", "false");
setprop("controls/armament/station[14]/release", "false");
setprop("controls/armament/station[15]/release", "false");
setprop("controls/armament/station[16]/release", "false");
setprop("controls/armament/station[17]/release", "false");
setprop("controls/armament/station[18]/release", "false");
setprop("controls/armament/station[19]/release", "false");
setprop("controls/armament/station[20]/release", "false");	
}


var clean = func() {
       



        setprop("sim/weight[0]/selected", "NONE");
        setprop("sim/weight[1]/selected", "NONE");
        setprop("sim/weight[2]/selected", "NONE");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "NONE");
        setprop("sim/weight[6]/selected", "NONE");
		setprop("sim/weight[7]/selected", "NONE");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "NONE");
		setprop("sim/weight[11]/selected", "NONE");
		setprop("sim/weight[12]/selected", "NONE");

        		setprop("sim/weight[12]/selected", "NONE");
        		setprop("sim/weight[13]/selected", "NONE");
                		setprop("sim/weight[14]/selected", "NONE");
                        		setprop("sim/weight[15]/selected", "NONE");
                                		setprop("sim/weight[16]/selected", "NONE");
                                        		setprop("sim/weight[17]/selected", "NONE");
                                                		setprop("sim/weight[18]/selected", "NONE");
                                                        		setprop("sim/weight[19]/selected", "NONE");
                                                                		setprop("sim/weight[20]/selected", "NONE");
reloadmissile();


}
var puredogfight = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "NONE");
        setprop("sim/weight[2]/selected", "NONE");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "Aim-120");
        setprop("sim/weight[6]/selected", "NONE");
		setprop("sim/weight[7]/selected", "Aim-120");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "NONE");
		setprop("sim/weight[11]/selected", "NONE");
		setprop("sim/weight[12]/selected", "Aim-9x");
        		setprop("sim/weight[13]/selected", "Aim-9x");
                		setprop("sim/weight[14]/selected", "Aim-9x");
                        		setprop("sim/weight[15]/selected", "Aim-9x");
                                		setprop("sim/weight[16]/selected", "Aim-9x");
                                        		setprop("sim/weight[17]/selected", "Aim-9x");
                                                		setprop("sim/weight[18]/selected", "Aim-9x");
                                                        		setprop("sim/weight[19]/selected", "Aim-9x");
                                                                		setprop("sim/weight[20]/selected", "Aim-9x");

reloadmissile();
}
var purebvr = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "NONE");
        setprop("sim/weight[2]/selected", "NONE");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "Aim-120");
        setprop("sim/weight[6]/selected", "NONE");
		setprop("sim/weight[7]/selected", "Aim-120");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "NONE");
		setprop("sim/weight[11]/selected", "NONE");
		setprop("sim/weight[12]/selected", "Aim-9x");
        		setprop("sim/weight[13]/selected", "Aim-120");
                		setprop("sim/weight[14]/selected", "Aim-120");
                        		setprop("sim/weight[15]/selected", "Aim-120");
                                		setprop("sim/weight[16]/selected", "Aim-120");
                                        		setprop("sim/weight[17]/selected", "Aim-120");
                                                		setprop("sim/weight[18]/selected", "Aim-120");
                                                        		setprop("sim/weight[19]/selected", "Aim-120");
                                                                		setprop("sim/weight[20]/selected", "Aim-120");

reloadmissile();
}
var Ferry = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "NONE");
        setprop("sim/weight[2]/selected", "330 Gal Droptank");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "NONE");
        setprop("sim/weight[6]/selected", "330 Gal Droptank");
		setprop("sim/weight[7]/selected", "NONE");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "330 Gal Droptank");
		setprop("sim/weight[11]/selected", "NONE");
		setprop("sim/weight[12]/selected", "Aim-9x");
        		setprop("sim/weight[13]/selected", "Aim-9x");
                		setprop("sim/weight[14]/selected", "Aim-9x");
                        		setprop("sim/weight[15]/selected", "Aim-9x");
                                		setprop("sim/weight[16]/selected", "Aim-9x");
                                        		setprop("sim/weight[17]/selected", "Aim-9x");
                                                		setprop("sim/weight[18]/selected", "Aim-9x");
                                                        		setprop("sim/weight[19]/selected", "Aim-9x");
                                                                		setprop("sim/weight[20]/selected", "Aim-9x");
		setprop("consumables/fuel/tank[4]/selected", 1);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[4]/level-gal_us", 330);
		setprop("consumables/fuel/tank[5]/selected", 1);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[5]/level-gal_us", 330);
		setprop("consumables/fuel/tank[6]/selected", 1);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[6]/level-gal_us", 330);
reloadmissile();

}



var CAP = func(){

        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "NONE");
        setprop("sim/weight[2]/selected", "NONE");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "AIM-7");
        setprop("sim/weight[6]/selected", "330 Gal Droptank");
		setprop("sim/weight[7]/selected", "AIM-7");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "NONE");
		setprop("sim/weight[11]/selected", "NONE");
		setprop("sim/weight[12]/selected", "Aim-9x");
			setprop("sim/weight[15]/selected", "Aim-120");
                                		setprop("sim/weight[16]/selected", "Aim-120");
                                        		setprop("sim/weight[17]/selected", "Aim-120");
                                                		setprop("sim/weight[18]/selected", "Aim-120");
                                    setprop("sim/weight[13]/selected", "Aim-9x");
                		setprop("sim/weight[14]/selected", "Aim-9x");
                        	
                                                        		setprop("sim/weight[19]/selected", "Aim-9x");
                                                                		setprop("sim/weight[20]/selected", "Aim-9x");

reloadmissile();
		setprop("consumables/fuel/tank[5]/selected", 1);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[5]/level-gal_us", 330);
		

}

var CAPext = func(){

        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "NONE");
        setprop("sim/weight[2]/selected", "330 Gal Droptank");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "AIM-7");
        setprop("sim/weight[6]/selected", "330 Gal Droptank");
		setprop("sim/weight[7]/selected", "AIM-7");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "330 Gal Droptank");
		setprop("sim/weight[11]/selected", "NONE");
		setprop("sim/weight[12]/selected", "Aim-9x");

        			setprop("sim/weight[15]/selected", "NONE");
                                		setprop("sim/weight[16]/selected", "NONE");
                                        		setprop("sim/weight[17]/selected", "NONE");
                                                		setprop("sim/weight[18]/selected", "NONE");	

                    setprop("sim/weight[13]/selected", "Aim-120");
                		setprop("sim/weight[14]/selected", "Aim-120");
                        	
                                                        		setprop("sim/weight[19]/selected", "Aim-120");
                                                                		setprop("sim/weight[20]/selected", "Aim-120");
                                                                        missilereload();
        setprop("consumables/fuel/tank[4]/selected", 1);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[4]/level-gal_us", 330);
		setprop("consumables/fuel/tank[5]/selected", 1);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[5]/level-gal_us", 330);
		setprop("consumables/fuel/tank[6]/selected", 1);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[6]/level-gal_us", 330);

}

var bomb = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "2x MK-82");
        setprop("sim/weight[2]/selected", "2x MK-83");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "AIM-7");
        setprop("sim/weight[6]/selected", "2x MK-82");
		setprop("sim/weight[7]/selected", "AIM-7");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "2x MK-83");
		setprop("sim/weight[11]/selected", "2x MK-82");
		setprop("sim/weight[12]/selected", "Aim-9x");
		
        		setprop("controls/armament/station[0]/release", "false");
setprop("controls/armament/station[1]/release", "false");
setprop("controls/armament/station[2]/release", "false");
setprop("controls/armament/station[3]/release", "false");
setprop("controls/armament/station[4]/release", "false");
setprop("controls/armament/station[5]/release", "false");
setprop("controls/armament/station[6]/release", "false");
setprop("controls/armament/station[7]/release", "false");
setprop("controls/armament/station[8]/release", "false");
 setprop("controls/armament/station[9]/release", "false");
setprop("controls/armament/station[10]/release", "false");
setprop("controls/armament/station[11]/release", "false");
setprop("controls/armament/station[12]/release", "false");	


}

var bombext = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "2x MK-82");
        setprop("sim/weight[2]/selected", "2x MK-83");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "AIM-7");
        setprop("sim/weight[6]/selected", "330 Gal Droptank");
		setprop("sim/weight[7]/selected", "AIM-7");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "2x MK-83");
		setprop("sim/weight[11]/selected", "2x MK-82");
		setprop("sim/weight[12]/selected", "Aim-9x");
				setprop("controls/armament/station[0]/release", "false");
setprop("controls/armament/station[1]/release", "false");
setprop("controls/armament/station[2]/release", "false");
setprop("controls/armament/station[3]/release", "false");
setprop("controls/armament/station[4]/release", "false");
setprop("controls/armament/station[5]/release", "false");
setprop("controls/armament/station[6]/release", "false");
setprop("controls/armament/station[7]/release", "false");
setprop("controls/armament/station[8]/release", "false");
 setprop("controls/armament/station[9]/release", "false");
setprop("controls/armament/station[10]/release", "false");
setprop("controls/armament/station[11]/release", "false");
setprop("controls/armament/station[12]/release", "false");	
		
		setprop("consumables/fuel/tank[5]/selected", 1);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[5]/level-gal_us", 330);

}


var lgb = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "GBU-10");
        setprop("sim/weight[2]/selected", "GBU-16");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "AIM-7");
        setprop("sim/weight[6]/selected", "330 Gal Droptank");
		setprop("sim/weight[7]/selected", "AIM-7");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "GBU-16");
		setprop("sim/weight[11]/selected", "GBU-10");
		setprop("sim/weight[12]/selected", "Aim-9x");
				setprop("controls/armament/station[0]/release", "false");
setprop("controls/armament/station[1]/release", "false");
setprop("controls/armament/station[2]/release", "false");
setprop("controls/armament/station[3]/release", "false");
setprop("controls/armament/station[4]/release", "false");
setprop("controls/armament/station[5]/release", "false");
setprop("controls/armament/station[6]/release", "false");
setprop("controls/armament/station[7]/release", "false");
setprop("controls/armament/station[8]/release", "false");
 setprop("controls/armament/station[9]/release", "false");
setprop("controls/armament/station[10]/release", "false");
setprop("controls/armament/station[11]/release", "false");
setprop("controls/armament/station[12]/release", "false");	
		
		setprop("consumables/fuel/tank[5]/selected", 1);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[5]/level-gal_us", 330);

}


var agm = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "AGM-65");
        setprop("sim/weight[2]/selected", "AGM-62");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "AIM-7");
        setprop("sim/weight[6]/selected", "330 Gal Droptank");
		setprop("sim/weight[7]/selected", "AIM-7");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "AGM-62");
		setprop("sim/weight[11]/selected", "AGM-65");
		setprop("sim/weight[12]/selected", "Aim-9x");
				setprop("controls/armament/station[0]/release", "false");
setprop("controls/armament/station[1]/release", "false");
setprop("controls/armament/station[2]/release", "false");
setprop("controls/armament/station[3]/release", "false");
setprop("controls/armament/station[4]/release", "false");
setprop("controls/armament/station[5]/release", "false");
setprop("controls/armament/station[6]/release", "false");
setprop("controls/armament/station[7]/release", "false");
setprop("controls/armament/station[8]/release", "false");
 setprop("controls/armament/station[9]/release", "false");
setprop("controls/armament/station[10]/release", "false");
setprop("controls/armament/station[11]/release", "false");
setprop("controls/armament/station[12]/release", "false");	
		
		setprop("consumables/fuel/tank[5]/selected", 1);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[5]/level-gal_us", 330);

}

var cruse = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "AGM-154");
        setprop("sim/weight[2]/selected", "AGM-154");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "AIM-7");
        setprop("sim/weight[6]/selected", "330 Gal Droptank");
		setprop("sim/weight[7]/selected", "AIM-7");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "AGM-154");
		setprop("sim/weight[11]/selected", "AGM-154");
		setprop("sim/weight[12]/selected", "Aim-9x");
		
				setprop("controls/armament/station[0]/release", "false");
setprop("controls/armament/station[1]/release", "false");
setprop("controls/armament/station[2]/release", "false");
setprop("controls/armament/station[3]/release", "false");
setprop("controls/armament/station[4]/release", "false");
setprop("controls/armament/station[5]/release", "false");
setprop("controls/armament/station[6]/release", "false");
setprop("controls/armament/station[7]/release", "false");
setprop("controls/armament/station[8]/release", "false");
 setprop("controls/armament/station[9]/release", "false");
setprop("controls/armament/station[10]/release", "false");
setprop("controls/armament/station[11]/release", "false");
setprop("controls/armament/station[12]/release", "false");	
		setprop("consumables/fuel/tank[5]/selected", 1);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[5]/level-gal_us", 330);

}

var ship = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "AGM-84");
        setprop("sim/weight[2]/selected", "AGM-84");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "AIM-7");
        setprop("sim/weight[6]/selected", "330 Gal Droptank");
		setprop("sim/weight[7]/selected", "AIM-7");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "AGM-84");
		setprop("sim/weight[11]/selected", "AGM-84");
		setprop("sim/weight[12]/selected", "Aim-9x");
				setprop("controls/armament/station[0]/release", "false");
setprop("controls/armament/station[1]/release", "false");
setprop("controls/armament/station[2]/release", "false");
setprop("controls/armament/station[3]/release", "false");
setprop("controls/armament/station[4]/release", "false");
setprop("controls/armament/station[5]/release", "false");
setprop("controls/armament/station[6]/release", "false");
setprop("controls/armament/station[7]/release", "false");
setprop("controls/armament/station[8]/release", "false");
 setprop("controls/armament/station[9]/release", "false");
setprop("controls/armament/station[10]/release", "false");
setprop("controls/armament/station[11]/release", "false");
setprop("controls/armament/station[12]/release", "false");	
		
		setprop("consumables/fuel/tank[5]/selected", 1);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[5]/level-gal_us", 330);

}

var radar = func() {
        setprop("consumables/fuel/tank[4]/selected", 0);
        setprop("consumables/fuel/tank[4]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[4]/level-gal_us", 0);
		setprop("consumables/fuel/tank[5]/selected", 0);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[5]/level-gal_us", 0);
        setprop("consumables/fuel/tank[6]/selected", 0);
        setprop("consumables/fuel/tank[6]/capacity-gal_us", 0);
        setprop("consumables/fuel/tank[6]/level-gal_us", 0);



        setprop("sim/weight[0]/selected", "Aim-9x");
        setprop("sim/weight[1]/selected", "AGM-88");
        setprop("sim/weight[2]/selected", "AGM-88");
        setprop("sim/weight[3]/selected", "NONE");
		setprop("sim/weight[4]/selected", "NONE");
		setprop("sim/weight[5]/selected", "AIM-7");
        setprop("sim/weight[6]/selected", "330 Gal Droptank");
		setprop("sim/weight[7]/selected", "AIM-7");
		setprop("sim/weight[8]/selected", "NONE");
		setprop("sim/weight[9]/selected", "NONE");
		setprop("sim/weight[10]/selected", "AGM-88");
		setprop("sim/weight[11]/selected", "AGM-88");
		setprop("sim/weight[12]/selected", "Aim-9x");
		setprop("controls/armament/station[0]/release", "false");
setprop("controls/armament/station[1]/release", "false");
setprop("controls/armament/station[2]/release", "false");
setprop("controls/armament/station[3]/release", "false");
setprop("controls/armament/station[4]/release", "false");
setprop("controls/armament/station[5]/release", "false");
setprop("controls/armament/station[6]/release", "false");
setprop("controls/armament/station[7]/release", "false");
setprop("controls/armament/station[8]/release", "false");
 setprop("controls/armament/station[9]/release", "false");
setprop("controls/armament/station[10]/release", "false");
setprop("controls/armament/station[11]/release", "false");
setprop("controls/armament/station[12]/release", "false");	
		setprop("consumables/fuel/tank[5]/selected", 1);
        setprop("consumables/fuel/tank[5]/capacity-gal_us", 330);
        setprop("consumables/fuel/tank[5]/level-gal_us", 330);

}

#La boite de dialogue
var ext_loads_dlg = gui.Dialog.new("dialog","Aircraft/F-15-ACTIVE/Dialogs/external-loads.xml");

#Begining of the dropable function.
#It has to be simplified and generic made
#Need to know how to make a table

var tank_submodel = func (pylone, select){

        #Drop Tanks
        if(pylone == 1 and select == "Droptank"){ setprop("controls/armament/station[1]/release-droptank", 1);}
        if(pylone == 4 and select == "Droptank"){ setprop("controls/armament/station[5]/release-droptank", 1);}
        if(pylone == 7 and select == "Droptank"){ setprop("controls/armament/station[9]/release-droptank", 1);}


}




