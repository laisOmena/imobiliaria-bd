use imobiliaria;

insert into Imobiliaria
values('12345678901113', 'Rua saudades dela', 'Lego'),
      ('21345678901113', 'Rua foda que ela é linda', 'playimobil'),
      ('31245678901234', 'Rua o sorriso dela me destrói', 'Fortnite'),
      ('41235678900987', 'Rua ela é diferente sabe', 'minecraft');

insert into Corretor
values(12345, '82873645234', 'Rafinha','21345678901113'),
    (13245,'82866354908','Felipe Luis', '31245678901234');

insert into Cliente
values('01178571220','8240028922', 'gabigol',12345),
  ('03196528235', '82981210913', 'Bruno Henrique',12345),
        ('10530164418', '82996287995', 'Arrascaeta',12345),
        ('01178212202', '82981253345', 'Menino Gerso',12345);

INSERT INTO Imovel
values (122134, 'casa', 'disponivel', 'Rua dos cabelos doidos', 'Castelo do Dracula', 300000.0, '21345678901113');

insert into Contrato
values(11111,'Venda', 1, 12345, '01178212202', 122134 );



Delimiter $$
 create trigger  atualiza_historico after insert
    on Contrato
    for each row
  begin
   insert into Historico values();
   update Historico
            inner join Contrato
            on Contrato.numero = Historico.protocolo
            set datahistorico = curdate(), Historico.crecicorretor = Contrato.crecicorretor/*(select crecicorretor from contrato where contrato.numero = historico.protocolo)*/
            where Contrato.numero = Historico.protocolo;
  end $$
Delimiter ;

insert into Contrato
values(1,'Venda', 123,12345,'03196528235' ,122134 );

select * from Historico;