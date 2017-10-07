
import("lm8uu_holder_v2.stl");
translate([-4,2.5,0])cube([8,2.5,2]);

difference(){
  cylinder(h=24,r=8);
  cylinder(h=24.1,r=4,$fn=60);
  translate([0.5,0,0]) rotate([0,0,180])cube([1,20,24]);
}