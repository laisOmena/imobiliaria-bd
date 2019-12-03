insert into Imobiliaria
values  ('12345678901113', 'Rua saudades dela', 'Lego'),
        ('21345678901113', 'Rua foda que ela é linda', 'playimobil'),
        ('31245678901234', 'Rua o sorriso dela me destrói', 'Fortnite'),
        ('41235678900987', 'Rua ela é diferente sabe', 'minecraft');

insert into Corretor
values  (12345, 'Rafinha', '82873645234','21345678901113'),
        (24512, 'Felipe Luis', '82866354908', '31245678901234');

insert into Cliente
values	('01178571220','8240028922', 'gabigol',12345),
		('03196528235', '82981210913', 'Bruno Henrique',12345),
        ('10530164418', '82996287995', 'Arrascaeta',12345),
        ('01178212202', '82981253345', 'Menino Gerso',12345);

insert into Imovel
values (122134, 'casa', 'disponivel', 'Rua dos cabelos doidos', 'Castelo do Dracula', 300000.0, '21345678901113'),
       (451241, 'apartamento', 'disponivel', 'Rua aidentro', 'Castelo Ratimbum', 40000.0, '21345678901113');

insert into Contrato(tipo, fiador, creciCorretor, cpfCliente, matriculaImovel)
values ('Venda', 1, 12345, '01178212202', 122134);

insert into Contrato(tipo, fiador, creciCorretor, cpfCliente, matriculaImovel)
values ('Venda', 1, 24512, '03196528235', 122134);

insert into Contrato(tipo, fiador, creciCorretor, cpfCliente, matriculaImovel)
values ('Venda', 0, 12345, '10530164418', 451241);
