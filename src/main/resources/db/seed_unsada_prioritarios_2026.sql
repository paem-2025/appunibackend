-- Seed recomendado para AppInfo UNSAdA (foco en categorias del frontend)
-- Categorias objetivo: Calendario Academico, Becas, Plataformas, Tutorias, Ingresantes, Tramites, Carreras
-- Fuente de contenido: https://www.unsada.edu.ar/
-- Fecha de armado: 2026-04-27

SET NAMES utf8mb4;
START TRANSACTION;

-- --------------------------------------------------------
-- 1) Garantizar temas que usa el frontend
-- --------------------------------------------------------

INSERT INTO `topic` (`name`, `description`)
SELECT 'Calendario Academico', 'Turnos de examenes, fechas de inscripcion y dias sin actividad academica.'
WHERE NOT EXISTS (
  SELECT 1 FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Calendario Academico')
);

INSERT INTO `topic` (`name`, `description`)
SELECT 'Becas', 'Becas estudiantiles y requisitos vigentes.'
WHERE NOT EXISTS (
  SELECT 1 FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Becas')
);

INSERT INTO `topic` (`name`, `description`)
SELECT 'Plataformas', 'Accesos a SIU Guarani, Moodle, correo institucional y Nexos.'
WHERE NOT EXISTS (
  SELECT 1 FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Plataformas')
);

INSERT INTO `topic` (`name`, `description`)
SELECT 'Tutorias', 'Acompanamiento academico y horarios de consulta.'
WHERE NOT EXISTS (
  SELECT 1 FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Tutorias')
);

INSERT INTO `topic` (`name`, `description`)
SELECT 'Ingresantes', 'Checklist inicial, primeros pasos, cuentas y cronograma para estudiantes nuevos.'
WHERE NOT EXISTS (
  SELECT 1 FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Ingresantes')
);

INSERT INTO `topic` (`name`, `description`)
SELECT 'Tramites', 'Guias paso a paso para readmision, equivalencias, cambio y simultaneidad de carrera.'
WHERE NOT EXISTS (
  SELECT 1 FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Tramites')
);

INSERT INTO `topic` (`name`, `description`)
SELECT 'Carreras', 'Oferta academica oficial de pregrado y grado publicada por la UNSAdA.'
WHERE NOT EXISTS (
  SELECT 1 FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Carreras')
);

-- --------------------------------------------------------
-- 1.1) Tabla y datos de mesas finales (estructura dedicada)
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `final_exam` (
  `idfinal_exam` BIGINT NOT NULL AUTO_INCREMENT,
  `exam_year` INT NOT NULL,
  `turn_order` INT NOT NULL,
  `turn_name` VARCHAR(120) NOT NULL,
  `period_label` VARCHAR(120) DEFAULT NULL,
  `enrollment_start` DATE NOT NULL,
  `exam_start` DATE NOT NULL,
  `exam_end` DATE NOT NULL,
  `notes` VARCHAR(500) DEFAULT NULL,
  `source_url` VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (`idfinal_exam`),
  KEY `idx_final_exam_year` (`exam_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `final_exam`
(`exam_year`, `turn_order`, `turn_name`, `period_label`, `enrollment_start`, `exam_start`, `exam_end`, `notes`, `source_url`)
SELECT
  2026, 1, '1er Turno - Febrero/Marzo', NULL, '2026-02-09', '2026-02-18', '2026-03-07',
  'Inscripcion y anulacion hasta 48 hs habiles antes.',
  'https://www.unsada.edu.ar/estudiantes/calendario-academico'
WHERE NOT EXISTS (
  SELECT 1 FROM `final_exam`
  WHERE `exam_year` = 2026 AND `turn_order` = 1 AND `exam_start` = '2026-02-18' AND `exam_end` = '2026-03-07'
);

INSERT INTO `final_exam`
(`exam_year`, `turn_order`, `turn_name`, `period_label`, `enrollment_start`, `exam_start`, `exam_end`, `notes`, `source_url`)
SELECT
  2026, 2, '2do Turno - Mayo', NULL, '2026-04-27', '2026-05-11', '2026-05-16',
  'Inscripcion y anulacion hasta 48 hs habiles antes.',
  'https://www.unsada.edu.ar/estudiantes/calendario-academico'
WHERE NOT EXISTS (
  SELECT 1 FROM `final_exam`
  WHERE `exam_year` = 2026 AND `turn_order` = 2 AND `exam_start` = '2026-05-11' AND `exam_end` = '2026-05-16'
);

INSERT INTO `final_exam`
(`exam_year`, `turn_order`, `turn_name`, `period_label`, `enrollment_start`, `exam_start`, `exam_end`, `notes`, `source_url`)
SELECT
  2026, 3, '3er Turno - Julio/Agosto', 'Tramo 1', '2026-06-29', '2026-07-06', '2026-07-18',
  'Inscripcion y anulacion hasta 48 hs habiles antes.',
  'https://www.unsada.edu.ar/estudiantes/calendario-academico'
WHERE NOT EXISTS (
  SELECT 1 FROM `final_exam`
  WHERE `exam_year` = 2026 AND `turn_order` = 3 AND `period_label` = 'Tramo 1'
    AND `exam_start` = '2026-07-06' AND `exam_end` = '2026-07-18'
);

INSERT INTO `final_exam`
(`exam_year`, `turn_order`, `turn_name`, `period_label`, `enrollment_start`, `exam_start`, `exam_end`, `notes`, `source_url`)
SELECT
  2026, 3, '3er Turno - Julio/Agosto', 'Tramo 2', '2026-06-29', '2026-08-03', '2026-08-15',
  'Inscripcion y anulacion hasta 48 hs habiles antes.',
  'https://www.unsada.edu.ar/estudiantes/calendario-academico'
WHERE NOT EXISTS (
  SELECT 1 FROM `final_exam`
  WHERE `exam_year` = 2026 AND `turn_order` = 3 AND `period_label` = 'Tramo 2'
    AND `exam_start` = '2026-08-03' AND `exam_end` = '2026-08-15'
);

INSERT INTO `final_exam`
(`exam_year`, `turn_order`, `turn_name`, `period_label`, `enrollment_start`, `exam_start`, `exam_end`, `notes`, `source_url`)
SELECT
  2026, 4, '4to Turno - Octubre', NULL, '2026-09-28', '2026-10-12', '2026-10-17',
  'Inscripcion y anulacion hasta 48 hs habiles antes.',
  'https://www.unsada.edu.ar/estudiantes/calendario-academico'
WHERE NOT EXISTS (
  SELECT 1 FROM `final_exam`
  WHERE `exam_year` = 2026 AND `turn_order` = 4 AND `exam_start` = '2026-10-12' AND `exam_end` = '2026-10-17'
);

INSERT INTO `final_exam`
(`exam_year`, `turn_order`, `turn_name`, `period_label`, `enrollment_start`, `exam_start`, `exam_end`, `notes`, `source_url`)
SELECT
  2026, 5, '5to Turno - Diciembre', NULL, '2026-11-30', '2026-12-07', '2026-12-23',
  'Inscripcion y anulacion hasta 48 hs habiles antes.',
  'https://www.unsada.edu.ar/estudiantes/calendario-academico'
WHERE NOT EXISTS (
  SELECT 1 FROM `final_exam`
  WHERE `exam_year` = 2026 AND `turn_order` = 5 AND `exam_start` = '2026-12-07' AND `exam_end` = '2026-12-23'
);

-- Normalizacion para entornos donde quedo texto mojibake en corridas previas
UPDATE `final_exam`
SET `turn_name` = REPLACE(`turn_name`, 'Â°', '°')
WHERE `turn_name` LIKE '%Â°%';

UPDATE `final_exam`
SET `turn_name` = CASE
  WHEN `turn_order` = 1 THEN '1er Turno - Febrero/Marzo'
  WHEN `turn_order` = 2 THEN '2do Turno - Mayo'
  WHEN `turn_order` = 3 THEN '3er Turno - Julio/Agosto'
  WHEN `turn_order` = 4 THEN '4to Turno - Octubre'
  WHEN `turn_order` = 5 THEN '5to Turno - Diciembre'
  ELSE `turn_name`
END
WHERE `exam_year` = 2026;

-- --------------------------------------------------------
-- 2) Modulos: Calendario Academico
-- --------------------------------------------------------

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Calendario academico 2026 - Examenes finales',
  CONCAT(
    'Turnos de examenes finales 2026:', '\n',
    '1) Febrero/Marzo: inscripcion desde 09/02/2026; examenes del 18/02/2026 al 07/03/2026.', '\n',
    '2) Mayo: inscripcion desde 27/04/2026; examenes del 11/05/2026 al 16/05/2026.', '\n',
    '3) Julio/Agosto: inscripcion desde 29/06/2026; examenes del 06/07/2026 al 18/07/2026 y del 03/08/2026 al 15/08/2026.', '\n',
    '4) Octubre: inscripcion desde 28/09/2026; examenes del 12/10/2026 al 17/10/2026.', '\n',
    '5) Diciembre: inscripcion desde 30/11/2026; examenes del 07/12/2026 al 23/12/2026.', '\n',
    'Fuente: https://www.unsada.edu.ar/estudiantes/calendario-academico'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Calendario Academico') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Calendario academico 2026 - Examenes finales'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Calendario academico 2026 - Condiciones importantes',
  CONCAT(
    'Inscripcion y anulacion de inscripcion a finales: hasta 48 horas habiles antes de cada examen.', '\n',
    'El calendario y los dias sin actividad academica pueden tener cambios por reglamentacion oficial.', '\n',
    'Revisar periodicamente la web oficial para actualizaciones.', '\n',
    'Fuente: https://www.unsada.edu.ar/estudiantes/calendario-academico'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Calendario Academico') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Calendario academico 2026 - Condiciones importantes'
);

-- --------------------------------------------------------
-- 3) Modulos: Becas
-- --------------------------------------------------------

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Becas PUBU 2026 - Cronograma y lineas',
  CONCAT(
    'Programa Unico de Becas UNSAdA (PUBU).', '\n',
    'Lineas: Estimulo universitario, Necesidades particulares, Material bibliografico, Movilidad estudiantil.', '\n',
    'Cronograma 1er cuatrimestre 2026: Inscripcion 23/02 al 21/03; Evaluacion 23/03 al 30/03; Preseleccion 31/03; Entrevistas y reclamos 01/04 al 07/04; Resultados 08/04.', '\n',
    'Estado publicado: Convocatoria 2026 (finalizada).', '\n',
    'Fuente: https://unsada.edu.ar/extension/bienestar-universitario/becas-estudiantiles?start=1'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Becas') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Becas PUBU 2026 - Cronograma y lineas'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Becas Progresar 2026 - Requisitos',
  CONCAT(
    'Convocatoria Progresar 2026 para nivel superior.', '\n',
    'Periodo de inscripcion informado: del lunes 06/04/2026 al jueves 30/04/2026.', '\n',
    'Ingresos familiares: hasta 3 SMVM. Estudiantes avanzados: al menos 50% de materias aprobadas segun plan y ano cursado.', '\n',
    'Mas informacion e inscripcion: argentina.gob.ar/educacion/progresar/ingreso-a-instituciones', '\n',
    'Fuente: https://unsada.edu.ar/extension/bienestar-universitario/becas-estudiantiles?start=2'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Becas') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Becas Progresar 2026 - Requisitos'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Becas Fundacion YPF 2026',
  CONCAT(
    'Orientada a estudiantes de Lic. en Gestion Ambiental y Lic. en Informatica de la UNSAdA.', '\n',
    'Referencia publicada: inscripcion hasta domingo 08 de marzo (inclusive).', '\n',
    'Formulario: https://becas.fundacionypf.org.ar/', '\n',
    'Contacto de asesoramiento UNSAdA segun pagina: WhatsApp +54 9 2477 680032.', '\n',
    'Fuente: https://unsada.edu.ar/extension/bienestar-universitario/becas-estudiantiles?start=4'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Becas') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Becas Fundacion YPF 2026'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Becas Manuel Belgrano y Santander - Estado',
  CONCAT(
    'Manuel Belgrano: en la pagina se informa referencia de inscripcion del 16/03 al 03/04 (verificar convocatoria vigente).', '\n',
    'Santander: figura como ACTUALIZACION 2026 EN BREVE; mantener seguimiento periodico.', '\n',
    'Portal de becas Santander: https://app.santanderopenacademy.com', '\n',
    'Fuente: https://unsada.edu.ar/extension/bienestar-universitario/becas-estudiantiles?start=3 y ?start=4'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Becas') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Becas Manuel Belgrano y Santander - Estado'
);

-- --------------------------------------------------------
-- 4) Modulos: Plataformas
-- --------------------------------------------------------

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'SIU Guarani - Acceso rapido',
  CONCAT(
    'Ingreso SIU Guarani: https://g3w.unsada.edu.ar', '\n',
    'Usar cuenta institucional (@alumnos.unsada.edu.ar).', '\n',
    'Desde Guarani se puede gestionar inscripcion a materias, bajas y datos censales.', '\n',
    'Fuente: https://www.unsada.edu.ar/index.php/novedades/noticias/426'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Plataformas') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'SIU Guarani - Acceso rapido'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Moodle UNSAdA - Campus virtual',
  CONCAT(
    'Campus Moodle UNSAdA: https://moodle.unsada.edu.ar', '\n',
    'Usar credenciales institucionales.', '\n',
    'Ahi se publican materiales, cronogramas y actividades de cursada.', '\n',
    'Fuente: https://unsada.edu.ar/ (menu Servicios virtuales)'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Plataformas') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Moodle UNSAdA - Campus virtual'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Correo institucional - Alumnos',
  CONCAT(
    'El acceso a servicios academicos se integra con la cuenta institucional de alumno.', '\n',
    'Desde el menu Servicios virtuales tambien figura Correo institucional.', '\n',
    'Recomendacion: iniciar sesion en correo antes de entrar a Guarani/Moodle para simplificar autenticacion.', '\n',
    'Fuente: https://unsada.edu.ar/ y https://www.unsada.edu.ar/index.php/novedades/noticias/426'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Plataformas') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Correo institucional - Alumnos'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Nexos preuniversitario - Acceso',
  CONCAT(
    'Plataforma Nexos UNSAdA: https://moodle.nexos.unsada.edu.ar', '\n',
    'Orientada al curso preuniversitario y recursos de ingreso.', '\n',
    'Fuente: https://unsada.edu.ar/ (menu Servicios virtuales)'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Plataformas') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Nexos preuniversitario - Acceso'
);

-- --------------------------------------------------------
-- 5) Modulos: Tutorias
-- --------------------------------------------------------

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Tutorias academicas - Materias troncales',
  CONCAT(
    'En la pagina de Tutorias se publican espacios de apoyo para Calculo, Introduccion al algebra/calculo, Fisica y Quimica.', '\n',
    'Incluye modalidad presencial y virtual segun sede.', '\n',
    'Importante: validar periodicamente porque la publicacion consultada corresponde a Tutorias 2024.', '\n',
    'Fuente: https://www.unsada.edu.ar/index.php/estudiantes/tutorias'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Tutorias') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Tutorias academicas - Materias troncales'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Tutorias - Contacto y consultas',
  CONCAT(
    'Canales de consulta publicados: telefonos/WhatsApp de sedes y correo del area.', '\n',
    'San Antonio de Areco: 02326 510032.', '\n',
    'Baradero: 3329 524726.', '\n',
    'Fuente: https://www.unsada.edu.ar/index.php/estudiantes/tutorias'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Tutorias') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Tutorias - Contacto y consultas'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Tutorias - Enlaces de apoyo',
  CONCAT(
    'Las tutorias virtuales publicadas incluyen enlaces de videollamada para seguimiento.', '\n',
    'Se recomienda entrar siempre por la pagina oficial para usar enlaces actualizados.', '\n',
    'Fuente: https://www.unsada.edu.ar/index.php/estudiantes/tutorias'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Tutorias') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Tutorias - Enlaces de apoyo'
);

-- --------------------------------------------------------
-- 6) Modulos: Ingresantes
-- --------------------------------------------------------

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Checklist inicial - Ingresantes',
  CONCAT(
    'Guia rapida para arrancar en UNSAdA:', '\n',
    '1) Confirmar inscripcion y documentacion en fechas del calendario academico.', '\n',
    '2) Activar correo institucional de alumno/a.', '\n',
    '3) Entrar a SIU Guarani para revisar datos personales.', '\n',
    '4) Inscribirse a materias del cuatrimestre vigente.', '\n',
    '5) Revisar tutorias y canales de consulta de tu sede.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/calendario-academico-2026'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Ingresantes') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Checklist inicial - Ingresantes'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Cuenta institucional y accesos',
  CONCAT(
    'Accesos recomendados para primer ingreso:', '\n',
    '- Correo institucional (base para notificaciones y recupero de claves).', '\n',
    '- SIU Guarani: inscripciones, historia academica y tramites.', '\n',
    '- Moodle: materiales, actividades y evaluaciones.', '\n',
    '- Nexos (preuniversitario), segun etapa y carrera.', '\n',
    'Fuente: https://www.unsada.edu.ar/ y menu Servicios virtuales.'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Ingresantes') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Cuenta institucional y accesos'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Inscripcion a materias - Primer cuatrimestre',
  CONCAT(
    'Paso a paso:', '\n',
    '1) Entrar a SIU Guarani con cuenta institucional.', '\n',
    '2) Ir a Inscripcion a asignaturas y elegir comision.', '\n',
    '3) Confirmar inscripcion y descargar comprobante.', '\n',
    '4) Verificar correlativas y estado regular en cada materia.', '\n',
    '5) Revisar fechas limite en calendario academico.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/calendario-academico-2026'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Ingresantes') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Inscripcion a materias - Primer cuatrimestre'
);

-- --------------------------------------------------------
-- 7) Modulos: Tramites
-- --------------------------------------------------------

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Guia de tramites academicos - Acceso',
  CONCAT(
    'Centraliza tramites de estudiantes: constancias, equivalencias, readmision, simultaneidad y mas.', '\n',
    'Recomendacion: iniciar siempre por la guia oficial antes de enviar documentacion.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/guia-de-tramites-academica'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Tramites') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Guia de tramites academicos - Acceso'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Readmision - Paso a paso',
  CONCAT(
    '1) Verificar ventana de readmision en calendario academico.', '\n',
    '2) Completar formulario/solicitud segun la guia de tramites.', '\n',
    '3) Adjuntar datos requeridos y esperar confirmacion academica.', '\n',
    '4) Revisar respuesta en canales oficiales de la universidad.', '\n',
    'Fuentes: https://www.unsada.edu.ar/academico/guia-de-tramites-academica y calendario academico 2026.'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Tramites') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Readmision - Paso a paso'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Cambio y simultaneidad de carrera - Paso a paso',
  CONCAT(
    '1) Confirmar periodos habilitados (febrero/julio/noviembre segun tramite).', '\n',
    '2) Ingresar solicitud en el canal oficial indicado por Academica.', '\n',
    '3) Presentar documentacion de respaldo cuando corresponda.', '\n',
    '4) Hacer seguimiento del estado del tramite.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/calendario-academico-2026'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Tramites') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Cambio y simultaneidad de carrera - Paso a paso'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Equivalencias - Paso a paso',
  CONCAT(
    '1) Revisar periodos habilitados para equivalencias en calendario vigente.', '\n',
    '2) Reunir programas y certificados de materias aprobadas.', '\n',
    '3) Presentar solicitud por via oficial de la guia de tramites.', '\n',
    '4) Esperar evaluacion academica y notificacion final.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/guia-de-tramites-academica'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Tramites') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Equivalencias - Paso a paso'
);

-- --------------------------------------------------------
-- 8) Modulos: Carreras
-- --------------------------------------------------------

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Carreras - Informatica y tecnologia',
  CONCAT(
    'Oferta academica oficial UNSAdA:', '\n',
    '- Licenciatura en Informatica | 5 anos.', '\n',
    '- Analista en Informatica | 3 anos.', '\n',
    'Area: Escuela de Desarrollo Productivo y Tecnologico.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/oferta-academica'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Carreras') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Carreras - Informatica y tecnologia'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Carreras - Produccion agropecuaria',
  CONCAT(
    'Oferta academica oficial UNSAdA:', '\n',
    '- Ingenieria Zootecnista | 5 anos.', '\n',
    '- Tecnicatura Universitaria en Produccion Agropecuaria | 3 anos.', '\n',
    'Area: Escuela de Desarrollo Productivo y Tecnologico.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/oferta-academica'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Carreras') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Carreras - Produccion agropecuaria'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Carreras - Gestion ambiental e industria',
  CONCAT(
    'Oferta academica oficial UNSAdA:', '\n',
    '- Licenciatura en Gestion Ambiental | 4 anos.', '\n',
    '- Tecnicatura Universitaria en Gestion Ambiental | 2 anos.', '\n',
    '- Licenciatura en Gestion Ambiental - Ciclo de Complementacion Curricular | 2 anos.', '\n',
    '- Tecnicatura Universitaria en Mantenimiento Industrial | 2 anos y medio.', '\n',
    '- Licenciatura en Higiene y Seguridad en el Trabajo - Ciclo de Complementacion Curricular | 2 anos.', '\n',
    'Area: Escuela de Desarrollo Productivo y Tecnologico.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/oferta-academica'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Carreras') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Carreras - Gestion ambiental e industria'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Carreras - Administracion y gestion',
  CONCAT(
    'Oferta academica oficial UNSAdA:', '\n',
    '- Licenciatura en Administracion | 4 anos.', '\n',
    '- Tecnicatura Universitaria en Administracion y Gestion | 2 anos.', '\n',
    '- Licenciatura en Administracion - Ciclo de Complementacion | 2 anos.', '\n',
    '- Licenciatura en Gestion del Patrimonio Cultural | 4 anos y medio.', '\n',
    '- Tecnicatura Universitaria en Gestion del Patrimonio Cultural | 3 anos.', '\n',
    'Area: Escuela de Desarrollo Social y Humano.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/oferta-academica'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Carreras') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Carreras - Administracion y gestion'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Carreras - Salud',
  CONCAT(
    'Oferta academica oficial UNSAdA:', '\n',
    '- Licenciatura en Fonoaudiologia | 5 anos.', '\n',
    '- Licenciatura en Enfermeria | 5 anos.', '\n',
    '- Tecnicatura Universitaria en Acompanamiento Terapeutico | 3 anos.', '\n',
    '- Tecnicatura Universitaria en Gerontologia | 3 anos.', '\n',
    '- Enfermeria Universitaria | 3 anos y medio.', '\n',
    '- Tecnicatura Universitaria en Podologia | 3 anos.', '\n',
    'Area: Escuela de Desarrollo Social y Humano.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/oferta-academica'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Carreras') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Carreras - Salud'
);

INSERT INTO `module` (`title`, `content`, `created_at`, `deleted_at`, `topic_id`, `image_path`)
SELECT
  'Carreras - Educacion',
  CONCAT(
    'Oferta academica oficial UNSAdA:', '\n',
    '- Licenciatura en Gestion Educativa - Ciclo de Complementacion Curricular | 2 anos.', '\n',
    'Observacion oficial: algunas propuestas pueden dictarse a cohorte cerrada segun extension aulica.', '\n',
    'Fuente: https://www.unsada.edu.ar/academico/oferta-academica'
  ),
  NOW(),
  NULL,
  t.idtopic,
  NULL
FROM (
  SELECT idtopic FROM `topic` WHERE LOWER(TRIM(`name`)) = LOWER('Carreras') ORDER BY idtopic LIMIT 1
) t
WHERE NOT EXISTS (
  SELECT 1 FROM `module` WHERE `title` = 'Carreras - Educacion'
);

-- --------------------------------------------------------
-- 9) Correlatividades (MVP inicial)
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `correlativity` (
  `idcorrelativity` BIGINT NOT NULL AUTO_INCREMENT,
  `career_key` VARCHAR(120) NOT NULL,
  `career_name` VARCHAR(255) NOT NULL,
  `plan_name` VARCHAR(255) DEFAULT NULL,
  `plan_year` INT DEFAULT NULL,
  `subject_code` VARCHAR(20) DEFAULT NULL,
  `subject_name` VARCHAR(255) NOT NULL,
  `subject_year` INT DEFAULT NULL,
  `subject_term` VARCHAR(40) DEFAULT NULL,
  `requirement_codes` VARCHAR(120) DEFAULT NULL,
  `requirement_subjects` TEXT DEFAULT NULL,
  `notes` TEXT DEFAULT NULL,
  `source_url` VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (`idcorrelativity`),
  KEY `idx_correlativity_career_key` (`career_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'A',
  'Algoritmos y programacion I',
  1,
  '1C',
  NULL,
  'Sin correlativas previas.',
  NULL,
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'A'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'E',
  'Algoritmos y programacion II',
  1,
  '2C',
  'A',
  'Algoritmos y programacion I',
  'Para cursar esta materia, se requiere tener aprobada/cursada la correlativa indicada en el plan.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'E'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'F',
  'Matematica II',
  1,
  '2C',
  'B',
  'Matematica I',
  'Para cursar esta materia, se requiere tener aprobada/cursada la correlativa indicada en el plan.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'F'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'G',
  'Arquitectura de computadoras',
  1,
  '2C',
  'C',
  'Sistemas digitales',
  'Para cursar esta materia, se requiere tener aprobada/cursada la correlativa indicada en el plan.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'G'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'K',
  'Estructura de datos',
  2,
  '1C',
  'E',
  'Algoritmos y programacion II',
  'La imagen de correlatividades del plan muestra E como requisito.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'K'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'L',
  'Base de datos',
  2,
  '2C',
  'K',
  'Estructura de datos',
  'La imagen de correlatividades del plan muestra K como requisito.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'L'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'M',
  'Matematica Discreta',
  2,
  '2C',
  'H',
  'Matematica III',
  'La imagen de correlatividades del plan muestra H como requisito.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'M'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'N',
  'Ingenieria de software II',
  2,
  '2C',
  'I',
  'Ingenieria de software I',
  'La imagen de correlatividades del plan muestra I como requisito.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'N'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'O',
  'Probabilidad y Estadistica',
  3,
  '1C',
  'M',
  'Matematica Discreta',
  'Correlativas del tercer ano segun plan publicado.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'O'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'analista-informatica',
  'Analista en Informatica',
  'Plan de carrera 2021',
  2021,
  'S',
  'Ingles tecnico',
  3,
  '1C',
  'E,L',
  'Algoritmos y programacion II + Base de datos',
  'Correlativas del tercer ano segun plan publicado.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Analista_en_Informatica.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'analista-informatica' AND `subject_code` = 'S'
);

-- Cobertura de todas las carreras (registro base por carrera)
-- Nota: Analista en Informatica ya tiene detalle extendido.
INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'licenciatura-informatica',
  'Licenciatura en Informatica',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/oferta-academica'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'licenciatura-informatica' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'ingenieria-zootecnista',
  'Ingenieria Zootecnista',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Ingenieria_Zootecnista.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'ingenieria-zootecnista' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'tecnicatura-produccion-agropecuaria',
  'Tecnicatura Universitaria en Produccion Agropecuaria',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/oferta-academica'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'tecnicatura-produccion-agropecuaria' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'licenciatura-gestion-ambiental',
  'Licenciatura en Gestion Ambiental',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Licenciatura_Gestion_Ambiental.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'licenciatura-gestion-ambiental' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'tecnicatura-gestion-ambiental',
  'Tecnicatura Universitaria en Gestion Ambiental',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/oferta-academica'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'tecnicatura-gestion-ambiental' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'tecnicatura-mantenimiento-industrial',
  'Tecnicatura Universitaria en Mantenimiento Industrial',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/oferta-academica'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'tecnicatura-mantenimiento-industrial' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'licenciatura-higiene-seguridad-cicc',
  'Licenciatura en Higiene y Seguridad en el Trabajo - Ciclo de Complementacion Curricular',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/oferta-academica'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'licenciatura-higiene-seguridad-cicc' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'licenciatura-administracion',
  'Licenciatura en Administracion',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/Licenciatura_Administracion.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'licenciatura-administracion' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'tecnicatura-administracion-gestion',
  'Tecnicatura Universitaria en Administracion y Gestion',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/ingresantes/inscripcion/334-informatica-4'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'tecnicatura-administracion-gestion' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'enfermeria-universitaria',
  'Enfermeria Universitaria',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://unsada.edu.ar/images/academico/planes_de_carrera_2021/enfermeria_universitaria.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'enfermeria-universitaria' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'tecnicatura-acompanamiento-terapeutico',
  'Tecnicatura Universitaria en Acompanamiento Terapeutico',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/images/academico/planes_de_carrera_2021/acompanante_terapeutico.pdf'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'tecnicatura-acompanamiento-terapeutico' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'tecnicatura-gerontologia',
  'Tecnicatura Universitaria en Gerontologia',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/ingresantes/inscripcion/336-informatica-6'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'tecnicatura-gerontologia' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'licenciatura-fonoaudiologia',
  'Licenciatura en Fonoaudiologia',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/ingresantes/inscripcion/336-informatica-6'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'licenciatura-fonoaudiologia' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'licenciatura-gestion-educativa-cicc',
  'Licenciatura en Gestion Educativa - Ciclo de Complementacion Curricular',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/oferta-academica'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'licenciatura-gestion-educativa-cicc' AND `subject_code` = 'PLAN'
);

INSERT INTO `correlativity`
(`career_key`, `career_name`, `plan_name`, `plan_year`, `subject_code`, `subject_name`, `subject_year`, `subject_term`, `requirement_codes`, `requirement_subjects`, `notes`, `source_url`)
SELECT
  'licenciatura-administracion-cicc',
  'Licenciatura en Administracion - Ciclo de Complementacion Curricular',
  'Plan de carrera vigente',
  2026,
  'PLAN',
  'Plan de correlatividades oficial',
  NULL,
  NULL,
  NULL,
  'Consultar PDF oficial de la carrera para ver todas las correlatividades por materia.',
  'Cobertura general de carrera en la app. Se puede ampliar con detalle materia por materia.',
  'https://www.unsada.edu.ar/academico/oferta-academica'
WHERE NOT EXISTS (
  SELECT 1 FROM `correlativity`
  WHERE `career_key` = 'licenciatura-administracion-cicc' AND `subject_code` = 'PLAN'
);

-- --------------------------------------------------------
-- 10) Alertas de ingresantes (MVP)
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `app_alert` (
  `idapp_alert` BIGINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `message` TEXT NOT NULL,
  `alert_date` DATE NOT NULL,
  `end_date` DATE DEFAULT NULL,
  `category` VARCHAR(120) NOT NULL,
  `audience` VARCHAR(120) NOT NULL,
  `important` TINYINT(1) NOT NULL DEFAULT 0,
  `source_url` VARCHAR(500) DEFAULT NULL,
  `created_at` DATETIME NOT NULL,
  PRIMARY KEY (`idapp_alert`),
  KEY `idx_app_alert_dates` (`alert_date`, `end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `app_alert`
(`title`, `message`, `alert_date`, `end_date`, `category`, `audience`, `important`, `source_url`, `created_at`)
SELECT
  'Inscripcion a carreras 2026 abierta',
  'La inscripcion para ingresantes 2026 se publica en el calendario academico y preinscripcion oficial.',
  '2025-08-04',
  '2025-12-31',
  'Inscripcion',
  'Ingresantes',
  1,
  'https://www.unsada.edu.ar/academico/calendario-academico-2025',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `app_alert` WHERE `title` = 'Inscripcion a carreras 2026 abierta'
);

INSERT INTO `app_alert`
(`title`, `message`, `alert_date`, `end_date`, `category`, `audience`, `important`, `source_url`, `created_at`)
SELECT
  'Cierre Progresar 2026',
  'La convocatoria Progresar nivel superior informo cierre el 30/04/2026. Verificar extensiones o nuevas ventanas.',
  '2026-04-30',
  '2026-05-07',
  'Becas',
  'Estudiantes',
  1,
  'https://unsada.edu.ar/extension/bienestar-universitario/becas-estudiantiles?start=2',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `app_alert` WHERE `title` = 'Cierre Progresar 2026'
);

INSERT INTO `app_alert`
(`title`, `message`, `alert_date`, `end_date`, `category`, `audience`, `important`, `source_url`, `created_at`)
SELECT
  'Mesas finales 2do turno',
  'Inscripcion abierta desde el 27/04/2026. Mesas finales del 11/05/2026 al 16/05/2026.',
  '2026-04-27',
  '2026-05-16',
  'Examenes',
  'Estudiantes',
  1,
  'https://www.unsada.edu.ar/estudiantes/calendario-academico',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `app_alert` WHERE `title` = 'Mesas finales 2do turno'
);

INSERT INTO `app_alert`
(`title`, `message`, `alert_date`, `end_date`, `category`, `audience`, `important`, `source_url`, `created_at`)
SELECT
  'Readmision y cambio de carrera (julio)',
  'Ventana administrativa de julio para readmision, simultaneidad y cambio de carrera. Revisar guia de tramites.',
  '2025-06-23',
  '2025-07-18',
  'Tramites',
  'Estudiantes',
  0,
  'https://www.unsada.edu.ar/academico/guia-de-tramites-academica',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `app_alert` WHERE `title` = 'Readmision y cambio de carrera (julio)'
);

-- --------------------------------------------------------
-- 11) FAQ de ingresantes (Punto 8)
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `ingresante_faq` (
  `idfaq` BIGINT NOT NULL AUTO_INCREMENT,
  `question` VARCHAR(500) NOT NULL,
  `answer` TEXT NOT NULL,
  `category` VARCHAR(120) NOT NULL,
  `display_order` INT NOT NULL,
  `source_url` VARCHAR(500) DEFAULT NULL,
  `created_at` DATETIME NOT NULL,
  PRIMARY KEY (`idfaq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ingresante_faq`
(`question`, `answer`, `category`, `display_order`, `source_url`, `created_at`)
SELECT
  'Si desapruebo una materia, perdi el ano?',
  'No. En general no perdes todo el ano. Revisa si la materia tiene correlativas y volve a planificar con SIU Guarani y tutoria.',
  'Cursada',
  1,
  'https://www.unsada.edu.ar/estudiantes/tutorias',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `ingresante_faq` WHERE `question` = 'Si desapruebo una materia, perdi el ano?'
);

INSERT INTO `ingresante_faq`
(`question`, `answer`, `category`, `display_order`, `source_url`, `created_at`)
SELECT
  'Que significa regularizar una materia?',
  'Regularizar suele significar cumplir condiciones de cursada para luego rendir final. Verifica siempre el reglamento de tu catedra.',
  'Cursada',
  2,
  'https://g3w.unsada.edu.ar',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `ingresante_faq` WHERE `question` = 'Que significa regularizar una materia?'
);

INSERT INTO `ingresante_faq`
(`question`, `answer`, `category`, `display_order`, `source_url`, `created_at`)
SELECT
  'No entiendo SIU Guarani, por donde empiezo?',
  'Primero confirma tus datos personales, luego mira inscripcion a materias y finalmente historial academico. Si te trabas, pedi ayuda en tutoria.',
  'Plataformas',
  3,
  'https://g3w.unsada.edu.ar',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `ingresante_faq` WHERE `question` = 'No entiendo SIU Guarani, por donde empiezo?'
);

INSERT INTO `ingresante_faq`
(`question`, `answer`, `category`, `display_order`, `source_url`, `created_at`)
SELECT
  'Trabajo y estudio: como organizo el cuatrimestre?',
  'Empeza con menos materias, prioriza correlativas clave y usa calendario con recordatorios de parciales, finales y vencimientos.',
  'Organizacion',
  4,
  'https://www.unsada.edu.ar/academico/calendario-academico-2025',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `ingresante_faq` WHERE `question` = 'Trabajo y estudio: como organizo el cuatrimestre?'
);

INSERT INTO `ingresante_faq`
(`question`, `answer`, `category`, `display_order`, `source_url`, `created_at`)
SELECT
  'Si me quiero cambiar de carrera, que hago?',
  'Hay periodos definidos para cambio de carrera. Revisalos en el calendario y completalo por la guia de tramites academica.',
  'Tramites',
  5,
  'https://www.unsada.edu.ar/academico/guia-de-tramites-academica',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `ingresante_faq` WHERE `question` = 'Si me quiero cambiar de carrera, que hago?'
);

INSERT INTO `ingresante_faq`
(`question`, `answer`, `category`, `display_order`, `source_url`, `created_at`)
SELECT
  'Donde veo todas las correlatividades oficiales?',
  'Entrando al plan de carrera de tu carrera. En la app tenes un resumen inicial, pero la referencia final es el PDF oficial de UNSAdA.',
  'Correlativas',
  6,
  'https://www.unsada.edu.ar/academico/oferta-academica',
  NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM `ingresante_faq` WHERE `question` = 'Donde veo todas las correlatividades oficiales?'
);

COMMIT;
