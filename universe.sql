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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: chore; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.chore (
    chore_id integer NOT NULL,
    name character varying(40) NOT NULL,
    time_in_mins integer NOT NULL
);


ALTER TABLE public.chore OWNER TO freecodecamp;

--
-- Name: chores_chore_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.chores_chore_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chores_chore_id_seq OWNER TO freecodecamp;

--
-- Name: chores_chore_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.chores_chore_id_seq OWNED BY public.chore.chore_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    distance_in_mly integer,
    constellation character varying(40)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    orbital_velocity numeric,
    planet_id integer NOT NULL,
    color character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean,
    has_moon boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    solar_radii integer,
    galaxy_id integer NOT NULL,
    is_the_sun boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: chore chore_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.chore ALTER COLUMN chore_id SET DEFAULT nextval('public.chores_chore_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: chore; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.chore VALUES (1, 'cleaning', 100);
INSERT INTO public.chore VALUES (2, 'shopping', 200);
INSERT INTO public.chore VALUES (3, 'manually entering data', 100000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'This is the galaxy containing the Sun and its Solar System, and therefore Earth. Most things visible to the naked eye in the sky are part of it, including the Milky Way composing the Zone of Avoidance.', 0, 'Sagittarius');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda. ', 3, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 'This is the fourth-largest galaxy in the Local Group, and forms a pair with the SMC, and from recent research, may not be part of the Milky Way system of satellites at all.', 0, 'DOrado');
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', 'This forms a pair with the LMC, and from recent research, may not be part of the Milky Way system of satellites at all.', 0, 'Tucana');
INSERT INTO public.galaxy VALUES (5, 'Canis Major Dwarf', 'Closest galaxy to the Milky Way. Discovered in 2003, a satellite of the Milky Way, slowly being cannibalised by it ', 0, 'Canis Major');
INSERT INTO public.galaxy VALUES (6, 'Sculptor', 'Named after its location in the Sculptor Constellation. Also called the Silver Dollar or Silver Coin Galaxy, because of its light and circular appearance.', 12, 'Sculptor');
INSERT INTO public.galaxy VALUES (7, 'IMAGINARY GALAXY', 'An imaginary galaxy I made up because asking me to manual enter a bazillion sets of data in torture enough I cannot do research on top of that.', -1, 'Gemini');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 69.69, 1, 'gray');
INSERT INTO public.moon VALUES (2, 'M1', 69.69, 2, 'grayish');
INSERT INTO public.moon VALUES (3, 'M2', 69.69, 2, 'grayish');
INSERT INTO public.moon VALUES (4, 'M3', 69.69, 2, 'grayish');
INSERT INTO public.moon VALUES (5, 'M4', 69.69, 2, 'grayish');
INSERT INTO public.moon VALUES (6, 'M5', 69.69, 2, 'grayish');
INSERT INTO public.moon VALUES (7, 'M6', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (8, 'M7', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (9, 'M8', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (10, 'M9', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (11, 'M10', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (12, 'M11', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (13, 'M12', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (14, 'M13', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (15, 'M14', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (16, 'M15', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (17, 'M16', 69.69, 3, 'grayish');
INSERT INTO public.moon VALUES (18, 'M17', 69.69, 4, 'grayish');
INSERT INTO public.moon VALUES (19, 'M18', 69.69, 4, 'grayish');
INSERT INTO public.moon VALUES (20, 'M19', 69.69, 4, 'grayish');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 1);
INSERT INTO public.planet VALUES (2, 'P1', false, true, 2);
INSERT INTO public.planet VALUES (3, 'P3', false, true, 3);
INSERT INTO public.planet VALUES (4, 'P4', false, true, 3);
INSERT INTO public.planet VALUES (5, 'P5', false, true, 3);
INSERT INTO public.planet VALUES (6, 'P6', false, true, 3);
INSERT INTO public.planet VALUES (7, 'P7', false, true, 3);
INSERT INTO public.planet VALUES (8, 'P8', false, true, 3);
INSERT INTO public.planet VALUES (9, 'P9', false, true, 2);
INSERT INTO public.planet VALUES (10, 'P10', false, true, 2);
INSERT INTO public.planet VALUES (11, 'P11', false, true, 2);
INSERT INTO public.planet VALUES (12, 'P12', false, true, 3);
INSERT INTO public.planet VALUES (13, 'P13', false, true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, true);
INSERT INTO public.star VALUES (2, 'Mario', 34, 7, false);
INSERT INTO public.star VALUES (3, 'Daisy', 122, 7, false);
INSERT INTO public.star VALUES (4, 'Bowser', 89, 7, false);
INSERT INTO public.star VALUES (5, 'Toad', 339, 7, false);
INSERT INTO public.star VALUES (6, 'Yoshi', 239, 7, false);


--
-- Name: chores_chore_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.chores_chore_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: chore chores_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.chore
    ADD CONSTRAINT chores_pkey PRIMARY KEY (chore_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: chore has_to_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.chore
    ADD CONSTRAINT has_to_uniq UNIQUE (name);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

