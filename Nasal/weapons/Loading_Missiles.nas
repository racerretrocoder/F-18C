#print("LOADING Loading_missiles.nas .");
################################################################################
#
#                     F-18C  LOADS AND MISSILES PARAMETERS
#Note: these missiles are VERY basic, and curently the only for the radar to work
################################################################################

var Loading_missile = func(name)
{
    var typeid            = 0;
    var address           = "test";
    var NoSmoke           = "test2";
    var Explosion         = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosion.xml";
    var maxdetectionrngnm = 0;      #
    var fovdeg            = 0;      #
    var detectionfovdeg   = 0;      #
    var trackmaxdeg       = 0;      #
    var maxg              = 0;      #
    var thrustlbs         = 0;      #
    var thrustdurationsec =  0;     #
    var weightlaunchlbs   = 0;      #
    var dragcoeff         = 0;      #
    var dragarea          = 0;    #
    var maxExplosionRange =  0;   # The distance when the missile blows up sorta speak
    var maxspeed          = 0;
    var life              = 0;
    var sdspeed           = 0;
    var fox               = "nothing";  # call Fox 1 if you want to drop like a tank. If you dont youll get a nasal error.  Fox 1 missiles are possible too. If there is a target when launched. But if the radar losses it. it wont hit 
    var rail              = "true";     # If the missile is launched on a rail or not if false the missile is "dropped"
    var cruisealt         = 0;
    var guidance	  = 0;
    var chute         = 1;
    var flareres      = 0;          # Flare and chaff resistance. from 0 to 1 (decimals included) The closer to 1. the harder it is for the missile to fall for enemy chaff and flares
    var isbomb        = 0; # if this weapon is a bomb
    
    
    if(name == "Aim-120")
    {
        # AIM-120 :Advanced Medium Range Missile,      
	typeid = 52;
        address = "Aircraft/F-18C/Models/Stores/Missiles/AIM-120/AIM120-smoke.xml";
        NoSmoke = "Aircraft/F-18C/Models/Stores/Missiles/AIM-120/AIM120.xml";
        Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosion.xml";
        flareres = 0.99; # Flare and chaff resistance. from 0 to 1 (decimals included) The closer to 1. the harder it is for the missile to fall for enemy chaff and flares. Because flares are checked every 0.1 seconds a high number is needed because this variable is sensitve
        maxdetectionrngnm = 38.8;                    #  
        fovdeg = 140;                                #
        detectionfovdeg = 140;                       # TODO implent data link system so we can control these variables while missile is in flight
        trackmaxdeg = 140;                           # 
        maxg = 40;                                   # wikipedia
        thrustlbs = 2700;                             # 1,500 to 2,500 pounds of thrust maybe
        thrustdurationsec = 28;                     # 
        weightlaunchlbs = 400;
        weightwarheadlbs = 44;
        dragcoeff = 0.001;                             #
        dragarea = 0.036;                            # sq ft
        maxExplosionRange = 50;                      # in meter ! Due to the code, more the speed is important, more we need to have this figure high
        maxspeed = 4.5;                              # In mach ( source is a guess )
        life = 10000000; # 
        sdspeed = 0.6999999; # Test Self Destruct Speed. in mach
        fox = "Fox 3";
        rail = "false";
        cruisealt = 0;
        chute = 0;
        isbomb = 0;
    }
    elsif(name == "Aim-9x")
    {
        # AIM-9X:short-range A2A,IR seeker,
	typeid = 98;
        flareres = 0.985; # Flare and chaff resistance. from 0 to 1 (decimals included) The closer to 1. the harder it is for the missile to fall for enemy chaff and flares
        address = "Aircraft/F-18C/Models/Stores/Missiles/AIM-9/AIM-9-smoke.xml";
        NoSmoke = "Aircraft/F-18C/Models/Stores/Missiles/AIM-9/AIM-9.xml";
        Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosion.xml";
        maxdetectionrngnm = 12;                       # Not real Impact yet A little more than the MICA
        fovdeg = 180;                                 # seeker optical FOV
        detectionfovdeg = 180;                        # Search pattern diameter (rosette scan)
        trackmaxdeg = 180;                            # Seeker max total angular rotation
        maxg = 50;                                    # Thurst vectoring rocket motor
        thrustlbs = 800;                             # 
        thrustdurationsec = 5.2;                        #
        weightlaunchlbs = 186;
        weightwarheadlbs = 20.8;
        dragcoeff = 0.001;                              # guess; original 0.05
        dragarea = 0.075;                             # sq ft
        maxExplosionRange = 50;                       
        maxspeed = 2.9;                                 # In Mach
        life = 80;
        fox = "Fox 2";
        rail = "true";
        cruisealt = 0;
        chute = 0;
        sdspeed = 0;
        isbomb = 0;
    }
    elsif(name == "Aim-9m")
    {
        # AIM-9m :short-range A2A,IR seeker,
        flareres = 0.95; 
	typeid = 69; # This is not a Aim-9m this is an Aim-9x with way less homing capabilites. So you can evade it with out the need for flares. just pull a manuver so that its 30deg away from the seeker and there you go   
        address = "Aircraft/F-18C/Models/Stores/Missiles/AIM-9/AIM-9M-smoke.xml";
        NoSmoke = "Aircraft/F-18C/Models/Stores/Missiles/AIM-9/AIM-9M.xml";
        Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosion.xml";
        maxdetectionrngnm = 12;                       # Not real Impact yet A little more than the MICA
        fovdeg = 80;                                 # Test missile for evading with no countermessures
        detectionfovdeg = 80;                        # Test missile for evading with no countermessures
        trackmaxdeg = 80;                            # Test missile for evading with no countermessures
        maxg = 5;                                    #
        thrustlbs = 500;                             #  its fast to make it less likely to hit
        thrustdurationsec = 10;                        # To make it miss some times
        weightlaunchlbs = 186;
        weightwarheadlbs = 20.8;
        dragcoeff = 0.8;                              # guess; original 0.05
        dragarea = 0.075;                             # sq ft
        maxExplosionRange = 50;                       
        maxspeed = 5;                                 # In Mach
        life = 10000; # will self destruct when the missile is slower than  sdspeed and is "armed" (3 seconds pasted sense it shot)
        fox = "Fox 2";
        rail = "false";
        cruisealt = 0;
        chute = 0;
        sdspeed = 0.0;
        isbomb = 0;
    }




    elsif(name == "GBU-39")
    {
           # Mm yes much bomb,
        flareres = 1; # countermessueres cannont fool this. If your radar loosses lock on the target. the missile will miss 
	    typeid = 18;
        address = "Aircraft/F-18C/Models/loads/GBU-39-FLIGHT.xml";
        NoSmoke = "Aircraft/F-18C/Models/loads/GBU-39-FLIGHT.xml";
        Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosionGBU.xml";
        maxdetectionrngnm = 12;                       # Not real Impact yet A little more than the MICA
        fovdeg = 40;                                 # seeker optical FOV
        detectionfovdeg = 40;                        # Search pattern diameter (rosette scan)
        trackmaxdeg = 40;                            # Seeker max total angular rotation
        maxg = 4;                                    # 
        thrustlbs = 0.00;                             # 
        thrustdurationsec = 100;                        #
        weightlaunchlbs = 186;
        weightwarheadlbs = 20.8;
        dragcoeff = 0.01;                              # guess; original 0.05
        dragarea = 0.075;                             # sq ft
        maxExplosionRange = 50;                       
        maxspeed = 5;                                 # In Mach
        life = 80000000000000;
        fox = "Fox 1";    #If the target is out of radar loose track. Simulates a targeting pod. Kinda
        rail = "true";
        cruisealt = 0;
        sdspeed = 0;
        chute = 0;
        isbomb = 1;
    }
 elsif(name == "JDAM")
 {
        # Mm yes much bomb,
                              flareres = 1;
	    typeid = 18;
     address = "Aircraft/F-18C/Models/Stores/Missiles/JDAM/JDAM.xml"; 
     NoSmoke = "Aircraft/F-18C/Models/Stores/Missiles/JDAM/JDAM.xml"; # for now
     Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosionGBU.xml";
     maxdetectionrngnm = 30;                       # 

     #GPS system
     fovdeg = 360;                                 # seeker optical FOV
     detectionfovdeg = 360;                        # Search pattern diameter (rosette scan)
     trackmaxdeg = 360;                            # Seeker max total angular rotation
     maxg = 2;                                    # 
     thrustlbs = 0.00;                             # 
     thrustdurationsec = 100;                        #
     weightlaunchlbs = 186;
     weightwarheadlbs = 1000;
     dragcoeff = 0.05;                              # guess; original 0.05
     dragarea = 0.075;                             # sq ft
     maxExplosionRange = 50;                       
     maxspeed = 5;                                 # In Mach
     life = 80000000000000;
     fox = "Fox 3";    #If the target is out of radar loose track. Simulates targeting pod. Kinda
     rail = "false";
     cruisealt = 0;
     sdspeed = 0;
     chute = 0;
     isbomb = 1;
 }
    elsif(name == "AIM-7") 
    {
                              flareres = 0.9;
  	typeid = 52; #Overridden at the end of missile.nas
        address = "Aircraft/F-18C/Models/Stores/Missiles/AIM7/AIM7-smoke.xml";
        NoSmoke = "Aircraft/F-18C/Models/Stores/Missiles/AIM7/AIM7.xml";
        Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosion.xml";
        maxdetectionrngnm = 38.8;                    #  
        fovdeg = 360;                                # all 50
        detectionfovdeg = 180;                       # TODO implent data link system so we can control these variables while missile is in flight. im sure its possible
        trackmaxdeg = 360;                           #  Testing not real
        maxg = 40;                                   # 
        thrustlbs = 700;                             # 
        thrustdurationsec = 9;                     # Bit too op
        weightlaunchlbs = 500;
        weightwarheadlbs = 44;
        dragcoeff = 0.3;                             # guess; original 0.05
        dragarea = 0.056;                            # sq ft
        maxExplosionRange = 50;                      # in meter ! Due to the code, more the speed is important, more we need to have this figure high
        maxspeed = 8.5;                              # In Mach
        life = 1200;
        fox = "Fox 1";
        rail = "false";
        cruisealt = 0;
        chute = 0;
        isbomb = 0;
        sdspeed = 0.6999;
    }
    # Harpoon
     elsif(name == "AGM-84")
    {
        flareres = 1;
	    typeid = 18;
        address = "Aircraft/F-18C/Models/Stores/Missiles/AGM-84/AGM84-smoke.xml"; 
        NoSmoke = "Aircraft/F-18C/Models/Stores/Missiles/AGM-84/AGM84.xml"; # for now
        Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosionGBU.xml";
        maxdetectionrngnm = 30;                       # 
        fovdeg = 180;                                 # seeker optical FOV
        detectionfovdeg = 180;                        # Search pattern diameter (rosette scan)
        trackmaxdeg = 180;                            # Seeker max total angular rotation
        maxg = 17;                                    # 
        thrustlbs = 2000;                             # 
        thrustdurationsec = 100;                        #
        weightlaunchlbs = 1860;
        weightwarheadlbs = 1000;
        dragcoeff = 0.05;                              # guess; original 0.05
        dragarea = 0.075;                             # sq ft
        maxExplosionRange = 50;                       
        maxspeed = 3;                                 # In Mach
        life = 80000000000000;
        fox = "A/G";    
        rail = "false";
        cruisealt = 0;
        sdspeed = 0; # Weapon self distructs if its slower than mach  0
        chute = 0;
        isbomb = 0;
    }
     elsif(name == "AGM-88")
    {
        # AntiRad
        flareres = 1;
	    typeid = 18;
        address = "Aircraft/F-18C/Models/Stores/Missiles/AGM-88/AGM88-smoke.xml"; 
        NoSmoke = "Aircraft/F-18C/Models/Stores/Missiles/AGM-88/AGM88.xml"; # for now
        Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosionGBU.xml";
        maxdetectionrngnm = 30;                       # 
        fovdeg = 180;                                 # seeker optical FOV
        detectionfovdeg = 180;                        # Search pattern diameter (rosette scan)
        trackmaxdeg = 180;                            # Seeker max total angular rotation
        maxg = 17;                                    # 
        thrustlbs = 4000;                             # 
        thrustdurationsec = 20;                        #
        weightlaunchlbs = 301;
        weightwarheadlbs = 1000;
        dragcoeff = 0.001;                              # guess; original 0.05
        dragarea = 0.005;                             # sq ft
        maxExplosionRange = 50;                       
        maxspeed = 5;                                 # In Mach
        life = 80000000000000;
        fox = "Magnum";    
        rail = "true";
        cruisealt = 7000;
        sdspeed = 0; # Weapon self distructs if its slower than mach  0
        chute = 0;
        isbomb = 1;
    } elsif(name == "AGM-65")
    {
        # AntiRad
        flareres = 1;
	    typeid = 58;
        address = "Aircraft/F-18C/Models/Stores/Missiles/AGM-65/AGM65-smoke.xml"; 
        NoSmoke = "Aircraft/F-18C/Models/Stores/Missiles/AGM-65/AGM65.xml"; # for now
        Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/explosionGBU.xml";
        maxdetectionrngnm = 30;                       # 
        fovdeg = 180;                                 # seeker optical FOV
        detectionfovdeg = 180;                        # Search pattern diameter (rosette scan)
        trackmaxdeg = 180;                            # Seeker max total angular rotation
        maxg = 9;                                    # 
        thrustlbs = 2000;                             # 
        thrustdurationsec = 20;                        #
        weightlaunchlbs = 802;
        weightwarheadlbs = 70;
        dragcoeff = 0.001;                              # guess; original 0.05
        dragarea = 0.005;                             # sq ft
        maxExplosionRange = 50;                       
        maxspeed = 3;                                 # In Mach
        life = 80000000000000;
        fox = "Rifle";    
        rail = "true";
        cruisealt = 0;
        sdspeed = 0; # Weapon self distructs if its slower than mach  0
        chute = 0;
        isbomb = 1;
    }






    elsif(name == "eject")   # Used for the ejction seat. Not a missile so we call fox 1 and leave it
    {
           # ejection seat   Aircraft/F-18C/Models/pilot/eject.xml
        flareres = 1;
	    typeid = 98;
        address = "Aircraft/F-18C/Models/pilot/eject.xml";
        NoSmoke = "Aircraft/F-18C/Models/pilot/eject.xml";
        Explosion = "Aircraft/F-18C/Models/Effects/MissileExplosion/";
        maxdetectionrngnm = 12;                       # Not real Impact yet A little more than the MICA
        fovdeg = 1;                                 # seeker optical FOV
        detectionfovdeg = 1;                        # Search pattern diameter (rosette scan)
        trackmaxdeg = 1;                            # Seeker max total angular rotation
        maxg = 12;                                    # eject
        thrustlbs = 500;                             # 
        thrustdurationsec = 1;                        # 
        weightlaunchlbs = 320;                        # Human + Chair
        weightwarheadlbs = 1;
        dragcoeff = 3;                              # Parachute implementation attempt
        dragarea = 3.075;                             # sq ft
        maxExplosionRange = 50;                       
        maxspeed = 5;                                 # In Mach
        life = 50;
        fox = "Fox 1"; # call fox 1 then leave it. unguided
        rail = "true";
        cruisealt = 0;
        sdspeed = 0;
        chute = 1;
        isbomb = 0;
    }
    else
    {
        return 0;
    }
    # SetProp
    setprop("controls/armament/missile/chute", chute);
    setprop("controls/armament/missile/address", address);
    setprop("controls/armament/missile/addressNoSmoke", NoSmoke);
    setprop("controls/armament/missile/addressExplosion", Explosion);
    setprop("controls/armament/missile/max-detectionrngnm", maxdetectionrngnm);
    setprop("controls/armament/missile/fov-deg", fovdeg);
    setprop("controls/armament/missile/detection-fov-deg", detectionfovdeg);
    setprop("controls/armament/missile/track-max-deg", trackmaxdeg);
    setprop("controls/armament/missile/thrust-lbs", thrustlbs);
    setprop("controls/armament/missile/max-g", maxg);
    setprop("controls/armament/missile/weight-launch-lbs", weightlaunchlbs);
    setprop("controls/armament/missile/thrust-duration-sec", thrustdurationsec);
    setprop("controls/armament/missile/weight-warhead-lbs", weightwarheadlbs);
    setprop("controls/armament/missile/drag-coeff", dragcoeff);
    setprop("controls/armament/missile/drag-area", dragarea);
    setprop("controls/armament/missile/maxExplosionRange", maxExplosionRange);
    setprop("controls/armament/missile/maxspeed", maxspeed);
    setprop("controls/armament/missile/life", life);
    setprop("controls/armament/missile/sdspeed", sdspeed);
    setprop("controls/armament/missile/fox", fox);
    setprop("controls/armament/missile/rail", rail);
    setprop("controls/armament/missile/cruise_alt", cruisealt);
    setprop("controls/armament/missile/type-id", typeid);
    setprop("controls/armament/missile/flareres", flareres);
    setprop("controls/armament/missile/isbomb", isbomb);
    return 1;
}








