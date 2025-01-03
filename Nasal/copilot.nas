var radarsearch = func(){
         radar.next_Target_Index();
         setprop("controls/AI/rdrcallsign", radar.tgts_list[radar.Target_Index].Callsign.getValue());
}

radar_timer = maketimer(0.00001, radarsearch);


radar_timer.start();