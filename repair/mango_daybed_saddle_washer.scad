$fn=128;

difference() {
  cylinder(h=9.4, d=22.4);
  union() {
    cylinder(h=5.6, d=8.2);
    translate([0, 11.2, 26/2+4]) rotate([90]) cylinder(h=22.4, d=26);
  }
}
