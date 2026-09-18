USE medi_sistemas;
-- consultas
-- 1
SELECT 
    m.id_medico,
    m.nombre,
    m.apellido,
    COUNT(p.id_paciente) AS total_pacientes
FROM medicos m
LEFT JOIN pacientes p ON m.id_medico = p.id_medico
GROUP BY m.id_medico, m.nombre, m.apellido;
-- 2
SELECT 
    e.id_empleado,
    e.nombre,
    e.apellido,
    v.estado,
    SUM(DATEDIFF(v.fecha_final, v.fecha_inicio) + 1) AS total_dias_vacaciones
FROM empleados e
INNER JOIN vacaciones v ON e.id_empleado = v.id_empleado
GROUP BY e.id_empleado, e.nombre, e.apellido, v.estado;

-- 3
SELECT 
    m.id_medico,
    m.nombre,
    m.apellido,
    SUM(TIMESTAMPDIFF(HOUR, h.hora_entrada, h.hora_salida)) AS total_horas_semana
FROM medicos m
INNER JOIN horarios h ON m.id_medico = h.id_medico
GROUP BY m.id_medico, m.nombre, m.apellido
ORDER BY total_horas_semana DESC;

-- 4
SELECT 
    ms.id_medico AS id_sustituto,
    ms.nombre,
    ms.apellido,
    COUNT(s.id_sustitucion) AS total_sustituciones
FROM medicos ms
LEFT JOIN sustituciones s ON ms.id_medico = s.id_medico_sustituto
WHERE ms.tipo = 'Sustituto'
GROUP BY ms.id_medico, ms.nombre, ms.apellido;

-- 5
SELECT 
    COUNT(DISTINCT id_medico_titular) AS medicos_actualmente_sustituidos
FROM sustituciones
WHERE CURDATE() BETWEEN fecha_entrada AND fecha_salida;

-- 6
SELECT 
    m.nombre,
    m.apellido,
    h.dia_semana,
    SUM(TIMESTAMPDIFF(HOUR, h.hora_entrada, h.hora_salida)) AS horas_consulta
FROM medicos m
INNER JOIN horarios h ON m.id_medico = h.id_medico
GROUP BY m.id_medico, m.nombre, m.apellido, h.dia_semana;