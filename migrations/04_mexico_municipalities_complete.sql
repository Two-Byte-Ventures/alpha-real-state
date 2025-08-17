
-- 04_mexico_municipalities_complete.sql
-- Complete municipalities data load for Mexico
-- This script loads ALL municipalities from the municipalities.json file
-- 
-- Municipality IDs from JSON are preserved as-is using composite primary key (country_id, state_id, id)
-- This allows the same municipality ID to exist in different states

BEGIN;

-- Insert all municipalities from municipalities.json file
-- Municipality IDs from JSON are preserved exactly as they are
-- Using composite primary key (country_id, state_id, id) allows same ID in different countries/states

-- State 1 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Aguascalientes', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Asientos', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Calvillo', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Cosío', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Jesús María', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Pabellón de Arteaga', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Rincón de Romos', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'San José de Gracia', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Tepezalá', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'El Llano', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'San Francisco de los Romo', 1, 1) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 2 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Ensenada', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Mexicali', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Tecate', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Tijuana', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Playas de Rosarito', 1, 2) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 3 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Comondú', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Mulegé', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'La Paz', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Los Cabos', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Loreto', 1, 3) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 4 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Calkiní', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Campeche', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Carmen', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Champotón', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Hecelchakán', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Hopelchén', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Palizada', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Tenabo', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Escárcega', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Calakmul', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Candelaria', 1, 4) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 5 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Abasolo', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acuña', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Allende', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Arteaga', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Candela', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Castaños', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Cuatro Ciénegas', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Escobedo', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Francisco I. Madero', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Frontera', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'General Cepeda', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Guerrero', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Hidalgo', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Jiménez', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Juárez', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Lamadrid', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Matamoros', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Monclova', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Morelos', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Múzquiz', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Nadadores', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Nava', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Ocampo', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Parras', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Piedras Negras', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Progreso', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Ramos Arizpe', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Sabinas', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Sacramento', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Saltillo', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'San Buenaventura', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'San Juan de Sabinas', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'San Pedro', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Sierra Mojada', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Torreón', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Viesca', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Villa Unión', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Zaragoza', 1, 5) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 6 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Armería', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Colima', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Comala', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Coquimatlán', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Cuauhtémoc', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Ixtlahuacán', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Manzanillo', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Minatitlán', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Tecomán', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Villa de Álvarez', 1, 6) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 7 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Acacoyagua', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acala', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Acapetahua', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Altamirano', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Amatán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Amatenango de la Frontera', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Amatenango del Valle', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Angel Albino Corzo', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Arriaga', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Bejucal de Ocampo', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Bella Vista', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Berriozábal', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Bochil', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'El Bosque', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Cacahoatán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Catazajá', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Cintalapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Coapilla', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Comitán de Domínguez', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'La Concordia', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Copainalá', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Chalchihuitán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Chamula', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Chanal', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Chapultenango', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Chenalhó', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Chiapa de Corzo', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Chiapilla', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Chicoasén', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Chicomuselo', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Chilón', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Escuintla', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Francisco León', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Frontera Comalapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Frontera Hidalgo', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'La Grandeza', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Huehuetán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Huixtán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Huitiupán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Huixtla', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'La Independencia', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Ixhuatán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Ixtacomitán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Ixtapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Ixtapangajoya', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Jiquipilas', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Jitotol', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Juárez', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Larráinzar', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'La Libertad', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Mapastepec', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Las Margaritas', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Mazapa de Madero', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Mazatán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Metapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Mitontic', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Motozintla', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Nicolás Ruíz', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Ocosingo', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Ocotepec', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Ocozocoautla de Espinosa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Ostuacán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Osumacinta', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Oxchuc', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Palenque', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Pantelhó', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Pantepec', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Pichucalco', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'Pijijiapan', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'El Porvenir', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Villa Comaltitlán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'Pueblo Nuevo Solistahuacán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'Rayón', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'Reforma', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'Las Rosas', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'Sabanilla', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'Salto de Agua', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'San Cristóbal de las Casas', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'San Fernando', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'Siltepec', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'Simojovel', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(82, 'Sitalá', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(83, 'Socoltenango', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(84, 'Solosuchiapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(85, 'Soyaló', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(86, 'Suchiapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(87, 'Suchiate', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(88, 'Sunuapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(89, 'Tapachula', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(90, 'Tapalapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(91, 'Tapilula', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(92, 'Tecpatán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(93, 'Tenejapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(94, 'Teopisca', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(96, 'Tila', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(97, 'Tonalá', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(98, 'Totolapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(99, 'La Trinitaria', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(100, 'Tumbalá', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(101, 'Tuxtla Gutiérrez', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(102, 'Tuxtla Chico', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(103, 'Tuzantán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(104, 'Tzimol', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(105, 'Unión Juárez', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(106, 'Venustiano Carranza', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(107, 'Villa Corzo', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(108, 'Villaflores', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(109, 'Yajalón', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(110, 'San Lucas', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(111, 'Zinacantán', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(112, 'San Juan Cancuc', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(113, 'Aldama', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(114, 'Benemérito de las Américas', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(115, 'Maravilla Tenejapa', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(116, 'Marqués de Comillas', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(117, 'Montecristo de Guerrero', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(118, 'San Andrés Duraznal', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(119, 'Santiago el Pinar', 1, 7) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 8 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Ahumada', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Aldama', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Allende', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Aquiles Serdán', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Ascensión', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Bachíniva', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Balleza', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Batopilas', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Bocoyna', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Buenaventura', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Camargo', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Carichí', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Casas Grandes', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Coronado', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Coyame del Sotol', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'La Cruz', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Cuauhtémoc', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Cusihuiriachi', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Chihuahua', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Chínipas', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Delicias', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Dr. Belisario Domínguez', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Galeana', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Santa Isabel', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Gómez Farías', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Gran Morelos', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Guachochi', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Guadalupe', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Guadalupe y Calvo', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Guazapares', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Guerrero', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Hidalgo del Parral', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Huejotitán', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Ignacio Zaragoza', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Janos', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Jiménez', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Juárez', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Julimes', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'López', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Madera', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Maguarichi', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Manuel Benavides', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Matachí', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Matamoros', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Meoqui', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Morelos', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Moris', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Namiquipa', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Nonoava', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Nuevo Casas Grandes', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Ocampo', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Ojinaga', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Praxedis G. Guerrero', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Riva Palacio', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Rosales', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Rosario', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'San Francisco de Borja', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'San Francisco de Conchos', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'San Francisco del Oro', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Santa Bárbara', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Satevó', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Saucillo', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Temósachic', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'El Tule', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Urique', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Uruachi', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Valle de Zaragoza', 1, 8) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 9 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Azcapotzalco', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Coyoacán', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Cuajimalpa de Morelos', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Gustavo A. Madero', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Iztacalco', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Iztapalapa', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'La Magdalena Contreras', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Milpa Alta', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Álvaro Obregón', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Tláhuac', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Tlalpan', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Xochimilco', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Benito Juárez', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Cuauhtémoc', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Miguel Hidalgo', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Venustiano Carranza', 1, 9) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 10 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Canatlán', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Canelas', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Coneto de Comonfort', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Cuencamé', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Durango', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'General Simón Bolívar', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Gómez Palacio', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Guadalupe Victoria', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Guanaceví', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Hidalgo', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Indé', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Lerdo', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Mapimí', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Mezquital', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Nazas', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Nombre de Dios', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Ocampo', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'El Oro', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Otáez', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Pánuco de Coronado', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Peñón Blanco', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Poanas', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Pueblo Nuevo', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Rodeo', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'San Bernardo', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'San Dimas', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'San Juan de Guadalupe', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'San Juan del Río', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'San Luis del Cordero', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'San Pedro del Gallo', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Santa Clara', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Santiago Papasquiaro', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Súchil', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Tamazula', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Tepehuanes', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Tlahualilo', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Topia', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Vicente Guerrero', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Nuevo Ideal', 1, 10) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 11 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Abasolo', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acámbaro', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'San Miguel de Allende', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Apaseo el Alto', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Apaseo el Grande', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Atarjea', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Celaya', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Manuel Doblado', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Comonfort', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Coroneo', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Cortazar', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Cuerámaro', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Doctor Mora', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Dolores Hidalgo Cuna de la Independencia Nacional', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Guanajuato', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Huanímaro', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Irapuato', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Jaral del Progreso', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Jerécuaro', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'León', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Moroleón', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Ocampo', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Pénjamo', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Pueblo Nuevo', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Purísima del Rincón', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Romita', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Salamanca', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Salvatierra', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'San Diego de la Unión', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'San Felipe', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'San Francisco del Rincón', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'San José Iturbide', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'San Luis de la Paz', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Santa Catarina', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Santa Cruz de Juventino Rosas', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Santiago Maravatío', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Silao', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Tarandacuao', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Tarimoro', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Tierra Blanca', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Uriangato', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Valle de Santiago', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Victoria', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Villagrán', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Xichú', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Yuriria', 1, 11) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 12 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Acapulco de Juárez', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Ahuacuotzingo', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Ajuchitlán del Progreso', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Alcozauca de Guerrero', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Alpoyeca', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Apaxtla', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Arcelia', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Atenango del Río', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Atlamajalcingo del Monte', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Atlixtac', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Atoyac de Álvarez', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Ayutla de los Libres', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Azoyú', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Benito Juárez', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Buenavista de Cuéllar', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Coahuayutla de José María Izazaga', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Cocula', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Copala', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Copalillo', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Copanatoyac', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Coyuca de Benítez', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Coyuca de Catalán', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Cuajinicuilapa', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Cualác', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Cuautepec', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Cuetzala del Progreso', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Cutzamala de Pinzón', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Chilapa de Álvarez', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Chilpancingo de los Bravo', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Florencio Villarreal', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'General Canuto A. Neri', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'General Heliodoro Castillo', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Huamuxtitlán', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Huitzuco de los Figueroa', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Iguala de la Independencia', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Igualapa', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Ixcateopan de Cuauhtémoc', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Zihuatanejo de Azueta', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Juan R. Escudero', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Leonardo Bravo', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Malinaltepec', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Mártir de Cuilapan', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Metlatónoc', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Mochitlán', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Olinalá', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Ometepec', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Pedro Ascencio Alquisiras', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Petatlán', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Pilcaya', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Pungarabato', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Quechultenango', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'San Luis Acatlán', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'San Marcos', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'San Miguel Totolapan', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Taxco de Alarcón', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Tecoanapa', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Técpan de Galeana', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Teloloapan', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Tepecoacuilco de Trujano', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Tetipac', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Tixtla de Guerrero', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Tlacoachistlahuaca', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Tlacoapa', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Tlalchapa', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Tlalixtaquilla de Maldonado', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Tlapa de Comonfort', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Tlapehuala', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'La Unión de Isidoro Montes de Oca', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'Xalpatláhuac', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'Xochihuehuetlán', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Xochistlahuaca', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'Zapotitlán Tablas', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'Zirándaro', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'Zitlala', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'Eduardo Neri', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'Acatepec', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'Marquelia', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'Cochoapa el Grande', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'José Joaquin de Herrera', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'Juchitán', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'Iliatenco', 1, 12) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 13 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Acatlán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acaxochitlán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Actopan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Agua Blanca de Iturbide', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Ajacuba', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Alfajayucan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Almoloya', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Apan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'El Arenal', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Atitalaquia', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Atlapexco', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Atotonilco el Grande', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Atotonilco de Tula', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Calnali', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Cardonal', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Cuautepec de Hinojosa', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Chapantongo', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Chapulhuacán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Chilcuautla', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Eloxochitlán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Emiliano Zapata', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Epazoyucan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Francisco I. Madero', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Huasca de Ocampo', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Huautla', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Huazalingo', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Huehuetla', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Huejutla de Reyes', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Huichapan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Ixmiquilpan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Jacala de Ledezma', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Jaltocán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Juárez Hidalgo', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Lolotla', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Metepec', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'San Agustín Metzquititlán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Metztitlán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Mineral del Chico', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Mineral del Monte', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'La Misión', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Mixquiahuala de Juárez', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Molango de Escamilla', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Nicolás Flores', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Nopala de Villagrán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Omitlán de Juárez', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'San Felipe Orizatlán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Pacula', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Pachuca de Soto', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Pisaflores', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Progreso de Obregón', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Mineral de la Reforma', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'San Agustín Tlaxiaca', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'San Bartolo Tutotepec', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'San Salvador', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Santiago de Anaya', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Santiago Tulantepec de Lugo Guerrero', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Singuilucan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Tasquillo', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Tecozautla', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Tenango de Doria', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Tepeapulco', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Tepehuacán de Guerrero', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Tepeji del Río de Ocampo', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Tepetitlán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Tetepango', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Villa de Tezontepec', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Tezontepec de Aldama', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Tianguistengo', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'Tizayuca', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'Tlahuelilpan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Tlahuiltepa', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'Tlanalapa', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'Tlanchinol', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'Tlaxcoapan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'Tolcayuca', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'Tula de Allende', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'Tulancingo de Bravo', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'Xochiatipan', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'Xochicoatlán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'Yahualica', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'Zacualtipán de Ángeles', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(82, 'Zapotlán de Juárez', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(83, 'Zempoala', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(84, 'Zimapán', 1, 13) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 14 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Acatic', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acatlán de Juárez', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Ahualulco de Mercado', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Amacueca', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Amatitán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Ameca', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'San Juanito de Escobedo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Arandas', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'El Arenal', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Atemajac de Brizuela', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Atengo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Atenguillo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Atotonilco el Alto', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Atoyac', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Autlán de Navarro', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Ayotlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Ayutla', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'La Barca', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Bolaños', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Cabo Corrientes', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Casimiro Castillo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Cihuatlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Zapotlán el Grande', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Cocula', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Colotlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Concepción de Buenos Aires', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Cuautitlán de García Barragán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Cuautla', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Cuquío', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Chapala', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Chimaltitán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Chiquilistlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Degollado', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Ejutla', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Encarnación de Díaz', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Etzatlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'El Grullo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Guachinango', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Guadalajara', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Hostotipaquillo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Huejúcar', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Huejuquilla el Alto', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'La Huerta', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Ixtlahuacán de los Membrillos', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Ixtlahuacán del Río', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Jalostotitlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Jamay', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Jesús María', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Jilotlán de los Dolores', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Jocotepec', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Juanacatlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Juchitlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Lagos de Moreno', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'El Limón', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Magdalena', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Santa María del Oro', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'La Manzanilla de la Paz', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Mascota', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Mazamitla', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Mexticacán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Mezquitic', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Mixtlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Ocotlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Ojuelos de Jalisco', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Pihuamo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Poncitlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Puerto Vallarta', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Villa Purificación', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'Quitupan', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'El Salto', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'San Cristóbal de la Barranca', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'San Diego de Alejandría', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'San Juan de los Lagos', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'San Julián', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'San Marcos', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'San Martín de Bolaños', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'San Martín Hidalgo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'San Miguel el Alto', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'Gómez Farías', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'San Sebastián del Oeste', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'Santa María de los Ángeles', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(82, 'Sayula', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(83, 'Tala', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(84, 'Talpa de Allende', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(85, 'Tamazula de Gordiano', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(86, 'Tapalpa', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(87, 'Tecalitlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(88, 'Tecolotlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(89, 'Techaluta de Montenegro', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(90, 'Tenamaxtlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(91, 'Teocaltiche', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(92, 'Teocuitatlán de Corona', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(93, 'Tepatitlán de Morelos', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(94, 'Tequila', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(95, 'Teuchitlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(96, 'Tizapán el Alto', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(97, 'Tlajomulco de Zúñiga', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(98, 'Tlaquepaque', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(99, 'Tolimán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(100, 'Tomatlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(101, 'Tonalá', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(102, 'Tonaya', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(103, 'Tonila', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(104, 'Totatiche', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(105, 'Tototlán', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(106, 'Tuxcacuesco', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(107, 'Tuxcueca', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(108, 'Tuxpan', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(109, 'Unión de San Antonio', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(110, 'Unión de Tula', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(111, 'Valle de Guadalupe', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(112, 'Valle de Juárez', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(113, 'San Gabriel', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(114, 'Villa Corona', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(115, 'Villa Guerrero', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(116, 'Villa Hidalgo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(117, 'Cañadas de Obregón', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(118, 'Yahualica de González Gallo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(119, 'Zacoalco de Torres', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(120, 'Zapopan', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(121, 'Zapotiltic', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(122, 'Zapotitlán de Vadillo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(123, 'Zapotlán del Rey', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(124, 'Zapotlanejo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(125, 'San Ignacio Cerro Gordo', 1, 14) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 15 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Acambay', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acolman', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Aculco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Almoloya de Alquisiras', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Almoloya de Juárez', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Almoloya del Río', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Amanalco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Amatepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Amecameca', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Apaxco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Atenco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Atizapán de Zaragoza', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Atlacomulco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Atlautla', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Axapusco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Ayapango', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Calimaya', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Capulhuac', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Coacalco de Berriozábal', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Coatepec Harinas', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Cocotitlán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Coyotepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Cuautitlán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Chalco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Chapa de Mota', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Chapultepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Chiautla', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Chicoloapan', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Chiconcuac', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Chimalhuacán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Donato Guerra', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Ecatepec de Morelos', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Ecatzingo', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Huehuetoca', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Hueypoxtla', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Huixquilucan', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Isidro Fabela', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Ixtapaluca', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Ixtapan de la Sal', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Ixtapan del Oro', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Ixtlahuaca', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Xalatlaco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Jilotepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Jilotzingo', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Jiquipilco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Jocotitlán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Joquicingo', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Juchitepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Lerma', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Malinalco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Melchor Ocampo', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Metepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Mexicaltzingo', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Morelos', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Naucalpan de Juárez', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Nezahualcóyotl', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Nextlalpan', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Nicolás Romero', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Nopaltepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Ocoyoacac', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Ocuilan', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'El Oro', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Otumba', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Otzoloapan', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Otzolotepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Ozumba', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'La Paz', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Polotitlán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'Rayón', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'San Antonio la Isla', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'San Felipe del Progreso', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'San Martín de las Pirámides', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'San Mateo Atenco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'San Simón de Guerrero', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'Santo Tomás', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'Soyaniquilpan de Juárez', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'Sultepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'Tecámac', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(82, 'Tejupilco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(83, 'Temamatla', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(84, 'Temascalapa', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(85, 'Temascalcingo', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(86, 'Temascaltepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(87, 'Temoaya', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(88, 'Tenancingo', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(89, 'Tenango del Aire', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(90, 'Tenango del Valle', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(91, 'Teoloyucan', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(92, 'Teotihuacán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(93, 'Tepetlaoxtoc', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(94, 'Tepetlixpa', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(95, 'Tepotzotlán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(96, 'Tequixquiac', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(97, 'Texcaltitlán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(98, 'Texcalyacac', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(99, 'Texcoco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(100, 'Tezoyuca', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(101, 'Tianguistenco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(102, 'Timilpan', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(103, 'Tlalmanalco', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(104, 'Tlalnepantla de Baz', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(105, 'Tlatlaya', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(106, 'Toluca', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(107, 'Tonatico', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(108, 'Tultepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(109, 'Tultitlán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(110, 'Valle de Bravo', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(111, 'Villa de Allende', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(112, 'Villa del Carbón', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(113, 'Villa Guerrero', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(114, 'Villa Victoria', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(115, 'Xonacatlán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(116, 'Zacazonapan', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(117, 'Zacualpan', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(118, 'Zinacantepec', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(119, 'Zumpahuacán', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(120, 'Zumpango', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(121, 'Cuautitlán Izcalli', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(122, 'Valle de Chalco Solidaridad', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(123, 'Luvianos', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(124, 'San José del Rincón', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(125, 'Tonanitla', 1, 15) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 16 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Acuitzio', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Aguililla', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Álvaro Obregón', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Angamacutiro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Angangueo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Apatzingán', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Aporo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Aquila', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Ario', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Arteaga', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Briseñas', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Buenavista', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Carácuaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Coahuayana', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Coalcomán de Vázquez Pallares', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Coeneo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Contepec', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Copándaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Cotija', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Cuitzeo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Charapan', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Charo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Chavinda', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Cherán', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Chilchota', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Chinicuila', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Chucándiro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Churintzio', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Churumuco', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Ecuandureo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Epitacio Huerta', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Erongarícuaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Gabriel Zamora', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Hidalgo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'La Huacana', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Huandacareo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Huaniqueo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Huetamo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Huiramba', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Indaparapeo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Irimbo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Ixtlán', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Jacona', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Jiménez', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Jiquilpan', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Juárez', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Jungapeo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Lagunillas', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Madero', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Maravatío', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Marcos Castellanos', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Lázaro Cárdenas', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Morelia', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Morelos', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Múgica', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Nahuatzen', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Nocupétaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Nuevo Parangaricutiro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Nuevo Urecho', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Numarán', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Ocampo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Pajacuarán', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Panindícuaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Parácuaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Paracho', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Pátzcuaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Penjamillo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Peribán', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'La Piedad', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'Purépero', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Puruándiro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'Queréndaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'Quiroga', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'Cojumatlán de Régules', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'Los Reyes', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'Sahuayo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'San Lucas', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'Santa Ana Maya', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'Salvador Escalante', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'Senguio', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'Susupuato', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(82, 'Tacámbaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(83, 'Tancítaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(84, 'Tangamandapio', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(85, 'Tangancícuaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(86, 'Tanhuato', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(87, 'Taretan', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(88, 'Tarímbaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(89, 'Tepalcatepec', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(90, 'Tingambato', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(91, 'Tingüindín', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(92, 'Tiquicheo de Nicolás Romero', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(93, 'Tlalpujahua', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(94, 'Tlazazalca', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(95, 'Tocumbo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(96, 'Tumbiscatío', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(97, 'Turicato', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(98, 'Tuxpan', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(99, 'Tuzantla', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(100, 'Tzintzuntzan', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(101, 'Tzitzio', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(102, 'Uruapan', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(103, 'Venustiano Carranza', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(104, 'Villamar', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(105, 'Vista Hermosa', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(106, 'Yurécuaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(107, 'Zacapu', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(108, 'Zamora', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(109, 'Zináparo', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(110, 'Zinapécuaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(111, 'Ziracuaretiro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(112, 'Zitácuaro', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(113, 'José Sixto Verduzco', 1, 16) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 17 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Amacuzac', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Atlatlahucan', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Axochiapan', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Ayala', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Coatlán del Río', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Cuautla', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Cuernavaca', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Emiliano Zapata', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Huitzilac', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Jantetelco', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Jiutepec', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Jojutla', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Jonacatepec', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Mazatepec', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Miacatlán', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Ocuituco', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Puente de Ixtla', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Temixco', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Tepalcingo', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Tepoztlán', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Tetecala', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Tetela del Volcán', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Tlalnepantla', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Tlaltizapán', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Tlaquiltenango', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Tlayacapan', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Totolapan', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Xochitepec', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Yautepec', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Yecapixtla', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Zacatepec', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Zacualpan', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Temoac', 1, 17) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 18 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Acaponeta', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Ahuacatlán', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Amatlán de Cañas', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Compostela', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Huajicori', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Ixtlán del Río', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Jala', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Xalisco', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Del Nayar', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Rosamorada', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Ruíz', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'San Blas', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'San Pedro Lagunillas', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Santa María del Oro', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Santiago Ixcuintla', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Tecuala', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Tepic', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Tuxpan', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'La Yesca', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Bahía de Banderas', 1, 18) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 19 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Abasolo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Agualeguas', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Los Aldamas', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Allende', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Anáhuac', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Apodaca', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Aramberri', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Bustamante', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Cadereyta Jiménez', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Carmen', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Cerralvo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Ciénega de Flores', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'China', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Dr. Arroyo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Dr. Coss', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Dr. González', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Galeana', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'García', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'San Pedro Garza García', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Gral. Bravo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Gral. Escobedo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Gral. Terán', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Gral. Treviño', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Gral. Zaragoza', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Gral. Zuazua', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Guadalupe', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Los Herreras', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Higueras', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Hualahuises', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Iturbide', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Juárez', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Lampazos de Naranjo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Linares', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Marín', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Melchor Ocampo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Mier y Noriega', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Mina', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Montemorelos', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Monterrey', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Parás', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Pesquería', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Los Ramones', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Rayones', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Sabinas Hidalgo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Salinas Victoria', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'San Nicolás de los Garza', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Hidalgo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Santa Catarina', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Santiago', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Vallecillo', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Villaldama', 1, 19) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 20 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Abejones', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acatlán de Pérez Figueroa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Asunción Cacalotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Asunción Cuyotepeji', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Asunción Ixtaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Asunción Nochixtlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Asunción Tlacolulita', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Ayotzintepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'El Barrio de la Soledad', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Calihualá', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Candelaria Loxicha', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Ciénega de Zimatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Ciudad Ixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Coatecas Altas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Coicoyán de las Flores', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'La Compañía', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Concepción Buenavista', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Concepción Pápalo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Constancia del Rosario', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Cosolapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Cosoltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Cuilápam de Guerrero', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Cuyamecalco Villa de Zaragoza', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Chahuites', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Chalcatongo de Hidalgo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Chiquihuitlán de Benito Juárez', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Heroica Ciudad de Ejutla de Crespo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Eloxochitlán de Flores Magón', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'El Espinal', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Tamazulápam del Espíritu Santo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Fresnillo de Trujano', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Guadalupe Etla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Guadalupe de Ramírez', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Guevea de Humboldt', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Mesones Hidalgo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Villa Hidalgo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Heroica Ciudad de Huajuapan de León', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Huautepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Huautla de Jiménez', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Ixtlán de Juárez', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Heroica Ciudad de Juchitán de Zaragoza', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Loma Bonita', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Magdalena Apasco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Magdalena Jaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Santa Magdalena Jicotlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Magdalena Mixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Magdalena Ocotlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Magdalena Peñasco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Magdalena Teitipac', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Magdalena Tequisistlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Magdalena Tlacotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Magdalena Zahuatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Mariscala de Juárez', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Mártires de Tacubaya', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Matías Romero Avendaño', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Mazatlán Villa de Flores', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Miahuatlán de Porfirio Díaz', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Mixistlán de la Reforma', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Monjas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Nejapa de Madero', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Ixpantepec Nieves', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Santiago Niltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Oaxaca de Juárez', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Ocotlán de Morelos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'La Pe', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'Pinotepa de Don Luis', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Pluma Hidalgo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'San José del Progreso', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'Putla Villa de Guerrero', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'Santa Catarina Quioquitani', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'Reforma de Pineda', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'La Reforma', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'Reyes Etla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'Rojas de Cuauhtémoc', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'Salina Cruz', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'San Agustín Amatengo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'San Agustín Atenango', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(82, 'San Agustín Chayuco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(83, 'San Agustín de las Juntas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(84, 'San Agustín Etla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(85, 'San Agustín Loxicha', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(86, 'San Agustín Tlacotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(87, 'San Agustín Yatareni', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(88, 'San Andrés Cabecera Nueva', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(89, 'San Andrés Dinicuiti', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(90, 'San Andrés Huaxpaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(91, 'San Andrés Huayápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(92, 'San Andrés Ixtlahuaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(93, 'San Andrés Lagunas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(94, 'San Andrés Nuxiño', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(95, 'San Andrés Paxtlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(96, 'San Andrés Sinaxtla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(97, 'San Andrés Solaga', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(98, 'San Andrés Teotilálpam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(99, 'San Andrés Tepetlapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(100, 'San Andrés Yaá', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(101, 'San Andrés Zabache', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(102, 'San Andrés Zautla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(103, 'San Antonino Castillo Velasco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(104, 'San Antonino el Alto', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(105, 'San Antonino Monte Verde', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(106, 'San Antonio Acutla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(107, 'San Antonio de la Cal', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(108, 'San Antonio Huitepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(109, 'San Antonio Nanahuatípam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(110, 'San Antonio Sinicahua', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(111, 'San Antonio Tepetlapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(112, 'San Baltazar Chichicápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(113, 'San Baltazar Loxicha', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(114, 'San Baltazar Yatzachi el Bajo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(115, 'San Bartolo Coyotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(116, 'San Bartolomé Ayautla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(117, 'San Bartolomé Loxicha', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(118, 'San Bartolomé Quialana', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(119, 'San Bartolomé Yucuañe', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(120, 'San Bartolomé Zoogocho', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(121, 'San Bartolo Soyaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(122, 'San Bartolo Yautepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(123, 'San Bernardo Mixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(124, 'San Blas Atempa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(125, 'San Carlos Yautepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(126, 'San Cristóbal Amatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(127, 'San Cristóbal Amoltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(128, 'San Cristóbal Lachirioag', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(129, 'San Cristóbal Suchixtlahuaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(130, 'San Dionisio del Mar', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(131, 'San Dionisio Ocotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(132, 'San Dionisio Ocotlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(133, 'San Esteban Atatlahuca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(134, 'San Felipe Jalapa de Díaz', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(135, 'San Felipe Tejalápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(136, 'San Felipe Usila', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(137, 'San Francisco Cahuacuá', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(138, 'San Francisco Cajonos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(139, 'San Francisco Chapulapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(140, 'San Francisco Chindúa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(141, 'San Francisco del Mar', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(142, 'San Francisco Huehuetlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(143, 'San Francisco Ixhuatán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(144, 'San Francisco Jaltepetongo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(145, 'San Francisco Lachigoló', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(146, 'San Francisco Logueche', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(147, 'San Francisco Nuxaño', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(148, 'San Francisco Ozolotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(149, 'San Francisco Sola', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(150, 'San Francisco Telixtlahuaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(151, 'San Francisco Teopan', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(152, 'San Francisco Tlapancingo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(153, 'San Gabriel Mixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(154, 'San Ildefonso Amatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(155, 'San Ildefonso Sola', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(156, 'San Ildefonso Villa Alta', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(158, 'San Jacinto Tlacotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(159, 'San Jerónimo Coatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(160, 'San Jerónimo Silacayoapilla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(161, 'San Jerónimo Sosola', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(162, 'San Jerónimo Taviche', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(163, 'San Jerónimo Tecóatl', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(164, 'San Jorge Nuchita', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(165, 'San José Ayuquila', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(166, 'San José Chiltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(167, 'San José del Peñasco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(168, 'San José Estancia Grande', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(169, 'San José Independencia', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(170, 'San José Lachiguiri', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(171, 'San José Tenango', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(172, 'San Juan Achiutla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(173, 'San Juan Atepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(175, 'San Juan Bautista Atatlahuca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(176, 'San Juan Bautista Coixtlahuaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(177, 'San Juan Bautista Cuicatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(178, 'San Juan Bautista Guelache', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(179, 'San Juan Bautista Jayacatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(180, 'San Juan Bautista Lo de Soto', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(181, 'San Juan Bautista Suchitepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(182, 'San Juan Bautista Tlacoatzintepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(183, 'San Juan Bautista Tlachichilco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(184, 'San Juan Bautista Tuxtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(185, 'San Juan Cacahuatepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(186, 'San Juan Cieneguilla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(187, 'San Juan Coatzóspam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(188, 'San Juan Colorado', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(189, 'San Juan Comaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(190, 'San Juan Cotzocón', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(191, 'San Juan Chicomezúchil', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(193, 'San Juan del Estado', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(194, 'San Juan del Río', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(195, 'San Juan Diuxi', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(196, 'San Juan Evangelista Analco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(197, 'San Juan Guelavía', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(198, 'San Juan Guichicovi', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(199, 'San Juan Ihualtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(200, 'San Juan Juquila Mixes', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(201, 'San Juan Juquila Vijanos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(202, 'San Juan Lachao', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(203, 'San Juan Lachigalla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(204, 'San Juan Lajarcia', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(205, 'San Juan Lalana', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(206, 'San Juan de los Cués', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(207, 'San Juan Mazatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(208, 'San Juan Mixtepec -Dto. 08 -', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(209, 'San Juan Mixtepec -Dto. 26 -', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(210, 'San Juan Ñumí', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(211, 'San Juan Ozolotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(212, 'San Juan Petlapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(213, 'San Juan Quiahije', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(214, 'San Juan Quiotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(215, 'San Juan Sayultepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(216, 'San Juan Tabaá', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(217, 'San Juan Tamazola', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(218, 'San Juan Teita', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(219, 'San Juan Teitipac', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(220, 'San Juan Tepeuxila', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(221, 'San Juan Teposcolula', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(222, 'San Juan Yaeé', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(223, 'San Juan Yatzona', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(224, 'San Juan Yucuita', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(225, 'San Lorenzo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(226, 'San Lorenzo Albarradas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(227, 'San Lorenzo Cacaotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(228, 'San Lorenzo Cuaunecuiltitla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(229, 'San Lorenzo Texmelúcan', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(230, 'San Lorenzo Victoria', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(231, 'San Lucas Camotlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(232, 'San Lucas Ojitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(233, 'San Lucas Quiaviní', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(234, 'San Lucas Zoquiápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(235, 'San Luis Amatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(236, 'San Marcial Ozolotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(237, 'San Marcos Arteaga', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(238, 'San Martín de los Cansecos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(239, 'San Martín Huamelúlpam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(240, 'San Martín Itunyoso', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(241, 'San Martín Lachilá', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(242, 'San Martín Peras', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(243, 'San Martín Tilcajete', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(244, 'San Martín Toxpalan', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(245, 'San Martín Zacatepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(246, 'San Mateo Cajonos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(247, 'Capulálpam de Méndez', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(248, 'San Mateo del Mar', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(249, 'San Mateo Yoloxochitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(250, 'San Mateo Etlatongo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(251, 'San Mateo Nejápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(252, 'San Mateo Peñasco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(253, 'San Mateo Piñas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(254, 'San Mateo Río Hondo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(255, 'San Mateo Sindihui', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(256, 'San Mateo Tlapiltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(257, 'San Melchor Betaza', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(258, 'San Miguel Achiutla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(259, 'San Miguel Ahuehuetitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(260, 'San Miguel Aloápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(261, 'San Miguel Amatitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(262, 'San Miguel Amatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(263, 'San Miguel Coatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(264, 'San Miguel Chicahua', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(265, 'San Miguel Chimalapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(266, 'San Miguel del Puerto', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(267, 'San Miguel del Río', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(268, 'San Miguel Ejutla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(269, 'San Miguel el Grande', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(270, 'San Miguel Huautla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(271, 'San Miguel Mixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(272, 'San Miguel Panixtlahuaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(273, 'San Miguel Peras', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(274, 'San Miguel Piedras', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(275, 'San Miguel Quetzaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(276, 'San Miguel Santa Flor', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(277, 'Villa Sola de Vega', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(278, 'San Miguel Soyaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(279, 'San Miguel Suchixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(280, 'Villa Talea de Castro', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(281, 'San Miguel Tecomatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(282, 'San Miguel Tenango', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(283, 'San Miguel Tequixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(284, 'San Miguel Tilquiápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(285, 'San Miguel Tlacamama', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(286, 'San Miguel Tlacotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(287, 'San Miguel Tulancingo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(288, 'San Miguel Yotao', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(289, 'San Nicolás', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(290, 'San Nicolás Hidalgo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(291, 'San Pablo Coatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(292, 'San Pablo Cuatro Venados', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(293, 'San Pablo Etla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(294, 'San Pablo Huitzo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(295, 'San Pablo Huixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(296, 'San Pablo Macuiltianguis', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(297, 'San Pablo Tijaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(298, 'San Pablo Villa de Mitla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(299, 'San Pablo Yaganiza', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(300, 'San Pedro Amuzgos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(301, 'San Pedro Apóstol', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(302, 'San Pedro Atoyac', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(304, 'San Pedro Coxcaltepec Cántaros', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(305, 'San Pedro Comitancillo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(306, 'San Pedro el Alto', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(307, 'San Pedro Huamelula', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(308, 'San Pedro Huilotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(309, 'San Pedro Ixcatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(310, 'San Pedro Ixtlahuaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(311, 'San Pedro Jaltepetongo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(312, 'San Pedro Jicayán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(313, 'San Pedro Jocotipac', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(314, 'San Pedro Juchatengo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(315, 'San Pedro Mártir', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(316, 'San Pedro Mártir Quiechapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(317, 'San Pedro Mártir Yucuxaco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(318, 'San Pedro Mixtepec -Dto. 22 -', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(319, 'San Pedro Mixtepec -Dto. 26 -', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(320, 'San Pedro Molinos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(321, 'San Pedro Nopala', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(322, 'San Pedro Ocopetatillo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(323, 'San Pedro Ocotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(324, 'San Pedro Pochutla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(325, 'San Pedro Quiatoni', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(326, 'San Pedro Sochiápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(327, 'San Pedro Tapanatepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(328, 'San Pedro Taviche', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(329, 'San Pedro Teozacoalco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(330, 'San Pedro Teutila', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(331, 'San Pedro Tidaá', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(332, 'San Pedro Topiltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(333, 'San Pedro Totolápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(334, 'Villa de Tututepec de Melchor Ocampo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(335, 'San Pedro Yaneri', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(336, 'San Pedro Yólox', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(337, 'San Pedro y San Pablo Ayutla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(338, 'Villa de Etla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(339, 'San Pedro y San Pablo Teposcolula', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(340, 'San Pedro y San Pablo Tequixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(341, 'San Pedro Yucunama', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(343, 'San Sebastián Abasolo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(344, 'San Sebastián Coatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(345, 'San Sebastián Ixcapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(346, 'San Sebastián Nicananduta', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(347, 'San Sebastián Río Hondo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(348, 'San Sebastián Tecomaxtlahuaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(349, 'San Sebastián Teitipac', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(350, 'San Sebastián Tutla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(351, 'San Simón Almolongas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(352, 'San Simón Zahuatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(353, 'Santa Ana', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(354, 'Santa Ana Ateixtlahuaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(355, 'Santa Ana Cuauhtémoc', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(356, 'Santa Ana del Valle', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(357, 'Santa Ana Tavela', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(358, 'Santa Ana Tlapacoyan', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(359, 'Santa Ana Yareni', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(360, 'Santa Ana Zegache', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(361, 'Santa Catalina Quierí', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(362, 'Santa Catarina Cuixtla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(363, 'Santa Catarina Ixtepeji', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(364, 'Santa Catarina Juquila', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(365, 'Santa Catarina Lachatao', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(366, 'Santa Catarina Loxicha', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(367, 'Santa Catarina Mechoacán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(368, 'Santa Catarina Minas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(369, 'Santa Catarina Quiané', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(370, 'Santa Catarina Tayata', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(371, 'Santa Catarina Ticuá', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(372, 'Santa Catarina Yosonotú', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(373, 'Santa Catarina Zapoquila', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(374, 'Santa Cruz Acatepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(376, 'Santa Cruz de Bravo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(377, 'Santa Cruz Itundujia', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(378, 'Santa Cruz Mixtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(379, 'Santa Cruz Nundaco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(380, 'Santa Cruz Papalutla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(381, 'Santa Cruz Tacache de Mina', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(382, 'Santa Cruz Tacahua', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(383, 'Santa Cruz Tayata', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(384, 'Santa Cruz Xitla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(385, 'Santa Cruz Xoxocotlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(386, 'Santa Cruz Zenzontepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(387, 'Santa Gertrudis', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(388, 'Santa Inés del Monte', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(390, 'Santa Lucía del Camino', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(391, 'Santa Lucía Miahuatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(392, 'Santa Lucía Monteverde', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(393, 'Santa Lucía Ocotlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(394, 'Santa María Alotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(395, 'Santa María Apazco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(396, 'Santa María la Asunción', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(397, 'Heroica Ciudad de Tlaxiaco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(398, 'Ayoquezco de Aldama', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(399, 'Santa María Atzompa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(400, 'Santa María Camotlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(401, 'Santa María Colotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(402, 'Santa María Cortijo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(403, 'Santa María Coyotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(404, 'Santa María Chachoápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(405, 'Villa de Chilapa de Díaz', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(406, 'Santa María Chilchotla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(407, 'Santa María Chimalapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(408, 'Santa María del Rosario', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(409, 'Santa María del Tule', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(410, 'Santa María Ecatepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(412, 'Santa María Guienagati', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(413, 'Santa María Huatulco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(414, 'Santa María Huazolotitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(415, 'Santa María Ipalapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(416, 'Santa María Ixcatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(417, 'Santa María Jacatepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(418, 'Santa María Jalapa del Marqués', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(419, 'Santa María Jaltianguis', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(420, 'Santa María Lachixío', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(421, 'Santa María Mixtequilla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(422, 'Santa María Nativitas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(423, 'Santa María Nduayaco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(424, 'Santa María Ozolotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(425, 'Santa María Pápalo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(426, 'Santa María Peñoles', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(427, 'Santa María Petapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(428, 'Santa María Quiegolani', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(429, 'Santa María Sola', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(430, 'Santa María Tataltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(431, 'Santa María Tecomavaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(432, 'Santa María Temaxcalapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(433, 'Santa María Temaxcaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(434, 'Santa María Teopoxco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(435, 'Santa María Tepantlali', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(436, 'Santa María Texcatitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(437, 'Santa María Tlahuitoltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(438, 'Santa María Tlalixtac', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(439, 'Santa María Tonameca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(440, 'Santa María Totolapilla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(441, 'Santa María Xadani', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(442, 'Santa María Yalina', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(443, 'Santa María Yavesía', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(444, 'Santa María Yolotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(445, 'Santa María Yosoyúa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(446, 'Santa María Yucuhiti', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(447, 'Santa María Zacatepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(448, 'Santa María Zaniza', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(449, 'Santa María Zoquitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(450, 'Santiago Amoltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(451, 'Santiago Apoala', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(452, 'Santiago Apóstol', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(453, 'Santiago Astata', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(454, 'Santiago Atitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(455, 'Santiago Ayuquililla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(456, 'Santiago Cacaloxtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(457, 'Santiago Camotlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(458, 'Santiago Comaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(459, 'Santiago Chazumba', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(460, 'Santiago Choápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(461, 'Santiago del Río', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(462, 'Santiago Huajolotitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(463, 'Santiago Huauclilla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(464, 'Santiago Ihuitlán Plumas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(465, 'Santiago Ixcuintepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(466, 'Santiago Ixtayutla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(467, 'Santiago Jamiltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(468, 'Santiago Jocotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(469, 'Santiago Juxtlahuaca', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(470, 'Santiago Lachiguiri', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(471, 'Santiago Lalopa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(472, 'Santiago Laollaga', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(473, 'Santiago Laxopa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(474, 'Santiago Llano Grande', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(475, 'Santiago Matatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(476, 'Santiago Miltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(477, 'Santiago Minas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(478, 'Santiago Nacaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(479, 'Santiago Nejapilla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(480, 'Santiago Nundiche', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(481, 'Santiago Nuyoó', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(482, 'Santiago Pinotepa Nacional', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(483, 'Santiago Suchilquitongo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(484, 'Santiago Tamazola', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(485, 'Santiago Tapextla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(486, 'Villa Tejúpam de la Unión', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(487, 'Santiago Tenango', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(488, 'Santiago Tepetlapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(489, 'Santiago Tetepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(490, 'Santiago Texcalcingo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(491, 'Santiago Textitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(492, 'Santiago Tilantongo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(493, 'Santiago Tillo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(494, 'Santiago Tlazoyaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(495, 'Santiago Xanica', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(496, 'Santiago Xiacuí', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(497, 'Santiago Yaitepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(498, 'Santiago Yaveo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(499, 'Santiago Yolomécatl', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(500, 'Santiago Yosondúa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(501, 'Santiago Yucuyachi', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(502, 'Santiago Zacatepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(503, 'Santiago Zoochila', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(504, 'Nuevo Zoquiápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(505, 'Santo Domingo Ingenio', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(506, 'Santo Domingo Albarradas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(507, 'Santo Domingo Armenta', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(508, 'Santo Domingo Chihuitán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(509, 'Santo Domingo de Morelos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(510, 'Santo Domingo Ixcatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(511, 'Santo Domingo Nuxaá', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(512, 'Santo Domingo Ozolotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(513, 'Santo Domingo Petapa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(514, 'Santo Domingo Roayaga', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(515, 'Santo Domingo Tehuantepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(516, 'Santo Domingo Teojomulco', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(517, 'Santo Domingo Tepuxtepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(518, 'Santo Domingo Tlatayápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(519, 'Santo Domingo Tomaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(520, 'Santo Domingo Tonalá', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(521, 'Santo Domingo Tonaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(522, 'Santo Domingo Xagacía', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(523, 'Santo Domingo Yanhuitlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(524, 'Santo Domingo Yodohino', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(525, 'Santo Domingo Zanatepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(526, 'Santos Reyes Nopala', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(527, 'Santos Reyes Pápalo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(528, 'Santos Reyes Tepejillo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(529, 'Santos Reyes Yucuná', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(530, 'Santo Tomás Jalieza', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(531, 'Santo Tomás Mazaltepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(532, 'Santo Tomás Ocotepec', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(533, 'Santo Tomás Tamazulapan', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(534, 'San Vicente Coatlán', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(535, 'San Vicente Lachixío', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(536, 'San Vicente Nuñú', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(537, 'Silacayoápam', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(538, 'Sitio de Xitlapehua', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(539, 'Soledad Etla', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(540, 'Villa de Tamazulápam del Progreso', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(541, 'Tanetze de Zaragoza', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(542, 'Taniche', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(543, 'Tataltepec de Valdés', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(544, 'Teococuilco de Marcos Pérez', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(545, 'Teotitlán de Flores Magón', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(546, 'Teotitlán del Valle', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(547, 'Teotongo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(548, 'Tepelmeme Villa de Morelos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(549, 'Tezoatlán de Segura y Luna', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(550, 'San Jerónimo Tlacochahuaya', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(551, 'Tlacolula de Matamoros', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(552, 'Tlacotepec Plumas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(553, 'Tlalixtac de Cabrera', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(554, 'Totontepec Villa de Morelos', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(555, 'Trinidad Zaachila', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(556, 'La Trinidad Vista Hermosa', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(557, 'Unión Hidalgo', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(558, 'Valerio Trujano', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(559, 'San Juan Bautista Valle Nacional', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(560, 'Villa Díaz Ordaz', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(561, 'Yaxe', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(562, 'Magdalena Yodocono de Porfirio Díaz', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(563, 'Yogana', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(564, 'Yutanduchi de Guerrero', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(565, 'Villa de Zaachila', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(566, 'San Mateo Yucutindó', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(567, 'Zapotitlán Lagunas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(568, 'Zapotitlán Palmas', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(569, 'Santa Inés de Zaragoza', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(570, 'Zimatlán de Álvarez', 1, 20) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 21 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Acajete', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acateno', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Acatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Acatzingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Acteopan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Ahuacatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Ahuatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Ahuazotepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Ahuehuetitla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Ajalpan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Albino Zertuche', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Aljojuca', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Altepexi', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Amixtlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Amozoc', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Aquixtla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Atempan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Atexcal', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Atlixco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Atoyatempan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Atzala', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Atzitzihuacán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Atzitzintla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Axutla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Ayotoxco de Guerrero', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Calpan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Caltepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Camocuautla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Caxhuacan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Coatepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Coatzingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Cohetzala', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Cohuecan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Coronango', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Coxcatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Coyomeapan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Coyotepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Cuapiaxtla de Madero', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Cuautempan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Cuautinchán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Cuautlancingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Cuayuca de Andrade', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Cuetzalan del Progreso', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Cuyoaco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Chalchicomula de Sesma', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Chapulco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Chiautla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Chiautzingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Chiconcuautla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Chichiquila', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Chietla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Chigmecatitlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Chignahuapan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Chignautla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Chila', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Chila de la Sal', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Honey', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Chilchotla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Chinantla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Domingo Arenas', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Eloxochitlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Epatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Esperanza', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Francisco Z. Mena', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'General Felipe Ángeles', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Guadalupe', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Guadalupe Victoria', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Hermenegildo Galeana', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'Huaquechula', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'Huatlatlauca', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Huauchinango', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'Huehuetla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'Huehuetlán el Chico', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'Huejotzingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'Hueyapan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'Hueytamalco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'Hueytlalpan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'Huitzilan de Serdán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'Huitziltepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'Atlequizayan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'Ixcamilpa de Guerrero', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(82, 'Ixcaquixtla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(83, 'Ixtacamaxtitlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(84, 'Ixtepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(85, 'Izúcar de Matamoros', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(86, 'Jalpan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(87, 'Jolalpan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(88, 'Jonotla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(89, 'Jopala', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(90, 'Juan C. Bonilla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(91, 'Juan Galindo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(92, 'Juan N. Méndez', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(93, 'Lafragua', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(94, 'Libres', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(96, 'Mazapiltepec de Juárez', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(97, 'Mixtla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(98, 'Molcaxac', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(99, 'Cañada Morelos', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(100, 'Naupan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(101, 'Nauzontla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(102, 'Nealtican', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(103, 'Nicolás Bravo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(104, 'Nopalucan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(105, 'Ocotepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(106, 'Ocoyucan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(107, 'Olintla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(108, 'Oriental', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(109, 'Pahuatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(110, 'Palmar de Bravo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(111, 'Pantepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(112, 'Petlalcingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(113, 'Piaxtla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(114, 'Puebla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(115, 'Quecholac', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(116, 'Quimixtlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(118, 'Los Reyes de Juárez', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(119, 'San Andrés Cholula', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(120, 'San Antonio Cañada', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(121, 'San Diego la Mesa Tochimiltzingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(122, 'San Felipe Teotlalcingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(123, 'San Felipe Tepatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(124, 'San Gabriel Chilac', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(125, 'San Gregorio Atzompa', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(126, 'San Jerónimo Tecuanipan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(127, 'San Jerónimo Xayacatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(128, 'San José Chiapa', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(129, 'San José Miahuatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(130, 'San Juan Atenco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(131, 'San Juan Atzompa', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(132, 'San Martín Texmelucan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(134, 'San Matías Tlalancaleca', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(135, 'San Miguel Ixitlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(136, 'San Miguel Xoxtla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(137, 'San Nicolás Buenos Aires', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(138, 'San Nicolás de los Ranchos', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(139, 'San Pablo Anicano', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(140, 'San Pedro Cholula', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(141, 'San Pedro Yeloixtlahuaca', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(142, 'San Salvador el Seco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(143, 'San Salvador el Verde', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(144, 'San Salvador Huixcolotla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(145, 'San Sebastián Tlacotepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(146, 'Santa Catarina Tlaltempan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(147, 'Santa Inés Ahuatempan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(148, 'Santa Isabel Cholula', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(149, 'Santiago Miahuatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(150, 'Huehuetlán el Grande', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(151, 'Santo Tomás Hueyotlipan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(152, 'Soltepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(153, 'Tecali de Herrera', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(154, 'Tecamachalco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(155, 'Tecomatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(156, 'Tehuacán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(157, 'Tehuitzingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(158, 'Tenampulco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(159, 'Teopantlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(160, 'Teotlalco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(161, 'Tepanco de López', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(162, 'Tepango de Rodríguez', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(163, 'Tepatlaxco de Hidalgo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(164, 'Tepeaca', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(165, 'Tepemaxalco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(166, 'Tepeojuma', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(167, 'Tepetzintla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(168, 'Tepexco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(169, 'Tepexi de Rodríguez', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(170, 'Tepeyahualco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(171, 'Tepeyahualco de Cuauhtémoc', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(172, 'Tetela de Ocampo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(173, 'Teteles de Avila Castillo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(174, 'Teziutlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(175, 'Tianguismanalco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(176, 'Tilapa', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(177, 'Tlacotepec de Benito Juárez', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(178, 'Tlacuilotepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(179, 'Tlachichuca', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(180, 'Tlahuapan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(181, 'Tlaltenango', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(182, 'Tlanepantla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(183, 'Tlaola', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(184, 'Tlapacoya', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(185, 'Tlapanalá', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(186, 'Tlatlauquitepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(187, 'Tlaxco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(188, 'Tochimilco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(189, 'Tochtepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(190, 'Totoltepec de Guerrero', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(191, 'Tulcingo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(192, 'Tuzamapan de Galeana', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(193, 'Tzicatlacoyan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(194, 'Venustiano Carranza', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(195, 'Vicente Guerrero', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(196, 'Xayacatlán de Bravo', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(197, 'Xicotepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(198, 'Xicotlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(199, 'Xiutetelco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(200, 'Xochiapulco', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(201, 'Xochiltepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(202, 'Xochitlán de Vicente Suárez', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(203, 'Xochitlán Todos Santos', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(204, 'Yaonáhuac', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(205, 'Yehualtepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(206, 'Zacapala', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(207, 'Zacapoaxtla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(208, 'Zacatlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(209, 'Zapotitlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(210, 'Zapotitlán de Méndez', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(211, 'Zaragoza', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(212, 'Zautla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(213, 'Zihuateutla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(214, 'Zinacatepec', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(215, 'Zongozotla', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(216, 'Zoquiapan', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(217, 'Zoquitlán', 1, 21) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 22 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Amealco de Bonfil', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Pinal de Amoles', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Arroyo Seco', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Cadereyta de Montes', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Colón', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Corregidora', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Ezequiel Montes', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Huimilpan', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Jalpan de Serra', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Landa de Matamoros', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'El Marqués', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Pedro Escobedo', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Peñamiller', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Querétaro', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'San Joaquín', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'San Juan del Río', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Tequisquiapan', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Tolimán', 1, 22) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 23 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Cozumel', 1, 23) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Felipe Carrillo Puerto', 1, 23) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Isla Mujeres', 1, 23) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Othón P. Blanco', 1, 23) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Benito Juárez', 1, 23) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'José María Morelos', 1, 23) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Lázaro Cárdenas', 1, 23) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Solidaridad', 1, 23) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Tulum', 1, 23) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 24 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Ahualulco', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Alaquines', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Aquismón', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Armadillo de los Infante', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Cárdenas', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Catorce', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Cedral', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Cerritos', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Cerro de San Pedro', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Ciudad del Maíz', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Ciudad Fernández', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Tancanhuitz', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Ciudad Valles', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Coxcatlán', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Charcas', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Ebano', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Guadalcázar', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Huehuetlán', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Lagunillas', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Matehuala', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Mexquitic de Carmona', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Moctezuma', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Rayón', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Rioverde', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Salinas', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'San Antonio', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'San Ciro de Acosta', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'San Luis Potosí', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'San Martín Chalchicuautla', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'San Nicolás Tolentino', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Santa Catarina', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Santa María del Río', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Santo Domingo', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'San Vicente Tancuayalab', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Soledad de Graciano Sánchez', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Tamasopo', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Tamazunchale', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Tampacán', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Tampamolón Corona', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Tamuín', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Tanlajás', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Tanquián de Escobedo', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Tierra Nueva', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Vanegas', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Venado', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Villa de Arriaga', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Villa de Guadalupe', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Villa de la Paz', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Villa de Ramos', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Villa de Reyes', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Villa Hidalgo', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Villa Juárez', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Axtla de Terrazas', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Xilitla', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Zaragoza', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Villa de Arista', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Matlapa', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'El Naranjo', 1, 24) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 25 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Ahome', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Angostura', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Badiraguato', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Concordia', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Cosalá', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Culiacán', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Choix', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Elota', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Escuinapa', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'El Fuerte', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Guasave', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Mazatlán', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Mocorito', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Rosario', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Salvador Alvarado', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'San Ignacio', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Sinaloa', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Navolato', 1, 25) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 26 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Aconchi', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Agua Prieta', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Alamos', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Altar', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Arivechi', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Arizpe', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Atil', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Bacadéhuachi', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Bacanora', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Bacerac', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Bacoachi', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Bácum', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Banámichi', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Baviácora', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Bavispe', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Benjamín Hill', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Caborca', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Cajeme', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Cananea', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Carbó', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'La Colorada', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Cucurpe', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Cumpas', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Divisaderos', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Empalme', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Etchojoa', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Fronteras', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Granados', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Guaymas', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Hermosillo', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Huachinera', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Huásabas', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Huatabampo', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Huépac', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Imuris', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Magdalena', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Mazatán', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Moctezuma', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Naco', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Nácori Chico', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Nacozari de García', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Navojoa', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Nogales', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Onavas', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Opodepe', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Oquitoa', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Pitiquito', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Puerto Peñasco', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Quiriego', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Rayón', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Rosario', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Sahuaripa', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'San Felipe de Jesús', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'San Javier', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'San Luis Río Colorado', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'San Miguel de Horcasitas', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'San Pedro de la Cueva', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Santa Ana', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Santa Cruz', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Sáric', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Soyopa', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Suaqui Grande', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Tepache', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Trincheras', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Tubutama', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Ures', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Villa Hidalgo', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Villa Pesqueira', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'Yécora', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'General Plutarco Elías Calles', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Benito Juárez', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'San Ignacio Río Muerto', 1, 26) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 27 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Balancán', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Cárdenas', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Centla', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Centro', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Comalcalco', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Cunduacán', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Emiliano Zapata', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Huimanguillo', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Jalapa', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Jalpa de Méndez', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Jonuta', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Macuspana', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Nacajuca', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Paraíso', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Tacotalpa', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Teapa', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Tenosique', 1, 27) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 28 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Abasolo', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Aldama', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Altamira', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Antiguo Morelos', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Burgos', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Bustamante', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Camargo', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Casas', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Ciudad Madero', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Cruillas', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Gómez Farías', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'González', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Güémez', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Guerrero', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Gustavo Díaz Ordaz', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Hidalgo', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Jaumave', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Jiménez', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Llera', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Mainero', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'El Mante', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Matamoros', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Méndez', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Mier', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Miguel Alemán', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Miquihuana', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Nuevo Laredo', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Nuevo Morelos', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Ocampo', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Padilla', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Palmillas', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Reynosa', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Río Bravo', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'San Carlos', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'San Fernando', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'San Nicolás', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Soto la Marina', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Tampico', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Tula', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Valle Hermoso', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Victoria', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Villagrán', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Xicoténcatl', 1, 28) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 29 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Amaxac de Guerrero', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Apetatitlán de Antonio Carvajal', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Atlangatepec', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Atltzayanca', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Apizaco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Calpulalpan', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'El Carmen Tequexquitla', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Cuapiaxtla', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Cuaxomulco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Chiautempan', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Muñoz de Domingo Arenas', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Españita', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Huamantla', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Hueyotlipan', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Ixtacuixtla de Mariano Matamoros', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Ixtenco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Mazatecochco de José María Morelos', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Contla de Juan Cuamatzi', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Tepetitla de Lardizábal', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Sanctórum de Lázaro Cárdenas', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Nanacamilpa de Mariano Arista', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Acuamanala de Miguel Hidalgo', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Natívitas', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Panotla', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'San Pablo del Monte', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Santa Cruz Tlaxcala', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Tenancingo', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Teolocholco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Tepeyanco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Terrenate', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Tetla de la Solidaridad', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Tetlatlahuca', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Tlaxcala', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Tlaxco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Tocatlán', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Totolac', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Ziltlaltépec de Trinidad Sánchez Santos', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Tzompantepec', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Xaloztoc', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Xaltocan', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Papalotla de Xicohténcatl', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Xicohtzinco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Yauhquemehcan', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Zacatelco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Benito Juárez', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Emiliano Zapata', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Lázaro Cárdenas', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'La Magdalena Tlaltelulco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'San Damián Texóloc', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'San Francisco Tetlanohcan', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'San José Teacalco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'San Juan Huactzinco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'San Lucas Tecopilco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Santa Ana Nopalucan', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Santa Apolonia Teacalco', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Santa Catarina Ayometla', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Santa Cruz Quilehtla', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Santa Isabel Xiloxoxtla', 1, 29) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 30 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Acajete', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acatlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Acayucan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Actopan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Acula', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Acultzingo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Camarón de Tejeda', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Alpatláhuac', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Alto Lucero de Gutiérrez Barrios', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Altotonga', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Alvarado', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Amatitlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Naranjos Amatlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Amatlán de los Reyes', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Angel R. Cabada', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'La Antigua', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Apazapan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Aquila', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Astacinga', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Atlahuilco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Atoyac', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Atzacan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Atzalan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Tlaltetela', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Ayahualulco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Banderilla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Benito Juárez', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Boca del Río', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Calcahualco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Camerino Z. Mendoza', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Carrillo Puerto', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Catemaco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Cazones de Herrera', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Cerro Azul', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Citlaltépetl', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Coacoatzintla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Coahuitlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Coatepec', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Coatzacoalcos', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Coatzintla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Coetzala', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Colipa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Comapa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Córdoba', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Cosamaloapan de Carpio', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Cosautlán de Carvajal', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Coscomatepec', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Cosoleacaque', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Cotaxtla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Coxquihui', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Coyutla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Cuichapa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Cuitláhuac', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Chacaltianguis', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Chalma', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Chiconamel', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Chiconquiaco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Chicontepec', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Chinameca', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Chinampa de Gorostiza', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Las Choapas', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Chocamán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Chontla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Chumatlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'Emiliano Zapata', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Espinal', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Filomeno Mata', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Fortín', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'Gutiérrez Zamora', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'Hidalgotitlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Huatusco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'Huayacocotla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'Hueyapan de Ocampo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'Huiloapan de Cuauhtémoc', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'Ignacio de la Llave', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'Ilamatlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'Isla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'Ixcatepec', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'Ixhuacán de los Reyes', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'Ixhuatlán del Café', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'Ixhuatlancillo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(82, 'Ixhuatlán del Sureste', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(83, 'Ixhuatlán de Madero', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(84, 'Ixmatlahuacan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(85, 'Ixtaczoquitlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(86, 'Jalacingo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(87, 'Xalapa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(88, 'Jalcomulco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(89, 'Jáltipan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(90, 'Jamapa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(91, 'Jesús Carranza', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(92, 'Xico', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(93, 'Jilotepec', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(94, 'Juan Rodríguez Clara', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(95, 'Juchique de Ferrer', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(96, 'Landero y Coss', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(97, 'Lerdo de Tejada', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(98, 'Magdalena', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(99, 'Maltrata', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(100, 'Manlio Fabio Altamirano', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(101, 'Mariano Escobedo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(102, 'Martínez de la Torre', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(103, 'Mecatlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(104, 'Mecayapan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(105, 'Medellín', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(106, 'Miahuatlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(107, 'Las Minas', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(108, 'Minatitlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(109, 'Misantla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(110, 'Mixtla de Altamirano', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(111, 'Moloacán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(112, 'Naolinco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(113, 'Naranjal', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(114, 'Nautla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(115, 'Nogales', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(116, 'Oluta', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(117, 'Omealca', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(118, 'Orizaba', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(119, 'Otatitlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(120, 'Oteapan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(121, 'Ozuluama de Mascareñas', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(122, 'Pajapan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(123, 'Pánuco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(124, 'Papantla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(125, 'Paso del Macho', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(126, 'Paso de Ovejas', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(127, 'La Perla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(128, 'Perote', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(129, 'Platón Sánchez', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(130, 'Playa Vicente', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(131, 'Poza Rica de Hidalgo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(132, 'Las Vigas de Ramírez', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(133, 'Pueblo Viejo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(134, 'Puente Nacional', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(135, 'Rafael Delgado', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(136, 'Rafael Lucio', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(137, 'Los Reyes', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(138, 'Río Blanco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(139, 'Saltabarranca', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(140, 'San Andrés Tenejapan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(141, 'San Andrés Tuxtla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(142, 'San Juan Evangelista', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(143, 'Santiago Tuxtla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(144, 'Sayula de Alemán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(145, 'Soconusco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(146, 'Sochiapa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(147, 'Soledad Atzompa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(148, 'Soledad de Doblado', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(149, 'Soteapan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(150, 'Tamalín', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(151, 'Tamiahua', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(152, 'Tampico Alto', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(153, 'Tancoco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(154, 'Tantima', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(155, 'Tantoyuca', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(156, 'Tatatila', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(157, 'Castillo de Teayo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(158, 'Tecolutla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(159, 'Tehuipango', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(160, 'Álamo Temapache', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(161, 'Tempoal', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(162, 'Tenampa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(163, 'Tenochtitlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(164, 'Teocelo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(165, 'Tepatlaxco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(166, 'Tepetlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(167, 'Tepetzintla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(168, 'Tequila', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(169, 'José Azueta', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(170, 'Texcatepec', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(171, 'Texhuacán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(172, 'Texistepec', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(173, 'Tezonapa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(174, 'Tierra Blanca', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(175, 'Tihuatlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(176, 'Tlacojalpan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(177, 'Tlacolulan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(178, 'Tlacotalpan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(179, 'Tlacotepec de Mejía', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(180, 'Tlachichilco', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(181, 'Tlalixcoyan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(182, 'Tlalnelhuayocan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(183, 'Tlapacoyan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(184, 'Tlaquilpa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(185, 'Tlilapan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(186, 'Tomatlán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(187, 'Tonayán', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(188, 'Totutla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(189, 'Tuxpan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(190, 'Tuxtilla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(191, 'Ursulo Galván', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(192, 'Vega de Alatorre', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(193, 'Veracruz', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(194, 'Villa Aldama', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(195, 'Xoxocotla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(196, 'Yanga', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(197, 'Yecuatla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(198, 'Zacualpan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(199, 'Zaragoza', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(200, 'Zentla', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(201, 'Zongolica', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(202, 'Zontecomatlán de López y Fuentes', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(203, 'Zozocolco de Hidalgo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(204, 'Agua Dulce', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(205, 'El Higo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(206, 'Nanchital de Lázaro Cárdenas del Río', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(207, 'Tres Valles', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(208, 'Carlos A. Carrillo', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(209, 'Tatahuicapan de Juárez', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(210, 'Uxpanapa', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(211, 'San Rafael', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(212, 'Santiago Sochiapan', 1, 30) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 31 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Abalá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Acanceh', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Akil', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Baca', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Bokobá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Buctzotz', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Cacalchén', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Calotmul', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Cansahcab', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Cantamayec', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Celestún', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Cenotillo', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'Conkal', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'Cuncunul', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'Cuzamá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'Chacsinkín', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Chankom', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Chapab', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Chemax', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Chicxulub Pueblo', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Chichimilá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Chikindzonot', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Chocholá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Chumayel', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Dzán', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Dzemul', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Dzidzantún', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Dzilam de Bravo', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Dzilam González', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Dzitás', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Dzoncauich', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Espita', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Halachó', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Hocabá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Hoctún', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Homún', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Huhí', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Hunucmá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Ixil', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Izamal', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'Kanasín', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Kantunil', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Kaua', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Kinchil', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Kopomá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Mama', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Maní', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Maxcanú', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Mayapán', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Mérida', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Mocochá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Motul', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Muna', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Muxupip', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Opichén', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Oxkutzcab', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Panabá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Peto', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(59, 'Progreso', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(60, 'Quintana Roo', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(61, 'Río Lagartos', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(62, 'Sacalum', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(63, 'Samahil', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(64, 'Sanahcat', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(65, 'San Felipe', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(66, 'Santa Elena', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(67, 'Seyé', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(68, 'Sinanché', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(69, 'Sotuta', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(70, 'Sucilá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(71, 'Sudzal', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(72, 'Suma', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(73, 'Tahdziú', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(74, 'Tahmek', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(75, 'Teabo', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(76, 'Tecoh', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(77, 'Tekal de Venegas', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(78, 'Tekantó', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(79, 'Tekax', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(80, 'Tekit', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(81, 'Tekom', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(82, 'Telchac Pueblo', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(83, 'Telchac Puerto', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(84, 'Temax', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(85, 'Temozón', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(86, 'Tepakán', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(87, 'Tetiz', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(88, 'Teya', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(89, 'Ticul', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(90, 'Timucuy', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(91, 'Tinum', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(92, 'Tixcacalcupul', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(93, 'Tixkokob', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(94, 'Tixmehuac', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(95, 'Tixpéhual', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(96, 'Tizimín', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(97, 'Tunkás', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(98, 'Tzucacab', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(99, 'Uayma', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(100, 'Ucú', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(101, 'Umán', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(102, 'Valladolid', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(103, 'Xocchel', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(104, 'Yaxcabá', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(105, 'Yaxkukul', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(106, 'Yobaín', 1, 31) ON CONFLICT (country_id, state_id, id) DO NOTHING;

-- State 32 municipalities
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(1, 'Apozol', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(2, 'Apulco', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(3, 'Atolinga', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(4, 'Benito Juárez', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(5, 'Calera', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(6, 'Cañitas de Felipe Pescador', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(7, 'Concepción del Oro', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(8, 'Cuauhtémoc', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(9, 'Chalchihuites', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(10, 'Fresnillo', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(11, 'Trinidad García de la Cadena', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(12, 'Genaro Codina', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(13, 'General Enrique Estrada', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(14, 'General Francisco R. Murguía', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(15, 'El Plateado de Joaquín Amaro', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(16, 'General Pánfilo Natera', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(17, 'Guadalupe', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(18, 'Huanusco', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(19, 'Jalpa', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(20, 'Jerez', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(21, 'Jiménez del Teul', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(22, 'Juan Aldama', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(23, 'Juchipila', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(24, 'Loreto', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(25, 'Luis Moya', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(26, 'Mazapil', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(27, 'Melchor Ocampo', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(28, 'Mezquital del Oro', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(29, 'Miguel Auza', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(30, 'Momax', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(31, 'Monte Escobedo', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(32, 'Morelos', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(33, 'Moyahua de Estrada', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(34, 'Nochistlán de Mejía', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(35, 'Noria de Ángeles', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(36, 'Ojocaliente', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(37, 'Pánuco', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(38, 'Pinos', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(39, 'Río Grande', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(40, 'Sain Alto', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(41, 'El Salvador', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(42, 'Sombrerete', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(43, 'Susticacán', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(44, 'Tabasco', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(45, 'Tepechitlán', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(46, 'Tepetongo', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(47, 'Teúl de González Ortega', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(48, 'Tlaltenango de Sánchez Román', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(49, 'Valparaíso', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(50, 'Vetagrande', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(51, 'Villa de Cos', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(52, 'Villa García', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(53, 'Villa González Ortega', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(54, 'Villa Hidalgo', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(55, 'Villanueva', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(56, 'Zacatecas', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(57, 'Trancoso', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;
INSERT INTO municipalities (id, name, country_id, state_id) VALUES
(58, 'Santa María de la Paz', 1, 32) ON CONFLICT (country_id, state_id, id) DO NOTHING;



COMMIT;

-- Usage Notes:
-- 1. This script loads ALL municipalities from the municipalities.json file for Mexico
-- 2. Municipality IDs are preserved exactly as they appear in the JSON
-- 3. Composite primary key (country_id, state_id, id) allows same municipality ID across different states
-- 4. Example: municipality ID 6 exists in multiple states (Iztacalco in DF, Apaxtla in Guerrero, etc.)
-- 5. All entries use ON CONFLICT DO NOTHING to prevent duplicate insertions
-- 6. Foreign keys from housing table reference the composite key (country_id, state_id, municipality_id)
-- 7. This ensures perfect data integrity across countries and states

-- SCHEMA COMPLIANCE:
-- Follows the database schema instructions that require:
-- - Preserving JSON IDs exactly as they appear
-- - Using composite primary keys for geographical entities
-- - Allowing same IDs across different states/countries
-- - Ensuring referential integrity through proper foreign key constraints
