use <threadlib/threadlib.scad>

$fn=128;

MY_THREAD_TABLE = [
                   ["PVC-1/2-ext",
                    [1.8, 21/2, 21,
                     [
                      [0, -0.75],
                      [0, 0.75],
                      [1.5, -0.3],
                      [1.5, -0.65],
                     ]
                    ]
                   ],
                   ["PVC-1/2-int",
                    [1.8,   // Pitch
                     -23/2,
                     23,    // Hole (max)
                     [
                      [0, 0.75],
                      [0, -0.75],
                      [1.4, -0.1],
                      [1.4, 0.1],
                     ]
                    ]
                   ]

                  ];

difference() {
  union() {    
    // 1/2" PVC
    difference() {
      cylinder(h=18, d=26);
      union() {
        translate([0, 0, -1]) cylinder(h=2, d1=26, d2=22);
        translate([0, 0, 1]) tap("PVC-1/2", turns=8.5, table=MY_THREAD_TABLE);
        translate([0, 0, 17]) cylinder(h=2, d=20);
      }
    }
    for (i = [1:8]) {
      rotate([0, 0, 360/8*i]) union() {
        translate([13, 0, 2]) cylinder(h=14, d=3);
        translate([13, 0, 2]) sphere(d=3);
        translate([13, 0, 16]) sphere(d=3);
      }
    }
    // Funnel
    translate([0, 0, 18]) difference() {
      cylinder(h=10, d1=26, d2=5.4);
      cylinder(h=10, d1=22, d2=4.2);
    }    
    // 5/16 tube
    translate([0, 0, 28]) difference() {
      union() {
        cylinder(h=10, d=5.4);
        for (z = [2:3:8]) {
          translate([0, 0, z]) cylinder(h=2, d1=6.0, d2=5.4);
        }
      }
      cylinder(h=10, d=4.2);
    }
  }
//  translate([0, 0, 8]) cylinder(h=38, d=30);
}