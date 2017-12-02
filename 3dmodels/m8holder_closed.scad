import("lm8uu_holder_v2.stl");

difference() {
  cylinder(h=1,d=18);
  cylinder(h=1,d=9);
  translate([-0.5,-20,0]) cube([1,20,2]);
}
