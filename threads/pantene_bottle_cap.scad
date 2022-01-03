use <threadlib/threadlib.scad>

$fn=128;

MY_THREAD_TABLE = [
                   ["Pantene",
                    [3.8, 15, 36,
                     [
                      [0, -0.75],
                      [0, 0.75],
                      [1.4, -0.3],
                      [1.4, -0.65],
                     ]
                    ]
                   ],
                   ["Pantene-int",
                    [3.8, -33.3/2, 33.2,
                     [
                      [0, 0.75],
                      [0, -0.75],
                      [1.3, -0.25],
                      [1.3, 0.25],
                     ]
                    ]
                   ]

                  ];

difference() {
  union() {    
    difference() {
      cylinder(h=36, d=38);
      union() {
        translate([0, 0, 3.4]) tap("Pantene", turns=7.7, table=MY_THREAD_TABLE);
        translate([0, 0, -1]) cylinder(h=3.4, d=32.2);
        translate([0, 0, 33]) cylinder(h=4, d=32.2);
      }
    }
    
//    translate([-33.3/2, 0, 0]) cylinder(h=3, d=1);
//    translate([33.3/2-10, 15, 33]) cylinder(h=3, d=1);
//    cylinder(h=20, d=30.5);
    
    for (i = [1:8]) {
      rotate([0, 0, 360/8*i]) union() {
        translate([19, 0, 2]) cylinder(h=32, d=3);
        translate([19, 0, 2]) sphere(d=3);
        translate([19, 0, 34]) sphere(d=3);
      }
    }
  }
//  translate([0, 0, 10]) cylinder(h=15, d=50);
}