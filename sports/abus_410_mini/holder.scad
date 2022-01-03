$fn=256;

thick=3;

difference() {
  union() {
    cylinder(h=60, d=44);
    
    // Horizontal supports.
    translate([12, 7, 0]) linear_extrude(height=thick)
      polygon([[0, 0], [24, 0], [0, 10]]);
    translate([12, -7, 0]) linear_extrude(height=thick)
      polygon([[0, 0], [24, 0], [0, -10]]);
    translate([-12, 7, 0]) linear_extrude(height=thick)
      polygon([[0, 0], [-24, 0], [0, 10]]);
    translate([-12, -7, 0]) linear_extrude(height=thick)
      polygon([[0, 0], [-24, 0], [0, -10]]);

    // Vertical supports.
    translate([16, 7, thick]) rotate([90, 0 , 0]) translate([0, 0, -thick/2])
      linear_extrude(height=thick) polygon([[0, 0], [16, 0], [0, 24]]);
    translate([16, -7, thick]) rotate([90, 0, 0]) translate([0, 0, -thick/2])
      linear_extrude(height=thick) polygon([[0, 0], [16, 0], [0, 24]]);
    translate([-16, 7, thick]) rotate([90, 0 , 0]) translate([0, 0, -thick/2])
      linear_extrude(height=thick) polygon([[0, 0], [-16, 0], [0, 24]]);
    translate([-16, -7, thick]) rotate([90, 0, 0]) translate([0, 0, -thick/2])
      linear_extrude(height=thick) polygon([[0, 0], [-16, 0], [0, 24]]);
  }
  union() {
    cylinder(h=60, d=38);
    translate([20, 0, 29]) rotate([0, 90, 0]) translate([0, 0, -3]) cylinder(h=6, d=17);
    translate([-20, 0, 29]) rotate([0, 90, 0]) translate([0, 0, -3]) cylinder(h=6, d=12);
  }
}

difference() {
  union() {
    translate([0, 0, thick/2]) cube([16, 40, thick], center=true);
    translate([0, 0, thick/2]) cube([64, 16, thick], center=true);
    translate([32, 0, 0]) cylinder(h=thick, d=16);
    translate([-32, 0, 0]) cylinder(h=thick, d=16);
    
  }
  union() {
    union() {
      translate([30, 0, 0]) cylinder(h=thick, d=5.5);
      translate([31.5, 0, thick/2]) cube([3, 5.5, thick], center=true);
      translate([33, 0, 0]) cylinder(h=thick, d=5.5);
    }
    translate([-32, 0, 0]) cylinder(h=thick, d=5.5);
  }
}

// Screw.
//translate([32, 0, 3]) cylinder(h=3, d=9.3);