$fn=32;

thick=8;
main_size=12;
crack_size=1;
channel=5;
screw_d=5.2;

rotate([90,0,0])
    difference() {
        union() {
            translate([-main_size,-main_size/2,0])
                cube([main_size*1.5,main_size,thick]);
        }
        translate([2,0,thick/2])
            cube([main_size*2,main_size*2,crack_size],center=true);
        translate([2,0,thick/2])
            cube([channel,main_size*2,channel],center=true);
        translate([-4,0,-1]) {
            cylinder(h=thick*2,d=screw_d);
        }
    }
