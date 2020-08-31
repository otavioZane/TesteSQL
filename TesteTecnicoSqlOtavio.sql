
-- Com base no modelo acima, escreva um comando SQL que liste a quantidade de registros por status com sua descrição.

select dsStatus, count (dsStatus) as Quantia from tb_Status 
group by dsStatus 

-- Com base no modelo acima, construa um comando SQL que liste a maior data de andamento por número de processo, com processos encerrados no ano de 2013.

select max(tb_Andamento.dtAndamento) as maior_andamento from tb_Andamento
inner join tb_Processo on tb_Processo.idProcesso = tb_Andamento.idProcesso
where tb_Processo.dtEncerramento <= '2013-12-31'

-- Com base no modelo acima, construa um comando SQL que liste a quantidade de Data de Encerramento agrupada por ela mesma com a quantidade da contagem seja maior que 5.

select dtEncerramento, count(dtEncerramento) as quantia
from tb_Processo
group by dtEncerramento having count(dtEncerramento) > 5;

-- 4. Possuímos um número de identificação do processo, onde o mesmo contem 12 caracteres com zero à esquerda, contudo nosso modelo e dados ele é apresentado como bigint. Como 
-- fazer para apresenta-lo com 12 caracteres considerando os zeros a esquerda?

select right('00000000000' + cast(nroProcesso as varchar(12)), 12) from tb_Processo
where idProcesso = 1

select * from tb_Processo
select * from tb_Andamento
select * from tb_Status
