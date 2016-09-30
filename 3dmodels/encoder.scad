$fn=250;
module motor(){
cylinder(h=2.5,d=10);
cylinder(h=6,d=2);
translate([0,0,-20])cylinder(h=20,d=28);

translate([23/2.0,-2,0])cube([0.5,4,7]);
translate([-23/2.0-0.5,-2,0])cube([0.5,4,7]);
}

module encoder(N){
  L = 360/(2*N);
  difference(){
    union(){
      translate([0,0,2.6])cylinder(h=1.2  , d=22);
      translate([0,0,2.6])cylinder(h=3.4, d= 5);
    }
    translate([0,0,2.5])
    difference() {
      union(){
        for(i=[0:(N-1)])
        rotate([0,0,i*360/N])
        polyhedron( 
          points = [ [0, 0, 0], [15, 0, 0], [15*cos(L),15*sin(L),0],[0, 0, 2], [15, 0, 2], [15*cos(L),15*sin(L),2]], 
          faces = [ [0, 1, 4, 3], [1,2,5,4],[2,0,3,5],[0,2,1],[3,4,5] ], 
          convexity = 10);
      }
      cylinder(h=4.5, d=6);
    }
    translate([0,0,2])cylinder(h=5, d=2.6);
  }
}

module pcb() {
  difference(){
    translate([0,0,4])cylinder(h=1.8, d=28);
    translate([23/2.0-0.15,-2.15,5])cube([0.8,4.3,7]);
    translate([-23/2.0-0.65,-2.15,5])cube([0.8,4.3,7]);
    translate([0,0,2])cylinder(h=5, d=6);
    rotate([0,0,45])translate([3.5,-2.15,3.5]) cube([7.3,4.3,3]);
    rotate([0,0,135])translate([3.5,-2.15,3.5]) cube([7.3,4.3,3]);
    
  }
}

//motor();
encoder(3);
//pcb();