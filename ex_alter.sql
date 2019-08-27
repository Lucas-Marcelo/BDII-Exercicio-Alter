create database ETEC_HAS_FUNC;

use ETEC_HAS_FUNC;

														/*Tabelas*/
/*Tabela Cargo*/
create table Cargo (
	cd_cargo integer		identity(1,1),
	ds_cargo varchar(40)
);

/*Tabela Funcionario*/
create table Funcionario (
	cd_func			integer			identity(1,1),
	nm_pnome_func	varchar(50),
	nm_unome_func	varchar(30),
	vl_salario		numeric(9,2),
	dt_inicio		date,
	qt_dependente	numeric(2)
);

/*Tabela Departamento*/
create table Departamento (
	cd_depto	integer			identity(1,1),
	nm_depto	varchar(40)
);

													/*Alterações*/
/*Tabela Funcionario*/

/*Add PK*/
alter table Funcionario
	add constraint pk_cd_func	primary key (cd_func)

/*Add FK*/
alter table Funcionario
	add cargo_cd_cargo integer constraint fk_cd_cargo foreign key (cargo_cd_cargo) references Cargo(cd_cargo)
alter table Funcionario
	add departamento_cd_depto integer constraint fk_cd_depto foreign key (departamento_cd_depto) references Departamento(cd_depto)

/*Add coluna*/
alter table Funcionario 
	add end_func varchar(150) not null

/*Alter coluna*/
alter table Funcionario 
	alter column cd_func	integer		not null
alter table Funcionario 
	alter column nm_pnome_func	varchar(50)		not null
alter table Funcionario 
	alter column nm_unome_func	varchar(30)		not null
alter table Funcionario 
	alter column vl_salario		numeric(9,2)	not null
alter table Funcionario 
	alter column dt_inicio		date		
alter table Funcionario 
	alter column qt_dependente	numeric(2)		not null

/*Drop coluna*/
alter table Funcionario
	drop column  qt_dependente


/*Tabela Departamento*/

/*Add PK*/
alter table Departamento
	add constraint pk_cd_depto	primary key (cd_depto)

/*Add coluna*/
alter table Departamento
	add sg_depto varchar(5) not null

/*Alter coluna*/
alter table Departamento 
	alter column cd_depto	integer		not null
alter table Departamento 
	alter column nm_depto	varchar(40)		not null


/*Tabela Cargo*/

/*Add PK*/
alter table Cargo
	add constraint pk_cd_cargo	primary key (cd_cargo)

/*Alter coluna*/
alter table Cargo
	alter column cd_cargo	integer not null
alter table Cargo
	alter column ds_cargo varchar(40) not null


													/*Inserções*/
/*Tabela Funcionario*/

/*Add dados Funcionario*/
insert into Funcionario(nm_pnome_func, nm_unome_func, vl_salario, end_func, dt_inicio)
	values('!!!!!', 'ZZZZZ', '4521.46', '451fgd', null)


/*Tabela Departamento*/

/*Add dados Departamento*/
insert into Departamento(sg_depto, nm_depto)
	values('!52!', '6512kj')


/*Tabela Cargo*/

/*Add dados Cargo*/
insert into Cargo(ds_cargo)
	values('!!65d')

sp_help Funcionario
sp_help Departamento
sp_help Cargo

select * from Funcionario
select * from Departamento
select * from Cargo