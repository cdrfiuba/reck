use <sprockets.scad>
// #25 chain, 9 tooth, sprocket with 5/16" bore.
//rotate([-90,0,0])

diamTubo = 38;
diamSusp = 50;
diamEngranajeInt = 50; // ajustar a 50 corregir cubos
espesorSusp = 10;
espesorEngranaje = 5;
adaptadorH = 5;

module adaptador() {
  difference() {
    union(){
      translate([0,0,espesorEngranaje])cylinder(h=adaptadorH,d=diamSusp+10,$fn=50);
      cylinder(h=espesorEngranaje,d=diamEngranajeInt-0.4,$fn=50);
      translate([0,0,espesorEngranaje+adaptadorH])cylinder(h=10,d=diamSusp,$fn=50);
    }
    translate([0,0,-0.1])cylinder(h=30,d=diamTubo+0.3,$fn=50);
    translate([22,-1.5,-.1])cube([3,3,5.1]);
    translate([-25.5,-1.5,-.1])cube([3,3,5.1]);
    translate([0,0,-0.1])translate([0,(diamSusp+diamTubo)/4,0])cylinder(h=40,d=3.4,$fn=50);
    translate([0,0,-0.1])translate([0,-(diamSusp+diamTubo)/4,0])cylinder(h=40,d=3.4,$fn=50);
  }  
}

module engranaje(){
  difference() {
    union() {
      sprocket(100, 10, 0,0,0);
      cylinder(h=16,d=diamSusp+10,$fn=50);
      cylinder(h=16+espesorSusp,d=diamSusp,$fn=50);
    }
    translate([0,0,-0.1])cylinder(h=35,d=diamTubo+0.3,$fn=50);
    translate([0,0,-0.1])cylinder(h=5,d=diamEngranajeInt,$fn=50);
    translate([0,0,11.5])rotate([0,90,0])cylinder(h=diamSusp+15,d=3.4,$fn=40,center=true);

    translate([0,(diamSusp+diamTubo)/4,0])cylinder(h=40,d=3.4,$fn=50);
    //translate([(diamSusp+diamTubo)/4,0,0])rotate([0,0,0])cylinder(h=40,d=3.4,$fn=50);
    translate([0,-(diamSusp+diamTubo)/4,0])cylinder(h=40,d=3.4,$fn=50);
    //translate([-(diamSusp+diamTubo)/4,0,0])rotate([0,0,0])cylinder(h=40,d=3.4,$fn=50);
    
  }

  translate([23,-1,0])cube([2,2,5]);
  translate([-25,-1,0])cube([2,2,5]);
}



module tapaCerrada() {
    difference(){
        translate([0,0,0])cylinder(h=espesorEngranaje,d=diamSusp+10, $fn=50);

        union(){        
            translate([0,(diamSusp+diamTubo)/4,-.1])cylinder(h=espesorEngranaje+0.2,d=3.4,$fn=50);
            translate([0,-(diamSusp+diamTubo)/4,-.1])cylinder(h=espesorEngranaje+0.2,d=3.4,$fn=50);  
         }
    }
    
}

module tapaAbierta() {
    difference(){
      translate([0,0,0])cylinder(h=espesorEngranaje,d=diamSusp+10 ,$fn=50);
    
      union(){
        translate([0,0,-0.1])cylinder(h=espesorEngranaje+0.2,d=diamTubo,$fn=50);
        translate([0,(diamSusp+diamTubo)/4,-.1])cylinder(h=espesorEngranaje+0.2,d=3.4,$fn=50);
        translate([0,-(diamSusp+diamTubo)/4,-.1])cylinder(h=espesorEngranaje+0.2,d=3.4,$fn=50);  
      }
    }

}

/*
translate([0,-55,0]) rotate([-90,0,0]) tapaCerrada();
translate([0,-20,0]) rotate([90,0,0]) engranaje();
translate([0,0,0]) rotate([-90,0,0]) adaptador();
translate([0,30,0]) rotate([90,0,0]) tapaAbierta();
*/


//adelante
translate([300,-100,0]) rotate([90,0,0]) engranaje();
translate([300,-135,0]) rotate([-90,0,0]) tapaCerrada();

translate([300,100,0]) rotate([90,0,0]) engranaje();
translate([300,66,0]) rotate([-90,0,0]) tapaAbierta();

//atras
translate([-300,-135,0]) rotate([-90,0,0]) tapaCerrada();
translate([-300,-100,0]) rotate([90,0,0]) engranaje();
translate([-300,-95,0]) rotate([-90,0,0]) adaptador();
translate([-300,-65,0]) rotate([90,0,0]) tapaAbierta();

translate([-300,100,0]) rotate([90,0,0]) engranaje();

//arriba
translate([0,-100,200]) rotate([-90,0,0]) engranaje();
translate([0,-65,200]) rotate([90,0,0]) tapaAbierta();

translate([0,100,200]) rotate([90,0,0]) engranaje();
translate([0,65,200]) rotate([-90,0,0]) tapaAbierta();


