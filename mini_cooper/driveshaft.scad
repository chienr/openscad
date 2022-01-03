tooth=21;  // tooth count
h=10;

difference() {
  union() {
    cylinder(h=h, d=18);    
    for (i = [1:tooth]) {
      rotate([0, 0, 360/tooth*i]) union() {
        translate([8.5, 0, 0]) linear_extrude(height=h)
          polygon([[0, -1.2], [1.5, -0.5], [1.5, 0.5], [0, 1.2]]);
      }
    }
  }
  cylinder(h=h, d=16);
}