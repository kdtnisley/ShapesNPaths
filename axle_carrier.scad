include <BOSL2/std.scad>

p_width = 4*INCH;
p_thick = 0.5*INCH;

clearance = 5; //mm

h_width = p_width + clearance;
h_thick = p_thick + clearance;

frame = 10; //mm

f_width = h_width + 2*frame;
f_length = h_thick + 2*frame;

axle = 12;


difference(){
diff()
cube(size=[f_length,f_width,frame], center=true)
    edge_mask([FRONT+LEFT,FRONT+RIGHT,BACK+LEFT,BACK+RIGHT])
        #rounding_edge_mask(l=$parent_size.z+0.01, r=5);

diff()
cube(size=[h_thick,h_width,frame], center=true)
    edge_mask([FRONT+LEFT,FRONT+RIGHT,BACK+LEFT,BACK+RIGHT])
        #rounding_edge_mask(l=$parent_size.z+0.01, r=5);
}     

translate([h_thick/2+frame/2,0,frame/2])
rotate([0,0,90])
axle_housing(axle,frame*3,frame,3,3);

translate([-(h_thick/2+frame/2),0,frame/2])
rotate([0,0,90])
axle_housing(axle,frame*3,frame,3,3);


module axle_housing(axle_OD,base_w,base_d,w,set_d){
difference(){
    union(){
    //create base
//    translate([0,0,w/2])
//    cube([base_w,base_d,w],center=true);
    
    //create axle housing
    translate([0,0,axle_OD/2])
    rotate([90,0,0])
    cylinder(h=base_d,d=axle_OD+w*2,center=true);
    
    //fill in under the wing curves
    translate([-(axle_OD+w*2+base_d)/2,-base_d/2,0])
    cube([axle_OD+w*2+base_d,base_d,base_d/2]);
    }

//create wing curves
translate([axle_OD/2 + base_d,0,axle_OD/2])
rotate([90,0,0])
cylinder(h=base_d,d=axle_OD,center=true);

translate([-(axle_OD/2 + base_d),0,axle_OD/2])
rotate([90,0,0])
cylinder(h=base_d,d=axle_OD,center=true);

//remove axle
translate([0,0,axle_OD/2])
rotate([90,0,0])
cylinder(h=base_d,d=axle_OD,center=true);

}
}
