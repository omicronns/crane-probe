$fn=32;

height=12;
main_size=18;
rod_d=4.4;
magnet_d=12.2;
magnet_h=3;

difference() {
    cylinder(h=height,d=main_size);
    translate([0,0,-1])
        cylinder(h=height*2,d=rod_d);
    translate([0,0,height-magnet_h])
        cylinder(h=magnet_h+1,d=magnet_d);
}
