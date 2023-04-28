--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 376, 377, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (66, 378, 379, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 377, 379, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 376, 378, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 377, 380, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 379, 381, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 378, 382, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 376, 383, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 379, 384, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 381, 385, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 378, 386, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 382, 387, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 377, 388, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 380, 389, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 383, 390, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 376, 391, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 392, 391, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (82, 393, 382, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 391, 393, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 392, 382, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 393, 394, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 391, 378, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 382, 384, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 392, 376, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 382, 395, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 384, 383, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 376, 396, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 392, 397, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 393, 387, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 394, 398, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 391, 385, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 378, 399, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (376, 'France');
INSERT INTO public.teams VALUES (377, 'Croatia');
INSERT INTO public.teams VALUES (378, 'Belgium');
INSERT INTO public.teams VALUES (379, 'England');
INSERT INTO public.teams VALUES (380, 'Russia');
INSERT INTO public.teams VALUES (381, 'Sweden');
INSERT INTO public.teams VALUES (382, 'Brazil');
INSERT INTO public.teams VALUES (383, 'Uruguay');
INSERT INTO public.teams VALUES (384, 'Colombia');
INSERT INTO public.teams VALUES (385, 'Switzerland');
INSERT INTO public.teams VALUES (386, 'Japan');
INSERT INTO public.teams VALUES (387, 'Mexico');
INSERT INTO public.teams VALUES (388, 'Denmark');
INSERT INTO public.teams VALUES (389, 'Spain');
INSERT INTO public.teams VALUES (390, 'Portugal');
INSERT INTO public.teams VALUES (391, 'Argentina');
INSERT INTO public.teams VALUES (392, 'Germany');
INSERT INTO public.teams VALUES (393, 'Netherlands');
INSERT INTO public.teams VALUES (394, 'Costa Rica');
INSERT INTO public.teams VALUES (395, 'Chile');
INSERT INTO public.teams VALUES (396, 'Nigeria');
INSERT INTO public.teams VALUES (397, 'Algeria');
INSERT INTO public.teams VALUES (398, 'Greece');
INSERT INTO public.teams VALUES (399, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 399, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


