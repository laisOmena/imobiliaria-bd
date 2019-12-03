-- DESATIVA A RESTRIÇÃO DO MYSQL
SET GLOBAL log_bin_trust_function_creators = 1;

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
-- RETORNA O CRECI DO CORRETOR NA ÚLTIMA LINHA DA TABELA CONTRATO.
DELIMITER $$
	create function getCreciContrato()
		returns smallint
			BEGIN
				return (select creciCorretor from Contrato
					    where numero = (select getLastLine()));
			END $$
DELIMITER ;

/*DELIMITER $$
	create function getCreciCorretor()
		returns smallint
			BEGIN
				return (select creci from Corretor where creci > 10000 and creci < 99999 order by rand() limit 1);
			END $$
DELIMITER ;
*/