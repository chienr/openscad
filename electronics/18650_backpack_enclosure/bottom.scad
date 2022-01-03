$fn=64;

length = 76 * 1.01;
width = 21 * 1.01;
height = 8;
thick = 1;

// Base
difference() {
  minkowski() {
    translate([0, 0, height/2])
      cube([length+(thick*2), width+(thick*2), height], center=true);
    sphere(2);
  }
  union() {
    translate([0, 0, 7.5])
      cube([length+7, width+7, height+7], center=true);
    // Standby LED.
    translate([-29, -7, -1])
      cylinder(h=2, r=0.5);
    // Charge LED.
    translate([-29, -5, -1])
      cylinder(h=2, r=0.5);
    // Power LED.
    translate([8.5, 8, -1])
      cylinder(h=2, r=0.5);
  }
}

// Lip
difference() {
  translate([0, 0, height/2])
    cube([length+(thick*2), width+(thick*2), height], center=true);
  union() {
    translate([0, 0, height/2])
      cube([length, width, height], center=true);
    // Power switch.
    translate([0, 11.5, 5])
      cube([6, thick+1, 6.2], center=true);
    // USB-C.
    translate([-32, 11.5, 5.4])
      cube([9.5, thick+1, 5.2], center=true);
    // Output.
    translate([39, 6, 5])
      cube([thick+1, 6, 6], center=true);
  }
}