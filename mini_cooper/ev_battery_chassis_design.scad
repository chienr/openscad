$fn=64;

translate([0, 0, 0]) Pack50V();
translate([0, 250, 0]) Pack50V();
translate([0, 600, 0]) Pack50V();
translate([0, 850, 0]) Pack50V();

translate([300, 0, 0]) Pack50V();
translate([300, 250, 0]) Pack50V();
translate([300, 600, 0]) Pack50V();
translate([300, 850, 0]) Pack50V();

translate([600, 0, 0]) Pack50V();
translate([600, 250, 0]) Pack50V();
translate([600, 600, 0]) Pack50V();
translate([600, 850, 0]) Pack50V();

translate([900, 0, 0]) Pack50V();
translate([900, 250, 0]) Pack50V();
translate([900, 600, 0]) Pack50V();
translate([900, 850, 0]) Pack50V();

module Cell1865() {
  cylinder(h=65, r=9);
}

module Pack50V() {
  // Each pack can deliver 48A.
  for (i = [0:13]) {
    for (j = [0:11]) {
      translate([i*20, j*20, 0]) Cell1865();
    }
  }
}