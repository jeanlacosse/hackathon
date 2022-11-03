--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-11-02 15:47:29

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16407)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    employee_id bigint NOT NULL,
    employee_manager_id integer NOT NULL,
    employee_first_name character varying(100) NOT NULL,
    employee_last_name character varying(100) NOT NULL,
    employee_phone_number integer NOT NULL,
    employee_title character varying(25) NOT NULL,
    employee_salary integer NOT NULL,
    employee_location character varying(25) NOT NULL,
    employee_password INT NOT NULL
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16406)
-- Name: employee_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_employee_id_seq OWNER TO postgres;

--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 214
-- Name: employee_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;


--
-- TOC entry 217 (class 1259 OID 16418)
-- Name: hr; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hr (
    hr_id integer NOT NULL,
    hr_first_name character varying(100) NOT NULL,
    hr_last_name character varying(100) NOT NULL,
    hr_phone_number integer NOT NULL,
    hr_title character varying(25) NOT NULL,
    hr_salary integer NOT NULL,
    hr_location character varying(25) NOT NULL,
    
);


ALTER TABLE public.hr OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16413)
-- Name: manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manager (
    manager_id integer NOT NULL,
    manager_first_name character varying(100) NOT NULL,
    manager_last_name character varying(100) NOT NULL,
    manager_phone_number integer NOT NULL,
    manager_title character varying(25) NOT NULL,
    manager_salary integer NOT NULL,
    manager_location character varying(25) NOT NULL
);


ALTER TABLE public.manager OWNER TO postgres;

--
-- TOC entry 3181 (class 2604 OID 16410)
-- Name: employee employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);


--
-- TOC entry 3331 (class 0 OID 16407)
-- Dependencies: 215
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (employee_id, employee_manager_id, employee_first_name, employee_last_name, employee_phone_number, employee_title, employee_salary, employee_location) FROM stdin;
\.


--
-- TOC entry 3333 (class 0 OID 16418)
-- Dependencies: 217
-- Data for Name: hr; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hr (hr_id, hr_first_name, hr_last_name, hr_phone_number, hr_title, hr_salary, hr_location) FROM stdin;
\.


--
-- TOC entry 3332 (class 0 OID 16413)
-- Dependencies: 216
-- Data for Name: manager; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.manager (manager_id, manager_first_name, manager_last_name, manager_phone_number, manager_title, manager_salary, manager_location) FROM stdin;
\.


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 214
-- Name: employee_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employee_id_seq', 1, false);


--
-- TOC entry 3183 (class 2606 OID 16412)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3187 (class 2606 OID 16422)
-- Name: hr hr_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hr
    ADD CONSTRAINT hr_pkey PRIMARY KEY (hr_id);


--
-- TOC entry 3185 (class 2606 OID 16417)
-- Name: manager manager_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manager
    ADD CONSTRAINT manager_pkey PRIMARY KEY (manager_id);


-- Completed on 2022-11-02 15:47:29

--
-- PostgreSQL database dump complete
--

