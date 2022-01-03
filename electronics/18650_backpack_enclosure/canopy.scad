$fn=64;

length = 77 * 1.01;
width = 21 * 1.01;
height = 15;
thick = 1;

// Base
difference() {
  translate([0, 0, -thick/2])
    cube([length+(thick*2), width+(thick*2), 2], center=true);
  union() {
    // Screw holes
    translate([55.7/2, 0, -2])
      cylinder(h=3, d=2);
    translate([-55.7/2, 0, -2])
      cylinder(h=3, d=2);
    // Nut countersink
    translate([55.7/2, 0, -2.5])
      cylinder(h=2, d=4.8, $fn=6);
    translate([-55.7/2, 0, -2.5])
      cylinder(h=2, d=4.8, $fn=6);
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
    translate([-1, 11.5, 8.6])
      cube([6, thick+1, 13.6], center=true);
    // USB-C.
    translate([-32.5, 11.5, 4.9])
      cube([9.5, thick+1, 4.2], center=true);
    // Output.
    translate([39.5, 6, 9])
      cube([thick+1, 6, 14], center=true);
  }
}