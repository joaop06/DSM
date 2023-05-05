drop database if exists PetShop_03_05;  -- Remove o banco de dados, caso exista
create database PetShop_03_05;          -- Cria o banco de dados
use PetShop_03_05;                      -- Seleciona o banco para os próximos comandos

 

/* As linhas acima não devem ser executas em serviços online como o sqlite oline*/

 


create table Especies (
    id                integer             primary key auto_increment,
    nome            varchar(50)            unique  not null,
    alimentacao        varchar(20)
);

create table Animais (
    id                integer             primary key auto_increment,
    nome            varchar(50)         not null,
    data_nasc        date                 not null,
    peso            decimal(10,2)        check (peso > 0),
    cor                varchar(50),

    especie_id        int                    references Especies(id)
);




insert into Especies (nome, alimentacao) values ('gato'            , 'carnívoro');
insert into Especies (id, nome, alimentacao) values (null, 'cachorro'        , 'carnívoro');
insert into Especies ( nome, alimentacao) values ( 'baleia'            , 'carnívoro');
insert into Especies (id, nome, alimentacao) values (null, 'morcego'        , 'onívoro');
insert into Especies (id, nome, alimentacao) values (null, 'rato'            , 'onívoro');
insert into Especies (id, nome, alimentacao) values (null, 'ramister'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'sardinha'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'bacalhau'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'tubarão'        , 'carnívoro');
insert into Especies (id, nome, alimentacao) values (null, 'lambari'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'corvina'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'iguana'            , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'camaleão'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'lagarto'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'cobra'            , 'carnívoro');
insert into Especies (id, nome, alimentacao) values (null, 'cacatua'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'pardal'            , 'onívoro');
insert into Especies (id, nome, alimentacao) values (null, 'bentevi'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'canario'        , 'herbívoro');
insert into Especies (id, nome, alimentacao) values (null, 'virus'            , null);
insert into Especies (id, nome, alimentacao) values (null, 'bactéria'        , null);
insert into Especies (id, nome) values (null, 'barata');
insert into Especies (id, nome) values (null, 'carcará');
insert into Especies (id, nome) values (null, 'polvo');
insert into Especies (id, nome) values (null, 'nautilus');

select * from Especies;

 

insert into Animais values (null, 'ágata'        , '2015-4-9', 13.9, 'branco' , 1);
insert into Animais values (null, 'félix'        , '2016-6-6', 14.3, 'preto'  , 1);
insert into Animais values (null, 'tom'            , '2013-2-8', 11.2, 'azul'   , 1);
insert into Animais values (null, 'garfield'    , '2015-7-6', 17.1, 'laranja', 1);
insert into Animais values (null, 'frajola'        , '2013-8-1', 13.7, 'preto'  , 1);
insert into Animais values (null, 'manda-chuva'    , '2012-2-3', 12.3, 'amarelo', 1);
insert into Animais values (null, 'snowball'    , '2014-4-6', 13.2, 'preto'  , 1);
insert into Animais values (null, 'ágata'        , '2015-8-3', 11.9, 'azul'      , 1);
insert into Animais values (null, 'ágata'        , '2016-3-4', 18.6, 'roxo'  , 1);
insert into Animais values (null, 'gato de botas', '2012-12-10', 11.6, 'amarelo', 1);
insert into Animais values (null, 'bola de pelo', '2020-04-06', 11.6, 'amarelo', 2);
insert into Animais values (null, 'milu'        , '2013-2-4', 17.9, 'branco'  , 2);
insert into Animais values (null, 'pluto'        , '2012-1-3', 12.3, 'amarelo' , 2);
insert into Animais values (null, 'pateta'        , '2015-5-1', 17.7, 'preto'   , 2);
insert into Animais values (null, 'snoopy'        , '2013-7-2', 18.2, 'branco'  , 2);
insert into Animais values (null, 'bidu'        , '2012-9-8', 12.4, 'azul'    , 2);
insert into Animais values (null, 'dum dum'        , '2015-4-6', 11.2, 'laranja' , 2);
insert into Animais values (null, 'muttley'        , '2011-2-3', 14.3, 'laranja' , 2);
insert into Animais values (null, 'scooby'        , '2012-1-2', 19.9, 'marrom'  , 2);
insert into Animais values (null, 'rufus'        , '2014-4-5', 19.7, 'branco'  , 2);
insert into Animais values (null, 'costelinha'    , '2016-5-2', 13.4, 'branco'  , 2);
insert into Animais values (null, 'coragem'        , '2013-7-8', 12.2, 'vermelho', 2);
insert into Animais values (null, 'jake'        , '2012-2-7', 11.6, 'vermelho', 2);
insert into Animais values (null, 'k900'        , '2012-11-25', 11.6, 'amarelo', 2);
insert into Animais values (null, 'gato de botas', '2012-11-25', 11.6, 'amarelo', 2);
insert into Animais values (null, 'jerry'        , '2010-2-4', 06.6, 'laranja', 4);
insert into Animais values (null, 'ligeirinho'    , '2011-5-3', 04.4, 'amarelo', 4);
insert into Animais values (null, 'mikey'        , '2012-7-1', 02.2, 'preto'  , 4);
insert into Animais values (null, 'minie'        , '2013-9-3', 03.2, 'preta'  , 4);
insert into Animais values (null, 'topo gigio'    , '2016-6-8', 05.5, 'amarelo', 4);
insert into Animais values (null, 'bafo de onça', '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values (null, 'susan murphy', '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values (null, 'insectosauro', '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values (null, 'gallaxhar'   , '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values (null, 'hathaway'    , '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values (null, 'tutubarão'    , '2010-2-6', 101.9 , 'branca' , 9);
insert into Animais values (null, 'prof. pardal', '2012-4-4', 1.7   , 'amarelo', 17);
insert into Animais values (null, 'mobie'        , '2014-5-2', 5069.4, 'branca' , 6);
insert into Animais values (null, 'batman'        , '2013-7-1', 96.1  , 'preto'  , 3);


select * from Animais;