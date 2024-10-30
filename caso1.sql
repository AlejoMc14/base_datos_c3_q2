USE db_security;

SELECT
    r.name AS rol,
    r.code AS codigo_rol,
    m.name AS modulo,
    m.path AS paquete,
    v.name AS vista,
    v.path AS ruta_vista
FROM
    role r
JOIN
    role_module rm ON r.id = rm.role_id
JOIN
    module m ON rm.module_id = m.id
JOIN
    module_view mv ON m.id = mv.module_id
JOIN
    view v ON mv.view_id = v.id
WHERE
    r.state = 1 
ORDER BY
    r.name, m.name, v.name;