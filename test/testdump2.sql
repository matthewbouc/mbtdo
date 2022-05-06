-- Constructed the below command to get the pg_dump without entering the container
-- This method does not require a docker-compose bind-mount in 'database' (should be working through the 'web' bind-mount)
-- docker exec -it mbtodo-database-1 pg_dump -U symfony --no-owner  app > ./test/testdump2.sql

-- PostgreSQL database dump
--

-- Dumped from database version 13.6
-- Dumped by pg_dump version 13.6

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
-- Name: list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.list (
    id integer NOT NULL,
    task text,
    completed boolean,
    created timestamp without time zone,
    updated timestamp without time zone
);


--
-- Data for Name: list; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.list (id, task, completed, created, updated) FROM stdin;
1	create table in docker	f	2022-05-06 02:56:22.945116	2022-05-06 02:56:22.945116
\.


--
-- Name: list list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.list
    ADD CONSTRAINT list_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

