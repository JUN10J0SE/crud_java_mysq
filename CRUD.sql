create database dblojaetec;
use dblojaetec;

show tables;
describe usuarios;
describe clientes;
describe ordem_servico;
select * from usuarios;
select * from clientes;
select * from ordem_servico;

insert into usuarios(usuario, fone, login, senha) values 
('Marilia Silva','61-3325-7982','mat123','m123'),
('Juarez Costa','61-3325-7982','jua123','j123'),
('Edna Cordeiro','61-3325-7982','edn123','e123'),
('Pedro Silva','61-3325-7982','ped123','p123'),
('Marta Meirele','61-3325-7982','mar123','ma123');
create table usuarios(
iduser int primary key auto_increment,
usuario varchar(50) not null,
fone varchar(20),
login varchar(20) not null unique,
senha varchar(20) not null
);

insert into clientes(nomecli, endcli,fonecli,emailcli) values 
('Eduardo Silva','Rua 14 Casa 02','61-3325-7982','eduardo.silva@gmail.com'),
('Patricia Silveira','Rua 15 Casa 03','61-3325-8725','patricia.silveira@gmail.com'),
('Gustava Pereira','Rua 16 Casa 04','61-3325-2341','gustavo.pereira@gmail.com'),
('Fernanda Mendonca','Rua 17 Casa 05','61-3325-2598','fernanda.mendonca@gmail.com'),
('Marcos Aurelio','Rua 18 Casa 06','61-3325-7421','marcos.aurelio@gmail.com');
create table clientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(20) not null,
emailcli varchar(50)
);

insert into ordem_servico(equipamento, defeito, servico, tecnico, valor) values
('Furadeira','Sem força','true de peças','Marquinhos',32.00),
('Geladeira','Não Gela','Troca de peças','Marquinhos',42.00),
('Exaustor','Sem força','Troca total','Diego Moreira',00.00),
('Ar condicionado','Não ventila','Troca de peças','Diego Moreira',42.00),
('Aquecedor','Não liga','Manutenção na placa','Marquinhos',26.00);
create table ordem_servico(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int null,
foreign key(idcli) references clientes(idcli)
);