/***********************************************
Programmer: Jon Maul
Date:       02/24/2003
Name:       ff.pov
************************************************/

#include "colors.inc"  


 
// top left corner
light_source {
  //<-300, 600, 0>
  <-400, 2000, -1500>
  color White
  shadowless
    
}

// bottom right corner
light_source {
  <800, -1000, 1000>
  color White
  shadowless 
}

/*
light_source {
    <0, 0, -20>
    color Blue
    spotlight
    tightness 10
    falloff 40
  }
*/

// This light lets us see the FF logo.
light_source {
  <0,0,-30>
  color Gray75
  fade_distance 24
  fade_power 1000
  shadowless
}

camera {
  location  <0, 0, -14>
  look_at   <0, 0, -3>
  angle 48
  // if we turn on the clock we can spin around the model
  rotate <360*clock, 0, 0>  
}

background { color rgb<0.017255, 0.017255, 0.236863> }

#declare foo = union {
  #declare s1 =  <-3, 0.7, 3.1>;     
  #declare s2 = <-1.7, 2, 0>;
  #declare s3 = <0.4, 1.6, 0>;
  #declare s4 = <-1.7, 0.7, 5>;          
  #declare s5 = <-3.6, -3, 4.5>;
  #declare s6 = <-1.6, -3, -0.2>;
  #declare s7 = <-0.3, -3, 3>;
  
  #declare sfinish = finish {ambient 0.3 diffuse 0.9};

  
  sphere {
    s1, 0.5
    finish {ambient 0.15 diffuse 0.9}
    pigment { Silver }
  }

  sphere {
    s2, 0.5
    finish {ambient 0.15 diffuse 0.9}
    pigment { Silver }
  }

  sphere {
    s3, 0.5
    finish {ambient 0.15 diffuse 0.9}
    pigment { Silver }
  }

  sphere {
    s4, 0.4
    finish {ambient 0.15 diffuse 0.9}
    pigment { Silver }
  }
  
  sphere {
    s5, 0.5
    finish {ambient 0.15 diffuse 0.9}
    pigment { Silver }
  }

  sphere {
    s6, 0.5
    finish {ambient 0.15 diffuse 0.9}
    pigment { Silver }
  }

  sphere {
    s7, 0.5
    finish {diffuse 1 }
    pigment { Silver }
  }

  cylinder {s2, s3 
            0.03
            finish {ambient 0.35 diffuse 1}
            pigment {Silver} 
  }

  cylinder {s1, s3
            0.03
            finish {ambient 0.35 diffuse 1}
            pigment {Silver}
  }

  cylinder {s2, s4
            0.03
            finish {ambient 0.35 diffuse 1}
            pigment {Silver}
  }
  
  cylinder {s1, s5
            0.03
            finish {ambient 0.55 diffuse 1}
            pigment {Silver}
  }
  
  cylinder {s1, s6
            0.03
            finish {diffuse 0.9}
            pigment {Silver}
  }

  cylinder {s2, s6
            0.03
            finish {ambient 0.35 diffuse 1}
            pigment {Silver}
  }

  cylinder {s3, s6
            0.03
            finish {ambient 0.25 diffuse 1}
            pigment {Silver}
  }
  
  cylinder {s4, s7
            0.03
            finish {diffuse 1}  // needs ambient if seen from diff view.
            pigment {Silver}
  }

  cylinder {s3, s7
            0.03
            finish { ambient 0.55 diffuse 1}
            pigment {Silver}
  }

  #declare ff = height_field { gif "ff_tcats3.gif"
                  //smooth
                  water_level 0.001
                  texture {
                    pigment {color rgb <1.0,0,0>}
                    finish {phong 0.1} 
                  }
                  rotate <-90,0,0>
                  translate <-0.515,-1.3,-1>
                  scale <4.0,0.7,2>

  }
        
  object {ff}
}

object {foo translate<0,0.5,-5>}

// planes help you to get your bearings when starting
// a new model

/*
 plane {
    y, -1
    texture {
      pigment {
        checker
        color rgb<0.5, 0, 0>
        color rgb<0, 0.5, 0.5>
      }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }
*/
