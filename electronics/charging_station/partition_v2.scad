$fn=64;

difference() {
  minkowski() {
    translate([2, 2, 0]) cube([90-2*2, 5-2*2, 14]);
    cylinder(h=1, r=2);
  }
//  cube([90, 5, 15]);
  union() {
    translate([11, 2.5, 0]) cylinder(h=5, d=3.2*1.01);
    translate([11, 2.5, 5]) cylinder(h=10, d=7);
    translate([90-5-12+6, 2.5, 0]) cylinder(h=5, d=3.2*1.01);
    translate([90-5-12+6, 2.5, 5]) cylinder(h=10, d=7);
    translate([11, 0, 5]) cube([68, 5, 10]);
    
    // Lightning slot.
//    translate([90-7, 5/2-1.8/2, 15/2-6.8/2]) cube([7, 1.8, 6.8]);

    // USB-C slot.
//    translate([90-7.2, 5/2-2.4*1.2/2, 15/2-8.2*1.02/2])
//    cube([7.2, 2.4*1.2, 8.2*1.02]);

    // Micro USB slot.
    translate([90-7, 5/2-1.8*1.2/2, 15/2-6.8*1.02/2])
    cube([7, 1.8*1.2, 6.8*1.02]);
  }
}
