$fn=128;

thickness=2;
//kreg_od=33.8;
//kreg_id=30.4;

difference() {
  union() {
    cylinder(h=15, d=31);
    // Create a 45 deg overhang for printing.
    translate([0, 0, 15]) cylinder(h=3.6, d1=31, d2=37.6);
    translate([0, 0, 18.6]) cylinder(h=30, d=37.6);
  }
  union() {
    cylinder(h=15, d=30.4-thickness*2);
    translate([0, 0, 15]) cylinder(h=3.6, d1=31-thickness*2, d2=37.6-thickness*2);
    translate([0, 0, 18.6]) cylinder(h=30, d=37.6-thickness*2);
  }
}
