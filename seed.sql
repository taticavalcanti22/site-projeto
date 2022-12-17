insert into cliente (documento, email, nome, telefone) values ('343434', '333232@gmail.com', 'rafael da silva', '8193455687');
insert into cliente (documento, email, nome, telefone) values ('34545', '34545@gmail.com', 'merica da silva', '812963455687');
insert into cliente (documento, email, nome, telefone) values ('7878', '7878@gmail.com', 'maria oliveira', '8193455687');
insert into cliente (documento, email, nome, telefone) values ('67her5436', '67her5436@gmail.com', 'josefa brasa', '8153453687');
insert into cliente (documento, email, nome, telefone) values ('656', '333232@gmail.com', 'plinio sampai', '819345517');
insert into cliente (documento, email, nome, telefone) values ('4634654', 'ereqwr2@gmail.com', 'ada lavouier', '8192255687');
insert into cliente (documento, email, nome, telefone) values ('56trhr646', 'ewrwe@gmail.com', 'nasa da america', '8192255687');
insert into cliente (documento, email, nome, telefone) values ('546347367', 'dffgh@gmail.com', 'joao nordeste', '8193451187');
insert into cliente (documento, email, nome, telefone) values ('12343124', 'fdgwerg@gmail.com', 'paulo do sul', '8193451187');
insert into cliente (documento, email, nome, telefone) values ('435345', 'ret3434@gmail.com', 'joana brennan', '8323455687');


insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('rua das americas', 'sn', '', 'caruaru', 'PE', 'brasil' );
insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('street 47', '45', 'qa1', 'santa cruz', 'CA', 'estados unidos da america' );
insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('street 34', '1044', 'ptr', 'san francisco', 'CA', 'estados unidos da america' );
insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('rua senador toninho', '45', 'rua', 'recife', 'PE', 'brasil' );
insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('avenida presidente', '788', '', 'cachoeirinha', 'PE', 'brasil' );
insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('avenida boa vista', '5654', '', 'cachoeirinha', 'RS', 'brasil' );
insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('travessa geral', 'sn', '', 'sao paulo', 'SP', 'brasil' );
insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('avenida brasil', '9876', '', 'rio de janeiro', 'RJ', 'brasil' );
insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('rua infinita', '342', 'pertto mercado', 'niteroi', 'RJ', 'brasil' );
insert into endereco(logradouro, numero, complemento, cidade, estado, pais)
values ('rua dos alcrins', '1', 'primeira casa', 'parati', 'RJ', 'brasil' );

insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('casa', 'lugar bonito', 6, 250.00, 1);
insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('studio', 'lugar lindo', 3, 100.00, 2);
insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('studio', 'acochegante', 6, 150.00, 3);
insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('apt', 'lugar arejado', 4, 150.00, 4);
insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('casa', 'lugar rustico', 8, 350.00, 5);
insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('casa', 'bem ventilado', 6, 200.00, 6);
insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('studio', 'lugar lindo', 2, 100.00, 7);
insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('studio', 'acochegante', 2, 150.00, 8);
insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('apt', 'lugar arejado', 5, 150.00, 9);
insert into espaco(tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) values ('casa', 'lugar rustico', 10, 450.00, 10);

insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-02-03', '2022-02-04', 290.00, 1, 'conf', 1, 1);
insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-05-03', '2022-05-06', 290.00, 10, 'canc', 2, 6);
insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-06-03', '2022-07-04', 4000.00, 30, 'conf', 3, 13);
insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-07-03', '2022-07-04', 250.00, 1, 'real', 4, 14);
insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-08-03', '2022-08-04', 250.00, 1, 'real', 5, 14);
insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-03-02', '2022-03-04', 450.00, 2, 'canc', 6, 15)
insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-10-05', '2022-10-01', 1000.00, 5, 'real', 7, 16);
insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-10-31', '2022-11-01', 300.00, 2, 'real', 7, 17);
insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-05-03', '2022-05-04', 290.00, 1, 'conf', 8, 1);
insert into reserva(checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id)
values('2022-05-03', '2022-05-04', 290.00, 10, 'conf', 8, 6);
