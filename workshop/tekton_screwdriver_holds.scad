$fn=64;

difference() {
  union() {
    cylinder(h=5, d=12.4);
  }
  union() {
    // #0 Philips or 1/8 Slot
//    cylinder(h=20, d=3.3);
//    translate([0, 0, 10]) cube([3.7, 2.3, 20], center=true);    

    // #1 Philips or 3/16 Slot
    cylinder(h=20, d=4.7);
    translate([0, 0, 10]) cube([6, 3, 20], center=true);    

    // #2 Philips or 1/4 Slot
//    cylinder(h=20, d=6.4);
//    translate([0, 0, 10]) cube([7.9, 4.3, 20], center=true);    

    // #3 Philips or 5/16 Slot
//    cylinder(h=20, d=8);
//    translate([0, 0, 10]) cube([9.7, 5.4, 20], center=true);    
  }
}
