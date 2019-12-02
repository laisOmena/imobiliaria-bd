-- RETORNA A ÚLTIMA LINHA DA TABELA CONTRATO.

DELIMITER $$
	create function getLastLine()
		returns int
			BEGIN
				return (select count(numero) from Contrato);
			END $$
DELIMITER ;
-- RETORNA A MATRÍCULA DO IMÓVEL NA ÚLTIMA LINHA DA TABELA CONTRATO.
DELIMITER $$
	create function getMatricula()
		returns int
			BEGIN
				return (select matriculaImovel from Contrato
					    where numero = (select getLastLine()));
			END $$
DELIMITER ;
-- RETORNA O CRECI DO CORRETOR NA ÚLTIMA LINHA DA TABELA CONTRATO..
DELIMITER $$
	create function getCreci()
		returns smallint
			BEGIN
				return (select creciCorretor from Contrato
					    where numero = (select getLastLine()));
			END $$
DELIMITER ;