create view getLastLine as
select count(numero) from Contrato;

create view getMatricula as
select matriculaImovel from Contrato
where numero = (select * from getLastLine);

create view getCreci as
select creciCorretor from Contrato
where numero = (select * from getLastLine);
