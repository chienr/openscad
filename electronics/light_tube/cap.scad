$fn=64;

translate([0, 0, 3]) {
  difference() {
    cylinder(h=30, r=16.3);
    union() {
      cylinder(h=30.01, r=13.5);
      translate([16, 0, 24]) cube([2, 20, 12], center=true);
      translate([-16, 0, 24]) cube([2, 20, 12], center=true);
    }
  }
}

translate([0, 0, 3]) {
  difference() {
    // Rounded end.
    minkowski() {
      cylinder(h=3, r=13.3);
      sphere(3);
    }
    union() {
      // Chop off 2/3.
      cylinder(h=6, r=16.3);
      
      // Hole for the LED.
      translate([0, 0, -3]) cylinder(h=3, r=2.75);
    }
  }
}

//translate([40, -20, 30]) {
//  cylinder(h=3, r=16.3);
//}