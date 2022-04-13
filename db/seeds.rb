

course1 = Course.create(name: "Mini Creador");
course2 = Course.create(name: "Diseño con Photoshop");

group1 = Group.create(course_id: course1.id, name: "jueves a las 4pm");
group2 = Group.create(course_id: course1.id, name: "martes a las 2pm");
group3 = Group.create(course_id: course2.id, name: "lunes a las 9am");
group4 = Group.create(course_id: course2.id, name: "viernes a las 11am");
