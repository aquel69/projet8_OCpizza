--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.0

-- Started on 2020-02-13 10:47:02

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
-- TOC entry 218 (class 1259 OID 33688)
-- Name: adresse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adresse (
    id numeric NOT NULL,
    voie character varying(70) NOT NULL,
    complement character varying(50),
    code_postal numeric(5,0) NOT NULL,
    commune character varying(25) NOT NULL
);


ALTER TABLE public.adresse OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 33686)
-- Name: adresse_id_adresse_seq_2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.adresse_id_adresse_seq_2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adresse_id_adresse_seq_2 OWNER TO postgres;

--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 217
-- Name: adresse_id_adresse_seq_2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adresse_id_adresse_seq_2 OWNED BY public.adresse.id;


--
-- TOC entry 231 (class 1259 OID 33773)
-- Name: authentification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authentification (
    id_utilisateur numeric NOT NULL,
    username character varying(20) NOT NULL,
    password character varying(25) NOT NULL
);


ALTER TABLE public.authentification OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 33614)
-- Name: categorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorie (
    id character varying NOT NULL,
    classe character varying(20) NOT NULL,
    sous_classe character varying(25) NOT NULL,
    "catégorie" character varying(15)
);


ALTER TABLE public.categorie OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 33612)
-- Name: categorie_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorie_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categorie_id_seq_1 OWNER TO postgres;

--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 207
-- Name: categorie_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorie_id_seq_1 OWNED BY public.categorie.id;


--
-- TOC entry 230 (class 1259 OID 33765)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id numeric NOT NULL,
    numero numeric(10,0) NOT NULL,
    id_adresse_livraison numeric NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 33734)
-- Name: commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande (
    id numeric NOT NULL,
    numero numeric NOT NULL,
    date_enregistrement timestamp without time zone NOT NULL,
    id_adresse_de_livraison numeric NOT NULL,
    id_employe numeric NOT NULL,
    siret numeric(14,0) NOT NULL
);


ALTER TABLE public.commande OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 33745)
-- Name: commande_etat_commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.commande_etat_commande (
    id numeric NOT NULL,
    id_commande numeric NOT NULL,
    id_etat_commande numeric NOT NULL
);


ALTER TABLE public.commande_etat_commande OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 33743)
-- Name: commande_etat_commande_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commande_etat_commande_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commande_etat_commande_id_seq OWNER TO postgres;

--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 226
-- Name: commande_etat_commande_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commande_etat_commande_id_seq OWNED BY public.commande_etat_commande.id;


--
-- TOC entry 224 (class 1259 OID 33732)
-- Name: commande_numero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.commande_numero_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commande_numero_seq OWNER TO postgres;

--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 224
-- Name: commande_numero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.commande_numero_seq OWNED BY public.commande.id;


--
-- TOC entry 223 (class 1259 OID 33724)
-- Name: employe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employe (
    id numeric NOT NULL,
    numero_employe numeric NOT NULL,
    id_role numeric NOT NULL
);


ALTER TABLE public.employe OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 33666)
-- Name: etat_commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.etat_commande (
    id numeric NOT NULL,
    id_statut numeric NOT NULL,
    date timestamp without time zone NOT NULL
);


ALTER TABLE public.etat_commande OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 33664)
-- Name: etat_commande_statut_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.etat_commande_statut_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.etat_commande_statut_seq OWNER TO postgres;

--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 213
-- Name: etat_commande_statut_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.etat_commande_statut_seq OWNED BY public.etat_commande.id;


--
-- TOC entry 216 (class 1259 OID 33677)
-- Name: facture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facture (
    id numeric NOT NULL,
    numero character varying(10) NOT NULL,
    date timestamp without time zone NOT NULL,
    montant_ht numeric NOT NULL,
    tva numeric NOT NULL,
    id_commande numeric NOT NULL
);


ALTER TABLE public.facture OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 33675)
-- Name: facture_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facture_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facture_id_seq_1 OWNER TO postgres;

--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 215
-- Name: facture_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facture_id_seq_1 OWNED BY public.facture.id;


--
-- TOC entry 233 (class 1259 OID 42417)
-- Name: ingredient_pizza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredient_pizza (
    id numeric NOT NULL,
    id_produit numeric NOT NULL,
    quantite numeric NOT NULL,
    id_pizza numeric NOT NULL,
    id_taille numeric NOT NULL
);


ALTER TABLE public.ingredient_pizza OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 33756)
-- Name: ligne_de_commande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ligne_de_commande (
    id numeric NOT NULL,
    id_commande numeric NOT NULL,
    id_produit numeric NOT NULL,
    quantite numeric(4,0) NOT NULL,
    prix_unitaire_ht real NOT NULL,
    tva numeric(4,0) NOT NULL
);


ALTER TABLE public.ligne_de_commande OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 33754)
-- Name: ligne_de_commande_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ligne_de_commande_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ligne_de_commande_id_seq OWNER TO postgres;

--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 228
-- Name: ligne_de_commande_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ligne_de_commande_id_seq OWNED BY public.ligne_de_commande.id;


--
-- TOC entry 212 (class 1259 OID 33636)
-- Name: pizza; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pizza (
    id numeric NOT NULL,
    nom character varying NOT NULL
);


ALTER TABLE public.pizza OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 33634)
-- Name: pizza_id_seq_2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pizza_id_seq_2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pizza_id_seq_2 OWNER TO postgres;

--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 211
-- Name: pizza_id_seq_2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pizza_id_seq_2 OWNED BY public.pizza.id;


--
-- TOC entry 219 (class 1259 OID 33697)
-- Name: point_de_vente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.point_de_vente (
    siret numeric(14,0) NOT NULL,
    id_adresse_du_site numeric NOT NULL
);


ALTER TABLE public.point_de_vente OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 33625)
-- Name: produit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produit (
    id numeric NOT NULL,
    reference_article character varying NOT NULL,
    libelle character varying(100) NOT NULL,
    composition character varying(250) NOT NULL,
    prix_unitaire_ht real NOT NULL,
    tva real,
    id_categorie character varying NOT NULL,
    unite character varying
);


ALTER TABLE public.produit OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 33623)
-- Name: produit_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produit_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produit_id_seq_1 OWNER TO postgres;

--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 209
-- Name: produit_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produit_id_seq_1 OWNED BY public.produit.id;


--
-- TOC entry 232 (class 1259 OID 42415)
-- Name: quantite_ingredient_pizza_id_quantite_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quantite_ingredient_pizza_id_quantite_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quantite_ingredient_pizza_id_quantite_seq OWNER TO postgres;

--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 232
-- Name: quantite_ingredient_pizza_id_quantite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quantite_ingredient_pizza_id_quantite_seq OWNED BY public.ingredient_pizza.id;


--
-- TOC entry 234 (class 1259 OID 42451)
-- Name: recette; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recette (
    id numeric NOT NULL,
    recette character varying(1000) NOT NULL
);


ALTER TABLE public.recette OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 33705)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id numeric NOT NULL,
    role character varying(15) NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 33595)
-- Name: statut; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.statut (
    id numeric NOT NULL,
    code character varying NOT NULL,
    description character varying NOT NULL
);


ALTER TABLE public.statut OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 33593)
-- Name: statut_id_seq_1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.statut_id_seq_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statut_id_seq_1 OWNER TO postgres;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 204
-- Name: statut_id_seq_1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.statut_id_seq_1 OWNED BY public.statut.id;


--
-- TOC entry 235 (class 1259 OID 43427)
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    code_ean character varying(13) NOT NULL,
    date_de_peremption date,
    id_produit_de_base numeric NOT NULL,
    quantite_restante numeric NOT NULL,
    date_achat date NOT NULL,
    point_de_vente numeric(14,0) NOT NULL
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 33604)
-- Name: taille; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taille (
    id numeric NOT NULL,
    taille character varying NOT NULL,
    quantite_produit real NOT NULL
);


ALTER TABLE public.taille OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 33715)
-- Name: utilisateur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateur (
    id numeric NOT NULL,
    nom character varying(25) NOT NULL,
    prenom character varying(20) NOT NULL,
    date_de_naissance date NOT NULL,
    date_creation_de_compte timestamp without time zone NOT NULL,
    numero_de_telephone_mobile character varying(10) NOT NULL,
    numero_de_telephone_fixe character varying(10),
    id_adresse_postale numeric NOT NULL,
    email character varying(100),
    type numeric(1,0)
);


ALTER TABLE public.utilisateur OWNER TO postgres;

--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 222
-- Name: COLUMN utilisateur.type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.utilisateur.type IS 'le type d''utilisateur correspond a :
1 : gérant
2 : responsable
3 : pizzaiolo
4 : livreur
5 : client';


--
-- TOC entry 221 (class 1259 OID 33713)
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.utilisateur_id_utilisateur_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.utilisateur_id_utilisateur_seq OWNER TO postgres;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 221
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.utilisateur_id_utilisateur_seq OWNED BY public.utilisateur.id;


--
-- TOC entry 2813 (class 2604 OID 33691)
-- Name: adresse id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse ALTER COLUMN id SET DEFAULT nextval('public.adresse_id_adresse_seq_2'::regclass);


--
-- TOC entry 2808 (class 2604 OID 33617)
-- Name: categorie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorie ALTER COLUMN id SET DEFAULT nextval('public.categorie_id_seq_1'::regclass);


--
-- TOC entry 2815 (class 2604 OID 33737)
-- Name: commande id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande ALTER COLUMN id SET DEFAULT nextval('public.commande_numero_seq'::regclass);


--
-- TOC entry 2816 (class 2604 OID 33748)
-- Name: commande_etat_commande id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_etat_commande ALTER COLUMN id SET DEFAULT nextval('public.commande_etat_commande_id_seq'::regclass);


--
-- TOC entry 2811 (class 2604 OID 33669)
-- Name: etat_commande id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etat_commande ALTER COLUMN id SET DEFAULT nextval('public.etat_commande_statut_seq'::regclass);


--
-- TOC entry 2812 (class 2604 OID 33680)
-- Name: facture id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facture ALTER COLUMN id SET DEFAULT nextval('public.facture_id_seq_1'::regclass);


--
-- TOC entry 2818 (class 2604 OID 42420)
-- Name: ingredient_pizza id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_pizza ALTER COLUMN id SET DEFAULT nextval('public.quantite_ingredient_pizza_id_quantite_seq'::regclass);


--
-- TOC entry 2817 (class 2604 OID 33759)
-- Name: ligne_de_commande id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_de_commande ALTER COLUMN id SET DEFAULT nextval('public.ligne_de_commande_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 33639)
-- Name: pizza id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza ALTER COLUMN id SET DEFAULT nextval('public.pizza_id_seq_2'::regclass);


--
-- TOC entry 2809 (class 2604 OID 33628)
-- Name: produit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit ALTER COLUMN id SET DEFAULT nextval('public.produit_id_seq_1'::regclass);


--
-- TOC entry 2807 (class 2604 OID 33598)
-- Name: statut id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statut ALTER COLUMN id SET DEFAULT nextval('public.statut_id_seq_1'::regclass);


--
-- TOC entry 2814 (class 2604 OID 33718)
-- Name: utilisateur id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur ALTER COLUMN id SET DEFAULT nextval('public.utilisateur_id_utilisateur_seq'::regclass);


--
-- TOC entry 2835 (class 2606 OID 33696)
-- Name: adresse adresse_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresse
    ADD CONSTRAINT adresse_pk PRIMARY KEY (id);


--
-- TOC entry 2853 (class 2606 OID 33780)
-- Name: authentification authentification_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentification
    ADD CONSTRAINT authentification_pk PRIMARY KEY (id_utilisateur);


--
-- TOC entry 2824 (class 2606 OID 33622)
-- Name: categorie categorie_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorie
    ADD CONSTRAINT categorie_pk PRIMARY KEY (id);


--
-- TOC entry 2851 (class 2606 OID 33772)
-- Name: client client_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pk PRIMARY KEY (id);


--
-- TOC entry 2847 (class 2606 OID 33753)
-- Name: commande_etat_commande commande_etat_commande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_etat_commande
    ADD CONSTRAINT commande_etat_commande_pk PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 33742)
-- Name: commande commande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_pk PRIMARY KEY (id);


--
-- TOC entry 2843 (class 2606 OID 33731)
-- Name: employe employe_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT employe_pk PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 33674)
-- Name: etat_commande etat_commande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etat_commande
    ADD CONSTRAINT etat_commande_pk PRIMARY KEY (id);


--
-- TOC entry 2832 (class 2606 OID 33685)
-- Name: facture facture_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_pk PRIMARY KEY (id);


--
-- TOC entry 2849 (class 2606 OID 33764)
-- Name: ligne_de_commande ligne_de_commande_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_de_commande
    ADD CONSTRAINT ligne_de_commande_pk PRIMARY KEY (id);


--
-- TOC entry 2828 (class 2606 OID 33644)
-- Name: pizza pizza_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pizza
    ADD CONSTRAINT pizza_pk PRIMARY KEY (id);


--
-- TOC entry 2837 (class 2606 OID 33704)
-- Name: point_de_vente point_de_vente_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.point_de_vente
    ADD CONSTRAINT point_de_vente_pk PRIMARY KEY (siret);


--
-- TOC entry 2826 (class 2606 OID 33633)
-- Name: produit produit_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pk PRIMARY KEY (id);


--
-- TOC entry 2855 (class 2606 OID 42425)
-- Name: ingredient_pizza quantite_ingredient_pizza_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_pizza
    ADD CONSTRAINT quantite_ingredient_pizza_pk PRIMARY KEY (id);


--
-- TOC entry 2857 (class 2606 OID 42458)
-- Name: recette recette_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recette
    ADD CONSTRAINT recette_pk PRIMARY KEY (id);


--
-- TOC entry 2839 (class 2606 OID 33712)
-- Name: role role_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pk PRIMARY KEY (id);


--
-- TOC entry 2820 (class 2606 OID 33603)
-- Name: statut statut_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.statut
    ADD CONSTRAINT statut_pk PRIMARY KEY (id);


--
-- TOC entry 2859 (class 2606 OID 43434)
-- Name: stock stock_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pk PRIMARY KEY (code_ean);


--
-- TOC entry 2822 (class 2606 OID 33611)
-- Name: taille taille_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taille
    ADD CONSTRAINT taille_pk PRIMARY KEY (id);


--
-- TOC entry 2841 (class 2606 OID 33723)
-- Name: utilisateur utilisateur_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pk PRIMARY KEY (id);


--
-- TOC entry 2833 (class 1259 OID 34198)
-- Name: fki_commande_facture_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_commande_facture_fk ON public.facture USING btree (id_commande);


--
-- TOC entry 2874 (class 2606 OID 33836)
-- Name: client adresse_client_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT adresse_client_fk FOREIGN KEY (id_adresse_livraison) REFERENCES public.adresse(id);


--
-- TOC entry 2867 (class 2606 OID 33846)
-- Name: commande adresse_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT adresse_commande_fk FOREIGN KEY (id_adresse_de_livraison) REFERENCES public.adresse(id);


--
-- TOC entry 2863 (class 2606 OID 33841)
-- Name: point_de_vente adresse_point_de_vente_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.point_de_vente
    ADD CONSTRAINT adresse_point_de_vente_fk FOREIGN KEY (id_adresse_du_site) REFERENCES public.adresse(id);


--
-- TOC entry 2864 (class 2606 OID 33831)
-- Name: utilisateur adresse_utilisateur_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT adresse_utilisateur_fk FOREIGN KEY (id_adresse_postale) REFERENCES public.adresse(id);


--
-- TOC entry 2860 (class 2606 OID 33791)
-- Name: produit categorie_produit_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produit
    ADD CONSTRAINT categorie_produit_fk FOREIGN KEY (id_categorie) REFERENCES public.categorie(id);


--
-- TOC entry 2871 (class 2606 OID 33886)
-- Name: commande_etat_commande commande_commande_etat_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_etat_commande
    ADD CONSTRAINT commande_commande_etat_commande_fk FOREIGN KEY (id_commande) REFERENCES public.commande(id);


--
-- TOC entry 2862 (class 2606 OID 34199)
-- Name: facture commande_facture_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facture
    ADD CONSTRAINT commande_facture_fk FOREIGN KEY (id_commande) REFERENCES public.commande(id);


--
-- TOC entry 2873 (class 2606 OID 33881)
-- Name: ligne_de_commande commande_ligne_de_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_de_commande
    ADD CONSTRAINT commande_ligne_de_commande_fk FOREIGN KEY (id_commande) REFERENCES public.commande(id);


--
-- TOC entry 2869 (class 2606 OID 33876)
-- Name: commande employe_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT employe_commande_fk FOREIGN KEY (id_employe) REFERENCES public.employe(id);


--
-- TOC entry 2870 (class 2606 OID 33821)
-- Name: commande_etat_commande etat_commande_commande_etat_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande_etat_commande
    ADD CONSTRAINT etat_commande_commande_etat_commande_fk FOREIGN KEY (id_etat_commande) REFERENCES public.etat_commande(id);


--
-- TOC entry 2878 (class 2606 OID 42466)
-- Name: ingredient_pizza pizza_ingredient_pizza_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_pizza
    ADD CONSTRAINT pizza_ingredient_pizza_fk FOREIGN KEY (id_pizza) REFERENCES public.pizza(id);


--
-- TOC entry 2880 (class 2606 OID 42459)
-- Name: recette pizza_recette_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recette
    ADD CONSTRAINT pizza_recette_fk FOREIGN KEY (id) REFERENCES public.pizza(id);


--
-- TOC entry 2868 (class 2606 OID 33851)
-- Name: commande point_de_vente_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT point_de_vente_commande_fk FOREIGN KEY (siret) REFERENCES public.point_de_vente(siret);


--
-- TOC entry 2882 (class 2606 OID 43440)
-- Name: stock point_de_vente_stock_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT point_de_vente_stock_fk FOREIGN KEY (point_de_vente) REFERENCES public.point_de_vente(siret);


--
-- TOC entry 2872 (class 2606 OID 33796)
-- Name: ligne_de_commande produit_ligne_de_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ligne_de_commande
    ADD CONSTRAINT produit_ligne_de_commande_fk FOREIGN KEY (id_produit) REFERENCES public.produit(id);


--
-- TOC entry 2877 (class 2606 OID 42441)
-- Name: ingredient_pizza produit_quantite_ingredient_pizza_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_pizza
    ADD CONSTRAINT produit_quantite_ingredient_pizza_fk FOREIGN KEY (id_produit) REFERENCES public.produit(id);


--
-- TOC entry 2881 (class 2606 OID 43435)
-- Name: stock produit_stock_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT produit_stock_fk FOREIGN KEY (id_produit_de_base) REFERENCES public.produit(id);


--
-- TOC entry 2865 (class 2606 OID 33856)
-- Name: employe role_employe_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT role_employe_fk FOREIGN KEY (id_role) REFERENCES public.role(id);


--
-- TOC entry 2861 (class 2606 OID 33781)
-- Name: etat_commande statut_etat_commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etat_commande
    ADD CONSTRAINT statut_etat_commande_fk FOREIGN KEY (id_statut) REFERENCES public.statut(id);


--
-- TOC entry 2879 (class 2606 OID 42484)
-- Name: ingredient_pizza taille_ingredient_pizza_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient_pizza
    ADD CONSTRAINT taille_ingredient_pizza_fk FOREIGN KEY (id_taille) REFERENCES public.taille(id);


--
-- TOC entry 2876 (class 2606 OID 33861)
-- Name: authentification utilisateur_authentification_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authentification
    ADD CONSTRAINT utilisateur_authentification_fk FOREIGN KEY (id_utilisateur) REFERENCES public.utilisateur(id);


--
-- TOC entry 2875 (class 2606 OID 33866)
-- Name: client utilisateur_client_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT utilisateur_client_fk FOREIGN KEY (id) REFERENCES public.utilisateur(id);


--
-- TOC entry 2866 (class 2606 OID 33871)
-- Name: employe utilisateur_employe_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employe
    ADD CONSTRAINT utilisateur_employe_fk FOREIGN KEY (id) REFERENCES public.utilisateur(id);


-- Completed on 2020-02-13 10:47:02

--
-- PostgreSQL database dump complete
--

