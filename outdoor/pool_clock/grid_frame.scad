$fn=64;

thick=20;
wall=1.2;
size=160;
offset=55;

difference() {
  cube([size+wall*2, size+wall*2, thick], center=true);
  union() {
    translate([0, 0, 5]) cube([size, size, 10*1.01], center=true);
    translate([0, 0, -5]) cube([size-1.6, size-1.6, 10*1.01], center=true);
//    translate([0, 0, -0.5]) cube([size-2, size-2, 1], center=true);
    
    // Holes.
    translate([size/2, offset, -5]) rotate([0, 90, 0]) translate([0, 0, -wall]) cylinder(h=wall*2, d=3);
    translate([size/2, -offset, -5]) rotate([0, 90, 0]) translate([0, 0, -wall]) cylinder(h=wall*2, d=3);
    translate([-size/2, offset, -5]) rotate([0, 90, 0]) translate([0, 0, -wall]) cylinder(h=wall*2, d=3);
    translate([-size/2, -offset, -5]) rotate([0, 90, 0]) translate([0, 0, -wall]) cylinder(h=wall*2, d=3);
    translate([offset, size/2, -5]) rotate([90, 0, 0]) translate([0, 0, -wall]) cylinder(h=wall*2, d=3);
    translate([offset, -size/2, -5]) rotate([90, 0, 0]) translate([0, 0, -wall]) cylinder(h=wall*2, d=3);
    translate([-offset, size/2, -5]) rotate([90, 0, 0]) translate([0, 0, -wall]) cylinder(h=wall*2, d=3);
    translate([-offset, -size/2, -5]) rotate([90, 0, 0]) translate([0, 0, -wall]) cylinder(h=wall*2, d=3);
  }
}

difference() {
  union() {
    translate([76, 76, -5]) cube([10, 10, 10], center=true);
    translate([76, -76, -5]) cube([10, 10, 10], center=true);
    translate([-76, 76, -5]) cube([10, 10, 10], center=true);
    translate([-76, -76, -5]) cube([10, 10, 10], center=true);
  }
  union() {
    translate([76, 76, -10]) cylinder(h=10, d=3);
    translate([76, -76, -10]) cylinder(h=10, d=3);
    translate([-76, 76, -10]) cylinder(h=10, d=3);
    translate([-76, -76, -10]) cylinder(h=10, d=3);
  }
}