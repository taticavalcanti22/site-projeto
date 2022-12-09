--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.reserva DROP CONSTRAINT espaco_id;
ALTER TABLE ONLY public.espaco DROP CONSTRAINT endereco_id;
ALTER TABLE ONLY public.reserva DROP CONSTRAINT cliente_id;
ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pkey;
ALTER TABLE ONLY public.espaco DROP CONSTRAINT espaco_pkey;
ALTER TABLE ONLY public.endereco DROP CONSTRAINT endereco_pkey;
ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
DROP TABLE public.reserva;
DROP TABLE public.espaco;
DROP TABLE public.endereco;
DROP TABLE public.cliente;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    documento character varying(50),
    email character varying(250),
    nome character varying(250),
    telefone character varying(13)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cliente ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco (
    id integer NOT NULL,
    logradouro character varying(250),
    cidade character varying(250),
    estado character varying(250),
    pais character varying(250),
    numero character varying(10),
    complemento character varying(250)
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- Name: endereco_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.endereco ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: espaco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.espaco (
    id integer NOT NULL,
    tipo character varying(10),
    descricao character varying(500),
    capacidade_hospedes smallint,
    valor_diaria money,
    endereco_id integer
);


ALTER TABLE public.espaco OWNER TO postgres;

--
-- Name: espaco_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.espaco ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.espaco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: reserva; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva (
    id integer NOT NULL,
    checkin date,
    checkout date,
    valor_total money,
    quantidade_diarias integer,
    status character varying(10),
    cliente_id integer,
    espaco_id integer
);


ALTER TABLE public.reserva OWNER TO postgres;

--
-- Name: reserva_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.reserva ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.reserva_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id, documento, email, nome, telefone) FROM stdin;
\.


--
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.endereco (id, logradouro, cidade, estado, pais, numero, complemento) FROM stdin;
\.


--
-- Data for Name: espaco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.espaco (id, tipo, descricao, capacidade_hospedes, valor_diaria, endereco_id) FROM stdin;
\.


--
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva (id, checkin, checkout, valor_total, quantidade_diarias, status, cliente_id, espaco_id) FROM stdin;
\.


--
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 1, false);


--
-- Name: endereco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_id_seq', 1, false);


--
-- Name: espaco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.espaco_id_seq', 1, false);


--
-- Name: reserva_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_id_seq', 1, false);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- Name: endereco endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);


--
-- Name: espaco espaco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT espaco_pkey PRIMARY KEY (id);


--
-- Name: reserva reserva_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id);


--
-- Name: reserva cliente_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT cliente_id FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);


--
-- Name: espaco endereco_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT endereco_id FOREIGN KEY (endereco_id) REFERENCES public.endereco(id) NOT VALID;


--
-- Name: reserva espaco_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT espaco_id FOREIGN KEY (espaco_id) REFERENCES public.espaco(id);


--
-- PostgreSQL database dump complete
--

