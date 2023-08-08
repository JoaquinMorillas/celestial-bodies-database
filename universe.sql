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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(30) NOT NULL,
    full_description text NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: descriptions_descriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.descriptions_descriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descriptions_descriptions_id_seq OWNER TO freecodecamp;

--
-- Name: descriptions_descriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.descriptions_descriptions_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth numeric NOT NULL,
    number_of_stars integer,
    galaxy_type_id integer,
    description_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxi_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxi_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    is_spherical boolean,
    mass numeric
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    distance_to_earth numeric NOT NULL,
    number_of_moons integer,
    description_id integer,
    is_spheric boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    distance_to_earth numeric NOT NULL,
    number_of_planets integer,
    description_id integer
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.descriptions_descriptions_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxi_id_seq'::regclass);


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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'Spiral Galaxy', 'Giant roation speed wheels');
INSERT INTO public.description VALUES (2, 'Eliptical galaxies', 'lettle organization');
INSERT INTO public.description VALUES (3, 'Lenticular galaxies', 'No arms');
INSERT INTO public.description VALUES (4, 'Red Giant Star', 'consumed hidrogen');
INSERT INTO public.description VALUES (5, 'White Dwarf', 'Consumed hidrogen and lack of mass');
INSERT INTO public.description VALUES (6, 'Red Dwarf', 'Low mass and cooler than the Sun');
INSERT INTO public.description VALUES (7, 'Neutron Star', 'Intense Gravitu');
INSERT INTO public.description VALUES (8, 'Supergiant stars', 'The lasgest of the universe');
INSERT INTO public.description VALUES (9, 'Protostar', 'A collection of gas');
INSERT INTO public.description VALUES (10, 'T Tauri Star', 'Star in formation');
INSERT INTO public.description VALUES (11, 'Main sequence star', 'the ones like our Sun');
INSERT INTO public.description VALUES (12, 'Rocky planet', 'Mainly rocks');
INSERT INTO public.description VALUES (13, 'Gas Gaint planet', 'massive gas planet');
INSERT INTO public.description VALUES (14, 'Ice Giant', 'massive cold planet');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky way', 27.14, 400, NULL, 1);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 2500.8, 1, NULL, 1);
INSERT INTO public.galaxy VALUES (4, 'M49', 60000, 200000, NULL, 2);
INSERT INTO public.galaxy VALUES (5, 'M59', 60000, 200000, NULL, 2);
INSERT INTO public.galaxy VALUES (6, 'NGC 2787', 24000, 200000, NULL, 3);
INSERT INTO public.galaxy VALUES (8, 'M81', 1174, 250, NULL, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4, true, 7.34);
INSERT INTO public.moon VALUES (2, 'Fobos', 5, true, 1.072);
INSERT INTO public.moon VALUES (3, 'Deibos', 5, true, 2.24);
INSERT INTO public.moon VALUES (4, 'Europa', 6, true, 4.80);
INSERT INTO public.moon VALUES (5, 'Io', 6, true, 8.94);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 6, true, 1.84);
INSERT INTO public.moon VALUES (7, 'Calisto', 6, true, 1.07);
INSERT INTO public.moon VALUES (8, 'Amaltea', 6, false, 2.08);
INSERT INTO public.moon VALUES (9, 'kallichore', 6, false, 0.15);
INSERT INTO public.moon VALUES (10, 'Cilene', 6, true, 0.15);
INSERT INTO public.moon VALUES (11, 'Matis', 6, false, 3.06);
INSERT INTO public.moon VALUES (12, 'Adrastea', 6, false, 1.8);
INSERT INTO public.moon VALUES (13, 'Temisto', 6, false, 6.09);
INSERT INTO public.moon VALUES (14, 'Leda', 6, false, 1.1);
INSERT INTO public.moon VALUES (15, 'Ersa', 6, false, 0.15);
INSERT INTO public.moon VALUES (16, 'Titan', 7, true, 1.35);
INSERT INTO public.moon VALUES (17, 'encelado', 7, true, 1.08);
INSERT INTO public.moon VALUES (18, 'Mimas', 7, true, 3.74);
INSERT INTO public.moon VALUES (19, 'Dione', 7, true, 1.09);
INSERT INTO public.moon VALUES (20, 'japeto', 7, true, 1.9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 5, 0, 0, 12, true);
INSERT INTO public.planet VALUES (3, 'Venus', 5, 0, 0, 12, true);
INSERT INTO public.planet VALUES (4, 'Earth', 5, 0, 1, 12, true);
INSERT INTO public.planet VALUES (5, 'Mars', 5, 0, 2, 12, true);
INSERT INTO public.planet VALUES (6, 'Jupiter', 5, 0, 95, 13, true);
INSERT INTO public.planet VALUES (7, 'Saturn', 5, 0, 146, 13, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 5, 0, 14, 14, true);
INSERT INTO public.planet VALUES (9, 'Uranus', 5, 0, 27, 14, true);
INSERT INTO public.planet VALUES (13, 'Cp Ab', 6, 4.36, 0, 13, true);
INSERT INTO public.planet VALUES (14, '51 Pegasi b', 1, 500, 0, 13, true);
INSERT INTO public.planet VALUES (15, 'Made_up_planet', 3, 100, 5, 14, false);
INSERT INTO public.planet VALUES (16, 'Cp Ab2', 6, 4.36, 0, 13, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 2, 550, 0, 8);
INSERT INTO public.star VALUES (3, 'Beatleguse', 2, 550, 0, 8);
INSERT INTO public.star VALUES (4, 'V354 Cephei', 2, 9000, 0, 8);
INSERT INTO public.star VALUES (5, 'Sun', 2, 0, 8, 11);
INSERT INTO public.star VALUES (6, 'Alfa Centaury', 2, 4.36, 1, 11);
INSERT INTO public.star VALUES (7, 'Proxima Centaury', 2, 4.36, 1, 11);


--
-- Name: descriptions_descriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.descriptions_descriptions_id_seq', 14, true);


--
-- Name: galaxy_galaxi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxi_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: description description_full_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_full_description_key UNIQUE (full_description);


--
-- Name: description descriptions_descriptions_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT descriptions_descriptions_id_key UNIQUE (description_id);


--
-- Name: description descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT descriptions_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet name_plane_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_plane_unique UNIQUE (name);


--
-- Name: star name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_description_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_id_fkey FOREIGN KEY (description_id) REFERENCES public.description(description_id);


--
-- Name: moon moon_host_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_host_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_description_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_id_fkey FOREIGN KEY (description_id) REFERENCES public.description(description_id);


--
-- Name: planet planet_host_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_host_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_description_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_id_fkey FOREIGN KEY (description_id) REFERENCES public.description(description_id);


--
-- Name: star star_host_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_host_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

