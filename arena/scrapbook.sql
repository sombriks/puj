-- limpeza da base anterior
drop table 
	ADS,
	COMPETITION,
	COMPETITION_ADS,
	COMPETITION_HOMEWORK,
	HOMEWORK,
	HOMEWORK_SUBSCRIPTION,
	MEMBER,
	ROLE,
	SEQUENCE,
	SUBSCRIPTION,
	USER;
	
--insert de uns usuários de exemplo (no atual esquema do banco)
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
	insert into USER 
		(ID,NOME,EMAIL,SENHA)
	values
		((select max(SEQ_COUNT) FROM SEQUENCE),'a','a','a');
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
	insert into USER 
		(ID,NOME,EMAIL,SENHA)
	values
		((select max(SEQ_COUNT) FROM SEQUENCE),'soneca','a','a');
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
	insert into USER 
		(ID,NOME,EMAIL,SENHA)
	values
		((select max(SEQ_COUNT) FROM SEQUENCE),'z','z','z');

-- insert de competições		
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
	insert into COMPETITION
		(ID,NOME)
	values
		((select max(SEQ_COUNT) FROM SEQUENCE),'puj 2008');
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
	insert into COMPETITION
		(ID,NOME)
	values
		((select max(SEQ_COUNT) FROM SEQUENCE),'puj 2009');
		
-- remover inscrições e membros
	delete from SUBSCRIPTION 
	where ID = 55;
	delete from MEMBER;

-- olhando as inscrições
select 
	U.NOME,R.TITULO,S.NOME,C.NOME 
from 
	USER U,ROLE R,SUBSCRIPTION S,MEMBER M,COMPETITION C
WHERE
	U.ID = M.USER_ID 
	AND R.ID = M.ROLE_ID 
	AND S.ID = M.SUBS_ID
	AND C.ID = S.COMP_ID
--	AND M.ID = 56
	
SELECT * FROM SUBSCRIPTION