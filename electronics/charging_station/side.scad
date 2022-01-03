$fn=64;

mirror([1, 0, 0])
union() {
  difference() {
    union() {
      minkowski() {
        translate([2, 2, 0]) cube([30-2*2, 120-2*2, 30]);
        cylinder(h=2, r=2);
      }
    }
    union() {
      translate([3, 3, 0]) cube([30-3, 120-3*2, 32]);
      // Front opening.
      translate([15, 0, 0]) cube([15, 3, 32]);
      // Back opening.
      translate([25, 120-3, 0]) cube([5, 3, 32]);    
    }
  }
  
  // Screw holes.
  difference() {
    union() {
      translate([5, 5, 0]) cylinder(h=32, d=6);
      translate([5, 120-5, 0]) cylinder(h=32, d=6);
    } 
    union() {
      translate([5, 5, 0]) cylinder(h=32, d=3);
      translate([5, 120-5, 0]) cylinder(h=32, d=3);
    }
  }
}