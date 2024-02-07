-- Obtener el nombre del alumno y el nombre de la clase en la que está inscrito.

SELECT a.nombre, c.nombre from alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id;
/**
┌────────┬────────────────────────┐
│ nombre │         nombre         │
├────────┼────────────────────────┤
│ Juan   │ Matemáticas 101        │
│ María  │ Historia Antigua       │
│ Pedro  │ Literatura Moderna     │
│ Laura  │ Biología Avanzada      │
│ Carlos │ Química Orgánica       │
│ Ana    │ Física Cuántica        │
│ Sofía  │ Arte Contemporáneo     │
│ Diego  │ Inglés Avanzado        │
│ Lucía  │ Economía Internacional │
│ Miguel │ Derecho Penal          │
└────────┴────────────────────────┘
**/

-- Obtener el nombre del alumno y la materia de las clases en las que está inscrito.

SELECT a.nombre, c.materia from alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id;
/**
┌────────┬─────────────┐
│ nombre │   materia   │
├────────┼─────────────┤
│ Juan   │ Matemáticas │
│ Juan   │ Historia    │
│ María  │ Literatura  │
│ María  │ Biología    │
│ Pedro  │ Química     │
│ Pedro  │ Física      │
│ Laura  │ Arte        │
│ Laura  │ Idiomas     │
│ Carlos │ Economía    │
│ Ana    │ Derecho     │
└────────┴─────────────┘
**/

-- Obtener el nombre del alumno, la edad y el nombre del profesor de las clases en las que está inscrito.

SELECT a.nombre, a.edad, c.profesor from alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id;
/**
┌────────┬──────┬────────────┐
│ nombre │ edad │  profesor  │
├────────┼──────┼────────────┤
│ Juan   │ 20   │ Profesor X │
│ Juan   │ 20   │ Profesor Y │
│ María  │ 21   │ Profesor Z │
│ María  │ 21   │ Profesor W │
│ Pedro  │ 19   │ Profesor V │
│ Pedro  │ 19   │ Profesor U │
│ Laura  │ 22   │ Profesor T │
│ Laura  │ 22   │ Profesor S │
│ Carlos │ 20   │ Profesor R │
│ Ana    │ 19   │ Profesor Q │
└────────┴──────┴────────────┘
**/

-- Obtener el nombre del alumno y la dirección de las clases en las que está inscrito.

SELECT DISTINCT a.nombre, a.direccion from alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id;
/**
┌────────┬───────────┐
│ nombre │ direccion │
├────────┼───────────┤
│ Juan   │ Calle A   │
│ María  │ Calle B   │
│ Pedro  │ Calle C   │
│ Laura  │ Calle D   │
│ Carlos │ Calle E   │
│ Ana    │ Calle F   │
└────────┴───────────┘
**/

-- Obtener el nombre del alumno y el nombre de la clase junto con el profesor.

SELECT a.nombre, c.nombre || '-' || c.profesor as clase_profesor from alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id;
/**
┌────────┬───────────────────────────────────┐
│ nombre │          clase_profesor           │
├────────┼───────────────────────────────────┤
│ Juan   │ Matemáticas 101-Profesor X        │
│ Juan   │ Historia Antigua-Profesor Y       │
│ María  │ Literatura Moderna-Profesor Z     │
│ María  │ Biología Avanzada-Profesor W      │
│ Pedro  │ Química Orgánica-Profesor V       │
│ Pedro  │ Física Cuántica-Profesor U        │
│ Laura  │ Arte Contemporáneo-Profesor T     │
│ Laura  │ Inglés Avanzado-Profesor S        │
│ Carlos │ Economía Internacional-Profesor R │
│ Ana    │ Derecho Penal-Profesor Q          │
└────────┴───────────────────────────────────┘
**/

-- Obtener el nombre del alumno, la materia y el nombre del profesor de las clases en las que está inscrito.

SELECT a.nombre, c.materia , c.profesor from alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id;
/**
┌────────┬─────────────┬────────────┐
│ nombre │   materia   │  profesor  │
├────────┼─────────────┼────────────┤
│ Juan   │ Matemáticas │ Profesor X │
│ Juan   │ Historia    │ Profesor Y │
│ María  │ Literatura  │ Profesor Z │
│ María  │ Biología    │ Profesor W │
│ Pedro  │ Química     │ Profesor V │
│ Pedro  │ Física      │ Profesor U │
│ Laura  │ Arte        │ Profesor T │
│ Laura  │ Idiomas     │ Profesor S │
│ Carlos │ Economía    │ Profesor R │
│ Ana    │ Derecho     │ Profesor Q │
└────────┴─────────────┴────────────┘
**/

-- Obtener el nombre del alumno, la edad y la materia de las clases en las que está inscrito.

SELECT a.nombre, a.edad , c.materia from alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id;
/**
┌────────┬──────┬─────────────┐
│ nombre │ edad │   materia   │
├────────┼──────┼─────────────┤
│ Juan   │ 20   │ Matemáticas │
│ Juan   │ 20   │ Historia    │
│ María  │ 21   │ Literatura  │
│ María  │ 21   │ Biología    │
│ Pedro  │ 19   │ Química     │
│ Pedro  │ 19   │ Física      │
│ Laura  │ 22   │ Arte        │
│ Laura  │ 22   │ Idiomas     │
│ Carlos │ 20   │ Economía    │
│ Ana    │ 19   │ Derecho     │
└────────┴──────┴─────────────┘
**/

-- Obtener el nombre del alumno, la dirección y el profesor de las clases en las que está inscrito.

SELECT a.nombre, a.direccion, c.profesor from alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id;
/**
┌────────┬───────────┬────────────┐
│ nombre │ direccion │  profesor  │
├────────┼───────────┼────────────┤
│ Juan   │ Calle A   │ Profesor X │
│ Juan   │ Calle A   │ Profesor Y │
│ María  │ Calle B   │ Profesor Z │
│ María  │ Calle B   │ Profesor W │
│ Pedro  │ Calle C   │ Profesor V │
│ Pedro  │ Calle C   │ Profesor U │
│ Laura  │ Calle D   │ Profesor T │
│ Laura  │ Calle D   │ Profesor S │
│ Carlos │ Calle E   │ Profesor R │
│ Ana    │ Calle F   │ Profesor Q │
└────────┴───────────┴────────────┘
**/

-- Obtener el nombre del alumno y la materia de las clases en las que está inscrito, ordenado por el nombre del alumno.

SELECT a.nombre, c.materia from alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id ORDER BY a.nombre;
/**
┌────────┬─────────────┐
│ nombre │   materia   │
├────────┼─────────────┤
│ Ana    │ Derecho     │
│ Carlos │ Economía    │
│ Juan   │ Matemáticas │
│ Juan   │ Historia    │
│ Laura  │ Arte        │
│ Laura  │ Idiomas     │
│ María  │ Literatura  │
│ María  │ Biología    │
│ Pedro  │ Química     │
│ Pedro  │ Física      │
└────────┴─────────────┘
**/

-- Contar cuántos alumnos están inscritos en cada clase.

SELECT c.materia, COUNT(i.id_alumno) as total_alumnos FROM alumnos a, clases c join inscripciones i  on i.id_alumno=a.id and i.id_clase=c.id GROUP BY c.materia;
/**
┌─────────────┬───────────────┐
│   materia   │ total_alumnos │
├─────────────┼───────────────┤
│ Arte        │ 1             │
│ Biología    │ 1             │
│ Derecho     │ 1             │
│ Economía    │ 1             │
│ Física      │ 1             │
│ Historia    │ 1             │
│ Idiomas     │ 1             │
│ Literatura  │ 1             │
│ Matemáticas │ 1             │
│ Química     │ 1             │
└─────────────┴───────────────┘
**/

