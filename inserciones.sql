--tabla estado

INSERT INTO `estado` (`id_estado`, `nombre`) 
VALUES ('1', 'Habilitado'), ('2', 'Deshabilitado');


--tabla estado_activo

INSERT INTO `estado_activo` (`id_estado`, `nombre`) VALUES 
('1', 'Operativo'), ('2', 'Malogrado'), ('3', 'En reparación'), ('4', 'Baja');

--TIPO ACTIVO

INSERT INTO `tipo_activo` (`id_activo`, `nombre`) VALUES ('1', 'CABLE DE RED'), 
('2', 'CABLE PODER'), ('3', 'CABLE VGA'), ('4', 'CABLE RJ11'), 
('5', 'CABLE HDMI'), ('6', 'CABLE CONSOLA'), ('7', 'CABLE DVI'), 
('8', 'CPU'), ('9', 'LAPTOP'), ('10', 'MONITOR'), ('11', 'TECLADO'), 
('12', 'MOUSE'), ('13', 'TABLET'), ('14', 'PROYECTOR'), ('15', 'TICKETERA'), 
('16', 'ADAPTADOR TICKETERA'), ('17', 'CABLE USB DE IMPRESORA'), 
('18', 'GABETA DE DINERO'), ('19', 'ESTABILIZADOR'), ('20', 'SUPRESOR DE PICO'), 
('21', 'EXTENSIÓN DE CORRIENTE'), ('22', 'ESCANER'), ('23', 'IMPRESORA'), 
('24', 'ROUTER'), ('25', 'TELEFONO'), ('26', 'SWITCH'), ('27', 'USB'), 
('28', 'USB MOVIL'), ('29', 'ADAPTADOR DE USB'), ('30', 'HEAD PHONE'), 
('31', 'FUENTE DE PODER'), ('32', 'MEMORIA RAM'), ('33', 'DISCO DURO'), 
('34', 'LECTORA'), ('35', 'ECRAM'), ('36', 'DVR'), ('37', 'UPS'), 
('38', 'SOPLADORA'), ('39', 'HUINCHA'), ('40', 'TARJETA DE RED'), ('41', 'KIT REDUNDANTE');



--TIPO MOVIMIENTO
INSERT INTO `tipo_movimiento` (`id_tipo_movimiento`, `tipo_movimiento`, `id_estado`) 
VALUES ('1', 'INGRESO POR COMPRA', '1'), ('2', 'INGRESO POR REPOSICIÓN ', '1'), 
('3', 'INGRESO POR REPARACIÓN ', '1'), ('4', 'INGRESO POR MANTENIMIENTO', '1'), 
('5', 'SALIDA APERTURA A TIENDA', '1'), ('6', 'SALIDA ENTREGA A USUARIO', '1'), 
('7', 'SALIDA POR PRESTAMO', '1'), ('8', 'SALIDA POR REPARACIÓN ', '1'), 
('9', 'SALIDA POR REPOSICIÓN ', '1'), ('10', 'SALIDA POR BAJA', '1'), 
('11', 'SALIDA POR MANTENIMIENTO', '1');



--Empresa
INSERT INTO `empresa` (`id_empresa`, `ruc`, `razon_social`, `rubro`, `direccion`, `representante`, `tipo`, `id_estado`) 
VALUES ('1', '20563207095', 'SMART BRANDS S.A.C. ', 'TEXTIL', 'Av. Separadora industrial N° 366', 'Michael Mc Gregor', 'COMPAÑIA', '1'), 
('2', '20508820551', 'Megatex MD S.A.C.', '', '', 'Michael Mc Gregor', '', '1'), 
('3', '20102097140', 'Fina Diseños', 'Textil', 'Av. Separadora Industrial N° 368', 'Michael Mc Gregor', 'COMPAÑIA', '1'), 
('4', '20524291534', 'DOBLE BB E.I.R.L.', 'CONSULTORIA DE TI', 'JR. AMADOR GARCIA N° 3294 URB. CANTO NUEVO', NULL, 'PROVEEDOR', '1');


--USUARIO
INSERT INTO `usuario` (`id_usuario`, `tipo_documento`, `numero_documento`, `nombre`, `a_paterno`, `a_materno`, `nacimiento`, `sexo`, `pais`, `departamento`, `ciudad`, `distrito`, `direccion`, `correo`, `telefono`, `celular`, `id_empresa`, `area`, `cargo`, `inicio`, `id_estado`) VALUES 
('1', 'DNI', '70119186', 'Yoselin Karol', 'Palomino', 'Velasquez', '1993-07-18', 'F', 'Perú', 'Lima', 'Lima', 'Vitarte', 'Micaela Bastidas Mz R Lt 4', 'yoselin.p.v.93@gmail.com', '3456725', '989667435', '1', 'Sistemas', 'Help Desk 1', '2017-12-01', '1'), 
('2', 'DNI', '46621508', 'Juan Antonio', 'Lucero', 'Verde', '1990-07-10', 'M', 'Perú', 'Lima', 'Lima', 'Bellavista', NULL, 'jackluc742@gmail.com', '', '', '1', 'Sistemas', 'Help Desk 2', '2017-12-01', '1'), 
('3', 'DNI', '70117256', 'Joshelyn', 'Gonzales', 'Puentes', '1994-05-01', 'F', 'Perú', 'Lima', 'Lima', 'La Molina', NULL, 'jgonzales0194@gmail.com', NULL, NULL, '2', 'MILK', 'Diseñadora', '2017-12-01', '1');

--ACCESO
INSERT INTO `acceso` (`id_acceso`, `id_usuario`, `usuario`, `password`, `tipo`, `id_estado`, `imagen`) 
VALUES ('1', '1', 'ypalomino', 'ypalomino', '2', '1', '7215_6_4_2017_image_user.jpeg'), 
('2', '2', 'alucero', 'alucero', '1', '1', '7216_6_4_2017_image_user.jpeg');

--MOVIMIENTO
INSERT INTO `movimiento` (`id_movimiento`, `id_tipo_movimiento`, `fecha_movimiento`, `num_guia`, `origen`, `destino`, `id_usuario_respo`, `id_usuario_recep`, `observacion`) VALUES 
('1', '1', '2017-04-09', '001-000003', 'DOBLE BB', 'ALMACEN', '1', '2', NULL), 
('2', '2', '2017-02-05', '001-000004', 'MCH CRONOS', 'ALMACEN', '1', '2', NULL), 
('3', '3', '2017-06-02', '001-000005', 'MCH LARCOMAR', 'ALMACEN', '1', '2', NULL), 
('4', '4', '2017-07-02', '001-000006', 'YECID GOMEZ', 'ALMACEN', '1', '2', NULL), 
('5', '5', '2017-02-07', '016-000007', 'ALMACEN', 'MCH CRONOS', '1', '2', NULL), 
('6', '6', '2017-02-08', '016-000008', 'ALMACEN', 'JUAN GARAYAR GUEVARA', '1', '2', NULL), 
('7', '7', '2017-02-09', '016-000009', 'ALMACEN', 'JUAN ANTONIO LUCERO VERDE', '1', '2', NULL), 
('8', '8', '2017-02-09', '016-000010', 'ALMACEN', 'DOBLE BB', '1', '2', NULL), 
('9', '9', '2017-02-10', '016-000011', 'ALMACEN', 'MCH CRONOS', '1', '2', NULL), 
('10', '10', '2017-02-11', '016-000012', 'ALMACEN', 'WILBER QUISPE', '1', '2', NULL), 
('11', '11', '2017-02-13', '016-000013', 'ALMACEN', 'WILBER QUISPE', '1', '2', NULL);

--MARCA
INSERT INTO `marca` (`id_marca`, `nombre`, `id_empresa`, `id_usuario`, `id_estado`) VALUES 
('1', 'milk', '2', '3', '1'), ('2', '47 st', '2', '3', '1'), ('3', 'philosophi', '1', '3', '1'), 
('4', 'mentha y chocolate', '1', '3', '1'), ('5', 'exit', '1', '3', '1'), ('6', 'parfois', '1', '3', '1'), 
('7', 'tayssir', '2', '3', '1'), ('8', 'kevingstone', '2', '3', '1'), ('9', 'arrow', '1', '3', '1'), 
('10', 'fina', '3', '3', '1');


--TIENDA
INSERT INTO `tienda` (`id_tienda`, `nombre`, `id_marca`, `id_estado`) VALUES 
('1', 'MCH CRONOS', '4', '1'), ('2', 'MCH LARCOMAR', '4', '1'), ('3', 'MCH ROBLE', '4', '1'), 
('4', 'MCH CAMINOS DEL INCA', '4', '1'), ('5', 'MCH LA RAMBLA SAN BORJA', '4', '1'), 
('6', 'MCH PRIMAVERA', '4', '1');

--Activos_P
INSERT INTO `activo_p` (`id_padre`, `codigo`, `id_nombre`, `id_estado`, `marca`, `id_empresa`, `id_proveedor`, `tiempo_de_vida`, `modelo`, `numero_serie`) VALUES 
('1', 'CARE00001', '1', '1', 'Satra', '1', '4', '5 años', 'cat 6', NULL), 
('2', 'CARE00002', '1', '1', 'Satra', '1', '4', '5 años', 'cat 6', NULL), 
('3', 'CARE00003', '1', '1', 'Satra', '1', '4', '5 años', 'cat 6', NULL), 
('4', 'CAPO00001', '2', '1', NULL, '1', '4', '5 años', NULL, NULL), 
('5', 'CAPO00002', '2', '1', NULL, '1', '4', '5 años', NULL, NULL);

--Activos_P / activo h1 
INSERT INTO `activo_p` (`id_padre`, `codigo`, `id_nombre`, `id_estado`, `marca`, `id_empresa`, `id_proveedor`, `tiempo_de_vida`, `modelo`, `numero_serie`) 
VALUES ('13', 'CPU00001', '8', '1', 'ADVANCE', '1', '4', '4', 'VISSION VS7377', 'GD160248780040');
INSERT INTO `activo_p` (`id_padre`, `codigo`, `id_nombre`, `id_estado`, `marca`, `id_empresa`, `id_proveedor`, `tiempo_de_vida`, `modelo`, `numero_serie`) VALUES 
('14', 'CPU00002', '8', '1', 'HP', '1', '4', '5', 'VISSION VS7377', 'GD1J0206240005'), ('15', 'CPU00003', '8', '1', 'COMPATIBLE', '3', '4', '4', NULL, NULL);
INSERT INTO `activo_h1` (`id_padre`, `ram`, `disco_duro`, `procesador`, `direccion_ip`, `direccion_mac`, `nombre_equipo`, `dominio`, `tarjeta_video`, `sistema_operativo`, `tipo_sistema`) VALUES 
('13', '8', '500', 'INTEL CORE I5 ', '172.16.7.5', '30-85-A9-42-94-D0', 'SB-BHUAMAN', 'FARORETAIL.LOCAL', NULL, 'W7 Profesional', '64'), 
('14', '4', '500', 'INTEL CORE I5 ', '172.16.7.6', '28-54-A4-42-94-D0', 'SB-MSEMINARIO', 'FARORETAIL.LOCAL', NULL, 'W7 Profesional', '32'), 
('15', '4', '500', 'INTEL CORE I5 ', '172.16.7.7', '46-85-A9-42-94-D0', 'SB-PHURTADO', 'FARORETAIL.LOCAL', NULL, 'W8.1  SINGLE LANGUAGE', '64');


--Activos_P / activos h2
INSERT INTO `activo_p` (`id_padre`, `codigo`, `id_nombre`, `id_estado`, `marca`, `id_empresa`, `id_proveedor`, `tiempo_de_vida`, `modelo`, `numero_serie`) VALUES 
('18', 'MONI00001', '10', '1', 'ADVANCE', '1', '4', '3', 'A-195MS', 'ADVAN16V0302328'), 
('19', 'MONI00002', '10', '1', 'ADVANCE', '1', '4', '3', 'A-195MS', 'ADVAN16V0300090');
INSERT INTO `activo_h2` (`id_padre`, `pulgadas`) VALUES ('18', '19'), ('19', '22');

--Activos_P / activos h3

INSERT INTO `activo_p` (`id_padre`, `codigo`, `id_nombre`, `id_estado`, `marca`, `id_empresa`, `id_proveedor`, `tiempo_de_vida`, `modelo`, `numero_serie`) VALUES 
('20', 'TECL00001', '11', '1', 'ADVANCE', '1', '4', '4', '5137AU', 'G0160017232'), 
('21', 'TICK00001', '15', '2', 'BIXOLON', '2', '4', '5', '5137AU', 'G0160015847');
INSERT INTO `activo_h3` (`id_padre`, `tipo_puerto`) VALUES ('20', 'usb'), ('21', 'lpt');



--Activos_P / activos h4

INSERT INTO `activo_p` (`id_padre`, `codigo`, `id_nombre`, `id_estado`, `marca`, `id_empresa`, `id_proveedor`, `tiempo_de_vida`, `modelo`, `numero_serie`) VALUES 
('22', 'ESTA00001', '19', '1', 'OMEGA', '1', '4', '10', 'PCG 1300', '06513312004842DNN'), 
('23', 'ROUT00001', '24', '1', 'OLO', '1', '4', '10', 'SWC-9100', 'PEML1524C9100-0003610');
INSERT INTO `activo_h4` (`id_padre`, `cantidad_puertos`, `mac`) VALUES ('22', '4', NULL), ('23', '2', '2107332910');

--Activos_P / activos h5

INSERT INTO `activo_p` (`id_padre`, `codigo`, `id_nombre`, `id_estado`, `marca`, `id_empresa`, `id_proveedor`, `tiempo_de_vida`, `modelo`, `numero_serie`) VALUES 
('24', 'USB00001', '27', '1', 'HP', '1', '4', '3', NULL, NULL), 
('25', 'DIDU00001', '33', '1', 'HP', '1', '4', NULL, '6G SATA 7.2K 3.5in SC MDL HDD', '2Y561511DB');
INSERT INTO `activo_h5` (`id_padre`, `tamaño_espacio`) VALUES ('24', '5'), ('25', '500');

--Activos_P / activos h6
INSERT INTO `activo_p` (`id_padre`, `codigo`, `id_nombre`, `id_estado`, `marca`, `id_empresa`, `id_proveedor`, `tiempo_de_vida`, `modelo`, `numero_serie`) VALUES 
('26', 'SCAN00001', '22', '1', 'SYMBOL', '1', '4', '3', 'LI4279', '1608200506208'), 
('27', 'SCAN00002', '22', '1', 'SYMBOL', '1', '4', '3', 'LI4280', '1608200505705');
INSERT INTO `activo_h6` (`id_padre`, `numero_serie_base`, `tipo`) VALUES ('26', 'PC47DCC281B24', 'inalambrica'), 
('27', 'PC47DCC281B5F', 'con cable');