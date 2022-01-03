$fn=128;

thickness=2;

difference() {
  union() {
    cylinder(h=35, d=32);
    // Create a ~45 deg overhang for printing.
    translate([0, 0, 35]) cylinder(h=3.6, d1=32, d2=37.6);
    translate([0, 0, 38.6]) cylinder(h=30, d=37.6);
  }
  union() {
    cylinder(h=35, d=32-thickness*2);
    translate([0, 0, 35]) cylinder(h=3.6, d1=32-thickness*2, d2=37.6-thickness*2);
    translate([0, 0, 38.6]) cylinder(h=30, d=37.6-thickness*2);
  }
}
