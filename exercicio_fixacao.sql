CREATE DATABASE mercado_KKJ

USE  mercado_KKJ

CREATE TABLE Cliente(
			id int identity not null,
			nome varchar(50)not null,
			rg varchar(15)not null,
			cpf varchar(20)not null,
			endereco varchar(255)not null,
			cep varchar(20)not null,
			bairro varchar(50)not null,
			telefone varchar(50),
			email varchar(255)not null,
			datanasci date not null	
)
INSERT INTO Cliente 
VALUES
('Wederson','17.926.172-1','996.352.310-24','Avenida Almirante Maximiano Fonseca','96204040','Zona Portuária', '(66) 2849-1007','airz@gmail.com','3/6/1990'),
('Alex Weber','14.141.202-1','686.449.610-47','Praça da República','1045001','República', '(47) 2462-8888','petrikkassyan@gmail.com','7/26/1974'),
(' Jeff ','24.850.959-7','100.755.440-16','Rua Tenente-Coronel Cardoso','28035042','Centro', '(32) 2893-4760','mmitch6@gmail.com','04/08/1965'),
('jaumir silva','17.387.560-9','100.755.440-17','Avenida Almirante Maximiano Fonseca','96204040','Zona Portuária', '(66) 2849-1007','airz@gmail.com','3/6/1990'),
('jefferson antonio','14.174.925-8','556.551.430-46','Rua Frederico Moura','14401150','Cidade Nova', '(68) 3858-2201','gandara@gmail.com','11/06/1987'),
('Junior da Silva ','46.441.330-8','868.137.820-10','Rua Carlos Augusto Cornelsen','80520560','Bom Retiro', '(48) 2654-6217','wawawa1996@gmail.com','09/08/1944'),
('Antônio','12.806.006-2' ,'868.137.820-11','Avenida Tocantins','75802095','Vila Jardim Rio Claro','(97) 2040-1429','studho@gmail.com','4/18/1992'),
('Francisco','26.180.966-0','368.403.340-58','Praça da República','1045001','República','(87) 3837-9510	','balboapeers@gmail.com','4/22/1963'),
('Carlos','38.975.113-3','298.531.510-73','Avenida Rio Branco','20040002','Centro','(82) 3163-2144','sharohindmitrii@gmail.com','8/1/1969'),
('Paulo','35.064.881-5','298.531.510-74','Rua Maria Luísa do Val Penteado','3962040','Parque Imperial','(62) 2559-5733','bsi8pj@gmail.com','3/21/1944'),
('Pedro','49.959.476-9','730.571.490-90','Avenida Governador José Malcher','66055260','Nazaré','(79) 3447-3845',	'edverg@gmail.com','6/16/1993')

ALTER TABLE Cliente ADD PcD  varchar(5)
ALTER TABLE  Cliente  ADD clube_mercado varchar(5)
ALTER TABLE  Cliente ADD contrato_anual varchar(5)
	

CREATE TABLE CARGOS(
		id int identity not null,
		cargo varchar(255) not null,
		turno varchar(255) not null,
		salario decimal(10,2) not null,
		benefios varchar(225) not null
)

CREATE TABLE Funcionarios(
			id int identity not null,
			nome varchar(50)not null,
			rg varchar(15)not null,
			cpf varchar(20)not null,
			endereco varchar(255)not null,
			cep varchar(20)not null,
			bairro varchar(50)not null,
			telefone varchar(50),
			email varchar(255)not null,
			datanasci date not null	
)
Insert into Funcionarios
values
('Wederson','17.926.172-1','996.352.310-24','Avenida Almirante Maximiano Fonseca','96204040','Zona Portuária', '(66) 2849-1007','airz@gmail.com','3/6/1990'),
('Alex Weber','14.141.202-1','686.449.610-47','Praça da República','1045001','República', '(47) 2462-8888','petrikkassyan@gmail.com','7/26/1974'),
(' Jeff ','24.850.959-7','100.755.440-16','Rua Tenente-Coronel Cardoso','28035042','Centro', '(32) 2893-4760','mmitch6@gmail.com','04/08/1965'),
('jaumir silva','17.387.560-9','100.755.440-17','Avenida Almirante Maximiano Fonseca','96204040','Zona Portuária', '(66) 2849-1007','airz@gmail.com','3/6/1990')

INSERT INTO CARGOS
VALUES
('Operador de caixa' ,'MANHA/TARDE/NOITE', 1800.00,'VT+VR'),
('Empacotador','MANHA/TARDE/NOITE', 1800.00,'VT+VR'),
('Estoquista','MANHA/TARDE/NOITE',1800.00,'VT+VR'),
('Repositor','MANHA/TARDE/NOITE', 1800.00,'VT+VR'),
('Açougueiro','MANHA/TARDE/NOITE',2900.00,'VT+VR'),
('Gerente','MANHA/TARDE/NOITE',	4800.00,'VT+VR')

ALTER TABLE CARGOS ADD expedicao_contrato varchar(10)
ALTER TABLE  CARGOS  ADD inicio_contrato varchar(10)
ALTER TABLE  CARGOS  ADD renovacao_contrato varchar(5)



CREATE TABLE FORNECEDOR(
		nome_loja varchar(255) not null,
		preco decimal(10,2)not null,
		data_prevista varchar(10) not null,
		tipo_alimento varchar(255)not null,
		data_entrega varchar (10) not null,
		cnpj varchar(30) not null
)

INSERT INTO FORNECEDOR
VALUES
('CARGILL AGRÍCOLA'	,'1800.00',	'10/11',	'alimenticio','12/11',	'03.778.130/0001-48'),
('CARGILL AGRÍCOLA'	,'1800.00'	,	'11/11',	'alimenticio','13/11',	'03.778.130/0001-49'),
('CARGILL AGRÍCOLA'	,'1800.00'	,	'12/11',	'graos','14/11','03.778.130/0001-50'),
('CARGILL AGRÍCOLA'	,'1800.00'	,	'13/11',	'graos','15/11','03.778.130/0001-51'),
('CARGILL AGRÍCOLA'	,'1800.00'	,	'14/11',	'alimentico',	'16/11','03.778.130/0001-52'),
('CARGILL AGRÍCOLA'	,'1800.00'	,	'15/11',	'massas',	'17/11','03.778.130/0001-53'),
('CARGILL AGRÍCOLA'	,'1800.00'	,	'16/11',	'bebida','18/11','03.778.130/0001-54'),
('CARGILL AGRÍCOLA'	,'1800.00'	,	'17/11',	'bebida',	'19/11','03.778.130/0001-55')
	
SELECT *FROM FORNECEDOR
SELECT *FROM CARGOS
SELECT *FROM Cliente
SELECT *FROM Funcionarios


ALTER TABLE FORNECEDOR ADD expedicao_contrato varchar(10)
ALTER TABLE FORNECEDOR ADD inicio_contrato varchar(10)
ALTER TABLE FORNECEDOR ADD renovacao_contrato varchar(5)


--exercicio 1
select c.id, c.nome, f.id,f.nome
from Cliente as c inner join Funcionarios  as f
on c.nome = f.nome;

--exericico 2
select c.nome, f.nome
from Cliente as c inner join Funcionarios  as f
on c.nome = f.nome;

--exericio 3
select c.id, c.nome, f.id,f.nome
from Cliente as c LEFT join Funcionarios  as f
on c.nome = f.nome;

--exercicio 4 
select c.id, c.nome, f.id,f.nome
from Cliente as c RIGHT join Funcionarios  as f
on c.nome = f.nome;


--exercicio 5
select c.id, c.nome, f.id,f.nome
from Cliente as c FULL join Funcionarios  as f
on c.nome = f.nome;

----------------------------------------------------------------------------
-----EXERCICIO 2---------

--- a
select distinct salario from Cargos

--- b 
select count(distinct salario) as total_salario from CARGOS
