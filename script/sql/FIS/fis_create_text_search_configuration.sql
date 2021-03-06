--
-- Name: default; Type: TEXT SEARCH CONFIGURATION; Schema: public; Owner: -
--
CREATE TEXT SEARCH CONFIGURATION "default" ( PARSER = pg_catalog."default" );

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR asciiword WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR word WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR numword WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR email WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR url WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR host WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR sfloat WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR version WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR hword_numpart WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR hword_part WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR hword_asciipart WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR numhword WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR asciihword WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR hword WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR url_path WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR file WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR "float" WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR "int" WITH simple;

ALTER TEXT SEARCH CONFIGURATION "default" ADD MAPPING FOR uint WITH simple;


--
-- Name: pg; Type: TEXT SEARCH CONFIGURATION; Schema: public; Owner: -
--

CREATE TEXT SEARCH CONFIGURATION pg ( PARSER = pg_catalog."default" );

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR asciiword WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR word WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR numword WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR email WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR url WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR host WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR sfloat WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR version WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR hword_numpart WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR hword_part WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR hword_asciipart WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR numhword WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR asciihword WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR hword WITH english_stem;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR url_path WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR file WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR "float" WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR "int" WITH simple;

ALTER TEXT SEARCH CONFIGURATION pg ADD MAPPING FOR uint WITH simple;


