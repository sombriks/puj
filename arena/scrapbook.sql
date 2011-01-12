-- limpeza da base anterior
drop table 
	ADS,
	COMPETITION,
	COMPETITION_ADS,
	COMPETITION_HOMEWORK,
	HOMEWORK,
	HOMEWORK_SUBSCRIPTION,
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
		
		