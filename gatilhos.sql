/* TODA VEZ QUE UMA INSERÇÃO É FEITA NA TABELA CONTRATO, A TABELA HISTÓRICO É ATUALIZADA, PEGANDO
   A MATRÍCULA DO IMÓVEL E O CRECI DO CORRETOR QUE VENDEU AQUELE IMÓVEL. */
Delimiter $$
 create trigger  atualiza_historico after insert
    on Contrato
    for each row
  begin
   insert into Historico(dataHistorico, creciCorretor, matImovel)
   values(curdate(), (select getCreciContrato()), (select getMatricula()));
  end $$
Delimiter ;
