$fn=128;

thickness=2;

difference() {
  union() {
    cylinder(h=30, d=42);
    // Create a 45 deg overhang for printing.
    translate([0, 0, 28]) cylinder(h=2, d1=42, d2=46);
    translate([0, 0, 30]) cylinder(h=2, d=46);
    translate([0, 0, 32]) cylinder(h=2, d1=46, d2=40);
    translate([0, 0, 32]) cylinder(h=30, d=40);
  }
  cylinder(h=62, d1=42-thickness*2, d2=40-thickness*2);
}
