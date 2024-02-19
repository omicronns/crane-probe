$fn=32;

main_size=12;
crack_size=1;
rod_d=4.6;
screw_d=5.2;

difference() {
    union() {
        cylinder(h=main_size,d=main_size);
        translate([main_size,main_size/2,main_size/2])
            rotate([90,0,0])
                cylinder(h=main_size,d=main_size);
        translate([0,-main_size/2,0])
            cube(main_size);
    }
    translate([0,0,-1])
        cylinder(h=main_size*2,d=rod_d);
    translate([main_size*1.5,0,0])
        cube([main_size*3,crack_size,main_size*3],center=true);
    translate([main_size,0,main_size/2])
        rotate([90,0,0])
            cylinder(h=main_size*2,d=screw_d,center=true);
}
