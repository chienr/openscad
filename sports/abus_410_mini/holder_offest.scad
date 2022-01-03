$fn=256;

thick=3;
offset=32+46;

difference() {
  union() {
    translate([offset, 0, 0]) cylinder(h=60, d=44);
    
    // Horizontal supports.
    translate([-12+offset, 7, 0]) linear_extrude(height=thick)
      polygon([[0, 0], [-24-offset, 0], [0, 10]]);
    translate([-12+offset, -7, 0]) linear_extrude(height=thick)
      polygon([[0, 0], [-24-offset, 0], [0, -10]]);

    // Vertical supports.
    translate([0, 8, thick]) rotate([90, 0 , 0]) translate([0, 0, -thick/2])
      linear_extrude(height=thick) polygon([[0, 0], [offset-18, 0], [offset-18, 18]]);
    translate([0, -8, thick]) rotate([90, 0, 0]) translate([0, 0, -thick/2])
      linear_extrude(height=thick) polygon([[0, 0], [offset-18, 0], [offset-18, 18]]);
  }
  union() {
    translate([offset, 0, 0]) cylinder(h=60, d=38);
//    translate([20+offset, 0, 29]) rotate([0, 90, 0]) translate([0, 0, -3]) cylinder(h=6, d=17);
    translate([-20+offset, 0, 29]) rotate([0, 90, 0]) translate([0, 0, -3]) cylinder(h=6, d=12);
  }
}

difference() {
  union() {
    translate([offset, 0, thick/2]) cube([16, 40, thick], center=true);
    translate([0, 0, thick/2]) cube([64, 16, thick], center=true);
    translate([32+30, 0, thick/2]) cube([72, 16, thick], center=true);
//    translate([32, 0, 0]) cylinder(h=thick, d=16);
    translate([-32, 0, 0]) cylinder(h=thick, d=16);
    
  }
  union() {
    translate([32, 0, 0]) cylinder(h=thick, d=5.5);
    translate([-32, 0, 0]) cylinder(h=thick, d=5.5);
  }
}

// Screw.
//translate([32, 0, 3]) cylinder(h=3, d=9.3);