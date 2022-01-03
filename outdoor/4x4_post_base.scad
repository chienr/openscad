$fn=16;


corner_radius = 7.6/2;

difference() {
  union() {
    minkowski() {
      translate([corner_radius, corner_radius, 0])
        cube([89-corner_radius*2, 89-corner_radius*2, 12]);
      cylinder(h=1, r=corner_radius);
    }
  }
  union() {
    minkowski() {
      translate([10+corner_radius, 10+corner_radius, 0])
        cube([69-corner_radius*2, 69-corner_radius*2, 6]);
      cylinder(h=1, r=corner_radius);
    }
    // Screw holes.
    translate([16, 16, 6]) cylinder(h=7, d=4);
    translate([89-16, 16, 6]) cylinder(h=7, d=4);
    translate([16, 89-16, 6]) cylinder(h=7, d=4);
    translate([89-16, 89-16, 6]) cylinder(h=7, d=4);
    // Countersink.
    translate([16, 16, 6]) cylinder(h=3.5, d1=8.5, d2=4);
    translate([89-16, 16, 6]) cylinder(h=3.5, d1=8.5, d2=4);
    translate([16, 89-16, 6]) cylinder(h=3.5, d1=8.5, d2=4);
    translate([89-16, 89-16, 6]) cylinder(h=3.5, d1=8.5, d2=4);    
  }
}