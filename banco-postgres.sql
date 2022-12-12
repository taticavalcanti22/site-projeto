CREATE TABLE public.cliente (
    id integer NOT NULL,
    documento character varying(50),
    email character varying(250),
    nome character varying(250),
    telefone character varying(13)
);

ALTER TABLE public.cliente ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE public.endereco (
    id integer NOT NULL,
    logradouro character varying(250),
    cidade character varying(250),
    estado character varying(250),
    pais character varying(250),
    numero character varying(10),
    complemento character varying(250)
);

ALTER TABLE public.endereco ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.endereco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE public.espaco (
    id integer NOT NULL,
    tipo character varying(10),
    descricao character varying(500),
    capacidade_hospedes smallint,
    valor_diaria money,
    endereco_id integer
);

ALTER TABLE public.espaco ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.espaco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

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

ALTER TABLE public.reserva ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.reserva_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT espaco_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT cliente_id FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);


ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT endereco_id FOREIGN KEY (endereco_id) REFERENCES public.endereco(id) NOT VALID;


ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT espaco_id FOREIGN KEY (espaco_id) REFERENCES public.espaco(id);
