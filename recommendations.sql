--
-- PostgreSQL database dump
--

\restrict P60d8WfbGSmLL7YFbIxZRi2k1zGAkpJt0LeZJcDSNhv0RLnJDgMBL6wFAmQPdWK

-- Dumped from database version 18.7
-- Dumped by pg_dump version 18.7

-- Started on 2026-11-26 19:52:50

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16475)
-- Name: recommendation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recommendation (
    group_id uuid NOT NULL,
    user_id uuid NOT NULL,
    compatibility_score integer NOT NULL,
    calculated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT recommendation_compatibility_score_check CHECK (((compatibility_score >= 0) AND (compatibility_score <= 100)))
);


ALTER TABLE public.recommendation OWNER TO postgres;

--
-- TOC entry 4858 (class 2606 OID 16484)
-- Name: recommendation recommendation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recommendation
    ADD CONSTRAINT recommendation_pkey PRIMARY KEY (group_id, user_id);


-- Completed on 2026-11-26 19:52:50

--
-- PostgreSQL database dump complete
--

\unrestrict P60d8WfbGSmLL7YFbIxZRi2k1zGAkpJt0LeZJcDSNhv0RLnJDgMBL6wFAmQPdWK

