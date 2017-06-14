--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_with_oids = false;

--
-- Name: parcours; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE parcours (
    id integer NOT NULL,
    name text,
    adresse text,
    plz text,
    ort text,
    bundesland text,
    telefon_nr text,
    website text,
    aktion boolean DEFAULT false,
    land text DEFAULT 'AT'::text,
    facebook text,
    oeffnungszeiten_parcours text,
    parcours_kosten_er numeric,
    parcours_kosten_ju numeric,
    verleih_kosten_er numeric,
    verleih_kosten_ju numeric,
    oeffnungszeiten_verleih text,
    kosten_info text,
    verleih boolean DEFAULT true NOT NULL,
    lat numeric,
    lng numeric
);


--
-- Name: COLUMN parcours.parcours_kosten_er; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN parcours.parcours_kosten_er IS 'Erwachsene
bei mehreren Parcours der - von-Preis';


--
-- Name: COLUMN parcours.parcours_kosten_ju; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN parcours.parcours_kosten_ju IS 'Jugendliche
bei mehreren Parcours der - von-Preis';


--
-- Name: COLUMN parcours.verleih_kosten_er; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN parcours.verleih_kosten_er IS 'Erwachsene';


--
-- Name: COLUMN parcours.verleih_kosten_ju; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN parcours.verleih_kosten_ju IS 'Jugendliche';


--
-- Name: COLUMN parcours.oeffnungszeiten_verleih; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN parcours.oeffnungszeiten_verleih IS 'bzw Shop';


--
-- Name: parcours_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE parcours_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: parcours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE parcours_id_seq OWNED BY parcours.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE photos (
    id integer NOT NULL,
    photo_name text,
    parcours_id integer NOT NULL,
    beschreibung text
);


--
-- Name: COLUMN photos.photo_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN photos.photo_name IS 'Dateiname';


--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE photos_id_seq OWNED BY photos.id;


--
-- Name: parcours id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY parcours ALTER COLUMN id SET DEFAULT nextval('parcours_id_seq'::regclass);


--
-- Name: photos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY photos ALTER COLUMN id SET DEFAULT nextval('photos_id_seq'::regclass);


--
-- Data for Name: parcours; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (36, 'ASKÖ Sportgemeinschaft Spittal Bogensport', 'Oberzmöln', '9701', 'Rothenthurn', 'Kärnten', '6504654201', NULL, false, 'AT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (16, 'Alpiner Bogensportparcours', 'Kirchplatz 48', '6531', 'Ried', 'Tirol', '50225100', 'www.tiroler-oberland.com/de/aktiv/sommer-aktiv-erleben/bogenparcours', false, 'AT', NULL, NULL, 13, 10, NULL, NULL, NULL, NULL, true, NULL, NULL);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (29, 'BSC Achensee', 'Pertisau', '6213', 'Pertisau', 'Tirol', NULL, 'bsc-achensee.at', false, 'AT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (11, 'BSC Wörthersee', 'Oberer Mühlweg 7', '9201', 'Krumpendorf', 'Kärnten', '6644330035', 'bsc-woerthersee.at/', false, 'AT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, 46.638666, 14.230875);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (34, 'Bogensport Club Ehrwald', 'Ebne 52', '6632', 'Ehrwald', 'Tirol', '56733393', 'bogensporttirol.com', true, 'AT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, 47.407403, 10.928419);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (35, 'Bogenschützen Breg-Steilhang', 'Koprein 6', '9135', 'Eisenkappel-Vellach', 'Kärnten', '6766053286', 'breg-steilhang.at', true, 'AT', 'steilhang.bogenschuetzen', NULL, 10, 5, 10, 5, NULL, 'breg-steilhang.at/de/parcours.html', true, 46.507196, 14.696196);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (39, 'Erlauftaler Bogensport Verein', 'Wiesergraben 13', '3264', 'Gresten', 'Niederösterreich', '6646266346', 'ebsv.at', true, 'AT', NULL, NULL, 8, 6, NULL, NULL, NULL, 'ebsv.at/?page_id=31', true, 47.948098, 15.029547);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (19, '3D-Bogensport Haag', 'Edelhof 18', '3350', 'Haag', 'Niederösterreich', '6769512698', '3d-haag.com', false, 'AT', '3D-Bogensport-Haag-145665365445845/', NULL, 10, 5, NULL, NULL, NULL, '3d-haag.com/zum-parcours/', false, 48.122687, 14.556303);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (30, 'BSV Rußbachtal', 'Badgasse 21a', '2120', 'Wolkersdorf im Weinviertel', 'Niederösterreich', '69919546302', 'bsv-russbachtal.at', true, 'AT', NULL, NULL, 10, 5, NULL, NULL, NULL, 'bsv-russbachtal.at/index.php/parcours-2', true, 48.387687, 16.504119);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (31, 'Club Naturaktiv Wienerwald', 'Irenentalstraße 6', '3011', 'Untertullnerbach', 'Niederösterreich', '6645338482', 'naturaktiv.at', true, 'AT', NULL, NULL, 10, 5, NULL, NULL, NULL, 'naturaktiv.at/bogensport/preise/', true, 48.199547, 16.114673);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (21, 'Naturfreunde Walding', 'Sportpark 1', '4111', 'Walding', 'Oberösterreich', '69910136930', 'naturfreunde-walding.info', true, 'AT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, 48.346206, 14.158201);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (18, 'Stoneface Archery', 'Windhing 11', '4273', 'Unterweissenbach', 'Oberösterreich', '6801260705', 'stoneface-archery.at', false, 'AT', NULL, NULL, 9, 4, 6, 6, NULL, 'stoneface-archery.at/parcours/preise/', true, 48.489522, 14.809436);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (4, 'Bogensportclub Mühlviertel', 'Hundsdorf 13', '4293', 'Gutau', 'Oberösterreich', '6644310100', 'b-s-c-m.at', false, 'AT', NULL, NULL, 8, 6, 4, 4, NULL, 'b-s-c-m.at/?page_id=23', true, 47.241772, 12.987217);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (24, 'Bogensportclub ASKÖ Luftenberg', 'Lachstatt 1', '4221', 'Steyregg', 'Oberösterreich', '6607360258', 'bsc-luftenberg.com', true, 'AT', 'oebsv.com/askoe-luftenberg/28_home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, 48.305542, 14.374049);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (3, 'Bogenstation', 'Am Nordhang 2', '4201', 'Gramastetten', 'Oberösterreich', '6767864125', 'bogenstation.at', false, 'AT', 'bogenstation', NULL, 9, 6, 6, 6, NULL, 'bogenstation.at/preise/', true, 48.381781, 14.196920);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (6, 'Bogensport Waldenfels', 'Hayrl 16', '4193', 'Reichentahl', 'Oberösterreich', '6645208759', 'waldenfels.info', true, 'AT', NULL, NULL, 8, 4, 6, 6, NULL, 'waldenfels.info/preise/', true, 48.539265, 14.389130);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (22, 'Bogensportverein Helfenberg', 'Preßleithen 1', '4184', 'Helfenberg', 'Oberösterreich', '66473806758', 'bogensport-helfenberg.at', true, 'AT', NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, true, 48.539009, 14.113853);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (2, 'Bogensport Walhalla', 'Wiesing 11', '4230', 'Pregarten', 'Oberösterreich', '6991276864', 'bogensport-pregarten.at/bsp/index.php', false, 'AT', NULL, 'ganzjährig', 6, 3, 5, 4, NULL, 'bogensport-pregarten.at/bsp/bsppreise.html', true, 48.377780, 14.547468);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (37, 'BSV Bad Zell', 'Zellhof 6', '4283', 'Bad Zell', 'Oberösterreich', '6603733388', 'bsvbadzell.at', false, 'AT', 'Bogenschie%C3%9Fen-BSV-BAD-ZELL-336171916471573/?fref=ts', NULL, 8, 5, 6, 6, NULL, 'bsvbadzell.at/bogenparcours/#preise', true, 48.342641, 14.698174);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (28, 'Bogensport Waldviertel', 'Forstamt 9', '4392', 'Dorfstetten', 'Oberösterreich', '72608202', 'bogensport-waldviertel.at', true, 'AT', NULL, NULL, 8, 5, 4, 4, NULL, 'bogensport-waldviertel.at/index.php/2015-01-27-14-28-11/unsere-angebote', true, 48.326702, 14.983228);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (38, 'Bogenschützenclub Windhaag/Perg', 'Pühringerstraße 3', '4322', 'Windhaag bei Perg', 'Oberösterreich', '726440231', 'bsc.bogenschuetzenclub.at', false, 'AT', 'Bogenschützenclub-Windhaag-bei-Perg-178391135641600/', NULL, 10, 6, 6, 6, '8:00 bis 19:00', 'bsc.bogenschuetzenclub.at/preise', true, 48.274125, 14.685019);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (26, 'Lion-Bowhunterclub', 'Mitteregg 1', '4421', 'Aschach an der Steyr', 'Oberösterreich', '6605750455', 'lion-bhc.at', true, 'AT', NULL, NULL, 10, 7, NULL, NULL, NULL, 'lion-bhc.at/parcours/3d-parcours-preise/', true, 47.993112, 14.341979);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (27, 'Offroad & Outdoorsport', 'Hinterschlagen 6', '4843', 'Ampflwand im Hausruckwald', 'Oberösterreich', '6645408842', 'hausruckpark.at/bogensport/infos', true, 'AT', NULL, NULL, 10, 10, 5, 5, NULL, 'hausruckpark.at/bogensport/infos', true, 48.107675, 13.546667);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (41, 'BSV Talagova 2002', 'Wasenmoosstraße 7', '5303', 'Thalgau', 'Salzburg', '6643929488', 'talagova2002.at', true, 'AT', NULL, NULL, 9, 5, NULL, NULL, NULL, 'talagova2002.at/index.php/2014-11-10-17-02-38/2016-08-08-21-52-30', true, 47.866544, 13.253462);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (13, 'Bogenparcours Hartlbauer', 'Bergl 1', '5632', 'Dorfgastein', 'Salzburg', '64337063', 'hartlbauer.at', false, 'AT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, 47.249902, 13.110983);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (9, 'Bogensport Stuhlfelden', 'Stuhlfelden 21', '5724', 'Stuhlfelden', 'Salzburg', '6649126812', 'bogendorf.at', true, 'AT', NULL, NULL, 17, 12, 8, 8, NULL, 'bogendorf.at/info/parcours/kartenpreise.html', true, 47.288198, 12.528585);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (40, 'Schosi 3D', 'Sonnberg 11', '5771', 'Leogang', 'Salzburg', '6641210514', 'schosi3d-ziele-bogensport.at', true, 'AT', NULL, NULL, 8, 5, 8, 8, NULL, 'schosi3d-ziele-bogensport.at/parcours-preise-2017/', true, 47.44648, 12.730719);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (12, 'Mabow', 'Marzon 10', '5760', 'Saalfelden', 'Salzburg', NULL, 'mabow.jimdo.com', false, 'AT', NULL, NULL, 7, 5, 8, 8, NULL, 'mabow.jimdo.com/parcours-verleih/', true, 47.454643, 12.832377);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (10, 'Sport Klaus', 'Dorfplatz 1', '5505', 'Mühlbach am Hochkönig', 'Salzburg', '64677240', 'sportklaus.at/skischule-skiverleih/de_schiverleih/bogenparcours.php', false, 'AT', NULL, NULL, 10, 6, 12, 10, NULL, 'sportklaus.at/skischule-skiverleih/de_schiverleih/bogenparcours.php', true, 47.376587, 13.126139);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (32, 'Jagdbogen Parcours', 'Bellevue Alm Weg 4', '5640', 'Bad Gastein', 'Salzburg', '69928388803', 'bogenschiessen-badgastein.at', true, 'AT', NULL, NULL, 7, 5, 7, 5, NULL, 'bogenschiessen-badgastein.at/preise-öffnungszeiten/', true, 47.113950, 13.131624);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (8, 'Bogensport Rittisberg', 'Augasse 458', '8970', 'Schladming', 'Steiermark', '368723292', 'schladming-dachstein-bogensport.at', false, 'AT', NULL, NULL, 12, 12, 8, 8, NULL, 'schladming-dachstein-bogensport.at/home/preise.html', true, 47.395350, 13.696922);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (7, 'Robin Hoodland', 'Ritzenberg 13', '8953', 'Donnersbach', 'Steiermark', '36838175', 'bogenschiessen.at', false, 'AT', NULL, NULL, 8, 4, 14, 10, NULL, 'bogenschiessen.at/preise-bogenoarcours/', true, 47.469400, 14.116600);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (33, 'Kitzbüheler Alpen', 'Berglehen 10a', '6380', 'St. Johann in Tirol', 'Tirol', '535263366', 'pointenhof.at/sommer/bogenschiessen.html', true, 'AT', NULL, NULL, 10, 5, 8, 5, NULL, 'pointenhof.at/sommer/bogenschiessen.html', true, 47.502784, 12.436610);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (15, 'BSV Kirchberg', 'Bockern 43', '6365', 'Kirchberg', 'Tirol', NULL, 'bogenparcour-kirchberg.at', false, 'AT', NULL, NULL, 10, 5, 5, 5, NULL, 'bogenparcour-kirchberg.at/BSV-Kirchberg-Preise_pid,17286,type,firmeninfo.html', true, 47.454526, 12.288149);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (14, 'Bogensport Gigl', 'Sportplatzweg 39', '6365', 'Kirchberg', 'Tirol', '6644242740', 'bogensport-gigl.at', false, 'AT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, 47.449646, 12.323581);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (23, 'Erlebniswelt Wurbauerkogel', 'Kühbergstraße 2', '4580', 'Windischgarsten', 'Oberösterreich', '6767400250', 'pyhrnpriel-erlebnisagentur.at', true, 'AT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, true, NULL, NULL);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (1, 'Bogensportzentrum Breitenstein', 'Breitenstein 11', '4202', 'Kirchschlag bei Linz', 'Oberösterreich', '721520992', 'bogensport-zentrum.at', true, 'AT', 'bogensport.breitenstein', 'ganzjährig', 9, 7, 8, 5, '9:00 bis 19:00 - Kein Ruhetag!', 'bogensport-zentrum.at/bogensport/site/content/mit_material/preise', true, 48.417120, 14.269289);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (47, 'Bogenschießen am Abenteuerhof', 'Weißenbach 17', '8967', 'Haus', 'Steiermark', '36765517', 'abenteuerhof.at/bogenschiessen-3d-parcour.html', false, 'AT', 'Abenteuerhof-Schiefer-212022278840755/', 'ganzjährig', NULL, NULL, NULL, NULL, NULL, NULL, true, 47.425889, 13.776324);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (53, 'Bogensport Granitland', 'Untereben 17', '4170', 'St. Stefan am Walde', 'Oberösterreich', '6644150768', 'bogensport-granitland.at', false, 'AT', NULL, 'ganzjährig', 8, 4, 7, 7, NULL, 'bogensport-granitland.at/preise.html', true, 48.564966, 14.120190);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (25, 'Ramingtaler Bogenparcours', 'Sulzbach 5', '4443', 'Maria Neustift', 'Oberösterreich', '6769205032', 'derfler.at/cms/index.php?option=com_content&view=article&id=52&Itemid=31', true, 'AT', 'Ramingtaler.Bogenparcour', NULL, NULL, NULL, 7, 7, NULL, 'derfler.at/cms/index.php?option=com_content&view=article&id=52&Itemid=31', true, 47.972446, 14.573050);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (55, 'BSV Offenhausen', 'Kapsam 2', '4625', 'Offenhausen', 'Oberösterreich', '6503035361', 'bsv-offenhausen.at', false, 'AT', NULL, 'ganzjährig ab 9:00 Uhr', 10, 5, 8, 8, NULL, 'bsv-offenhausen.at/parcours/preise-verleih', true, 48.155957, 13.823670);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (51, 'Bogensport Abenteuerwelt - BSV Raabtal', 'Schwabengraben 28/2', '8385', 'Welten', 'Steiermark', '33292776', 'abenteuerwelten.at/bogensport.html', false, 'AT', NULL, NULL, 10, 5, 7, 7, NULL, 'abenteuerwelten.at/bogensport.html', true, 46.900224, 16.056929);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (46, 'Reit- und Freizeitpark "Der Krumpfhof"', 'Krumphof 1', '7561', 'Heiligenkreuz im Lafnitztal', 'Burgenland', '6642212281', 'krumphof.at/bogenschiessen/', true, 'AT', 'krumphof', NULL, 10, 7, 8, 8, NULL, 'krumphof.at/bogenschiessen-preise/', true, 47.006259, 16.244468);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (42, 'Bogenpark im Nationalpark Hohe Tauern', 'Niederhof 3', '5662', 'Gries/Bruck a. d. Glocknerstraße', 'Salzburg', '65456112', 'kohlschnait.at/de/bogenpark.html', true, 'AT', NULL, NULL, 11, 5, 7, 7, 'Mittwoch bis Sonntag ab 9:00 Uhr', 'www.kohlschnait.at/de/bogenpark/preise-oeffnungszeiten.html', true, 47.277420, 12.851267);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (43, 'Bogensportarena Velden', 'Thomannweg 6', '9220', 'Velden', 'Kärnten', '6641303901', 'bogensportarena-velden.at', true, 'AT', NULL, NULL, 10, 6, 11, 11, NULL, 'www.bogensportarena-velden.at/preise', true, 46.636086, 14.048984);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (48, 'BSV Kremstal', 'Göritz 42', '4542', 'Nußbach', 'Oberösterreich', NULL, 'bsv-kremstal.at', false, 'AT', NULL, 'ganzjährig', 10, 8, 8, 5, NULL, 'bsv-kremstal.at/index.php/parcours/preise-parcours', true, 47.981211, 14.157424);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (5, 'Bogensportverein Peilstein', 'Niederkraml 22', '4153', 'Peilstein im Mühlviertel', 'Oberösterreich', '6645820411', 'bsv-peilstein.at', true, 'AT', NULL, NULL, 9, 6, 5, 5, NULL, 'bsv-peilstein.at/parcours.aspx', true, 48.632522, 13.873975);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (54, 'Bogenranch Bruno', 'Janerweg 30', '8971', 'Schladming', 'Steiermark', '6644038040', 'bogenschiessen-bruno.at', false, 'AT', 'BogenRanchBruno', 'Donnerstag bis Sonntag ab 9:30 Uhr', 12, 8, 10, 7, NULL, 'bogenschiessen-bruno.at/tarife_und_bonus.php', true, 47.358728, 13.695560);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (52, 'Bogensportverein Mönchdorf', 'Hauptstraße 14', '4281', 'Mönchdorf', 'Oberösterreich', '72678286', '3d-bogenparcours-mönchdorf.at', false, 'AT', NULL, 'ganzjährig', 10, 5, 5, 5, NULL, '3d-bogenparcours-mönchdorf.at/de/parcours/preise.html', true, 48.360890, 14.795948);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (49, 'Bogensport Waidring', 'Strub 6', '6384', 'Waidring', 'Tirol', '676941ß945', 'strub.at/bogensport/', false, 'AT', NULL, NULL, 15, 15, NULL, NULL, NULL, 'strub.at/bogensport-preise/', true, 47.583044, 12.606291);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (45, 'Bogensportverein BSC Holzmichl', 'Sackstraße 9', '8582', 'Rosental', 'Steiermark', '6769342657', 'holzmichl.at/main_htm', true, 'AT', NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, true, 47.044278, 15.111320);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (44, 'Bogen-Parcours Spechtensee', 'Wörschachwald 88', '8982', 'Tauplitz', 'Steiermark', '36882666', 'spechtensee.com/die-boegen', true, 'AT', NULL, NULL, 10, 10, 10, 10, NULL, 'spechtensee.com/die-boegen', true, 47.562174, 14.100286);
INSERT INTO parcours (id, name, adresse, plz, ort, bundesland, telefon_nr, website, aktion, land, facebook, oeffnungszeiten_parcours, parcours_kosten_er, parcours_kosten_ju, verleih_kosten_er, verleih_kosten_ju, oeffnungszeiten_verleih, kosten_info, verleih, lat, lng) VALUES (50, 'Bogensportparcours Oberweissbach', 'Weissbach 2', '6384', 'Waidring', 'Tirol', '6605544469', 'bogenparcours.co', false, 'AT', NULL, 'ganzjährig', 5, 4, 7, 7, NULL, 'bogenparcours.co/bogenparcours/bogenparcours-preise', true, 47.565672, 12.558554);


--
-- Name: parcours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('parcours_id_seq', 55, true);


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (1, 'pregarten-01', 2, 'Pregarten ');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (2, 'pregarten-02', 2, 'Pregarten ');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (3, 'pregarten-hausparcours-01', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (4, 'pregarten-hausparcours-02', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (8, 'pregarten-hausparcours-03', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (9, 'pregarten-hausparcours-04', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (10, 'pregarten-hausparcours-05', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (11, 'pregarten-hausparcours-06', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (12, 'pregarten-hausparcours-07', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (13, 'pregarten-hausparcours-08', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (14, 'pregarten-hausparcours-09', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (15, 'pregarten-hausparcours-10', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (16, 'pregarten-hausparcours-11', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (17, 'pregarten-hausparcours-12', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (18, 'pregarten-hausparcours-13', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (19, 'pregarten-hausparcours-14', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (20, 'pregarten-hausparcours-15', 2, 'Pregarten Hausparcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (6, 'pregarten-03', 2, 'Pregarten ');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (7, 'pregarten-04', 2, 'Pregarten ');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (5, 'gutau-01', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (21, 'gutau-02', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (22, 'gutau-03', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (23, 'gutau-04', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (25, 'gutau-06', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (24, 'gutau-05', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (26, 'gutau-07', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (27, 'gutau-08', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (28, 'gutau-09', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (29, 'gutau-10', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (30, 'gutau-11', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (31, 'gutau-12', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (32, 'gutau-13', 4, 'Gutau');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (33, 'kirchschlag-blauer-parcours-01', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (34, 'kirchschlag-blauer-parcours-02', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (35, 'kirchschlag-blauer-parcours-03', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (37, 'kirchschlag-blauer-parcours-05', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (36, 'kirchschlag-blauer-parcours-04', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (38, 'kirchschlag-blauer-parcours-06', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (39, 'kirchschlag-blauer-parcours-07', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (40, 'kirchschlag-blauer-parcours-08', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (41, 'kirchschlag-blauer-parcours-09', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (42, 'kirchschlag-blauer-parcours-10', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (43, 'kirchschlag-blauer-parcours-11', 1, 'Kirchschlag Blauer Parcours');
INSERT INTO photos (id, photo_name, parcours_id, beschreibung) VALUES (44, 'kirchschlag-blauer-parcours-12', 1, 'Kirchschlag Blauer Parcours');


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('photos_id_seq', 46, true);


--
-- Name: parcours parcours_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY parcours
    ADD CONSTRAINT parcours_pkey PRIMARY KEY (id);


--
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: photos lnk_parcours_photos; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY photos
    ADD CONSTRAINT lnk_parcours_photos FOREIGN KEY (parcours_id) REFERENCES parcours(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

