use <sprockets.scad>
// #25 chain, 9 tooth, sprocket with 5/16" bore.
//rotate([-90,0,0])

module engranaje(){
difference() {
  union() {
    sprocket(100, 10, 0,0,0);
    cylinder(h=20,d=50,$fn=50);
    cylinder(h=28,d=40,$fn=50);
  }
  cylinder(h=25,d=30,$fn=50);
  cylinder(h=5,d=40,$fn=50);

}
translate([18,-1,0])cube([2,2,5]);
translate([-20,-1,0])cube([2,2,5]);
}
//engranaje();

module adaptador() {
difference() {
  union(){
    translate([0,0,5])cylinder(h=15,d=50,$fn=50);
    cylinder(h=28,d=39.4,$fn=50);
  }
  cylinder(h=30,d=30,$fn=50);
  translate([17.5,-1.5,0])cube([3,3,5]);
  translate([-20.5,-1.5,0])cube([3,3,5]);

}  

}

adaptador();
  
translate([0,0,5])rotate([0,180,0]) engranaje();
/*
translate([0,120,0])
rotate([90,0,0])
sprocket(100, 10, 15/16,1.5,1);

//translate([160,0,0])
//sprocket(100, 8, 15/16,1.5,1);

translate([600,0,0])
rotate([-90,0,0])sprocket(100, 10, 15/16,1.5,1);
*/