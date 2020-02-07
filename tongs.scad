// Units in mm
//main body
$fn=40;
module body() {
	difference() {
		hull() {
			cylinder(h=15, r=20, center=true);
			translate([100, 0, 0])
			rotate([0, 90, 0])
			cylinder(h=15, r=7.5, center=true);
		}

		union() {
			hull() {
				cylinder(h=16, r=18, center=true);
				translate([100, 0, 0])
				cylinder(h=16, r=6.5, center=true);
			}
			translate([100, 0, 0])
			cube([20, 20, 20], center=true);
			translate([85, -6, 0])
			jaw();
			mirror([0, 1, 0])
			translate([85, -6, 0])
			jaw();
			}
	}
}
body();

module jaw() {
	cube([20, 3, 10], center=true);

	difference() {
		hull() {
			translate([0, -5, 0])
			cylinder(r=3, h=2, center=true);
			cube([8, 2, 2], center=true);
		}
		translate([0, -5, 0])
		cylinder(r=1, h=4, center=true);
	}
}
			translate([85, -6, 0])
			jaw();
			mirror([0, 1, 0])
			translate([85, -6, 0])
			jaw();
