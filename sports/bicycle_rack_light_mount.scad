$fn=64;

//height=3;

//difference() {
//  cylinder(h=15, r=5.5);
//  union() {
//    cylinder(h=15, r=3.5);
//    translate([0, -5.5/2, 15/2]) cube([11, 5.5, 15], center=true);
//  }
//}

rotate([0, 0, 0])
difference() {
  rotate([-90, 0, 0]) 
  minkowski() {
    translate([0, 0, 1.5]) cube([66, 14, 3], center=true);
    cylinder(h=1, r=2);
  }
  union() {
//    translate([0, -2.5, 0]) cube([width+4, 6/2+2, 10+4], center=true);
    // Rounded slot.
//    rotate([90, 0, 0]) translate([0, 0, -1]) cube([16.8, 16.8, 2], center=true);
//    rotate([90, 0, 0]) translate([0, 5, -3]) cube([11, 5, 2], center=true);
//    rotate([90, 0, 0]) translate([0, 2, -5]) cylinder(h=3, d=11);

    // Square slot.
    translate([0, 1, 0]) cube([18, 2, 18], center=true);
    translate([0, 1+2, 2]) cube([12.7, 2, 15], center=true);
//    rotate([90, 0, 0]) translate([0, 2, -5]) cylinder(h=3, d=11);

    // Screw holes.
    rotate([90, 0, 0]) translate([25, 2, -4]) union() {
      cylinder(h=4, d=5);
      cylinder(h=3.4, d1=9.8, d2=5);
    }
    rotate([90, 0, 0]) translate([-25, 2, -4]) union() {
      cylinder(h=4, d=5);
      cylinder(h=3.4, d1=9.8, d2=5);
    }
  }
}

//  color([1, 0, 0]) translate([0, -2, 0]) cube([70, 4, 18], center=true);
