create database imobiliaria;
use imobiliaria;
create table cliente(
codigo_cliente decimal(4) primary key,
nome_cliente varchar(50),
telefone varchar(13),
cpf decimal(11),
rg varchar(10),
rua varchar(50),
bairro varchar(20),
cidade varchar(20),
cep char(9),
datanasc date);

insert into cliente(codigo_cliente,cpf,rg,nome_cliente,rua,bairro,cidade,cep, datanasc,telefone) 
values(1111,12345678901,'MG11222333','Maria das Dores',
'Prof. Cunha Figueiredo','Mundo Novo','Juiz de Fora','36033-143','1995-03-11','(32)3222-1199'),
(1212,23456789012,'MG22333444','Otávia Neto Braga',
'Moraes e Castro','São Mateus','Juiz de Fora','35044-123','1990-08-15','(24)2255-3397'),
(1313,34567890123,'MG33444555','Geralda Paiva Britto',
'Dr. Paulo Japiassu Coelho','Cascatinha','Juiz de Fora','36033-215','1942-12-22','(32)3304-5879'),
(1414,45678901234,'MG44555666','Natália Almeida Pascoalino',
'Av. Rio Branco','Centro','Juiz de Fora','36036-123','1974-01-23','(32)4545-6562'),
(1515,56789012345,'MG55666777','Antônio dos Santos Martins',
'Olegário Maciel','Paineiras','Juiz de Fora','36035-444','1964-05-06','(32)5632-2244'),
(1616,67890123456,'MG66777888','Freddy Alexandre Silva',
'Oswaldo Aranha','Centro','Juiz de Fora','36022-111','1955-04-12','(21)3312-4455'),
(1717,78901234567,'MG77888999','Maria Perpétua Natalina',
'Osório Tristão','Santa Candida','Juiz de Fora','36044-123','1974-12-11','(32)6525-4712'),
(1818,89012345678,'MG88999000','Feliciana Margarida de Jesus',
'Capitão Arnaldo de Carvalho','Vale do Ipê','Juiz de Fora','36066-789','1964-06-22','(32)4632-7080'),
(1919,90123456789,'MG99888777','Gláucia Almeida Pascoalino',
'Av. dos Andradas','Centro','Juiz de Fora','36054-123','1947-09-04','(44)5623-4102'),
(2222,11223344556,'MG12345678','Isadora de Freitas','Padre Frederico','Santa Catarina','Juiz de Fora','36022-450','2000-08-13','(32)8451-9625'),
(2020,22334455667,'MG23456789','Maria Fernanda de Oliveira','Barão de São João Nepomuceno','Centro','Juiz de Fora','36020-655','2004-02-16','(24)3234-5658'),
(2121,33445566778,'MG34567890','Pedro Henrique Miranda','Rua Moraes e Castro','São Mateus','Juiz de Fora','36015-077','1992-01-26','(21)2333-4548');

create table proprietario(
codigo_proprietario decimal(4) primary key,
nome_proprietario varchar(20),
sobrenome varchar(20),
cpf decimal(11)
);

insert into proprietario values
(100,'Maria Alice','Sobreira',11122233344),
(101,'Cassia','de Jesus',22233344455),
(102,'Gina','Silva',33344455566),
(103,'Eduardo','Cerqueira',44455566677),
(104,'Bruna','Lima',55566677788),
(105,'Rachel','Santos',66677788899),
(106,'Paulo','Candido',77788899900),
(107,'Melina','Duarte',88899900011),
(108,'Otávia','Neto',99900011122),
(109,'Bernice','Matias',11111111111),
(110,'Alison','Cardoso',22222222222),
(111,'Nicholas','Martinho',33333333333),
(112,'Anderson','Silveira',44444444444),
(113,'Jennifer','Camargo',55555555555),
(114,'Brenda','Coutinho',66666666666),
(115,'Edimar','Ramirez',77777777777),
(116,'Isabella','Rossellini',88888888888),
(117,'Sofia','Coelho',99999999999),
(118,'Alec','Ramos',10101010110),
(119,'Augusto','Martins',12121212121),
(120,'Leonardo','Fonseca',13131313131),
(121,'Tiago','Valadares',14141414141),
(122,'Alicia','Medina',15151515151),
(123,'Cecilia','Paiva',16161616161),
(124,'Ana Carolina','Castro',17171717171),
(125,'Sofia','Correa',18181818181),
(126,'Vanessa','Campos',19191919191),
(127,'Teresa','Roncado',1111222233),
(128,'Antonio','Pires',2222333344),
(129,'Marcelo','Novaes',3333444455),
(130,'Marlon','Ferreira',4444555566),
(131,'Karina','Pereira',5555666677),
(132,'Gabriela','Horta',6666777788),
(133,'Lázaro','Cunha',7777888899),
(134,'Beatriz','Santana',8888999900),
(135,'Adriana','Esteves',9999000011),
(136,'Natália','Gomes',99988877766),
(137,'Tatiana','Magalhães',88877766655);

CREATE TABLE tipo_imovel(
codigo_tipo DECIMAL(3) PRIMARY KEY,
tipo VARCHAR(20)
);

insert into TIPO_IMOVEL VALUES 
(1, 'Apartamento'),
(2,'Casa'),
(3,'Cobertura'),
(4,'Galpão'),
(5,'Garagem'),
(6,'Granja'),
(7,'Loft'),
(8,'Loja'),
(9,'Lote ou Terreno'),
(10,'Quitinete'),
(11,'Sala'),
(12,'Sobrado');

CREATE TABLE IMOVEL(
codigo_imovel DECIMAL(3) PRIMARY KEY,
rua varchar(50),
bairro varchar(20),
cidade varchar(20),
cep char(9),
codigo_tipo decimal(3),
descricao varchar(500),
constraint fk_tipo foreign key(codigo_tipo) references tipo_imovel(codigo_tipo) on delete cascade on update cascade
);

insert into imovel values(300,'Tiradentes 180 apto 303','Centro','Juiz de Fora','36021-148',1,'2 quartos, sala, cozinha com armários, banho social, área, garagem'),
(400,'Rua Dr Edgard Carlos Pereira 450','Santa Tereza','Juiz de Fora','36022-441',1,'3 QUARTOS (SUITE), SALA 2 AMBIENTES COM VARANDA, BANHO SOCIAL, COZINHA, ÁREA DE SERVIÇO, 2 VAGAS'),
(500,'Rua Dr Constantino Paleta 18','Centro','Juiz de Fora','36025-144',2,'CASA 7 QUARTOS ( 2 SUÍTES SENDO 1 MASTER), ESCRITÓRIO, SALA DE TV, SALÃO 4 AMBIENTES, LAVABO, BANHO SOCIAL, COZINHA PLANEJADA, ÁREA DE SERVIÇO, DCE, VARANDÃO COM 120M², LAVANDERIA, 7 VAGAS COBERTAS, HORTA COM IRRIGAÇÃO, JARDIM TODO GRAMADO, POMAR COMPLETO COM VÁRIOS TIPOS DE ARVORES FRUTÍFERAS'),
(600,'Rua Padre Cafe 600','São Mateus','Juiz de Fora','36012-850',2,'Casa Duplex: 1° andar: salão 3 ambientes com lareira, lavabo, cozinha planejada, dispensa, área de serviço, área de lazer com piscina, sauna, DCE. '),
(700,'Av Pres Itamar Franco 1080','São Mateus','Juiz de Fora','36015-230',3,'Casa Duplex: 1º piso: suíte, sala de estar com pé direito duplo e cortina de vidro, sala de tv, sala de jantar com vista, lavabo, copa cozinha planejada, despensa, '),
(800,'Av. Barão do Rio Branco 4132','Centro','Juiz de Fora','36055-330',3,'Cobertura: 1 apt por andar: 1°piso: 3 quartos (2 suítes), hall privativo, salão 3 ambientes, copa cozinha planejada, ilha, varanda, lavanderia, banho. '),
(900,'Rua Halfeld 684','Centro','Juiz de Fora','36088-512',3,'Cobertura: 1°piso: suíte, sala com varanda 2 ambientes, sala de TV, cozinha planejada, área de serviço com armários, DCE. 
2° piso: 3 quartos (2 suítes com armários), saleta, terraço com espaço gourmet.'),
(100,'Av. Barão do Rio Branco 4780','Centro','Juiz de Fora','36044-220',1,'3 quartos (suíte e closet), sala 2 ambientes com varanda, banho social, copa cozinha, área de serviço, DCE, 2 vagas paralelas, salão de festas, 2 elevadores, portaria 24horas, piscina, fitness, sauna, área de lazer completa'),
(200,'Av Pres Itamar Franco 1022','Dom Bosco','Juiz de Fora','36025-654',5,'Garagem'),
(111,'Rua Rei Alberto 520','Centro','Juiz de Fora','36089-774',10,'Kitnet, salão, cozinha, banho. Prédio com portaria 24 hs e elevador.'),
(222,'Av. Barão do Rio Branco 3211','Centro','Juiz de Fora','36022-113',8,'LOJA COM 140M² DE PISO
SOBRE LOJA PÉ DIREITO NO FUNDO DA LOJA, PROPORCIONA CONDIÇÕES DE FAZER +-20 A 25M²'),
(333,'Av. Barão do Rio Branco 4442','São Mateus','Juiz de Fora','36011-223',8,'Loja e sobreloja com 57m²'),
(444,'Av. Barão do Rio Branco 7280','Centro','Juiz de Fora','36027-145',10,'QUITINETE, GARAGEM, LAZER COMPLETO NO TERRAÇO.'),
(555,'Av. dos Andradas 560','Centro','Juiz de Fora','36054-123',5,'GARAGEM ULTIMO PISO'),
(666,'Padre Frederico 124','Santa Catarina','Juiz de Fora','36022-450',2,'Casa Duplex: 1°piso: suíte, sala de jantar, salão de estar com varanda, sala de TV, escritório. lavabo, copa cozinha planejada, lavanderia, canil, área externa com piscina, espaço gourmet, 
2º piso: 4 quartos (2 suítes sendo 1 com closet), varanda, banho social, terraço,3 vagas.'),
(777,'Barão de São João Nepomuceno','Centro','Juiz de Fora','36020-655',1,' 2 quartos com armários (suíte), sala 2 ambientes, banho social, cozinha planejada, área de serviço, banho de serviço, área externa 12m² fundos e 35m² frente, área de serviço, 2 vagas paralelas'),
(888,'Rua Moraes e Castro 515','São Mateus','Juiz de Fora','36054-222',1,'4 QUARTOS SENDO 3 COM ARMÁRIOS (SUITE), SALA, COPA SEPARADA, COZINHA, LAVANDERIA, BANHO SOCIAL, TERRAÇO CO 15M²'),
(999,'Ladeira Alexandre Leonel 832','Cascatinha','Juiz de Fora','36033-240',1,null);


create table imovel_proprietario(
codigo_imovel decimal(3),
codigo_proprietario decimal(4),
primary key(codigo_imovel,codigo_proprietario),
constraint fk_imovel foreign key(codigo_imovel) references imovel(codigo_imovel) on delete cascade on update cascade,
constraint fk_proprietario foreign key(codigo_proprietario) references proprietario(codigo_proprietario) on delete cascade on update cascade);


insert into imovel_proprietario values(300,100),(300,101),(400,102),(500,103),(600,104),(600,105),(600,106),(700,107),(700,108),(800,109),
(900,110),(100,111),(100,112),(200,113),(111,114),(111,115),(111,116),(222,117),(333,118),(333,119),(333,120),(444,121),(444,122),
(555,123),(555,124),(666,125),(777,127),(777,128),(888,129);


create table locacao(
codigo_locacao decimal(5) primary key,
codigo_cliente decimal(4),
codigo_imovel decimal(3),
valor real(6,2),
data_locacao date,
constraint fk_cliente foreign key(codigo_cliente) references cliente(codigo_cliente) on delete cascade on update cascade,
constraint fk_imovel1 foreign key(codigo_imovel) references imovel(codigo_imovel)on delete cascade on update cascade);

insert into locacao values(1,1111,300,1800,'2016-05-01'),(2,1111,200,500,'2016-05-09'),(3,1212,400,2500,'2016-04-22'),
(4,1111,100,2000,'2016-03-10'),(5,1414,600,3500,'2016-03-12'),(6,1515,500,3000,'2016-06-13'),(7,1616,600,3800,'2016-05-02'),
(8,1717,700,2300,'2016-05-28'),(9,1818,800,3250,'2016-03-21'),(10,1919,900,2680,'2016-04-23');

CREATE TABLE venda (
  codigo_venda decimal(5,0) NOT NULL,
  codigo_cliente decimal(4,0) DEFAULT NULL,
  codigo_imovel decimal(3,0) DEFAULT NULL,
  valor double(10,2) DEFAULT NULL,
  PRIMARY KEY (codigo_venda),
  CONSTRAINT fk_venda_cliente FOREIGN KEY (codigo_cliente) REFERENCES cliente (codigo_cliente) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_venda_imovel FOREIGN KEY (codigo_imovel) REFERENCES imovel (codigo_imovel) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO venda VALUES (1,2020,111,500000.00),(2,2121,222,620000.00),(3,2222,333,750000.00),(4,1313,444,180000.00),(5,1414,555,80000.00),(6,1515,666,580000.00),(7,1616,777,850000.00),(8,1717,888,76000.00);
