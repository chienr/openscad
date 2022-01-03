$fn=64;

difference() {
  cube([12/1.01, 12, 3]);
  union() {
    translate([6, 6, 1]) cylinder(h=2, d=6*1.07, $fn=6);
    translate([6, 6, 0]) cylinder(h=1, d=3.2*1.01);
  }
}
