--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1

-- Started on 2024-01-13 14:37:38 UTC

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
-- TOC entry 3459 (class 0 OID 32784)
-- Dependencies: 219
-- Data for Name: ur_address; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_address VALUES (1, '140', 'Rue de la Nouvelle France', 'Montreuil', '93100', 48.8625700000, 2.4642050000, '2024-01-05 18:22:15.730821');
INSERT INTO uniride.ur_address VALUES (2, '5', 'Rue Curial', 'Paris', '75019', 48.8899830000, 2.3715060000, '2024-01-05 18:22:15.730821');
INSERT INTO uniride.ur_address VALUES (3, '4', 'Rue des Cailloux', 'Clichy', '92110', 48.8957510000, 2.3054130000, '2024-01-05 18:22:15.730821');
INSERT INTO uniride.ur_address VALUES (4, '6', 'Rue des Cailloux', 'Clichy', '92110', 48.8957240000, 2.3056710000, '2024-01-05 18:22:15.730821');
INSERT INTO uniride.ur_address VALUES (5, '3', 'Rue des Cailloux', 'Clichy', '92110', 48.8960700000, 2.3051650000, '2024-01-05 18:29:31.578719');
INSERT INTO uniride.ur_address VALUES (6, '7', 'Boulevard Voltaire', 'Paris', '75011', 48.8662790000, 2.3662120000, '2024-01-06 15:08:35.992617');
INSERT INTO uniride.ur_address VALUES (7, '2', 'Rue Montmartre', 'Paris', '75001', 48.8633240000, 2.3461010000, '2024-01-06 15:35:15.147358');
INSERT INTO uniride.ur_address VALUES (8, '5', 'Allée Mansart', 'Noisy-le-Sec', '93130', 48.8871120000, 2.4566540000, '2024-01-06 21:36:10.723211');
INSERT INTO uniride.ur_address VALUES (9, '59', 'Rue de Rivoli', 'Paris', '75001', 48.8592220000, 2.3456670000, '2024-01-08 15:02:03.280767');


--
-- TOC entry 3457 (class 0 OID 32775)
-- Dependencies: 217
-- Data for Name: ur_role; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_role VALUES (0, 'administrateur', 'Administrateur système avec des droits étendus pour gérer lapplication de covoiturage.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821');
INSERT INTO uniride.ur_role VALUES (1, 'driver', 'Conducteur autorisé à proposer des trajets et à conduire des passagers.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821');
INSERT INTO uniride.ur_role VALUES (2, 'passenger', 'Passager ayant la possibilité de rechercher et de réserver des trajets.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821');
INSERT INTO uniride.ur_role VALUES (3, 'pending', 'Utilisateur qui as pas validé ses documents.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821');


--
-- TOC entry 3461 (class 0 OID 32794)
-- Dependencies: 221
-- Data for Name: ur_user; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_user VALUES (95, 3, 'ayuyh', 'form', 'z@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 14:14:11.161373', '2024-01-12 14:14:11.161373', NULL, 'F', 'quatre', '0625365425', false, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (54, 3, 'syang', 'myrtille', 'syang@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 10:10:50.704014', '2024-01-08 10:10:50.704014', NULL, 'H', 'framboise', '0781787554', true, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (3, 3, 'smartin', 'Martin', 'smartin@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Sophie', '0609876543', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (4, 3, 'fperez', 'Perez', 'fperez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'François', '0605556667', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (5, 3, 'lpierre', 'Pierre', 'lpierre@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Léa', '0601112233', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (6, 3, 'rmartinez', 'Martinez', 'rmartinez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Rosa', '0604445556', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (7, 3, 'pgarcia', 'Garcia', 'pgarcia@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Pablo', '0607778889', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (8, 3, 'adelacroix', 'Delacroix', 'adelacroix@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Antoine', '0601234567', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (9, 3, 'bthomas', 'Thomas', 'bthomas@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Béatrice', '0609876543', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (11, 3, 'hleclerc', 'Leclerc', 'hleclerc@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Henri', '0601112233', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (47, 1, 'fraise', 'FRAISE', 'fraise@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-05 20:44:59.310525', '2024-01-12 18:04:32.721455', '47.png', 'H', 'fraise', '0123456789', true, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (10, 1, 'gmoreau', 'Moreau', 'gmoreau@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Gabrielle', '0605556667', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (52, 3, 'aybouaziz', 'Ayoub', 'aybouaziz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxu0O5.4VSRTsoFOX0R84sUr0qscSki.Pq', '2024-01-08 10:01:28.235109', '2024-01-09 16:38:43.598855', '52.png', 'H', 'Bouaziz', '0625365425', true, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (12, 2, 'jleroux', 'Le Roux', 'jleroux@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Julie', '0609998887', false, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (1, 2, 'fhmmgh', 'castex', 'syanklmdfffffffg@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1KxusaDh8sUc7Z7FVgXel03jFxAAKcqwbwq', '2024-01-05 18:22:00.595781', '2024-01-05 18:22:00.595781', NULL, 'H', 'jean', '0781787554', true, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (50, 3, 'Ssay', 'Yassine', 'adecclacroix@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 09:11:24.748975', '2024-01-08 09:11:24.748975', NULL, 'H', 'Hamidi', '0631315165', true, 3, 'Bonjour', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (48, 3, 'Driver', 'DeLaPlace', 'aybouazizz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-05 20:54:11.653437', '2024-01-05 20:54:11.653437', NULL, 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (55, 3, 'rchouchane', 'DeLaPlace', 'aybouaziiz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 15:03:31.007845', '2024-01-08 15:03:31.007845', NULL, 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (94, 3, 'ay', 'DeLaPlace', 'aybz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 14:05:16.154664', '2024-01-12 14:05:16.154664', NULL, 'H', 'quatre', '0625365425', false, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (56, 3, 'patrickee', 'DeLaPlace', 'aybouazooz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 15:04:59.296025', '2024-01-08 15:04:59.296025', NULL, 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (53, 3, 'siuvhdskvh', 'sovhbdsukvhsd', 'yhamidi@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 10:06:39.359327', '2024-01-08 10:06:39.359327', NULL, 'H', 'dsuvuhdskuvgh', '0666666666', false, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (57, 3, 'emailtaken', 'DeLaPlace', 'aybouazoozij@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 15:06:45.577844', '2024-01-08 15:06:45.917938', '57.png', 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (90, 3, 'ayb', 'form', 'form@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 13:53:39.698239', '2024-01-12 13:53:39.698239', NULL, 'N', 'car', '0625365425', true, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (96, 2, 'tests', 'tests', 'tests@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 18:34:00.645532', '2024-01-12 18:34:00.868595', '96.jpg', 'F', 'tests', '0111111111', true, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (13, 0, 'testtest', 'failedfailed', 'testtest@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1KxusaDh8sUc7Z7FVgXel03jFxAAKcqwbwq', '2024-01-05 18:27:39.809473', '2024-01-05 18:27:39.809473', NULL, 'H', 'testtes', '0781787554', true, 3, 'Salut c''est moi testtest', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (2, 3, 'jdupont', 'Dupont', 'jdupont@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Jean', '0601122334', true, 3, NULL, NULL, NULL);
INSERT INTO uniride.ur_user VALUES (91, 3, 'kou', 'michel', 'michel@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 13:58:43.075443', '2024-01-12 13:58:43.075443', NULL, 'H', 'quatre', '0625365425', false, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (92, 3, 'ouj', 'michel', 'michell@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 14:00:21.115639', '2024-01-12 14:00:21.115639', NULL, 'H', 'quatre', '0625365425', false, 3, '', NULL, NULL);
INSERT INTO uniride.ur_user VALUES (93, 3, 'a', 'DeLaPlace', 'az@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 14:03:05.367686', '2024-01-12 14:03:05.367686', NULL, 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL);


--
-- TOC entry 3472 (class 0 OID 32925)
-- Dependencies: 232
-- Data for Name: ur_assign; Type: TABLE DATA; Schema: uniride; Owner: rayan
--



--
-- TOC entry 3463 (class 0 OID 32826)
-- Dependencies: 223
-- Data for Name: ur_document_verification; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_document_verification VALUES (1, -1, 1, 1, 1, '2024-01-05 18:22:01.008229', 1, 'noncc', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (5, 0, 0, 0, 0, '2024-01-08 09:11:25.398616', 50, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (7, 0, 0, 0, 0, '2024-01-08 10:06:40.07921', 53, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (8, 0, 0, 0, 0, '2024-01-08 10:10:51.278823', 54, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (9, 0, 0, 0, 0, '2024-01-08 15:06:46.552803', 57, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (42, 0, 0, 0, 0, '2024-01-09 13:49:31.347876', 2, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (43, 0, 0, 0, 0, '2024-01-12 13:53:39.918235', 90, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (44, 0, 0, 0, 0, '2024-01-12 13:58:43.297933', 91, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (45, 0, 0, 0, 0, '2024-01-12 14:00:21.359661', 92, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (46, 0, 0, 0, 0, '2024-01-12 14:03:05.597813', 93, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (47, 0, 0, 0, 0, '2024-01-12 14:05:16.361869', 94, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (48, 0, 0, 0, 0, '2024-01-12 14:14:11.391634', 95, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (49, 0, 0, 0, 0, '2024-01-12 18:34:01.540573', 96, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (3, 1, 1, 1, 1, '2024-01-05 20:44:59.930202', 47, '', '', '', '');
INSERT INTO uniride.ur_document_verification VALUES (2, -1, -1, -1, -1, '2024-01-05 18:27:40.193474', 13, 'dfjnjk;dbfhn', 'bz ta mere', 'document perimé', 'ton doc est perimé');
INSERT INTO uniride.ur_document_verification VALUES (6, -1, 1, 1, -1, '2024-01-08 14:59:19.767923', 52, '', 'ton doc est perimé', 'ton doc est perimé', '');


--
-- TOC entry 3465 (class 0 OID 32843)
-- Dependencies: 225
-- Data for Name: ur_documents; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_documents VALUES (1, '1.jpg', NULL, NULL, NULL, '2024-01-05 18:22:00.840604', '2024-01-05 18:22:01.008229', 1);
INSERT INTO uniride.ur_documents VALUES (2, '13.jpg', NULL, NULL, NULL, '2024-01-05 18:27:40.039003', '2024-01-05 18:27:40.193474', 13);
INSERT INTO uniride.ur_documents VALUES (3, NULL, NULL, NULL, NULL, '2024-01-05 20:44:59.930202', '2024-01-05 20:44:59.930202', 47);
INSERT INTO uniride.ur_documents VALUES (5, NULL, NULL, NULL, NULL, '2024-01-08 09:11:25.398616', '2024-01-08 09:11:25.398616', 50);
INSERT INTO uniride.ur_documents VALUES (7, NULL, NULL, NULL, NULL, '2024-01-08 10:06:40.07921', '2024-01-08 10:06:40.07921', 53);
INSERT INTO uniride.ur_documents VALUES (8, NULL, NULL, NULL, NULL, '2024-01-08 10:10:51.278823', '2024-01-08 10:10:51.278823', 54);
INSERT INTO uniride.ur_documents VALUES (9, NULL, NULL, NULL, NULL, '2024-01-08 15:06:46.552803', '2024-01-08 15:06:46.552803', 57);
INSERT INTO uniride.ur_documents VALUES (42, NULL, NULL, NULL, NULL, '2024-01-09 13:49:04.932748', '2024-01-09 13:49:04.932748', 2);
INSERT INTO uniride.ur_documents VALUES (43, NULL, NULL, NULL, NULL, '2024-01-12 13:53:39.918235', '2024-01-12 13:53:39.918235', 90);
INSERT INTO uniride.ur_documents VALUES (44, NULL, NULL, NULL, NULL, '2024-01-12 13:58:43.297933', '2024-01-12 13:58:43.297933', 91);
INSERT INTO uniride.ur_documents VALUES (45, NULL, NULL, NULL, NULL, '2024-01-12 14:00:21.359661', '2024-01-12 14:00:21.359661', 92);
INSERT INTO uniride.ur_documents VALUES (46, NULL, NULL, NULL, NULL, '2024-01-12 14:03:05.597813', '2024-01-12 14:03:05.597813', 93);
INSERT INTO uniride.ur_documents VALUES (47, NULL, NULL, NULL, NULL, '2024-01-12 14:05:16.361869', '2024-01-12 14:05:16.361869', 94);
INSERT INTO uniride.ur_documents VALUES (48, NULL, NULL, NULL, NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 95);
INSERT INTO uniride.ur_documents VALUES (49, '96.png', '96.jpg', '96.pdf', NULL, '2024-01-12 18:34:01.064588', '2024-01-12 18:34:01.540573', 96);
INSERT INTO uniride.ur_documents VALUES (6, '52.png', '52.png', '52.png', '52.png', '2024-01-08 10:01:28.82497', '2024-01-08 14:59:19.767923', 52);


--
-- TOC entry 3469 (class 0 OID 32875)
-- Dependencies: 229
-- Data for Name: ur_trip; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_trip VALUES (3, 3, '2024-01-05 18:29:32.782706', '2024-01-19 09:00:00', 1, 0.00, 12, 5, 1, 1.00);
INSERT INTO uniride.ur_trip VALUES (4, 3, '2024-01-05 20:33:15.516314', '2024-01-19 17:30:00', 1, 0.00, 13, 5, 1, 1.00);
INSERT INTO uniride.ur_trip VALUES (5, 2, '2024-01-06 15:08:37.244464', '2024-01-19 08:32:00', 1, 0.00, 47, 6, 1, 1.00);
INSERT INTO uniride.ur_trip VALUES (8, 1, '2024-01-08 15:02:05.957915', '2024-01-09 11:03:00', 1, 0.00, 52, 9, 1, 1.00);
INSERT INTO uniride.ur_trip VALUES (6, 4, '2024-01-06 15:35:16.289226', '2024-01-23 07:34:00', 1, 0.00, 47, 7, 1, 1.00);
INSERT INTO uniride.ur_trip VALUES (2, 2, '2024-01-05 18:22:15.730821', '2023-12-15 09:00:00', 2, 2.00, 2, 4, 1, 1.00);
INSERT INTO uniride.ur_trip VALUES (1, 2, '2024-01-05 18:22:15.730821', '2024-01-11 22:30:00', 1, 2.00, 2, 3, 1, 1.00);


--
-- TOC entry 3473 (class 0 OID 32940)
-- Dependencies: 233
-- Data for Name: ur_join; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_join VALUES (1, 4, 1, 1, '2024-01-05 20:34:32.911725', false, NULL, 1);
INSERT INTO uniride.ur_join VALUES (13, 3, 1, 1, '2024-01-05 20:25:07.379172', false, NULL, 2);
INSERT INTO uniride.ur_join VALUES (47, 4, 1, 1, '2024-01-06 13:39:05.430336', false, NULL, 3);
INSERT INTO uniride.ur_join VALUES (13, 5, 1, 1, '2024-01-06 15:11:02.438907', false, NULL, 4);
INSERT INTO uniride.ur_join VALUES (13, 6, 1, 1, '2024-01-06 15:36:55.787919', false, NULL, 5);
INSERT INTO uniride.ur_join VALUES (47, 1, -2, 1, '2024-01-11 18:43:20.054475', false, 3849, 6);
INSERT INTO uniride.ur_join VALUES (47, 1, -2, 1, '2024-01-11 20:51:11.078969', false, NULL, 8);
INSERT INTO uniride.ur_join VALUES (47, 1, -2, 1, '2024-01-11 20:51:18.727957', false, NULL, 9);
INSERT INTO uniride.ur_join VALUES (47, 1, -2, 1, '2024-01-11 20:51:37.582542', false, NULL, 10);


--
-- TOC entry 3474 (class 0 OID 1105935)
-- Dependencies: 234
-- Data for Name: ur_rating_criteria; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (83, 'Conduite sûre', 'Conduite sûre', 1, NULL);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (86, 'Propreté du véhicule', 'Propreté du véhicule', 1, NULL);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (10, 'cool', 'cool', 0, 1);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (84, 'Courtoisie au volant', 'Courtoisie au volant', 1, 2);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (7, 'sympaaa', 'sympaaa', 0, NULL);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (119, 'test', 'dada', 0, NULL);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (121, 'SUPER MEGA COOL', 'SUPER MEGA COOL', 0, 2);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (122, 'SUPER MEGA COOL', 'SUPER MEGA COOL', 0, 2);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (116, 'dsfsdfsdfsdfsdfsdfs', 'odddduioui', 0, 2);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (85, 'Ponctualité ', 'Ponctualité ', 0, 1);
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (82, 'sad', 'sad', 0, 2);


--
-- TOC entry 3475 (class 0 OID 1105940)
-- Dependencies: 235
-- Data for Name: ur_rating; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (1, 3, 47, 3, 83);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (3, 5, 50, 2, 116);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (4, 2, 10, 2, 82);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (5, 4, 10, 3, 116);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (6, 4, 1, 3, 116);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (7, 4, 50, 3, 116);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (8, 4, 48, 3, 84);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (9, 3, 52, 3, 83);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (11, 4, 52, 2, 83);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (12, 5, 10, 4, 83);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (14, 5, 10, 8, 83);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (2, 4, 47, 5, 83);
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (10, 2, 10, 3, 84);


--
-- TOC entry 3471 (class 0 OID 32900)
-- Dependencies: 231
-- Data for Name: ur_trip_validation; Type: TABLE DATA; Schema: uniride; Owner: rayan
--



--
-- TOC entry 3467 (class 0 OID 32859)
-- Dependencies: 227
-- Data for Name: ur_vehicle; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_vehicle VALUES (66, 'c3', 'CP-123-ER', 'FR', 'Bleu', 'Citroen', 2, '2024-01-08 14:02:42.103961', '2024-01-08 14:02:42.103961', 52);


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 218
-- Name: ur_address_a_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_address_a_id_seq', 9, true);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 222
-- Name: ur_document_verification_v_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_document_verification_v_id_seq', 49, true);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 224
-- Name: ur_documents_d_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_documents_d_id_seq', 49, true);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 237
-- Name: ur_join_j_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_join_j_id_seq', 10, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 236
-- Name: ur_rating_criteria_rc_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_rating_criteria_rc_id_seq', 156, true);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 238
-- Name: ur_rating_n_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_rating_n_id_seq', 14, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 216
-- Name: ur_role_r_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_role_r_id_seq', 1, false);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 228
-- Name: ur_trip_t_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_trip_t_id_seq', 8, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 230
-- Name: ur_trip_validation_v_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_trip_validation_v_id_seq', 1, false);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 220
-- Name: ur_user_u_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_user_u_id_seq', 96, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 226
-- Name: ur_vehicule_v_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_vehicule_v_id_seq', 66, true);


-- Completed on 2024-01-13 14:37:40 UTC

--
-- PostgreSQL database dump complete
--

