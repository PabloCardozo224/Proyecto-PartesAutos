-- ========================================================
-- 1. VISTA: PRODUCTOS AGOTADOS O SIN STOCK
-- ========================================================
CREATE OR REPLACE VIEW vw_productos_sin_stock AS
SELECT Id_Producto, Nombre, Cantidad, precio
FROM Productos
WHERE Cantidad = 0;

-- ========================================================
-- 2. VISTA: COMPROBANTES DE PAGO CONFIRMADOS
-- ========================================================
CREATE OR REPLACE VIEW vw_pagos_confirmados AS
SELECT Id_Pago, Metodo, Monto
FROM Pagos
WHERE Estado = 'Confirmado';

-- ========================================================
-- 3. VISTA: LISTADO DE EMPLEADOS ADMINISTRADORES
-- ========================================================
CREATE OR REPLACE VIEW vw_empleados_administradores AS
SELECT Id_Empleado, Nombre, Apellido, Usuario, Puesto
FROM Empleados
WHERE Rol = 'administrador';

-- ========================================================
-- 4. VISTA: VENTAS RECIENTES
-- ========================================================
CREATE OR REPLACE VIEW vw_ventas_recientes AS
SELECT id_Ventas, Fecha_venta, cantidad_productos, Id_Producto
FROM Ventas
ORDER BY Fecha_venta DESC;

-- ========================================================
-- 5. VISTA: RESUMEN DE PRODUCTOS VENDIDOS POR MES
-- ========================================================
CREATE OR REPLACE VIEW vw_ventas_mensuales_totales AS
SELECT YEAR(v.Fecha_venta) AS anio,
       MONTH(v.Fecha_venta) AS mes,
       SUM(v.cantidad_productos) AS total_productos_vendidos,
       SUM(v.cantidad_productos * p.precio) AS total_facturado_mes
FROM Ventas v
INNER JOIN Productos p ON v.Id_Producto = p.Id_Producto
GROUP BY YEAR(v.Fecha_venta), MONTH(v.Fecha_venta)
ORDER BY anio DESC, mes DESC;
