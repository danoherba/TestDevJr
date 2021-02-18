/*Se borra cualquier base existente con el conmre prueba2test para poder crear una nueva*/
DROP DATABASE IF EXISTS prueba2test;
CREATE DATABASE prueba2test;
/*Se selecciona la base prueba2test*/
USE prueba2test;
/*Se crea la tabla logDial*/
CREATE TABLE logDial
(
idLlamada varchar(10),
fechaDeLlamada dateTime,
tiempoDialogo smallint,
telefono varchar(10),
tipoDeLlamada varchar(15)
);
/*Se crea la tabla costos*/
CREATE TABLE costos
(
  tipoDeLlamada varchar(15),
  costo decimal(10,4)
);
/*Se insertan 129 registros a la tabla logDial*/
INSERT INTO logDial VALUES
('197463','2020/01/01',60,'8000000001','Cel LD'),
('197464','2020/01/02',60,'8000000002','Cel LD'),
('197465','2020/01/03',240,'8000000003','Cel LD'),
('197466','2020/01/04',60,'8000000004','Cel LD'),
('197467','2020/01/05',60,'8000000005','Cel LD'),
('197468','2020/01/06',60,'8000000006','Cel LD'),
('197469','2020/01/07',60,'8000000007','Cel'),
('197470','2020/01/08',120,'8000000008','LD nacional'),
('197471','2020/01/09',60,'8000000009','Cel LD'),
('197472','2020/01/10',60,'8000000010','Cel LD'),
('197473','2020/01/11',120,'8000000011','Cel LD'),
('197474','2020/01/12',60,'8000000012','LD nacional'),
('197475','2020/01/13',60,'8000000013','LD nacional'),
('197476','2020/01/14',60,'8000000014','Cel'),
('197477','2020/01/15',120,'8000000015','Cel LD'),
('197478','2020/01/16',60,'8000000016','Cel LD'),
('197479','2020/01/17',60,'8000000017','Cel'),
('197480','2020/01/18',60,'8000000018','Cel LD'),
('197481','2020/01/19',180,'8000000019','LD nacional'),
('197482','2020/01/20',120,'8000000020','LD nacional'),
('197483','2020/01/21',60,'8000000021','Cel LD'),
('197484','2020/01/22',60,'8000000022','Cel LD'),
('197485','2020/01/23',60,'8000000023','Cel LD'),
('197486','2020/01/24',120,'8000000024','Cel LD'),
('197487','2020/01/25',60,'8000000025','Cel LD'),
('197488','2020/01/26',60,'8000000026','Cel LD'),
('197489','2020/01/27',120,'8000000027','Cel LD'),
('197490','2020/01/28',60,'8000000028','Cel LD'),
('197491','2020/01/29',76,'8000000029','Cel LD'),
('197492','2020/01/30',60,'8000000030','Cel LD'),
('197493','2020/01/31',60,'8000000031','Cel'),
('197494','2020/02/01',60,'8000000032','Cel'),
('197495','2020/02/02',60,'8000000033','Cel'),
('197496','2020/02/03',240,'8000000034','Cel LD'),
('197497','2020/02/04',60,'8000000035','Cel LD'),
('197498','2020/02/05',240,'8000000036','Cel LD'),
('197499','2020/02/06',120,'8000000037','Cel LD'),
('197500','2020/02/07',95,'8000000038','Cel LD'),
('197501','2020/02/08',60,'8000000039','Cel LD'),
('197502','2020/02/09',60,'8000000040','Cel LD'),
('197503','2020/02/10',360,'8000000041','Cel LD'),
('197504','2020/02/11',60,'8000000042','Cel'),
('197505','2020/02/12',60,'8000000043','Cel LD'),
('197506','2020/02/13',60,'8000000044','Cel LD'),
('197507','2020/02/14',120,'8000000045','Cel LD'),
('197508','2020/02/15',60,'8000000046','Cel LD'),
('197509','2020/02/16',60,'8000000047','Cel LD'),
('197510','2020/02/17',120,'8000000048','Cel LD'),
('197511','2020/02/18',120,'8000000049','Cel LD'),
('197512','2020/02/19',60,'8000000050','Cel LD'),
('197513','2020/02/20',85,'8000000051','Cel LD'),
('197514','2020/02/21',60,'8000000052','Cel'),
('197515','2020/02/22',60,'8000000053','Cel'),
('197516','2020/02/23',120,'8000000054','Cel LD'),
('197517','2020/02/24',120,'8000000055','Cel LD'),
('197518','2020/02/25',240,'8000000056','Cel LD'),
('197519','2020/02/26',60,'8000000057','Cel LD'),
('197520','2020/02/27',180,'8000000058','Cel LD'),
('197521','2020/02/28',180,'8000000059','Cel LD'),
('197522','2020/02/29',120,'8000000060','Cel'),
('197523','2020/03/01',60,'8000000061','Cel'),
('197524','2020/03/02',60,'8000000062','Cel LD'),
('197525','2020/03/03',120,'8000000063','Cel LD'),
('197526','2020/03/04',60,'8000000064','Cel LD'),
('197527','2020/03/05',60,'8000000065','Cel'),
('197528','2020/03/06',60,'8000000066','Cel LD'),
('197529','2020/03/07',60,'8000000067','Cel'),
('197530','2020/03/08',60,'8000000068','Cel LD'),
('197531','2020/03/09',60,'8000000069','Cel LD'),
('197532','2020/03/10',60,'8000000070','Cel LD'),
('197533','2020/03/11',60,'8000000071','Cel LD'),
('197534','2020/03/12',120,'8000000072','Cel LD'),
('197535','2020/03/13',60,'8000000073','Cel LD'),
('197536','2020/03/14',60,'8000000074','Cel'),
('197537','2020/03/15',60,'8000000075','Cel LD'),
('197538','2020/03/16',120,'8000000076','Cel LD'),
('197539','2020/03/17',60,'8000000077','Cel'),
('197540','2020/03/18',60,'8000000078','Cel LD'),
('197541','2020/03/19',86,'8000000079','Cel LD'),
('197542','2020/03/20',120,'8000000080','Cel'),
('197543','2020/03/21',120,'8000000081','Cel LD'),
('197544','2020/03/22',60,'8000000082','Cel LD'),
('197545','2020/03/23',77,'8000000083','Cel LD'),
('197546','2020/03/24',60,'8000000084','Cel'),
('197547','2020/03/25',60,'8000000085','Cel LD'),
('197548','2020/03/26',120,'8000000086','Cel LD'),
('197549','2020/03/27',180,'8000000087','Cel LD'),
('197550','2020/03/28',180,'8000000088','Cel LD'),
('197551','2020/03/29',60,'8000000089','Local'),
('197552','2020/03/30',60,'8000000090','LD nacional'),
('197553','2020/03/31',60,'8000000091','Cel LD'),
('197554','2020/04/01',60,'8000000092','Cel LD'),
('197555','2020/04/02',60,'8000000093','Cel LD'),
('197556','2020/04/03',180,'8000000094','Cel'),
('197557','2020/04/04',60,'8000000095','Cel LD'),
('197558','2020/04/05',196,'8000000096','Cel'),
('197559','2020/04/06',60,'8000000097','Cel LD'),
('197560','2020/04/07',60,'8000000098','Cel'),
('197561','2020/04/08',60,'8000000099','Cel LD'),
('197562','2020/04/09',60,'8000000100','Cel'),
('197563','2020/04/10',60,'8000000101','Cel'),
('197564','2020/04/11',60,'8000000102','Cel LD'),
('197565','2020/04/12',60,'8000000103','Cel'),
('197566','2020/04/13',120,'8000000104','Cel LD'),
('197567','2020/04/14',180,'8000000105','Cel'),
('197568','2020/04/15',60,'8000000106','Cel LD'),
('197569','2020/04/16',60,'8000000107','Cel LD'),
('197570','2020/04/17',60,'8000000108','Cel LD'),
('197571','2020/04/18',180,'8000000109','Cel LD'),
('197572','2020/04/19',60,'8000000110','Cel LD'),
('197573','2020/04/20',60,'8000000111','LD nacional'),
('197574','2020/04/21',60,'8000000112','Cel LD'),
('197575','2020/04/22',60,'8000000113','Cel LD'),
('197576','2020/04/23',60,'8000000114','Cel LD'),
('197577','2020/04/24',60,'8000000115','Cel'),
('197578','2020/04/25',60,'8000000116','Cel LD'),
('197579','2020/04/26',60,'8000000117','Cel LD'),
('197580','2020/04/27',240,'8000000118','Cel LD'),
('197581','2020/04/28',60,'8000000119','Cel LD'),
('197582','2020/04/29',60,'8000000120','Cel LD'),
('197583','2020/04/30',120,'8000000121','Cel LD'),
('197584','2020/05/01',60,'8000000122','Cel LD'),
('197585','2020/05/02',60,'8000000123','Cel LD'),
('197586','2020/05/03',120,'8000000124','LD nacional'),
('197587','2020/05/04',60,'8000000125','Cel LD'),
('197588','2020/05/05',60,'8000000126','LD nacional'),
('197589','2020/05/06',60,'8000000127','Cel'),
('197590','2020/05/07',60,'8000000128','Cel LD'),
('197591','2020/05/08',120,'8000000129','Cel LD');
/*Se insertan 3 resgitros a la tabla costos*/
INSERT INTO costos VALUES ('Cel',0.4),('LD nacional',0.12),('Cel LD',0.5);
/*Se muestran los registros con tipo de llamada Cel LD durante el mes febrero*/
SELECT * FROM logDial WHERE tipoDeLlamada='Cel LD' AND MONTH(fechaDeLlamada)=2;
/*Se indica el promedio de tiempo de dialogo de las llamadas con tipo Cel LD durante el mes de febrero*/
SELECT AVG(tiempoDialogo) AS tiempo_promedio FROM logDial WHERE tipoDeLlamada='Cel LD' AND MONTH(fechaDeLlamada)=2;
/*Se muestran todas las llamaas y sus minutos de dialogo y el costo de todas la llamadas en el mes de enero
Se muestra ademas el tipo de llamada y el costo por minuto según sea el tipo*/
SELECT l.idLlamada, (l.tiempoDialogo/60) AS tiempo_en_minutos,
 l.tipoDeLlamada, c.costo AS costo_X_minuto,
 (c.costo*(l.tiempoDialogo/60)) AS costo_de_llamada ,l.fechaDeLlamada
FROM logDial l, costos c
WHERE MONTH(l.fechaDeLlamada)=1 AND l.tipoDeLlamada=c.tipoDeLlamada;
