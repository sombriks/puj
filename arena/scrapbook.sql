-- limpeza da base anterior
drop table if exists 
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
	TEAM,
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

-- insert de competições de exemplo
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
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
	insert into COMPETITION
		(ID,NOME)
	values
		((select max(SEQ_COUNT) FROM SEQUENCE),'puj 2010');
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
	insert into COMPETITION
		(ID,NOME)
	values
		((select max(SEQ_COUNT) FROM SEQUENCE),'puj 2011');
		
-- insert de times de exemplo
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
	insert into TEAM
		(ID,NOME,COMP_ID)
	values
		((select max(SEQ_COUNT) from SEQUENCE),'equipe rocket',
			(select ID from COMPETITION where NOME = 'puj 2008'));
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
	insert into TEAM
		(ID,NOME,COMP_ID)
	values
		((select max(SEQ_COUNT) from SEQUENCE),'equipe rocket',
			(select ID from COMPETITION where NOME = 'puj 2009'));
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
	insert into TEAM
		(ID,NOME,COMP_ID)
	values
		((select max(SEQ_COUNT) from SEQUENCE),'equipe rocket',
			(select ID from COMPETITION where NOME = 'puj 2010'));
	update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
	insert into TEAM
		(ID,NOME,COMP_ID)
	values
		((select max(SEQ_COUNT) from SEQUENCE),'equipe rocket',
			(select ID from COMPETITION where NOME = 'puj 2011'));
			
-- remover inscrições e membros
	delete from SUBSCRIPTION 
	where ID = 55;
	delete from MEMBER;

-- olhando as inscrições
select 
	U.NOME,R.TITULO,T.NOME,C.NOME 
from 
	USER U,ROLE R,TEAM T,MEMBER M,COMPETITION C
WHERE
	U.ID = M.USER_ID 
	AND R.ID = M.ROLE_ID 
	AND T.ID = M.TEAM_ID
	AND C.ID = T.COMP_ID
--	AND M.ID = 56
	
SELECT * FROM TEAM

update ROLE set ID = 1001 where ID = 0