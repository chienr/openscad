$fn=64;

// Inner dimensions.
length = 76 * 1.01 + 2;
width = 21 * 1.01 + 2;
height = 30;
//thick = 2;
wall = 2;

difference() {
  minkowski() {
    translate([0, 0, -height/2])
//      cube([length+(thick*2), width+(thick*2), height], center=true);
      cube([length, width, height], center=true);
    sphere(2);
  }
  union() {
    // Open top.
    translate([0, 0, wall])
//      cube([length+(thick*4), width+(thick*4), thick*2], center=true);
      cube([length+wall*2, width+wall*2, wall*2], center=true);
    // Hollow.
    translate([0, 0, -height/2])
//      cube([length+(thick*2), width+(thick*2), height], center=true);
      cube([length, width, height], center=true);
    // Power switch.
    translate([0, 13, -2.75])
      cube([6, wall+1, 5.5], center=true);
    // USB-C.
    translate([32, 13, -4])
      cube([13.5, wall+1, 8], center=true);    
    // Output.
    translate([-40.5, 6, -1.5])
      cube([wall+1, 6, 4.5], center=true);
    // Grip.
    translate([39, 0, 0]) rotate([0, 90, 0])
      cylinder(h=wall+1, r=6);
  }
}