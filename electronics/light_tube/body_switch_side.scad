$fn=64;

length=75.5;

rotate([0, 90, 0]) {
  difference() {
    cylinder(h=length, r=13.25);
    union() {
      cylinder(h=length, r=10.5);
      translate([-13.25, -13.25, 0]) cube([13.25, 26.5, length]);
      translate([7, -13.25, 0]) cube([6.5, 26.5, length]);
    }
  }

  difference() {
    translate([7, -12.5, 0]) cube([3, 25, length]);
    union() {
      difference() {
        cylinder(h=length, r=16.25);
        cylinder(h=length, r=13.25);
      }
      translate([7, -3, 35.5]) cube([3, 6, 6]);
    }
  }
}