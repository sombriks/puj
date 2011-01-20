-- insert dos papéis (automático, feito usualmente pela aplicação. Mas vá lá...)
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into ROLE (ID,NOME) values ((select max(SEQ_COUNT) FROM SEQUENCE),'Estudante');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into ROLE (ID,NOME) values ((select max(SEQ_COUNT) FROM SEQUENCE),'Professor');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into ROLE (ID,NOME) values ((select max(SEQ_COUNT) FROM SEQUENCE),'Profissional de mercado');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into ROLE (ID,NOME) values ((select max(SEQ_COUNT) FROM SEQUENCE),'Instituição');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into ROLE (ID,NOME) values ((select max(SEQ_COUNT) FROM SEQUENCE),'Patrocinador');

--insert de uns usuários de exemplo (no atual esquema do banco)
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into USER (ID,NOME,EMAIL,SENHA) values ((select max(SEQ_COUNT) FROM SEQUENCE),'soneca','a','a');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into USER (ID,NOME,EMAIL,SENHA) values ((select max(SEQ_COUNT) FROM SEQUENCE),'a','a','a');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into USER (ID,NOME,EMAIL,SENHA) values ((select max(SEQ_COUNT) FROM SEQUENCE),'z','z','z');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into USER (ID,NOME,EMAIL,SENHA) values ((select max(SEQ_COUNT) FROM SEQUENCE),'q','q','q');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';	
insert into USER (ID,NOME,EMAIL,SENHA) values ((select max(SEQ_COUNT) FROM SEQUENCE),'s','s','s');

-- insert de competições de exemplo
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
insert into COMPETITION	(ID,NOME) values ((select max(SEQ_COUNT) FROM SEQUENCE),'puj 2008');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
insert into COMPETITION (ID,NOME) values ((select max(SEQ_COUNT) FROM SEQUENCE),'puj 2009');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
insert into COMPETITION (ID,NOME) values ((select max(SEQ_COUNT) FROM SEQUENCE),'puj 2010');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
insert into COMPETITION (ID,NOME) values ((select max(SEQ_COUNT) FROM SEQUENCE),'puj 2011');
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
insert into COMPETITION (ID,NOME,DT_CADASTRO) values ((select max(SEQ_COUNT) FROM SEQUENCE),'puj X','2011-01-19');

-- insert de times de exemplo
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
insert into TEAM (ID,NOME,COMP_ID) values ((select max(SEQ_COUNT) from SEQUENCE),'equipe rocket',(select ID from COMPETITION where NOME = 'puj 2008'));
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
insert into TEAM (ID,NOME,COMP_ID) values ((select max(SEQ_COUNT) from SEQUENCE),'equipe rocket',(select ID from COMPETITION where NOME = 'puj 2009'));
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
insert into TEAM (ID,NOME,COMP_ID) values ((select max(SEQ_COUNT) from SEQUENCE),'equipe rocket',(select ID from COMPETITION where NOME = 'puj 2010'));
update SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 1 WHERE SEQ_NAME = 'SEQ_GEN';
insert into TEAM (ID,NOME,COMP_ID) values ((select max(SEQ_COUNT) from SEQUENCE),'equipe rocket',(select ID from COMPETITION where NOME = 'puj 2011'));

-- insert de membros de exemplo TODO 
