create database Projeto1;
use Projeto1;

create table funcao(
idfuncao int,
nome varchar(70),
CONSTRAINT pk_funcao primary key (idfuncao)
);

create table funcionario(
idfuncionario int,
nome varchar(70),
carteiraTrabalho int,
dataContratacao date,
salario float,
constraint pk_funcionario primary key (idfuncionario)
);

create table diretor (
idDiretor int,
nome varchar(70),
constraint pk_diretor primary key (idDiretor)
);

create table genero (
idgenero int,
nome varchar(70),
constraint pk_genero primary key (idgenero)
);


create table sala (
idSala int,
nome varchar(70),
capacidade int,
constraint pk_sala primary key (idSala)
);

create table horario (
idhorario int,
horario time,
constraint pk_horario primary key (idhorario)
);

create table horario_trabalho_funcionario (
horario_idhorario int,
funcionario_idfuncionario int,
funcao_idfuncao int,
constraint pk_htf primary key (horario_idhorario, funcionario_idfuncionario),
constraint fk_htf foreign key (funcao_idfuncao) references funcao (idfuncao)
);

create table filme_exibido_sala (
filme_idfilme int,
sala_idSala int,
horario_idhorario int,
constraint pk_fes primary key (filme_idfilme, sala_idSala, horario_idhorario) 
);

create table filmes (
idfilmes int,
nomeBR varchar(70),
nomeEN varchar(70),
anoLancamento int,
diretor_idDiretor int,
sinopse text,
genero_idgenero int,
constraint pk_filmes primary key (idfilmes),
constraint fk_filmes foreign key (diretor_idDiretor) references diretor (idDiretor),
constraint fk_filmes2 foreign key (genero_idgenero) references genero (idgenero)
);


create table premiacao (
idpremiacao int,
nome varchar(70),
ano int,
constraint pk_premiacao primary key (idpremiacao)
);


create table filmes_has_premiacao (
filme_idfilme int,
premiacao_idpremiacao int,
ganhou bool,
constraint pk_fhp primary key (filme_idfilme, premiacao_idpremiacao)
);

insert into funcao(idfuncao, nome) value (1, 'Gerente');
insert into funcao(idfuncao, nome) value (2, 'Atendente');
insert into funcao(idfuncao, nome) value (3, 'Atendente de lanchonete');
insert into funcao(idfuncao, nome) value (4, 'Operador de proje????o e ??udio');
insert into funcao(idfuncao, nome) value (5, 'Operador de servi??os gerais(Zelador)');
insert into funcao(idfuncao, nome) value (6, 'Porteiro');
insert into funcao(idfuncao, nome) value (7, 'Bilheteiro');
insert into funcao(idfuncao, nome) value (8, 'Gerente assistente/trainee');
insert into funcao(idfuncao, nome) value (9, 'Supervisor');
insert into funcao(idfuncao, nome) value (10, 'Seguran??a');



insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(1,'Lucas Paiva dos Santos', 0552229, '2020-10-05', 1700.00 );
insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(2,'Carlos Matheus de Oliveira', 4548882, '2018-12-02', 2000.00 );
insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(3,'Ana Carla da Silva Carvalho', 6423895, '2010-10-06', 3800.00 );
insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(4,'Luiza Vitoria Magno', 8526493, '2015-11-03', 1800.00 );
insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(5,'Maria Marta da Concei??ao', 8796248, '2019-07-08', 1800.00 );
insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(6,'Pedro Henrique Braga de Souza', 7531598, '2019-09-09', 1700.00 );
insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(7,'Joao Carlos de Vasconcellos', 4891562, '2020-04-12', 1700.00 );
insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(8,'Rodrigo Santoro Gomes', 7415167, '2017-08-06', 1800.00 );
insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(9, 'Marcela Paviolli Carvalho de agra', 8432169, '2017-08-10', 2000.00);
insert into funcionario(idfuncionario, nome, carteiraTrabalho, dataContratacao,salario)
	value(10,'Gabriel Lucas Pereira', 1462385, '2020-05-12', 1700.00 );
    
    
    insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(1,3,1);
insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(1,1,5);
insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(1,7,4);
insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(1,6,8);
insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(2,8,9);
insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(2,10,6);
insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(1,2,7);
insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(2,4,2);
insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(1,5,3);
insert into  horario_trabalho_funcionario(horario_idhorario, funcionario_idfuncionario,funcao_idfuncao)
	value(2,9,8);

insert into diretor values(1, 'Ivan Reitman');
insert into diretor values(2, 'Joss Whedon, Joe Russo, Anthony Russo');
insert into diretor values(3, 'James Cameron');
insert into diretor values(4, 'Sam Raimi');
insert into diretor values(5, 'Zack Snyder');
insert into diretor values(6, 'Patty Jenkins');
insert into diretor values(7, 'Chris Columbus, Raja Gosnell, Peter Hewitt, Rod Daniel');
insert into diretor values(8, 'John R. Leonetti');
insert into diretor values(9, 'Corin Hardy');
insert into diretor values(10, 'Adrian Lyne');


insert into genero values(1, 'Com??dia/Fantasia');
insert into genero values(2, 'A????o/Fic????o cient??fica');
insert into genero values(3, 'Romance/Drama');
insert into genero values(4, 'A????o/Fantasia');
insert into genero values(5, 'Fic????o cient??fica');
insert into genero values(6, 'A????o/Aventura');
insert into genero values(7, 'Com??dia/Infantil');
insert into genero values(8, 'Terror');
insert into genero values(9, 'Thriller/Terror');
insert into genero values(10, 'Drama/Romance');

insert into premiacao values(1, 'OSCAR, Pr??mio Saturno, BAFTA, Globo de Ouro', 1985);
insert into premiacao values(2, 'Teen Choice Awards', 2012);
insert into premiacao value(3, 'OSCAR', 1998);
insert into premiacao values(4, 'Pr??mio Saturno, MTV Movie Awards', 2003);
insert into premiacao values(5, 'MTV Movie Award', 2000);
insert into premiacao values(6, 'Teen Choice Awards, Dragon Awards', 2017);
insert into premiacao values(7, 'American Comedy Award, British Comedy Awards', 1991);
insert into premiacao values(8, '');
insert into premiacao values(9, '');
insert into premiacao values(10, '');

insert into sala values(1, 'ca??a fantasmas', 102);
insert into sala values(2, 'vingadores', 116);
insert into sala values(3, 'titanic', 231);
insert into sala values(4, 'homem aranha', 231);
insert into sala values(5, 'superman', 152);
insert into sala values(6, 'mulher maravilha', 152);
insert into sala values(7, 'esqueceram de mim', 185);
insert into sala values(8, 'annabelle', 231);
insert into sala values(9, 'a freira', 231);
insert into sala values(10, 'lolita', 161);


insert into horario values(1, '2020-11-18');
insert into horario values(2, '2020-11-19');
insert into horario values(3, '2020-11-20');
insert into horario values(4, '2020-11-21');
insert into horario values(5, '2020-11-22');
insert into horario values(6, '2020-11-23');
insert into horario values(7, '2020-11-24');
insert into horario values(8, '2020-11-25');
insert into horario values(9, '2020-11-26');
insert into horario values(10, '2020-11-27');


insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values (1, 'ca??a fantasmas', 'Ghostbuster', 2000, 1, 'A investigadora paranormal Abby Yates se une ?? f??sica Erin Gilbert para tentar provar a exist??ncia de fantasmas na sociedade', 1);
insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values (2, 'vingadores','Avengers', 2010, 2, 'Loki, o irm??o de Thor, ganha acesso ao poder ilimitado do cubo c??smico ao roub??-lo de dentro das instala????es da S.H.I.E.L.D. Nick Fury, o diretor desta ag??ncia internacional que mant??m a paz, logo re??ne os ??nicos super-her??is que ser??o capazes de defender a Terra de amea??as sem precedentes.', 2);
insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values(3,'titanic', 'titanic',1997, 3, 'Um artista pobre e uma jovem rica se conhecem e se apaixonam na fat??dica jornada do Titanic, em 1912. Embora esteja noiva do arrogante herdeiro de uma sider??rgica, a jovem desafia sua fam??lia e amigos em busca do verdadeiro amor.', 3); 
insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values (4, 'homem aranha', 'spiderman', 2002, 4, 'Depois de ser picado por uma aranha geneticamente modificada em uma demonstra????o cient??fica, o jovem nerd Peter Parker ganha superpoderes', 2);
insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values(5, 'superman', 'superman', 2013, 5, 'Com a iminente destrui????o de Krypton, seu planeta natal, Jor-El e sua mulher procuram preservar a ra??a enviando o filho rec??m-nascido para a Terra.', 2);
insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values(6,'mulher maravilha', 'Wonder Woman', 2017, 6, 'Treinada desde cedo para ser uma guerreira imbat??vel, Diana Prince nunca saiu da paradis??aca ilha em que ?? reconhecida como princesa das Amazonas',2);
insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values (7,'esqueceram de mim', 'they forgot me',1990, 7, 'Quando o levado Kevin McCallister, de oito anos de idade, n??o se comporta na noite anterior de uma viagem da fam??lia para Paris, sua m??e o faz dormir no s??t??o, e ele deseja que sua fam??lia n??o estivesse em casa. Ap??s os McCallisters irem para o aeroporto sem Kevin, que acorda e acredita que o seu desejo de n??o ter fam??lia se tornou realidade, ele percebe que dois vigaristas planejam roubar a resid??ncia. Sozinho, ele precisa proteger a casa da fam??lia destes atrapalhados ladr??es.', 1);
insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values( 8, 'annabelle', 'annabelle',2014, 8,'John Form acha que encontrou o presente ideal para sua esposa gr??vida, uma boneca vintage. No entanto, a alegria do casal n??o dura muito. Uma noite terr??vel, membros de uma seita sat??nica invadem a casa do casal em um ataque violento. Ao tentarem invocar um dem??nio, eles mancham a boneca de sangue, tornando-a receptora de uma entidade do mal.', 4);
insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values (9, 'a freira', 'the nun', 2018, 9,'Presa em um convento na Rom??nia, uma freira comete suic??dio. Para investigar o caso, o Vaticano envia um padre assombrado e uma novi??a prestes a se tornar freira. Arriscando suas vidas, a f?? e at?? suas almas, os dois descobrem um segredo profano e se confrontam com uma for??a do mal que toma a forma de uma freira demon??aca e transforma o convento em um campo de batalha.', 4);
insert into filmes (idfilmes, nomeBR, nomeEN, anoLancamento, diretor_idDiretor, sinopse, genero_idgenero) 
values (10, 'Lolita', 'Lolita', 1997,10, 'Professor de meia-idade casa com vi??va que n??o suporta para ficar junto ?? enteada, menina de doze anos por quem se apaixona. Ap??s a morte da m??e, os dois, j?? amantes, viajam como pai e filha, mas ela tem outros planos.', 3);


insert into horario values(1, '12:00:00');
insert into horario values(2, '12:00:00');
insert into horario values(3, '14:00:00');
insert into horario values(4, '14:00:00');
insert into horario values(5, '16:00:00');
insert into horario values(6, '16:00:00');
insert into horario values(7, '18:00:00');
insert into horario values(8, '18:00:00');
insert into horario values(9, '20:00:00');
insert into horario values(10, '20:00:00');

insert into premiacao values(1, 'OSCAR, Pr??mio Saturno, BAFTA, Globo de Ouro', 1985);
insert into premiacao values(2, 'Teen Choice Awards', 2012);
insert into premiacao value(3, 'OSCAR', 1998);
insert into premiacao values(4, 'Pr??mio Saturno, MTV Movie Awards', 2003);
insert into premiacao values(5, 'MTV Movie Award', 2000);
insert into premiacao values(6, 'Teen Choice Awards, Dragon Awards', 2017);
insert into premiacao values(7, 'American Comedy Award, British Comedy Awards', 1991);
insert into premiacao values(8, '', 0);
insert into premiacao values(9, '', 0);
insert into premiacao values(10, '', 0);

select * from filme where anoLancamento = 2017 && 2020;