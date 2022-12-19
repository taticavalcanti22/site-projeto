--Consutas simples
--Nomes de clientes que começam com a letra j
SELECT *
FROM cliente
WHERE nome LIKE 'j%';

--Cidades que não comecem com a letra a
SELECT *
FROM endereco
WHERE cidade NOT LIKE 'a%';

--Logradouro próximo a rua ou mercado
SELECT logradouro
FROM endereco
WHERE complemento IN ('rua', 'mercado');

--Espaços que comportem 6 ou 8 hóspedes
SELECT *
FROM espaco
WHERE capacidade_hospedes BETWEEN 6 AND 8;

--Reserva com cinco diarias
SELECT *
FROM reserva
WHERE quantidade_diarias = 5;


--Consultas complexas
-- Reservas em casas ordenadas por valor da diaria de forma decrescente
SELECT es.descricao, re.valor_total, es.valor_diaria
FROM espaco es
INNER JOIN reserva re ON es.id = re.espaco_id
WHERE es.tipo IN ('casa')
ORDER BY es.valor_diaria DESC;

-- Todas as reservas com checkin, checkout, nome do cliente e país do espaço
SELECT re.checkin, re.checkout, cli.nome, ende.pais
FROM reserva re
INNER JOIN  cliente cli ON cli.id = re.cliente_id
INNER JOIN espaco esp ON esp.id = re.espaco_id
INNER JOIN endereco ende ON esp.endereco_id = ende.id;

-- Clientes sem reservas
SELECT cli.nome
FROM cliente cli
LEFT JOIN reserva re ON re.cliente_id = cli.id
WHERE re.cliente_id IS null;

-- Espaços sem reservas
SELECT esp.tipo, esp.descricao
FROM espaco esp
LEFT JOIN reserva re ON re.espaco_id = esp.id
WHERE re.espaco_id IS null;

-- As duas reservas de maior valor
SELECT re.valor_total
FROM reserva re
ORDER BY re.valor_total DESC
LIMIT 2;

-- Os três clientes com mais reservas
SELECT COUNT(re.id), cli.nome
FROM reserva re
INNER JOIN cliente cli ON cli.id = re.cliente_id
GROUP BY re.cliente_id, cli.nome
ORDER BY COUNT(re.id) DESC
LIMIT 3;



