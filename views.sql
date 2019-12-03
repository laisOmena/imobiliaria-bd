-- RETORNA UMA TABELA COM OS CLIENTES E OS CORRETORES RELACIONADOS A ELE.
create view getCorretorAndClientes as
select cliente.nome as NomeCliente,cpf as CPFCliente, corretor.nome as NomeCorretor, creci as 
	   CreciCorretor from corretor
inner join cliente
on corretor.creci = cliente.creciCorretor;

-- RETORNA UMA TABELA COM OS CONTRATOS E OS IMÓVEIS CONTIDOS NO CONTRATO.
create view getImovelandContratos as 
select numero as NumeroContrato, nome as NomeImovel, matricula as MatriculaImovel from Contrato
inner join imovel
on Contrato.matriculaImovel = imovel.matricula;