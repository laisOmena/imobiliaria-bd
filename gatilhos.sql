drop trigger atualiza_historico;

Delimiter $$
 create trigger  atualiza_historico after insert
    on Contrato
    for each row
  begin
   insert into Historico(dataHistorico, creciCorretor, matImovel)
   values(curdate(), (select * from getCreci), (select * from getMatricula));
  end $$
Delimiter ;

