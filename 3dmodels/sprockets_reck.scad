use <sprockets.scad>
// #25 chain, 9 tooth, sprocket with 5/16" bore.
//rotate([-90,0,0])

diamTubo = 30;
diamSusp = 46;
diamEngranajeInt = 40;
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
    cylinder(h=30,d=diamTubo+0.3,$fn=50);
    translate([17.5,-1.5,0])cube([3,3,5]);
    translate([-20.5,-1.5,0])cube([3,3,5]);
    translate([0,(diamSusp+diamTubo)/4,0])cylinder(h=40,d=3.4,$fn=50);
    translate([0,-(diamSusp+diamTubo)/4,0])cylinder(h=40,d=3.4,$fn=50);
  }  
}

module engranaje(){
  difference() {
    union() {
      sprocket(100, 10, 0,0,0);
      cylinder(h=16,d=diamSusp+10,$fn=50);
      cylinder(h=16+espesorSusp,d=diamSusp,$fn=50);
    }
    cylinder(h=35,d=diamTubo+0.3,$fn=50);
    cylinder(h=5,d=diamEngranajeInt,$fn=50);
    translate([0,0,11.5])rotate([0,90,0])cylinder(h=diamSusp+15,d=3.4,$fn=40,center=true);

    translate([0,(diamSusp+diamTubo)/4,0])cylinder(h=40,d=3.4,$fn=50);
    translate([0,-(diamSusp+diamTubo)/4,0])cylinder(h=40,d=3.4,$fn=50);
  }

  translate([18,-1,0])cube([2,2,5]);
  translate([-20,-1,0])cube([2,2,5]);
}

 //   Tapa cerrada
difference(){
    translate([0,0,-60])cylinder(h=espesorEngranaje,d=diamSusp+10,$fn=50);
    
    union(){        
        translate([0,(diamSusp+diamTubo)/4,-65])cylinder(h=10,d=3.4,$fn=50);
        translate([0,-(diamSusp+diamTubo)/4,-65])cylinder(h=10,d=3.4,$fn=50);  
    }
}

//   Tapa abierta
difference(){
    translate([0,0,-90])cylinder(h=espesorEngranaje,d=diamSusp+10,$fn=50);
    
    union(){
        translate([0,0,-90])cylinder(h=5,d=diamTubo,$fn=50);
        translate([0,(diamSusp+diamTubo)/4,-95])cylinder(h=10,d=3.4,$fn=50);
        translate([0,-(diamSusp+diamTubo)/4,-95])cylinder(h=10,d=3.4,$fn=50);  
    }
}

module tapaCerrada() {
    
}

module tapaAbierta() {
    
}

adaptador();
  
translate([0,0,-15])rotate([0,180,0]) engranaje();
/*
translate([0,120,0])
rotate([90,0,0])
sprocket(100, 10, 15/16,1.5,1);

//translate([160,0,0])
//sprocket(100, 8, 15/16,1.5,1);

translate([600,0,0])
rotate([-90,0,0])sprocket(100, 10, 15/16,1.5,1);
*/