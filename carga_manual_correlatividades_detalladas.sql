-- --------------------------------------------------------
-- 9.1) Correlatividades detalladas (carga automatizada desde planes oficiales 2024)
-- --------------------------------------------------------
INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'A', 'Algoritmos y programación I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'A');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'B', 'Matemática I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'B');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'C', 'Sistemas Digitales', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'C');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'D', 'Sistemas de Información', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'D');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'E', 'Algoritmos y programación II', 1, '2C', 'A', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'E');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'F', 'Matemática II', 1, '2C', 'B', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'F');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'G', 'Arquitectura de Computadoras', 1, '2C', 'C', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'G');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'H', 'Ingeniería de software I', 2, '1C', 'D', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'H');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'I', 'Comunicación de Datos', 2, '1C', 'F, G', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'I');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'J', 'Estructura de datos', 2, '1C', 'E', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'J');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'K', 'Matemática III', 2, '1C', 'F', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'K');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'L', 'Ingeniería de software II', 2, '2C', 'H', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'L');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'M', 'Base de datos', 2, '2C', 'J', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'M');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'N', 'Matemática Discreta', 2, '2C', 'K', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'N');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'O', 'Redes de Computadoras', 2, '2C', 'I', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'O');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'Q', 'Probabilidad y Estadística', 3, '1C', 'N', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'Q');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'R', 'Laboratorio de Base de datos', 3, '1C', 'M', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'R');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'S', 'Introducción a los Sistemas Operativos', 3, '1C', 'I', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'S');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'T', 'Inglés Técnico', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'T');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'U', 'Electiva NFG', 3, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'U');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'V', 'Sistemas operativos', 3, '2C', 'O; S', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'V');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'X', 'Laboratorio de Lenguajes', 3, '2C', 'J; P', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'X');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'Y', 'Interacción Hombre- Computadora', 3, '2C', 'L; R', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'Y');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'Z', 'Gestión de proyectos de software', 4, '1C', 'L', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'Z');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'AA', 'Autómatas y lenguajes formales', 4, '1C', 'B; X', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'AA');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'AB', 'Metodología de la Investigación', 4, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'AB');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'AC', 'Computación Móvil basada en servicios', 4, '1C', 'V; X', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'AC');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'AD', 'Programación distribuida y concurrente', 4, '2C', 'V; X', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'AD');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'AE', 'Teoría de la Computación', 4, '2C', 'J; AA', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'AE');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'AF', 'Programación Declarativa', 4, '2C', 'K; X', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'AF');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-informatica', 'Licenciatura en Informatica', 'Plan de estudios 2024', 2024, 'AL', 'Aspectos legales, profesionales y sociales', 5, '2C', 'AB', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Licenciatura-en-Informatica.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'AL');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'A', 'Introducción a la Gestión Ambiental I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'A');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'B', 'Geografía Física I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'B');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'C', 'Biología General I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'C');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'D', 'Matemática I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'D');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'E', 'Introducción a la Química', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'E');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'F', 'Introducción a la Gestión Ambiental II', 1, '2C', 'A', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'F');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'G', 'Geografía Física II', 1, '2C', 'B', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'G');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'H', 'Biología General II', 1, '2C', 'C', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'H');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'I', 'Elementos de Física', 1, '2C', 'D', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'I');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'J', 'Probabilidad y Estadística', 1, '2C', 'D', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'J');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'K', 'Diagnóstico ambiental I', 2, '1C', 'A', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'K');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'L', 'Ecología general', 2, '1C', 'G,H', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'L');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'M', 'Geografía humana, económica y social', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'M');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'N', 'Introducción a la contaminación', 2, '1C', 'D, E, G,H, I, J', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'N');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'O', 'Diagnóstico ambiental II', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'O');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'P', 'Aplicaciones ambientales de teledetección', 2, '2C', 'G, I, J, L', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'P');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'Q', 'Aplicaciones ambientales de SIG', 2, '2C', 'G, I, J, L', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'Q');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'R', 'Herramientas Informáticas', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'R');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'S', 'Herramientas de gestión ambiental', 3, '1C', 'L, M, N, O', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'S');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'T', 'Agroecosistemas', 3, '1C', 'G,H, L, M', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'T');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'U', 'Metodología de la investigación', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'U');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'V', 'Inglés Técnico', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'V');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'W', 'Sistemas Urbanos', 3, '2C', 'G,H, L, M', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'W');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'X', 'Electiva NFG', 3, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'X');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'Y', 'Electiva 1 CFP', 3, '2C', 'F, S', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'Y');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'Z', 'Evaluación Ambiental Sectorial', 4, '1C', 'F, N, S', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'Z');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AA', 'Evaluación de impacto ambiental', 4, '1C', 'S', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AA');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AB', 'Conservación de la Biodiversidad', 4, '1C', 'L,M', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AB');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AC', 'Eco toxicología', 4, '2C', 'L, N, S', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AC');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AD', 'Electiva 2 CFP', 4, '2C', 'F, S', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AD');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AE', 'Seminario de Trabajo de Licenciatura I', 4, '2C', 'F, S', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AE');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AF', 'Auditorías y Sistemas de Gestión Ambiental', 5, '1C', 'S, Z', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AF');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AG', 'Planificación y Gestión Territorial', 5, '1C', 'G, L, M, P, Q, AA', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AG');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AH', 'Evaluación y remediación ambiental', 5, '1C', 'N, S, AA', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AH');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AJ', 'Gestión integral de residuos sólidos', 5, '2C', 'N, S, AA, AC', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AJ');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AK', 'Gestión de efluentes líquidos y emisiones gaseosas', 5, '2C', 'N, S, AA, AC', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AK');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'licenciatura-gestion-ambiental', 'Licenciatura en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'AL', 'Electiva 3CFP', 5, '2C', 'F, S', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Licenciatura-en-Gestion-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'AL');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'A', 'Introducción a la Gestión Ambiental I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'A');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'B', 'Geografía Física I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'B');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'C', 'Biología I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'C');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'D', 'Matemática I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'D');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'E', 'Introducción a la Química', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'E');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'F', 'Introducción a la Gestión Ambiental II', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'F');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'G', 'Geografía Física II', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'G');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'H', 'Biología II', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'H');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'I', 'Elementos de Física', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'I');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'J', 'Probabilidad y Estadística', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'J');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'K', 'Diagnóstico ambiental I', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'K');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'L', 'Ecología general', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'L');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'M', 'Geografía humana, económica y social', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'M');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'N', 'Introducción a la contaminación', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'N');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'O', 'Diagnóstico ambiental II', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'O');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'P', 'Aplicaciones ambientales de teledetección', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'P');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'Q', 'Aplicaciones ambientales de SIG', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'Q');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'R', 'Herramientas Informáticas', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'R');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'S', 'Herramientas de gestión ambiental', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'S');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'T', 'Agroecosistemas', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'T');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'U', 'Metodología de la investigación', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'U');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'V', 'Inglés Técnico', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'V');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'W', 'Sistemas Urbanos', 3, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'W');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-gestion-ambiental', 'Tecnicatura Universitaria en Gestion Ambiental', 'Plan de estudios 2024', 2024, 'X', 'Electiva NFG', 3, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Gestin-Ambiental.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'X');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'A', 'Sistemas de producción agropecuaria I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'A');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'B', 'Introducción a la química', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'B');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'C', 'Biología I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'C');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'D', 'Matemáticas I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'D');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'E', 'Botánica general y sistemática vegetal', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'E');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'F', 'Química y sistemas vivos', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'F');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'G', 'Elementos de física', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'G');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'H', 'Principios de Genética', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'H');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'I', 'Introducción a la meteorología agrícola', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'I');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'J', 'Probabilidad y estadística', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'J');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'K', 'Anatomía comparada y fisiología animal', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'K');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'L', 'Maquinarias e implementos agrícolas', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'L');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'M', 'Fisiología vegetal', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'M');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'N', 'Sistemas de producción agropecuaria II', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'N');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'O', 'Reproducción', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'O');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'P', 'Ecosistemas agropecuarios', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'P');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'Q', 'Salud y Bienestar Animal', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'Q');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'R', 'Sanidad Vegetal', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'R');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'S', 'Nutrición y alimentación animal I', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'S');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'T', 'Producción de ovinos y caprinos', 3, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'T');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'U', 'Electiva NFG', 3, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'U');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'V', 'Nutrición y alimentación animal II', 3, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'V');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'W', 'Economía agropecuaria y agroindustrial', 3, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'W');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'X', 'Producción de porcinos y aves', 4, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'X');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'Y', 'Sistemas de producción de cultivos', 4, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'Y');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'Z', 'Producción de equinos', 4, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'Z');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-produccion-agropecuaria', 'Tecnicatura Universitaria en Produccion Agropecuaria', 'Plan de estudios 2024', 2024, 'AA', 'Producción de bovinos de carne y leche', 4, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-en-Produccin-Agropecuaria.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'AA');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'A', 'Mantenimiento Industrial I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'A');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'B', 'Electrotecnia I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'B');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'C', 'Mecánica I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'C');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'D', 'Matemática I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'D');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'E', 'Introducción a la Química', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'E');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'F', 'Electrotecnia II', 1, '2C', 'B', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'F');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'G', 'Mecánica II', 1, '2C', 'C', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'G');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'H', 'Sistema de Representación', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'H');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'I', 'Conocimiento de los materiales', 1, '2C', 'D, E', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'I');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'J', 'Mantenimiento Industrial II', 1, '2C', 'A', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'J');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'K', 'Hidráulica y neumática', 1, '2C', 'D', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'K');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'L', 'Mantenimiento Industrial III', 2, '1C', 'J', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'L');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'M', 'Elementos de Máquinas I', 2, '1C', 'G', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'M');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'N', 'Tecnología de Frío y Calor', 2, '1C', 'G', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'N');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'O', 'Instalaciones y Máquinas eléctricas I', 2, '1C', 'D,F', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'O');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'P', 'Ingles Técnico', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'P');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'Q', 'Herramientas de Informática', 2, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'Q');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'S', 'Elementos de automatización', 2, '2C', 'D,F', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'S');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'T', 'Mantenimiento Industrial IV', 2, '2C', 'L', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'T');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'U', 'Elementos de Máquinas II', 2, '2C', 'M', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'U');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'V', 'Tecnología de Frío y Calor II', 2, '2C', 'N', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'V');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'W', 'Instalaciones y Máquinas eléctricas II', 2, '2C', 'O', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'W');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'X', 'Aseguramiento de la calidad', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'X');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'Z', 'Costos', 3, '1C', 'D', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'Z');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'AA', 'Electiva NFG (*)', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'AA');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-mantenimiento-industrial', 'Tecnicatura Universitaria en Mantenimiento Industrial', 'Plan de estudios 2024', 2024, 'AB', 'Mantenimiento Industrial V', 3, '1C', 'T 80 40 40 Total horas del plan de estudio 1840', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-en-Mantenimiento-Industrial.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'AB');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'A', 'Introducción a la Economía', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'A');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'B', 'Administración Básica', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'B');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'C', 'Matemática I', 1, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'C');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'D', 'Economía', 1, '2C', 'A', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'D');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'E', 'Elementos de contabilidad', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'E');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'F', 'Historia del pensamiento económico', 1, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'F');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'G', 'Microeconomía I', 2, '1C', 'D', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'G');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'H', 'Ciclo contable', 2, '1C', 'E', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'H');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'I', 'Matemática II', 2, '1C', 'C', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'I');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'J', 'Macroeconomía I', 2, '2C', 'D', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'J');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'K', 'Derecho constitucional y administrativo', 2, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'K');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'L', 'Comportamiento organizacional', 2, '2C', 'B', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'L');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'M', 'Inglés Técnico', 3, '1C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'M');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'N', 'Costos', 3, '1C', 'E', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'N');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'O', 'Finanzas Públicas', 3, '1C', 'K', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'O');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'P', 'Administración Estratégica', 3, '1C', 'L', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'P');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'Q', 'Economía y gestión de la innovación', 3, '1C', 'G, J', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'Q');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'R', 'Probabilidades y estadística', 3, '2C', 'I', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'R');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'S', 'Administración comercial', 3, '2C', 'L', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'S');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'T', 'Economía agropecuaria y agroindustrial', 3, '2C', 'G, J', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'T');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'U', 'Electiva NFG (*)', 3, '2C', NULL, NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'U');

INSERT INTO `correlativity` (`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT 'tecnicatura-administracion-gestion', 'Tecnicatura Universitaria en Administracion y Gestion', 'Plan de estudios 2024', 2024, 'V', 'Derecho Privado', 3, '2C', 'K', NULL, 'Carga automatica desde plan oficial UNSAdA (columna Correlatividades). Validar ante futuras actualizaciones.', 'https://www.unsada.edu.ar/images/pdf/Plan-Tecnicatura-Universitaria-Administracin-y-Gestin.pdf'
WHERE NOT EXISTS (SELECT 1 FROM `correlativity` WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'V');
