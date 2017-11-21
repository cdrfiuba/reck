h = 16;   // altura de la tabla
ancho = 36.5; // ancho de la tabla
d = 6;  // diametro del agujero
largo = 200; // largo de la tabla
grosor = h/2; // altura de la plantilla 
distancia_cadenas = 140;
delta = 2.8; // espesor de borde
distancia_recorte = 200;  // recorte para dejar un lado abierto
recorte = 15;  //recorte para dejar un lado abierto

difference(){
	cube([ancho+2*delta,largo+2*delta,grosor], center=true);
	translate([0,distancia_recorte/2,0]) cube([ancho+10,recorte,recorte], center=true);
	translate([0,0,2]) cube([ancho,largo,grosor], center=true);
	translate([0,distancia_cadenas/2,0]) cylinder(h,d=d,center=true,$fn=50);
	translate([0,-distancia_cadenas/2,0]) cylinder(h,d=d,center=true,$fn=50);
}