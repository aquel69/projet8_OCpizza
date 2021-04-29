--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.0

-- Started on 2020-02-13 10:45:48

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

--
-- TOC entry 3023 (class 0 OID 33688)
-- Dependencies: 218
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (1, '16 avenue du val de saone', 'batîment C', 69580, 'Sathonay camp');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (2, '16 rue de la montée', '1 étage', 69580, 'Sathonay Village');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (3, '46 rue de la république', 'bat C', 69300, 'Caluire');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (4, '56 rue de la montée', '4 étages', 69300, 'caluire');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (5, '66 rue de la Ligote', '8 étages', 69500, 'Bron');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (6, '1 impasse de la vie', 'maison au fond de l''impasse', 69330, 'Meyzieu');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (7, '18 square marechal Lyautey', 'bat A', 69300, 'Caluire');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (8, '16 rue de la République', 'OC Pizza de Lyon Terreau', 69001, 'Lyon');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (9, '164 grande rue de la Croix-Rousse', 'OC Pizza de Lyon Croix-Rousse', 69002, 'Lyon');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (10, '10 rue Victor Hugo', 'OC Pizza de Lyon Bellecour', 69004, 'Lyon');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (11, '25 cours Charlemagne', 'OC Pizza de Lyon Perrache', 69002, 'Lyon');
INSERT INTO public.adresse (id, voie, complement, code_postal, commune) VALUES (12, 'CC de Lyon Part-Dieu', 'OC Pizza de Lyon Part-Dieu', 69003, 'Lyon');


--
-- TOC entry 3027 (class 0 OID 33715)
-- Dependencies: 222
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale, email, type) VALUES (1, 'Giroud', 'Franck', '1976-10-20', '2019-12-22 18:12:12.96427', '0625336459', '0478905896', 1, 'franck.giroud@ocpizza.fr', 1);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale, email, type) VALUES (2, 'Giroud', 'Lola', '1978-11-10', '2019-12-22 18:12:12.96427', '0789436521', '0478905896', 1, 'lola.giroud@ocpizza.fr', 1);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale, email, type) VALUES (3, 'Bernard', 'Eddy', '1981-05-25', '2019-12-22 18:12:12.96427', '0795852543', '0472659811', 2, 'eddy.bernard@ocpizza.fr', 2);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale, email, type) VALUES (4, 'Dupont', 'Gerard', '1970-08-11', '2019-12-22 18:12:12.96427', '0658901143', '0478924233', 3, 'gerard.dupont@ocpizza.fr', 3);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale, email, type) VALUES (5, 'Pacouret', 'Nathan', '1997-01-11', '2019-12-22 18:12:12.96427', '0790114943', '0472024225', 4, 'nathan.pacouret@ocpizza.fr', 4);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale, email, type) VALUES (6, 'Rut', 'Sophie', '1980-01-16', '2019-12-29 10:20:29.36646', '0665729143', '0478880051', 5, 'rut.sophie69@yahoo.com', 5);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale, email, type) VALUES (7, 'Sita', 'Sheriff', '1963-02-12', '2019-12-29 10:20:29.36646', '0612096685', '0472413389', 6, 'sheriff@gmail.com', 5);
INSERT INTO public.utilisateur (id, nom, prenom, date_de_naissance, date_creation_de_compte, numero_de_telephone_mobile, numero_de_telephone_fixe, id_adresse_postale, email, type) VALUES (8, 'Rodriguez', 'Philippe', '1979-05-24', '2019-12-29 10:20:29.36646', '0628465251', '0472235580', 7, 'rodriguodu69@laposte.net', 5);


--
-- TOC entry 3036 (class 0 OID 33773)
-- Dependencies: 231
-- Data for Name: authentification; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (1, 'gerand', 'FranckieOC!!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (2, 'LolaResp', 'responsable!OC69580!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (3, 'respPDV', 'BErespLyon01?!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (4, 'OCpizzaiolo', 'GegeDup25!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (5, 'PacLiv', 'NathPacLiv69!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (6, 'BelleSophie', 'LaMaisonDuCoin!!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (7, 'Sheriff69', 'SITACpas?!');
INSERT INTO public.authentification (id_utilisateur, username, password) VALUES (8, 'Phillipo69', 'RPPR!!25900');


--
-- TOC entry 3013 (class 0 OID 33614)
-- Dependencies: 208
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('1', 'pizza', 'base tomate', 'vente');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('2', 'pizza', 'base crème', 'vente');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('3', 'dessert', 'gateau', 'vente');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('4', 'dessert', 'glace', 'vente');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('5', 'dessert', 'flan', 'vente');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('6', 'boisson', 'soda', 'vente');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('7', 'boisson', 'alcool', 'vente');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('8', 'boisson', 'chaude', 'vente');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('9', 'ingredient', 'legume', 'achat');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('10', 'ingredient', 'viande', 'achat');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('11', 'ingredient', 'poisson', 'achat');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('12', 'ingredient', 'condiment', 'achat');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('13', 'ingredient', 'sauce', 'achat');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('14', 'ingredient', 'preparation', 'achat');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('15', 'dessert', 'glace', 'achat');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('16', 'boisson', 'soda', 'achat');
INSERT INTO public.categorie (id, classe, sous_classe, "catégorie") VALUES ('17', 'boisson', 'alcool', 'achat');


--
-- TOC entry 3035 (class 0 OID 33765)
-- Dependencies: 230
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.client (id, numero, id_adresse_livraison) VALUES (6, 169500, 5);
INSERT INTO public.client (id, numero, id_adresse_livraison) VALUES (7, 269330, 6);
INSERT INTO public.client (id, numero, id_adresse_livraison) VALUES (8, 369300, 7);


--
-- TOC entry 3025 (class 0 OID 33705)
-- Dependencies: 220
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.role (id, role, description) VALUES (1, 'gérant', 'Le gérant est le propriétaire de l''entreprise,il traitera toutes les affaires de la société. La gestion des stocks de la centrale d''achat et aura un accés total au site.');
INSERT INTO public.role (id, role, description) VALUES (2, 'responsable', 'Le responsable point de vente est chargé du bon fonctionnement de son établissement, de la gestion des stocks et à un accès au site sur tout ce qui concerne son point de vente.');
INSERT INTO public.role (id, role, description) VALUES (3, 'pizzaïolo', 'Le pizzaïolo est chargé de préparer les pizzas et de la gestion du stock des ingrédients.');
INSERT INTO public.role (id, role, description) VALUES (4, 'livreur', 'Le livreur est chargé de l''acheminement des livraisons aux clients et des stocks en provenance de la centrale d''achat.');


--
-- TOC entry 3028 (class 0 OID 33724)
-- Dependencies: 223
-- Data for Name: employe; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employe (id, numero_employe, id_role) VALUES (1, 176106938100158, 1);
INSERT INTO public.employe (id, numero_employe, id_role) VALUES (2, 278116938500181, 1);
INSERT INTO public.employe (id, numero_employe, id_role) VALUES (3, 181056938100242, 2);
INSERT INTO public.employe (id, numero_employe, id_role) VALUES (4, 170088422100185, 3);
INSERT INTO public.employe (id, numero_employe, id_role) VALUES (5, 197016938000111, 4);


--
-- TOC entry 3024 (class 0 OID 33697)
-- Dependencies: 219
-- Data for Name: point_de_vente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.point_de_vente (siret, id_adresse_du_site) VALUES (80295478500001, 8);
INSERT INTO public.point_de_vente (siret, id_adresse_du_site) VALUES (80295478500002, 9);
INSERT INTO public.point_de_vente (siret, id_adresse_du_site) VALUES (80295478500003, 10);
INSERT INTO public.point_de_vente (siret, id_adresse_du_site) VALUES (80295478500004, 11);
INSERT INTO public.point_de_vente (siret, id_adresse_du_site) VALUES (80295478500005, 12);


--
-- TOC entry 3030 (class 0 OID 33734)
-- Dependencies: 225
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.commande (id, numero, date_enregistrement, id_adresse_de_livraison, id_employe, siret) VALUES (1, 2020000001, '2020-01-03 20:45:16.972188', 5, 3, 80295478500003);
INSERT INTO public.commande (id, numero, date_enregistrement, id_adresse_de_livraison, id_employe, siret) VALUES (2, 2020000002, '2020-01-03 20:45:16.972188', 6, 3, 80295478500003);
INSERT INTO public.commande (id, numero, date_enregistrement, id_adresse_de_livraison, id_employe, siret) VALUES (3, 2020000003, '2020-01-03 20:45:16.972188', 7, 3, 80295478500003);
INSERT INTO public.commande (id, numero, date_enregistrement, id_adresse_de_livraison, id_employe, siret) VALUES (4, 2020000004, '2020-01-13 10:54:56.920571', 5, 3, 80295478500003);
INSERT INTO public.commande (id, numero, date_enregistrement, id_adresse_de_livraison, id_employe, siret) VALUES (5, 2020000005, '2020-01-13 10:54:56.920571', 6, 3, 80295478500003);


--
-- TOC entry 3010 (class 0 OID 33595)
-- Dependencies: 205
-- Data for Name: statut; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.statut (id, code, description) VALUES (1, 'Commande validée', 'La commande a été validée par le client.');
INSERT INTO public.statut (id, code, description) VALUES (2, 'Commande annulée', 'La commande a été annulée par le client.');
INSERT INTO public.statut (id, code, description) VALUES (3, 'Commande en attente', 'La commande est en attente de préparation.');
INSERT INTO public.statut (id, code, description) VALUES (4, 'Commande en préparation', 'La commande est en préparation.');
INSERT INTO public.statut (id, code, description) VALUES (5, 'commande en attente de livraison', 'La commande est terminée et en attente d''être livrée.');
INSERT INTO public.statut (id, code, description) VALUES (6, 'Commande en cours de livraison', 'La commande est en cours de livraison.');
INSERT INTO public.statut (id, code, description) VALUES (7, 'Commande livrée et payée', 'La commande a été livrée chez le client et réglée.');
INSERT INTO public.statut (id, code, description) VALUES (8, 'Commande prête à être retirée en point de vente', 'La commande est terminée, le client peut venir la récuperer dans un point de vente.');
INSERT INTO public.statut (id, code, description) VALUES (9, 'Commande finalisée', 'La commande est complète et donc finalisée.');


--
-- TOC entry 3019 (class 0 OID 33666)
-- Dependencies: 214
-- Data for Name: etat_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.etat_commande (id, id_statut, date) VALUES (1, 1, '2020-01-05 10:39:54.328195');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (2, 3, '2020-01-05 10:43:27.232906');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (3, 4, '2020-01-05 10:48:21.984073');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (4, 5, '2020-01-05 10:53:32.710949');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (5, 6, '2020-01-05 10:54:23.448512');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (6, 7, '2020-01-05 10:57:47.959906');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (7, 9, '2020-01-05 10:58:25.735091');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (8, 1, '2020-01-05 11:02:19.412597');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (9, 3, '2020-01-05 11:02:51.576348');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (10, 4, '2020-01-05 11:03:15.431238');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (11, 8, '2020-01-05 11:10:23.13793');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (12, 1, '2020-01-05 11:10:53.271714');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (13, 3, '2020-01-05 11:11:24.151632');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (14, 9, '2020-01-05 11:12:21.454223');
INSERT INTO public.etat_commande (id, id_statut, date) VALUES (15, 2, '2020-01-05 11:12:27.434103');


--
-- TOC entry 3032 (class 0 OID 33745)
-- Dependencies: 227
-- Data for Name: commande_etat_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (1, 1, 1);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (2, 1, 2);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (3, 1, 3);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (4, 1, 4);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (5, 1, 5);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (6, 1, 6);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (7, 1, 7);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (8, 2, 8);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (9, 2, 9);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (10, 2, 10);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (11, 2, 11);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (12, 3, 12);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (13, 3, 13);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (14, 2, 14);
INSERT INTO public.commande_etat_commande (id, id_commande, id_etat_commande) VALUES (15, 3, 15);


--
-- TOC entry 3021 (class 0 OID 33677)
-- Dependencies: 216
-- Data for Name: facture; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3017 (class 0 OID 33636)
-- Dependencies: 212
-- Data for Name: pizza; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pizza (id, nom) VALUES (1, 'margherita');
INSERT INTO public.pizza (id, nom) VALUES (2, 'regina');
INSERT INTO public.pizza (id, nom) VALUES (3, 'reine');
INSERT INTO public.pizza (id, nom) VALUES (4, 'norvégienne');


--
-- TOC entry 3015 (class 0 OID 33625)
-- Dependencies: 210
-- Data for Name: produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (1, '00001ACHINGLEG', 'tomate', 'tomate au kilo', 1.4, NULL, '9', 'gramme');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (2, '00002ACHINGLEG', 'champignon', 'champignon au kilo', 7.07, NULL, '9', 'gramme');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (3, '00001ACHINGVIA', 'jambon', 'Jambon cuit de Paris 20 tranches 800 g', 7.45, NULL, '10', 'tranche');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (4, '00001ACHINGPOI', 'saumon fumé', 'saumon fumé au kg', 22.5, NULL, '11', 'gramme');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (5, '00001ACHINGCON', 'mélange herbes', 'mélange de plusieurs herbes, pot de 50g', 4, NULL, '12', 'gramme');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (7, '00001ACHINGPRE', 'farine', 'paquet de farine de 1kg', 0.49, NULL, '14', 'gramme');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (8, '00002ACHINGPRE', 'sachet de café', 'sachet de café en Grains Miscela Bar SINFONIA', 10.33, NULL, '14', 'tasse');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (9, '00001ACHBOISOD', 'pack coca-cola', 'pack de 24 bouteilles de 50cl', 34.3, NULL, '16', 'bouteille');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (10, '00001ACHBOIALC', 'pack biere blonde Hoegaarden', 'pack de 24 bouteilles 25cl', 28.83, NULL, '17', 'bouteille');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (11, '00001ACHDESGLA', 'boîte de magnum chocolat', 'une boite de 6 magnum chocolat', 3.1, NULL, '15', 'piece');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (12, '00003ACHINGPRE', 'paton à pizza', '60 patons congelé', 15.55, NULL, '14', 'piece');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (13, '00001VENBOICHA', 'grand café', 'un café dans une grande tasse', 2.7, 10, '8', 'tasse');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (14, '00002VENBOICHA', 'café normal', 'un café dans tasse normale', 1.4, 10, '8', 'tasse');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (15, '00001VENBOISOD', 'coca-cola', 'bouteille de coca-cola 50cl à l''unité', 2, 5.5, '6', 'bouteille');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (16, '00001VENBOIALC', 'biere blonde Hoegaarden', 'bouteille de biere blonde Hoegaarden 25cl à l''unité', 2, 20, '7', 'bouteille');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (17, '00001VENDESGAT', 'tiramisu', 'tiramisu à l''unité', 4.8, 10, '3', 'part');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (18, '00001VENDESFLA', 'crème brulée', 'ramequin de crème brulée à l''unité', 5.3, 10, '5', 'part');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (19, '00001VENDESGLA', 'magnum chocolat', 'glace magnum chocolat à l''unité', 3.5, 10, '4', 'piece');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (6, '00001ACHINGSAU', 'sauce tomate', 'sauce tomate spécial pizza, pot de 1L', 3.2, NULL, '13', 'millilitre');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (22, '00002ACHINGSAU', 'crème fraiche', 'crème fraiche 30%, pot de 5L', 14.69, NULL, '13', 'millilitre');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (23, '00003ACHINGPRE', 'mozzarella', 'mozzarella en cossette de 2,5kg', 12.47, NULL, '14', 'gramme');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (24, '00004ACHINGPRE', 'olive', 'olives noires à la grecque dénoyautées, seau de 2.5Kg', 11.82, NULL, '14', 'gramme');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (21, '00001VENPIZCRE', 'grande pizza saumon', 'pizza saumon base crème, saumon à l''unité', 11.81, 10, '2', 'piece');
INSERT INTO public.produit (id, reference_article, libelle, composition, prix_unitaire_ht, tva, id_categorie, unite) VALUES (20, '00001VENPIZTOM', 'moyenne pizza regina', 'pizza base tomate, jambon et mozzarela à l''unité', 10, 10, '1', 'piece');


--
-- TOC entry 3011 (class 0 OID 33604)
-- Dependencies: 206
-- Data for Name: taille; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.taille (id, taille, quantite_produit) VALUES (1, 'petite', 1);
INSERT INTO public.taille (id, taille, quantite_produit) VALUES (2, 'moyenne', 1.5);
INSERT INTO public.taille (id, taille, quantite_produit) VALUES (3, 'grande', 2);


--
-- TOC entry 3038 (class 0 OID 42417)
-- Dependencies: 233
-- Data for Name: ingredient_pizza; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (2, 23, 80, 1, 1);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (3, 12, 1, 1, 1);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (4, 1, 80, 1, 1);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (5, 6, 150, 1, 1);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (6, 5, 1, 1, 1);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (7, 24, 3, 1, 1);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (8, 23, 80, 2, 2);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (9, 3, 1.5, 2, 2);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (10, 12, 1, 2, 2);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (11, 1, 80, 2, 2);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (12, 6, 150, 2, 2);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (13, 5, 1, 2, 2);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (14, 24, 3, 2, 2);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (15, 23, 80, 4, 3);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (16, 12, 1, 4, 3);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (17, 1, 80, 4, 3);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (18, 22, 150, 4, 3);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (19, 5, 1, 4, 3);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (20, 24, 3, 4, 3);
INSERT INTO public.ingredient_pizza (id, id_produit, quantite, id_pizza, id_taille) VALUES (21, 4, 60, 4, 3);


--
-- TOC entry 3034 (class 0 OID 33756)
-- Dependencies: 229
-- Data for Name: ligne_de_commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ligne_de_commande (id, id_commande, id_produit, quantite, prix_unitaire_ht, tva) VALUES (1, 1, 20, 2, 10, 10);
INSERT INTO public.ligne_de_commande (id, id_commande, id_produit, quantite, prix_unitaire_ht, tva) VALUES (2, 1, 14, 1, 1, 10);
INSERT INTO public.ligne_de_commande (id, id_commande, id_produit, quantite, prix_unitaire_ht, tva) VALUES (3, 1, 15, 1, 2, 6);
INSERT INTO public.ligne_de_commande (id, id_commande, id_produit, quantite, prix_unitaire_ht, tva) VALUES (4, 2, 21, 2, 13, 10);
INSERT INTO public.ligne_de_commande (id, id_commande, id_produit, quantite, prix_unitaire_ht, tva) VALUES (5, 2, 16, 3, 2, 20);
INSERT INTO public.ligne_de_commande (id, id_commande, id_produit, quantite, prix_unitaire_ht, tva) VALUES (6, 2, 17, 2, 5, 10);
INSERT INTO public.ligne_de_commande (id, id_commande, id_produit, quantite, prix_unitaire_ht, tva) VALUES (7, 2, 19, 1, 4, 10);
INSERT INTO public.ligne_de_commande (id, id_commande, id_produit, quantite, prix_unitaire_ht, tva) VALUES (8, 4, 20, 1, 10, 10);
INSERT INTO public.ligne_de_commande (id, id_commande, id_produit, quantite, prix_unitaire_ht, tva) VALUES (9, 4, 21, 1, 11.81, 10);


--
-- TOC entry 3039 (class 0 OID 42451)
-- Dependencies: 234
-- Data for Name: recette; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.recette (id, recette) VALUES (1, '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)Prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 8 mn au four.');
INSERT INTO public.recette (id, recette) VALUES (2, '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 1.5 tranches de jambon, puis par dessus 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 9 mn au four.');
INSERT INTO public.recette (id, recette) VALUES (3, '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de sauce tomate et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 1.5 tranches de jambon et 50g de champignon, puis par dessus 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 9 mn au four.');
INSERT INTO public.recette (id, recette) VALUES (4, '(Les quantités sont données pour une petite pizza, multipliez par 1.5 pour une moyenne et par deux pour une grande.)prenez un paton et étalez la pâte, jusqu''à la dimension voulue. 
 Prenez 150 millilitre de crème et étalez là sur toute la surface, en laissant la taille d''un doigt vers les bords. 
 Ajoutez 60g de saumon fumé, puis par dessus 80g de mozzarella et 80g de tomate, coupée en tranche, répartie sur toute la surface. Ajoutez 1g d''herbes à pizza ainsi que 3g d''olives(environ 7 olives). Faite la chauffer pendant 9 mn au four.');


--
-- TOC entry 3040 (class 0 OID 43427)
-- Dependencies: 235
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3309586415225', '2020-01-10', 1, 10000, '2019-12-31', 80295478500001);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('330435526548', '2020-01-10', 2, 5000, '2019-12-31', 80295478500001);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3456825265339', '2020-01-27', 3, 1000, '2019-12-31', 80295478500001);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3304545813229', '2020-01-29', 4, 5000, '2019-12-31', 80295478500002);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3301810011089', '2021-12-31', 5, 500, '2019-12-31', 80295478500002);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3304848008865', '2021-12-31', 6, 100000, '2019-12-31', 80295478500003);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3425588111000', '2020-12-31', 7, 10000, '2019-12-31', 80295478500003);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3388044400088', '2021-12-31', 8, 5000, '2019-12-31', 80295478500004);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3149812800099', '2021-12-31', 9, 480, '2019-12-31', 80295478500004);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3306597000870', '2021-12-31', 10, 480, '2019-12-31', 80295478500005);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3304488000580', '2021-01-29', 11, 200, '2019-12-31', 80295478500005);
INSERT INTO public.stock (code_ean, date_de_peremption, id_produit_de_base, quantite_restante, date_achat, point_de_vente) VALUES ('3429710004691', '2020-06-30', 21, 6000, '2019-12-31', 80295478500005);


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 217
-- Name: adresse_id_adresse_seq_2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adresse_id_adresse_seq_2', 12, true);


--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 207
-- Name: categorie_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorie_id_seq_1', 17, true);


--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 226
-- Name: commande_etat_commande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commande_etat_commande_id_seq', 15, true);


--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 224
-- Name: commande_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commande_numero_seq', 5, true);


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 213
-- Name: etat_commande_statut_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.etat_commande_statut_seq', 15, true);


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 215
-- Name: facture_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facture_id_seq_1', 3, true);


--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 228
-- Name: ligne_de_commande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ligne_de_commande_id_seq', 9, true);


--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 211
-- Name: pizza_id_seq_2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizza_id_seq_2', 4, true);


--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 209
-- Name: produit_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produit_id_seq_1', 24, true);


--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 232
-- Name: quantite_ingredient_pizza_id_quantite_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quantite_ingredient_pizza_id_quantite_seq', 21, true);


--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 204
-- Name: statut_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.statut_id_seq_1', 1, false);


--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 221
-- Name: utilisateur_id_utilisateur_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilisateur_id_utilisateur_seq', 11, true);


-- Completed on 2020-02-13 10:45:48

--
-- PostgreSQL database dump complete
--

