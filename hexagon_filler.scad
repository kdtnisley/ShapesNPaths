include <BOSL2/std.scad>

side = 5;
vert = side*sqrt(3);
w=3;

linear_extrude(5){
intersection(){
square([60,60],center=true); //bounding box

grid_copies(spacing=[side*3,vert], size=60)
hex_tileable(side,w);
}
}


//MODULES__________________________
module hex_tileable(side,w){
OR = side; //hexagon properties
a = side * sqrt(3); //smallest width (flat to flat)
A = 2*side; //largest width (point to point)
IR = a/2;  //hexagon properties

union(){    
    hex_unit(side,w);
    translate([1.5*side,IR,0])
    hex_unit(side,w);
}}

module hex_unit(side,w){
//side = 10; //mm
OR = side; //hexagon properties
a = side * sqrt(3); //smallest width (flat to flat)
A = 2*side; //largest width (point to point)
IR = a/2;  //hexagon properties

//w = 2; //gap-gap spacing  
    
difference(){
    //larger hexagon
    hexagon(side=side);
    
    //smaller hexagon
    hexagon(ir = IR-w/2);
}
}
