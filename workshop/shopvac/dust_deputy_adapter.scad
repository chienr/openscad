$fn=128;

thickness=3;

difference() {
  union() {
    cylinder(h=16, d1=44.5, d2=44.6);
    translate([0, 0, 16]) cylinder(h=4, d1=44.6, d2=52);
    // Create a 45 deg overhang for printing.
    translate([0, 0, 20]) cylinder(h=3, d=52);
    translate([0, 0, 23]) cylinder(h=4, d1=52, d2=45.5);
    translate([0, 0, 27]) cylinder(h=64, d1=45.5, d2=44.5);
  }
  cylinder(h=91, d1=44.5-thickness*2, d2=44.5-thickness*2);
}


//thickness=2;
//
//difference() {
//  union() {
//    cylinder(h=16, d1=44.5, d2=44.6);
//    translate([0, 0, 16]) cylinder(h=2, d1=44.6, d2=48.6);
//    // Create a 45 deg overhang for printing.
//    translate([0, 0, 18]) cylinder(h=2, d=48.6);
//    translate([0, 0, 20]) cylinder(h=1.5, d1=48.6, d2=45.5);
//    translate([0, 0, 21.5]) cylinder(h=64, d1=45.5, d2=44.5);
//  }
//  cylinder(h=64+21.5, d1=44.5-thickness*2, d2=44.5-thickness*2);
//}
