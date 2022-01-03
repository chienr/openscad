$fn=128;

difference() {
  union() {
    cylinder(h=20, d=29.3);
    cylinder(h=2, d=37.3);
  }
  difference() {
    cylinder(h=18, d=29.3-4);
    union() {
      translate([0, 0, 9]) cube([29.3-4, 2, 18], center=true);
      translate([0, 0, 9]) cube([2, 29.3-4, 18], center=true);
    }
  }
}