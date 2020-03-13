use master;
drop database db3;
create database db3;
use db3;
create table tbl_cad_prod(
	id int identity(1,1),
	nome nvarchar(100) not null,
	pco decimal(7,2) not null,
	primary key (id)
)
create table tbl_prod_vendido(
	id int identity(1,1),
	id_vda int not null,
	id_prod int not null,
	qtd int not null,
	primary key (id)
)
create table tbl_vda(
	id int identity(1,1),
	data date not null,
	id_cli int not null,
	vlr decimal (7,2) not null,
	primary key (id)
)
create table tbl_cliente(
	id int identity(1,1),
	nome nvarchar(100) not null,
	primary key (id)
)
go
alter table tbl_prod_vendido
add constraint FK_cad_prod_vendido
foreign key (id_prod) references tbl_cad_prod(id)
alter table tbl_prod_vendido
add constraint FK_vda_prod_vendido
foreign key (id_vda) references tbl_vda(id)

alter table tbl_vda
add constraint FK_cliente_venda
foreign key (id_cli) references tbl_cliente(id)
go
insert into tbl_cliente values ('pedro')
insert into tbl_cliente values ('pedrooo')
insert into tbl_cliente values ('pedrooooo')
insert into tbl_cad_prod values ('cell', 19.99)
insert into tbl_cad_prod values ('tell', 39.09)
insert into tbl_cad_prod values ('mouse', 29.99)
insert into tbl_vda values ('2012-04-26', 1, 19.99)
insert into tbl_vda values ('2011-06-01', 2, 99.99)
insert into tbl_vda values ('2010-07-01', 3, 2.99)
insert into tbl_prod_vendido values (1, 1, 1)
insert into tbl_prod_vendido values (2, 2, 1)
insert into tbl_prod_vendido values (3, 3, 1)
select * from tbl_cad_prod;
select * from tbl_prod_vendido;
select * from tbl_vda;
select * from tbl_cliente;
