rotate([0, 90, 0]) rotate([0, 0, -40])
difference() {
  linear_extrude(height=133)
    polygon([
      [0, 0],
      [15, 0],
      [15*sin(10), 15*cos(10)]]
    );
  translate([1, 1*cos(10), 1]) linear_extrude(height=131)
    polygon([
      [0, 0],
      [14, 0],
      [14*sin(10), 14*cos(10)]]
    );
}