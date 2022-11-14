include <ShapesNPaths/crossSections_n_caps.scad>

module finial(dia,res){
    r = dia/2;
	
    union(){
    rotate_extrude(angle = 270,convexity = 10,$fn=50)
	translate([r+.1, 0, 0])
	cross(dia,res);

	translate([r,-r/2,0]) rotate([90,0,0])
	linear_extrude(r,center=true,convexity=10,twist=0,slices=20,scale=1,$fn=res)
	cross(dia,res);

	translate([r/2,-r,0]) rotate([90,0,90])
	linear_extrude(r,center=true,convexity=10,twist=0,slices=20,scale=1,$fn=res)
	cross(dia,res);

}}