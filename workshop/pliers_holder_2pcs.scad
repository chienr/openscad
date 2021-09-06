$fn=64;

// RIGHT
//translate([0, 0, 0]) difference() {
//  union() {
//    cylinder(h=6, d=5);
//    cylinder(h=3.5, d=8);
//  }
//  cylinder(h=6, d=3.3);
//}
//translate([3, -2, 0]) cube([31, 4, 3.5]);
//translate([37, 0, 0]) difference() {
//  union() {
//    cylinder(h=6, d=5);
//    cylinder(h=3.5, d=8);
//  }
//  cylinder(h=6, d=3.3);
//}
//translate([36, 3, 0]) rotate([0, 0, 180-25.8]) cube([41, 4, 3.5]);
//translate([-4, 20, 0]) difference() {
//  cylinder(h=3.5, d=8);
//  cylinder(h=3.5, d=4.9);
//}
//rotate([0, 0, 101.31]) translate([3, -2, 0]) cube([14.3, 4, 3.5]);

//translate([-2.5, -2, 6]) color("red") cube([42, 4, 5]);

// LEFT
difference() {
  union() {
    translate([0, 0, -2.5]) cylinder(h=6, d=5);
    cylinder(h=3.5, d=8);
  }
  translate([0, 0, -2.5]) cylinder(h=6, d=3.3);
}
translate([3, -2, 0]) cube([31, 4, 3.5]);
translate([37, 0, 0]) difference() {
  union() {
    translate([0, 0, -2.5]) cylinder(h=6, d=5);
    cylinder(h=3.5, d=8);
  }
  translate([0, 0, -2.5]) cylinder(h=6, d=3.3);
}
translate([36, 3, 0]) rotate([0, 0, 180-25.8]) cube([41, 4, 3.5]);
translate([-4, 20, 0]) difference() {
  cylinder(h=3.5, d=8);
  cylinder(h=3.5, d=4.9);
}
rotate([0, 0, 101.31]) translate([3, -2, 0]) cube([14.3, 4, 3.5]);
