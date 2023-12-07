Microsoft Windows [versão 10.0.19043.1165]
(c) Microsoft Corporation. Todos os direitos reservados.

C:\Users\gabriel>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 16
Server version: 10.4.20-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> drop database dbtransporte;
Query OK, 1 row affected (0.018 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
5 rows in set (0.001 sec)

MariaDB [(none)]> create database dbtransporte;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| dbtransporte       |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.001 sec)

MariaDB [(none)]> use dbtransporte;
Database changed
MariaDB [dbtransporte]> create table tbveiculo(
    -> id int,
    -> placa varchar(45),
    -> modelo varchar(45),
    -> cor varchar(45),
    -> ano int,
    -> motoristaid int);
Query OK, 0 rows affected (0.023 sec)

MariaDB [dbtransporte]> create table tbmotorista(
    -> id int,
    -> nome varchar(45),
    -> fone varchar(45));
Query OK, 0 rows affected (0.038 sec)

MariaDB [dbtransporte]> create table tbviagem(
    -> id int,
    -> data date,
    -> time time,
    -> valor float,
    -> origem varchar(45),
    -> destino varchar(45),
    -> clienteid int,
    -> motoristaid int);
Query OK, 0 rows affected (0.055 sec)

MariaDB [dbtransporte]> create table tbcliente(
    -> id int,
    -> nome varchar(45),
    -> fone varchar(45),
    -> endereco varchar(45));
Query OK, 0 rows affected (0.020 sec)

MariaDB [dbtransporte]> show tables;
+------------------------+
| Tables_in_dbtransporte |
+------------------------+
| tbcliente              |
| tbmotorista            |
| tbveiculo              |
| tbviagem               |
+------------------------+
4 rows in set (0.001 sec)

MariaDB [dbtransporte]> insert to tbcliente(id,placa,modelo,cor,ano,motoristaid values(1,um,dois,vermelho,2000,1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'to tbcliente(id,placa,modelo,cor,ano,motoristaid values(1,um,dois,vermelho,20...' at line 1
MariaDB [dbtransporte]> insert to tbcliente(id,placa,modelo,cor,ano,motoristaid values(1,um,dois,vermelho,2000,1)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'to tbcliente(id,placa,modelo,cor,ano,motoristaid values(1,um,dois,vermelho,20...' at line 1
MariaDB [dbtransporte]> insert to tbcliente(id,placa,modelo,cor,ano,motoristaid;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'to tbcliente(id,placa,modelo,cor,ano,motoristaid' at line 1
MariaDB [dbtransporte]> insert to tbcliente(id,placa,modelo,cor,ano,motoristaid
    -> values(1,um,dois,vermelho,2000,1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'to tbcliente(id,placa,modelo,cor,ano,motoristaid
values(1,um,dois,vermelho,20...' at line 1
MariaDB [dbtransporte]> insert into tbcliente(id,placa,modelo,cor,ano,motoristaid values(1,um,dois,vermelho,2000,1)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'values(1,um,dois,vermelho,2000,1)' at line 1
MariaDB [dbtransporte]> insert into tbcliente(id,placa,modelo,cor,ano,motoristaid values(1,um,dois,vermelho,'2000',1)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'values(1,um,dois,vermelho,'2000',1)' at line 1
MariaDB [dbtransporte]> insert into tbcliente(id,placa,modelo,cor,ano,motoristaid) values(1,um,dois,vermelho,'2000',1)
    -> ;
ERROR 1054 (42S22): Unknown column 'um' in 'field list'
MariaDB [dbtransporte]> insert into tbcliente(id,placa,modelo,cor,ano,motoristaid) values(1,1,dois,vermelho,'2000',1)
    -> ;
ERROR 1054 (42S22): Unknown column 'dois' in 'field list'
MariaDB [dbtransporte]> insert into tbcliente(id,placa,modelo,cor,ano,motoristaid) values(1,1,1,vermelho,'2000',1)
    -> ;
ERROR 1054 (42S22): Unknown column 'vermelho' in 'field list'
MariaDB [dbtransporte]> insert into tbcliente(id,placa,modelo,cor,ano,motoristaid) values(1,1,dois,'vermelho',2000,1)
    -> ;
ERROR 1054 (42S22): Unknown column 'dois' in 'field list'
MariaDB [dbtransporte]> insert into tbcliente(id,placa,modelo,cor,ano,motoristaid) values(1,1,'dois','vermelho',2000,1)
    -> ;
ERROR 1054 (42S22): Unknown column 'placa' in 'field list'
MariaDB [dbtransporte]> insert into tbveiculo(id,placa,modelo,cor,ano,motoristaid) values(1,1,'dois','vermelho',2000,1)
    -> ;
Query OK, 1 row affected (0.029 sec)

MariaDB [dbtransporte]> insert into tbmotorista(id,nome,fone) values(1,'gabriel',1)
    -> ;
Query OK, 1 row affected (0.034 sec)

MariaDB [dbtransporte]> insert into tbviagem(id,data,time,valor,origem,destino,cliente,motorista)values(1,'2021/08/16','11:11:11',45,'casa','casa de amigo',1,1);
ERROR 1054 (42S22): Unknown column 'cliente' in 'field list'
MariaDB [dbtransporte]> insert into tbviagem(id,data,time,valor,origem,destino,clienteid,motoristaid)values(1,'2021/08/16','11:11:11',45,'casa','casa de amigo',1,1);
Query OK, 1 row affected (0.026 sec)

MariaDB [dbtransporte]> select * from tbveiculo;
+------+-------+--------+----------+------+-------------+
| id   | placa | modelo | cor      | ano  | motoristaid |
+------+-------+--------+----------+------+-------------+
|    1 | 1     | dois   | vermelho | 2000 |           1 |
+------+-------+--------+----------+------+-------------+
1 row in set (0.001 sec)

MariaDB [dbtransporte]> select * from tbmotorista;
+------+---------+------+
| id   | nome    | fone |
+------+---------+------+
|    1 | gabriel | 1    |
+------+---------+------+
1 row in set (0.000 sec)

MariaDB [dbtransporte]> select * from tbviagem;
+------+------------+----------+-------+--------+---------------+-----------+-------------+
| id   | data       | time     | valor | origem | destino       | clienteid | motoristaid |
+------+------------+----------+-------+--------+---------------+-----------+-------------+
|    1 | 2021-08-16 | 11:11:11 |    45 | casa   | casa de amigo |         1 |           1 |
+------+------------+----------+-------+--------+---------------+-----------+-------------+
1 row in set (0.000 sec)

MariaDB [dbtransporte]> select * from tbcliente;
Empty set (0.000 sec)

MariaDB [dbtransporte]> insert into tbcliente(id,nome,fone,endereco)values(1,'gasbriel','121212','rua do coqueiro');
Query OK, 1 row affected (0.050 sec)

MariaDB [dbtransporte]> select * from tbcliente;
+------+----------+--------+-----------------+
| id   | nome     | fone   | endereco        |
+------+----------+--------+-----------------+
|    1 | gasbriel | 121212 | rua do coqueiro |
+------+----------+--------+-----------------+
1 row in set (0.000 sec)

MariaDB [dbtransporte]>