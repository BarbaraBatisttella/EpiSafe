--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE "app-java";




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:gYN7LJ/hYallnfN6oSV+CA==$FWbhnQ1vLhJ7Z5JM70CfQapsQ6L3GvfGGE9tD6lbNqQ=:TNlcZ+Jca1YLUl14F0v1xNGLXfXxHY7hKHYceZb8vw8=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Debian 17.1-1.pgdg120+1)
-- Dumped by pg_dump version 17.1 (Debian 17.1-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "app-java" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Debian 17.1-1.pgdg120+1)
-- Dumped by pg_dump version 17.1 (Debian 17.1-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: app-java; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "app-java" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE "app-java" OWNER TO postgres;

\connect -reuse-previous=on "dbname='app-java'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Debian 17.1-1.pgdg120+1)
-- Dumped by pg_dump version 17.1 (Debian 17.1-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: agente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agente (
    id integer NOT NULL,
    nome_completo character varying(100) NOT NULL,
    data_nasc date NOT NULL,
    sexo character(1),
    telefone character varying(15) NOT NULL,
    cpf character(11) NOT NULL,
    endereco_id integer,
    usuario_id integer,
    CONSTRAINT agente_sexo_check CHECK ((sexo = ANY (ARRAY['F'::bpchar, 'M'::bpchar])))
);


ALTER TABLE public.agente OWNER TO postgres;

--
-- Name: agente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.agente_id_seq OWNER TO postgres;

--
-- Name: agente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agente_id_seq OWNED BY public.agente.id;


--
-- Name: area_de_atuacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.area_de_atuacao (
    id integer NOT NULL,
    apelido character varying(100) NOT NULL,
    observacao text
);


ALTER TABLE public.area_de_atuacao OWNER TO postgres;

--
-- Name: area_de_atuacao_com_enderecos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.area_de_atuacao_com_enderecos (
    id integer NOT NULL,
    endereco_id integer NOT NULL,
    area_de_atuacao_id integer NOT NULL
);


ALTER TABLE public.area_de_atuacao_com_enderecos OWNER TO postgres;

--
-- Name: area_de_atuacao_com_enderecos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.area_de_atuacao_com_enderecos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.area_de_atuacao_com_enderecos_id_seq OWNER TO postgres;

--
-- Name: area_de_atuacao_com_enderecos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.area_de_atuacao_com_enderecos_id_seq OWNED BY public.area_de_atuacao_com_enderecos.id;


--
-- Name: area_de_atuacao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.area_de_atuacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.area_de_atuacao_id_seq OWNER TO postgres;

--
-- Name: area_de_atuacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.area_de_atuacao_id_seq OWNED BY public.area_de_atuacao.id;


--
-- Name: armadilha; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.armadilha (
    id integer NOT NULL,
    area_de_atuacao_id integer,
    agente_id integer NOT NULL,
    tipo_armadilha character varying(50),
    data date NOT NULL,
    descricao text
);


ALTER TABLE public.armadilha OWNER TO postgres;

--
-- Name: armadilha_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.armadilha_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.armadilha_id_seq OWNER TO postgres;

--
-- Name: armadilha_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.armadilha_id_seq OWNED BY public.armadilha.id;


--
-- Name: cadastro_de_notificacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cadastro_de_notificacao (
    id integer NOT NULL,
    visita_id integer,
    data_retorno date NOT NULL,
    foco_dengue boolean NOT NULL,
    descricao text
);


ALTER TABLE public.cadastro_de_notificacao OWNER TO postgres;

--
-- Name: cadastro_de_notificacao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cadastro_de_notificacao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cadastro_de_notificacao_id_seq OWNER TO postgres;

--
-- Name: cadastro_de_notificacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cadastro_de_notificacao_id_seq OWNED BY public.cadastro_de_notificacao.id;


--
-- Name: caso_de_dengue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.caso_de_dengue (
    id integer NOT NULL,
    nome_pessoa text NOT NULL,
    sexo character(1),
    cpf character(11) NOT NULL,
    data_nascimento date NOT NULL,
    visita_id integer,
    CONSTRAINT caso_de_dengue_sexo_check CHECK ((sexo = ANY (ARRAY['F'::bpchar, 'M'::bpchar])))
);


ALTER TABLE public.caso_de_dengue OWNER TO postgres;

--
-- Name: caso_de_dengue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.caso_de_dengue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.caso_de_dengue_id_seq OWNER TO postgres;

--
-- Name: caso_de_dengue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.caso_de_dengue_id_seq OWNED BY public.caso_de_dengue.id;


--
-- Name: ciclo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ciclo (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    descricao text,
    data_inicio date NOT NULL,
    data_fim date NOT NULL
);


ALTER TABLE public.ciclo OWNER TO postgres;

--
-- Name: ciclo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ciclo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ciclo_id_seq OWNER TO postgres;

--
-- Name: ciclo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ciclo_id_seq OWNED BY public.ciclo.id;


--
-- Name: endereco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.endereco (
    id integer NOT NULL,
    cidade character varying(50),
    bairro character varying(50),
    logradouro character varying(50),
    observacao text
);


ALTER TABLE public.endereco OWNER TO postgres;

--
-- Name: endereco_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.endereco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.endereco_id_seq OWNER TO postgres;

--
-- Name: endereco_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.endereco_id_seq OWNED BY public.endereco.id;


--
-- Name: residencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.residencia (
    id integer NOT NULL,
    tipo_residencia integer,
    numero character varying(10) NOT NULL,
    ponto_de_referencia text,
    endereco_id integer,
    CONSTRAINT residencia_tipo_residencia_check CHECK ((tipo_residencia = ANY (ARRAY[1, 2, 3])))
);


ALTER TABLE public.residencia OWNER TO postgres;

--
-- Name: residencia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.residencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.residencia_id_seq OWNER TO postgres;

--
-- Name: residencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.residencia_id_seq OWNED BY public.residencia.id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    login character varying(50) NOT NULL,
    senha character varying(100) NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_seq OWNER TO postgres;

--
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- Name: visita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visita (
    id integer NOT NULL,
    residencia_id integer,
    ciclo_id integer,
    descricao text,
    agente_id integer NOT NULL,
    data_visita date NOT NULL
);


ALTER TABLE public.visita OWNER TO postgres;

--
-- Name: visita_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.visita_id_seq OWNER TO postgres;

--
-- Name: visita_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visita_id_seq OWNED BY public.visita.id;


--
-- Name: agente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agente ALTER COLUMN id SET DEFAULT nextval('public.agente_id_seq'::regclass);


--
-- Name: area_de_atuacao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_de_atuacao ALTER COLUMN id SET DEFAULT nextval('public.area_de_atuacao_id_seq'::regclass);


--
-- Name: area_de_atuacao_com_enderecos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_de_atuacao_com_enderecos ALTER COLUMN id SET DEFAULT nextval('public.area_de_atuacao_com_enderecos_id_seq'::regclass);


--
-- Name: armadilha id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.armadilha ALTER COLUMN id SET DEFAULT nextval('public.armadilha_id_seq'::regclass);


--
-- Name: cadastro_de_notificacao id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadastro_de_notificacao ALTER COLUMN id SET DEFAULT nextval('public.cadastro_de_notificacao_id_seq'::regclass);


--
-- Name: caso_de_dengue id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caso_de_dengue ALTER COLUMN id SET DEFAULT nextval('public.caso_de_dengue_id_seq'::regclass);


--
-- Name: ciclo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciclo ALTER COLUMN id SET DEFAULT nextval('public.ciclo_id_seq'::regclass);


--
-- Name: endereco id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco ALTER COLUMN id SET DEFAULT nextval('public.endereco_id_seq'::regclass);


--
-- Name: residencia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.residencia ALTER COLUMN id SET DEFAULT nextval('public.residencia_id_seq'::regclass);


--
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- Name: visita id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visita ALTER COLUMN id SET DEFAULT nextval('public.visita_id_seq'::regclass);


--
-- Data for Name: agente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agente (id, nome_completo, data_nasc, sexo, telefone, cpf, endereco_id, usuario_id) FROM stdin;
1	Joana Silva	1990-05-15	F	(49) 9999-1111	12345678901	1	1
2	Pedro Souza	1985-07-20	M	(49) 9888-2222	23456789012	6	2
3	Ana Oliveira	1992-03-10	F	(49) 9777-3333	34567890123	11	3
4	Marcos Santos	1988-11-25	M	(49) 9666-4444	45678901234	16	4
5	Juliana Costa	1995-09-18	F	(49) 9555-5555	56789012345	21	5
6	Lucas Martins	1980-12-30	M	(49) 9444-6666	67890123456	1	6
7	Carla Pereira	1987-04-05	F	(49) 9333-7777	78901234567	6	7
8	Ricardo Almeida	1993-06-08	M	(49) 9222-8888	89012345678	11	8
9	Fernanda Lima	1983-02-12	F	(49) 9111-9999	90123456789	16	9
10	José Torres	1998-08-22	M	(49) 9000-0000	01234567890	21	10
\.


--
-- Data for Name: area_de_atuacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.area_de_atuacao (id, apelido, observacao) FROM stdin;
\.


--
-- Data for Name: area_de_atuacao_com_enderecos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.area_de_atuacao_com_enderecos (id, endereco_id, area_de_atuacao_id) FROM stdin;
\.


--
-- Data for Name: armadilha; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.armadilha (id, area_de_atuacao_id, agente_id, tipo_armadilha, data, descricao) FROM stdin;
\.


--
-- Data for Name: cadastro_de_notificacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cadastro_de_notificacao (id, visita_id, data_retorno, foco_dengue, descricao) FROM stdin;
\.


--
-- Data for Name: caso_de_dengue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.caso_de_dengue (id, nome_pessoa, sexo, cpf, data_nascimento, visita_id) FROM stdin;
1	Maria Silva	F	12345678912	1985-03-10	1
2	João Souza	M	12345678913	1990-07-15	2
3	Ana Oliveira	F	12345678914	1992-05-20	3
4	Pedro Santos	M	12345678915	1988-11-25	4
5	Juliana Costa	F	12345678916	1995-09-18	5
6	Lucas Martins	M	12345678917	1980-12-30	6
7	Carla Pereira	F	12345678918	1987-04-05	7
8	Ricardo Almeida	M	12345678919	1993-06-08	8
9	Fernanda Lima	F	12345678910	1983-02-12	9
10	José Torres	M	11345678911	1998-08-22	10
11	Maria Santos	F	12345678911	1985-03-10	11
12	João Oliveira	M	13345678911	1990-07-15	12
13	Ana Costa	F	14345678911	1992-05-20	13
14	Pedro Alves	M	15345678911	1988-11-25	14
15	Juliana Rodrigues	F	16345678911	1995-09-18	15
16	Lucas Pereira	M	17345678911	1980-12-30	16
17	Carla Souza	F	18345678911	1987-04-05	17
18	Ricardo Costa	M	19345678911	1993-06-08	18
19	Fernanda Santos	F	20345678911	1983-02-12	19
20	José Almeida	M	21345678911	1998-08-22	20
21	Maria Rodrigues	F	22345678911	1985-03-10	21
22	João Costa	M	23345678911	1990-07-15	22
23	Ana Lima	F	24345678911	1992-05-20	23
24	Pedro Torres	M	25345678911	1988-11-25	24
25	Juliana Alves	F	26345678911	1995-09-18	25
26	Lucas Oliveira	M	27345678911	1980-12-30	1
27	Carla Costa	F	28345678911	1987-04-05	25
\.


--
-- Data for Name: ciclo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ciclo (id, nome, descricao, data_inicio, data_fim) FROM stdin;
1	Ciclo de Verão 2024	Ciclo dedicado ao verão com foco na prevenção de doenças relacionadas ao calor.	2024-01-01	2024-03-31
2	Ciclo de Outono 2024	Ciclo para preparação contra doenças respiratórias comuns no outono.	2024-04-01	2024-06-30
3	Ciclo de Inverno 2024	Ciclo focado na prevenção de gripes e resfriados típicos do inverno.	2024-07-01	2024-09-30
4	Ciclo de Primavera 2024	Ciclo para controle de doenças transmitidas por insetos na primavera.	2024-10-01	2024-12-31
5	Ciclo Anual 2024	Ciclo abrangente que cobre todas as estações do ano com estratégias variadas de prevenção.	2024-01-01	2024-12-31
\.


--
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.endereco (id, cidade, bairro, logradouro, observacao) FROM stdin;
1	São Miguel do Oeste	Centro	Rua das Flores	Próximo ao supermercado
2	São Miguel do Oeste	Jardim América	Avenida Brasil	Perto da praça central
3	São Miguel do Oeste	Progresso	Rua 25 de Julho	Casa de esquina
4	São Miguel do Oeste	Agostini	Rua do Comércio	Fundo da igreja
5	São Miguel do Oeste	São Luiz	Rua das Palmeiras	Ao lado do hospital
6	Guaraciaba	Centro	Rua Principal	Ponto de ônibus
7	Guaraciaba	Vila Nova	Avenida dos Imigrantes	Proximidades do posto de gasolina
8	Guaraciaba	Santa Terezinha	Travessa das Flores	Fundos da escola
9	Guaraciaba	São Francisco	Rua das Acácias	Casa amarela
10	Guaraciaba	Santa Rita	Avenida das Oliveiras	Próximo ao campo de futebol
11	Descanso	Centro	Rua das Violetas	Esquina com a praça
12	Descanso	Jardim América	Avenida dos Ipês	Casa de tijolos à vista
13	Descanso	São Jorge	Rua do Bosque	Última casa da rua
14	Descanso	São José	Avenida das Águias	Frente ao mercado
15	Descanso	Santa Clara	Rua dos Girassóis	Perto da creche
16	Maravilha	Centro	Avenida Brasil	Bem movimentado
17	Maravilha	Santa Cruz	Rua das Orquídeas	Casa de madeira
18	Maravilha	São Cristóvão	Travessa das Hortênsias	Frente à escola
19	Maravilha	São José	Rua dos Lírios	Casa azul
20	Maravilha	Santa Catarina	Avenida das Rosas	Final da rua
21	Itapiranga	Centro	Rua Principal	Ao lado do banco
22	Itapiranga	Santa Rosa	Avenida das Acácias	Perto do hospital
23	Itapiranga	São Francisco	Rua das Tulipas	Próximo à igreja
24	Itapiranga	São João	Travessa dos Cedros	Casa grande
25	Itapiranga	São Paulo	Avenida das Mangueiras	Esquina movimentada
26	São Miguel do Oeste	Santa Rita	Rua das Oliveiras	Frente ao campo de futebol
27	Guaraciaba	Centro	Rua do Comércio	Fundo da igreja
28	Descanso	Jardim América	Avenida dos Ipês	Casa de tijolos à vista
29	Maravilha	Santa Cruz	Rua das Orquídeas	Casa de madeira
30	Itapiranga	Centro	Rua Principal	Ao lado do banco
\.


--
-- Data for Name: residencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.residencia (id, tipo_residencia, numero, ponto_de_referencia, endereco_id) FROM stdin;
1	1	101	Próximo à escola	1
2	2	201	Casa amarela	1
3	3	301	Ao lado do mercado	1
4	1	102	Esquina com a praça	2
5	2	202	Casa branca	2
6	1	103	Perto da igreja	6
7	2	203	Casa azul	6
8	3	303	Frente à praça	6
9	1	104	Rua das Flores	7
10	2	204	Casa vermelha	7
11	1	105	Próximo ao parque	11
12	2	205	Casa verde	11
13	3	305	Esquina movimentada	11
14	1	106	Rua das Palmeiras	12
15	2	206	Casa grande	12
16	1	107	Ao lado do hospital	16
17	2	207	Casa de madeira	16
18	3	307	Frente ao campo	16
19	1	108	Avenida Principal	17
20	2	208	Casa de tijolos à vista	17
21	1	109	Perto da escola	21
22	2	209	Casa rosa	21
23	3	309	Final da rua	21
24	1	110	Rua dos Cedros	22
25	2	210	Casa térrea	22
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id, login, senha) FROM stdin;
2	usuario2	abcde456
3	usuario3	qwerty789
4	usuario4	12345678
5	usuario5	senha@123
6	usuario6	abc123
7	usuario7	password
8	usuario8	securepass
9	usuario9	mysecret
10	usuario10	letmein
11	leoteste37	senha1234
1	leoagostini	senha1234
\.


--
-- Data for Name: visita; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visita (id, residencia_id, ciclo_id, descricao, agente_id, data_visita) FROM stdin;
1	1	5	Visita de verificação	1	2024-01-05
2	2	5	Visita de verificação	1	2024-01-05
3	3	5	Visita de verificação	1	2024-01-05
4	4	5	Visita de verificação	1	2024-01-05
5	5	5	Visita de verificação	1	2024-01-05
6	6	5	Visita de verificação	1	2024-01-05
7	7	5	Visita de verificação	1	2024-01-05
8	8	5	Visita de verificação	1	2024-01-05
9	9	5	Visita de verificação	1	2024-01-05
10	10	5	Visita de verificação	1	2024-01-05
11	11	5	Visita de verificação	1	2024-01-05
12	12	5	Visita de verificação	1	2024-01-05
13	13	5	Visita de verificação	1	2024-01-05
14	14	5	Visita de verificação	1	2024-01-05
15	15	5	Visita de verificação	1	2024-01-05
16	16	5	Visita de verificação	1	2024-01-05
17	17	5	Visita de verificação	1	2024-01-05
18	18	5	Visita de verificação	1	2024-01-05
19	19	5	Visita de verificação	1	2024-01-05
20	20	5	Visita de verificação	1	2024-01-05
21	21	5	Visita de verificação	1	2024-01-05
22	22	5	Visita de verificação	1	2024-01-05
23	23	5	Visita de verificação	1	2024-01-05
24	24	5	Visita de verificação	1	2024-01-05
25	25	5	Visita de verificação	1	2024-01-05
33	\N	\N	Visita de verificação	1	2024-01-05
36	1	1	Visita de verificação	1	2024-01-05
37	1	1	Visita de verificação	1	2024-01-05
39	1	1	Visita de verificação	1	2024-01-05
\.


--
-- Name: agente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agente_id_seq', 10, true);


--
-- Name: area_de_atuacao_com_enderecos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.area_de_atuacao_com_enderecos_id_seq', 1, false);


--
-- Name: area_de_atuacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.area_de_atuacao_id_seq', 1, false);


--
-- Name: armadilha_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.armadilha_id_seq', 1, false);


--
-- Name: cadastro_de_notificacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cadastro_de_notificacao_id_seq', 1, false);


--
-- Name: caso_de_dengue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.caso_de_dengue_id_seq', 27, true);


--
-- Name: ciclo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ciclo_id_seq', 5, true);


--
-- Name: endereco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.endereco_id_seq', 30, true);


--
-- Name: residencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.residencia_id_seq', 25, true);


--
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 11, true);


--
-- Name: visita_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visita_id_seq', 39, true);


--
-- Name: agente agente_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agente
    ADD CONSTRAINT agente_cpf_key UNIQUE (cpf);


--
-- Name: agente agente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agente
    ADD CONSTRAINT agente_pkey PRIMARY KEY (id);


--
-- Name: area_de_atuacao_com_enderecos area_de_atuacao_com_enderecos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_de_atuacao_com_enderecos
    ADD CONSTRAINT area_de_atuacao_com_enderecos_pkey PRIMARY KEY (id);


--
-- Name: area_de_atuacao area_de_atuacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_de_atuacao
    ADD CONSTRAINT area_de_atuacao_pkey PRIMARY KEY (id);


--
-- Name: armadilha armadilha_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.armadilha
    ADD CONSTRAINT armadilha_pkey PRIMARY KEY (id);


--
-- Name: cadastro_de_notificacao cadastro_de_notificacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadastro_de_notificacao
    ADD CONSTRAINT cadastro_de_notificacao_pkey PRIMARY KEY (id);


--
-- Name: caso_de_dengue caso_de_dengue_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caso_de_dengue
    ADD CONSTRAINT caso_de_dengue_cpf_key UNIQUE (cpf);


--
-- Name: caso_de_dengue caso_de_dengue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caso_de_dengue
    ADD CONSTRAINT caso_de_dengue_pkey PRIMARY KEY (id);


--
-- Name: ciclo ciclo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ciclo
    ADD CONSTRAINT ciclo_pkey PRIMARY KEY (id);


--
-- Name: endereco endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id);


--
-- Name: residencia residencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.residencia
    ADD CONSTRAINT residencia_pkey PRIMARY KEY (id);


--
-- Name: usuario usuario_login_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_login_key UNIQUE (login);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- Name: visita visita_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_pkey PRIMARY KEY (id);


--
-- Name: agente agente_endereco_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agente
    ADD CONSTRAINT agente_endereco_id_fkey FOREIGN KEY (endereco_id) REFERENCES public.endereco(id);


--
-- Name: agente agente_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agente
    ADD CONSTRAINT agente_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuario(id);


--
-- Name: area_de_atuacao_com_enderecos area_de_atuacao_com_enderecos_area_de_atuacao_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_de_atuacao_com_enderecos
    ADD CONSTRAINT area_de_atuacao_com_enderecos_area_de_atuacao_id_fkey FOREIGN KEY (area_de_atuacao_id) REFERENCES public.area_de_atuacao(id);


--
-- Name: area_de_atuacao_com_enderecos area_de_atuacao_com_enderecos_endereco_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_de_atuacao_com_enderecos
    ADD CONSTRAINT area_de_atuacao_com_enderecos_endereco_id_fkey FOREIGN KEY (endereco_id) REFERENCES public.endereco(id);


--
-- Name: armadilha armadilha_agente_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.armadilha
    ADD CONSTRAINT armadilha_agente_id_fkey FOREIGN KEY (agente_id) REFERENCES public.agente(id);


--
-- Name: armadilha armadilha_area_de_atuacao_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.armadilha
    ADD CONSTRAINT armadilha_area_de_atuacao_id_fkey FOREIGN KEY (area_de_atuacao_id) REFERENCES public.area_de_atuacao(id);


--
-- Name: cadastro_de_notificacao cadastro_de_notificacao_visita_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadastro_de_notificacao
    ADD CONSTRAINT cadastro_de_notificacao_visita_id_fkey FOREIGN KEY (visita_id) REFERENCES public.visita(id);


--
-- Name: caso_de_dengue caso_de_dengue_visita_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caso_de_dengue
    ADD CONSTRAINT caso_de_dengue_visita_id_fkey FOREIGN KEY (visita_id) REFERENCES public.visita(id);


--
-- Name: residencia residencia_endereco_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.residencia
    ADD CONSTRAINT residencia_endereco_id_fkey FOREIGN KEY (endereco_id) REFERENCES public.endereco(id);


--
-- Name: visita visita_agente_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_agente_id_fkey FOREIGN KEY (agente_id) REFERENCES public.agente(id);


--
-- Name: visita visita_ciclo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_ciclo_id_fkey FOREIGN KEY (ciclo_id) REFERENCES public.ciclo(id);


--
-- Name: visita visita_residencia_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visita
    ADD CONSTRAINT visita_residencia_id_fkey FOREIGN KEY (residencia_id) REFERENCES public.residencia(id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

