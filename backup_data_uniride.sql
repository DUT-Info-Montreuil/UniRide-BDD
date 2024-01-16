--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1

-- Started on 2024-01-16 09:17:09 UTC

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
-- TOC entry 3461 (class 0 OID 32784)
-- Dependencies: 219
-- Data for Name: ur_address; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_address VALUES (1, '140', 'Rue de la Nouvelle France', 'Montreuil', '93100', 48.8625700000, 2.4642050000, '2024-01-05 18:22:15.730821') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_address VALUES (2, '5', 'Rue Curial', 'Paris', '75019', 48.8899830000, 2.3715060000, '2024-01-05 18:22:15.730821') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_address VALUES (3, '4', 'Rue des Cailloux', 'Clichy', '92110', 48.8957510000, 2.3054130000, '2024-01-05 18:22:15.730821') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_address VALUES (4, '6', 'Rue des Cailloux', 'Clichy', '92110', 48.8957240000, 2.3056710000, '2024-01-05 18:22:15.730821') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_address VALUES (5, '3', 'Rue des Cailloux', 'Clichy', '92110', 48.8960700000, 2.3051650000, '2024-01-05 18:29:31.578719') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_address VALUES (6, '7', 'Boulevard Voltaire', 'Paris', '75011', 48.8662790000, 2.3662120000, '2024-01-06 15:08:35.992617') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_address VALUES (7, '2', 'Rue Montmartre', 'Paris', '75001', 48.8633240000, 2.3461010000, '2024-01-06 15:35:15.147358') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_address VALUES (9, '59', 'Rue de Rivoli', 'Paris', '75001', 48.8592220000, 2.3456670000, '2024-01-08 15:02:03.280767') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_address VALUES (10, '5', 'Rue des Cailloux', 'Clichy', '92110', 48.8961310000, 2.3053080000, '2024-01-15 13:44:50.463494') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_address VALUES (11, '2', 'Rue des Cailloux', 'Clichy', '92110', 48.8957860000, 2.3053670000, '2024-01-15 15:10:30.583799') ON CONFLICT DO NOTHING;


--
-- TOC entry 3459 (class 0 OID 32775)
-- Dependencies: 217
-- Data for Name: ur_role; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_role VALUES (0, 'administrateur', 'Administrateur système avec des droits étendus pour gérer lapplication de covoiturage.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_role VALUES (1, 'driver', 'Conducteur autorisé à proposer des trajets et à conduire des passagers.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_role VALUES (2, 'passenger', 'Passager ayant la possibilité de rechercher et de réserver des trajets.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_role VALUES (3, 'pending', 'Utilisateur qui as pas validé ses documents.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821') ON CONFLICT DO NOTHING;


--
-- TOC entry 3463 (class 0 OID 32794)
-- Dependencies: 221
-- Data for Name: ur_user; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_user VALUES (55, 0, 'rchouchane', 'DeLaPlace', 'aybouaziiz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 15:03:31.007845', '2024-01-08 15:03:31.007845', NULL, 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (4, 0, 'fperez', 'Perez', 'fperez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'François', '0605556667', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (54, 0, 'syang', 'myrtille', 'syang0@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 10:10:50.704014', '2024-01-08 10:10:50.704014', NULL, 'F', 'fraise', '0781787554', true, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (96, 1, 'tests', 'tests', 'tests@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 18:34:00.645532', '2024-01-12 18:34:00.868595', '96.jpg', 'F', 'tests', '0111111111', true, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (103, 3, 'testse', 'testse', 'testse@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 20:42:35.413729', '2024-01-15 20:42:35.413729', NULL, 'F', 'testse', '0112121111', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (8, 3, 'adelacroix', 'Delacroix', 'adelacroix@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Antoine', '0601234567', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (9, 3, 'bthomas', 'Thomas', 'bthomas@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Béatrice', '0609876543', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (3, 1, 'smartin', 'Martin', 'smartin@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Sophie', '0609876543', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (11, 3, 'hleclerc', 'Leclerc', 'hleclerc@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Henri', '0601112233', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (12, 2, 'jleroux', 'Le Roux', 'jleroux@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Julie', '0609998887', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (6, 2, 'rmartinez', 'Martinez', 'rmartinez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Rosa', '0604445556', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (10, 1, 'gmoreau', 'Moreau', 'gmoreau@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Gabrielle', '0605556667', true, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (48, 3, 'Driver', 'DeLaPlace', 'aybouazizz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-05 20:54:11.653437', '2024-01-05 20:54:11.653437', NULL, 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (94, 3, 'ay', 'DeLaPlace', 'aybz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 14:05:16.154664', '2024-01-12 14:05:16.154664', NULL, 'H', 'quatre', '0625365425', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (56, 3, 'patrickee', 'DeLaPlace', 'aybouazooz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 15:04:59.296025', '2024-01-08 15:04:59.296025', NULL, 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (53, 3, 'siuvhdskvh', 'sovhbdsukvhsd', 'yhamidi@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 10:06:39.359327', '2024-01-08 10:06:39.359327', NULL, 'H', 'dsuvuhdskuvgh', '0666666666', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (57, 3, 'emailtaken', 'DeLaPlace', 'aybouazoozij@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 15:06:45.577844', '2024-01-08 15:06:45.917938', '57.png', 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (52, 1, 'aybouaziz', 'Ayoub', 'aybouaziz@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxu0O5.4VSRTsoFOX0R84sUr0qscSki.Pq', '2024-01-08 10:01:28.235109', '2024-01-14 12:05:08.482247', '52.png', 'H', 'Bouaziz', '0625365425', true, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (90, 3, 'ayb', 'form', 'form@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 13:53:39.698239', '2024-01-12 13:53:39.698239', NULL, 'N', 'car', '0625365425', true, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (97, 3, 'test', 'test', 'test2@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 12:17:40.395475', '2024-01-15 12:17:40.395475', NULL, 'N', 'test', '0111111111', true, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (5, 0, 'lpierre', 'Pierre', 'lpierre@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Léa', '0601112233', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (2, 3, 'jdupont', 'Dupont', 'jdupont@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'M', 'Jean', '0601122334', true, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (91, 3, 'kou', 'michel', 'michel@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 13:58:43.075443', '2024-01-12 13:58:43.075443', NULL, 'H', 'quatre', '0625365425', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (92, 3, 'ouj', 'michel', 'michell@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 14:00:21.115639', '2024-01-12 14:00:21.115639', NULL, 'H', 'quatre', '0625365425', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (93, 3, 'a', 'DeLaPlace', 'az@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 14:03:05.367686', '2024-01-12 14:03:05.367686', NULL, 'H', 'maxime', '0625365425', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (7, 3, 'pgarcia', 'Garcia', 'pgarcia@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', NULL, 'F', 'Pablo', '0607778889', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (50, 0, 'Ssay', 'Yassine', 'adecclacroix@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 09:11:24.748975', '2024-01-15 13:56:47.479248', '50.jpg', 'H', 'Hamidi', '0631315165', true, 3, 'Bonjour', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (95, 1, 'ayuyh', 'form', 'z@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-12 14:14:11.161373', '2024-01-12 14:14:11.161373', NULL, 'F', 'quatre', '0625365425', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (99, 2, 'Ssayssay', 'Yassine', 'Yassine@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 14:20:44.375036', '2024-01-15 14:20:44.514059', '99.jpg', 'H', 'Hamidi', '0613874982', false, 3, 'd', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (98, 1, 'Ssayoui', 'Yassine', 'yassine@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 14:09:28.300719', '2024-01-15 14:09:28.467936', '98.jpg', 'H', 'Hamidi', '0613894982', true, 3, 'd', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (100, 1, 'Lyly', 'l', 'lyly@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 14:33:52.626275', '2024-01-15 14:33:52.736895', '100.jpg', 'F', 'l', '0156156156', true, 3, 'oui', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (101, 3, 'test2', 'test', 'test3@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 16:29:46.959741', '2024-01-15 16:29:46.959741', NULL, 'H', 'test', '0111111112', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (102, 1, 'test7', 'test', 'syang@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 16:34:06.529257', '2024-01-15 16:34:06.529257', NULL, 'H', 'test', '0111111113', true, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (104, 3, 'test15', 'test', 'test15@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 20:56:46.63646', '2024-01-15 20:56:46.63646', NULL, 'H', 'test', '0121111111', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (106, 3, 'fraisesssss', 'myrtille', 'fraisesssss@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 21:04:56.21262', '2024-01-15 21:04:56.21262', NULL, 'H', 'framboise', '0781787551', false, 3, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (105, 3, 'test8', 'test', 'test8@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 21:02:58.533435', '2024-01-15 21:02:58.533435', NULL, 'H', 'test', '0111222222', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (107, 3, 'test6', 'test', 'test6@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-15 21:06:37.224796', '2024-01-15 21:06:37.224796', NULL, 'F', 'test', '0111111222', false, 3, '', NULL, NULL) ON CONFLICT DO NOTHING;


--
-- TOC entry 3474 (class 0 OID 32925)
-- Dependencies: 232
-- Data for Name: ur_assign; Type: TABLE DATA; Schema: uniride; Owner: rayan
--



--
-- TOC entry 3465 (class 0 OID 32826)
-- Dependencies: 223
-- Data for Name: ur_document_verification; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_document_verification VALUES (8, 0, 0, 0, 0, '2024-01-08 10:10:51.278823', 54, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (49, 1, 1, 1, 1, '2024-01-13 15:47:46.980748', 96, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (50, 0, 0, 0, 0, '2024-01-15 12:17:40.633436', 97, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (44, 0, 1, 1, 1, '2024-01-12 13:58:43.297933', 91, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (7, 1, 1, 0, 0, '2024-01-08 10:06:40.07921', 53, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (6, 0, 0, 0, 0, '2024-01-08 14:59:19.767923', 52, 'ton doc est perimé', 'ton doc est perimé', 'ton doc est perimé', 'ton doc est perimé') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (53, 1, 1, 1, 1, '2024-01-15 14:33:53.253248', 100, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (54, 0, 0, 0, 0, '2024-01-15 16:29:47.25875', 101, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (55, 1, 1, 1, 1, '2024-01-15 17:00:25.625731', 102, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (9, 0, 0, 0, 0, '2024-01-08 15:06:46.552803', 57, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (56, 0, 0, 0, 0, '2024-01-15 20:42:35.837721', 103, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (42, 0, 0, 0, 0, '2024-01-09 13:49:31.347876', 2, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (43, 0, 0, 0, 0, '2024-01-12 13:53:39.918235', 90, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (45, 0, 0, 0, 0, '2024-01-12 14:00:21.359661', 92, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (46, 0, 0, 0, 0, '2024-01-12 14:03:05.597813', 93, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (47, 0, 0, 0, 0, '2024-01-12 14:05:16.361869', 94, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (48, 0, 0, 0, 0, '2024-01-12 14:14:11.391634', 95, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (51, 1, 1, 1, 1, '2024-01-15 14:09:28.624006', 98, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (57, 0, 0, 0, 0, '2024-01-15 20:59:24.692504', 104, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (58, 0, 0, 0, 0, '2024-01-15 21:02:58.747384', 105, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (59, 0, 0, 0, 0, '2024-01-15 21:04:56.451596', 106, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (60, 0, 0, 0, 0, '2024-01-15 21:06:37.667796', 107, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (52, 1, 1, 1, 1, '2024-01-15 14:20:45.080628', 99, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (5, 1, 1, 1, 1, '2024-01-08 09:11:25.398616', 50, '', '', '', '') ON CONFLICT DO NOTHING;


--
-- TOC entry 3467 (class 0 OID 32843)
-- Dependencies: 225
-- Data for Name: ur_documents; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_documents VALUES (5, NULL, NULL, NULL, NULL, '2024-01-08 09:11:25.398616', '2024-01-08 09:11:25.398616', 50) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (7, NULL, NULL, NULL, NULL, '2024-01-08 10:06:40.07921', '2024-01-08 10:06:40.07921', 53) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (8, NULL, NULL, NULL, NULL, '2024-01-08 10:10:51.278823', '2024-01-08 10:10:51.278823', 54) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (9, NULL, NULL, NULL, NULL, '2024-01-08 15:06:46.552803', '2024-01-08 15:06:46.552803', 57) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (42, NULL, NULL, NULL, NULL, '2024-01-09 13:49:04.932748', '2024-01-09 13:49:04.932748', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (43, NULL, NULL, NULL, NULL, '2024-01-12 13:53:39.918235', '2024-01-12 13:53:39.918235', 90) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (44, NULL, NULL, NULL, NULL, '2024-01-12 13:58:43.297933', '2024-01-12 13:58:43.297933', 91) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (45, NULL, NULL, NULL, NULL, '2024-01-12 14:00:21.359661', '2024-01-12 14:00:21.359661', 92) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (46, NULL, NULL, NULL, NULL, '2024-01-12 14:03:05.597813', '2024-01-12 14:03:05.597813', 93) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (47, NULL, NULL, NULL, NULL, '2024-01-12 14:05:16.361869', '2024-01-12 14:05:16.361869', 94) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (48, NULL, NULL, NULL, NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 95) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (6, '52.png', '52.png', '52.png', '52.png', '2024-01-08 10:01:28.82497', '2024-01-08 14:59:19.767923', 52) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (49, '96.pdf', '96.jpg', '96.pdf', NULL, '2024-01-12 18:34:01.064588', '2024-01-13 15:47:46.980748', 96) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (50, NULL, NULL, NULL, NULL, '2024-01-15 12:17:40.633436', '2024-01-15 12:17:40.633436', 97) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (51, '98.jpg', '98.jpg', '98.jpg', '98.jpg', '2024-01-15 14:09:28.624006', '2024-01-15 14:09:28.624006', 98) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (52, '99.jpg', '99.jpg', '99.jpg', NULL, '2024-01-15 14:20:44.688044', '2024-01-15 14:20:45.080628', 99) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (53, '100.jpg', '100.jpg', '100.jpg', '100.jpg', '2024-01-15 14:33:52.91913', '2024-01-15 14:33:53.253248', 100) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (54, NULL, NULL, NULL, NULL, '2024-01-15 16:29:47.25875', '2024-01-15 16:29:47.25875', 101) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (55, '102.png', '102.jpg', '102.jpg', '102.png', '2024-01-15 16:34:06.798274', '2024-01-15 17:00:25.625731', 102) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (56, '103.png', NULL, NULL, NULL, '2024-01-15 20:42:35.637708', '2024-01-15 20:42:35.837721', 103) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (57, '104.png', NULL, NULL, '104.png', '2024-01-15 20:56:46.880752', '2024-01-15 20:59:24.692504', 104) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (58, NULL, NULL, NULL, NULL, '2024-01-15 21:02:58.747384', '2024-01-15 21:02:58.747384', 105) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (59, NULL, NULL, NULL, NULL, '2024-01-15 21:04:56.451596', '2024-01-15 21:04:56.451596', 106) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (60, NULL, NULL, NULL, '107.jpg', '2024-01-15 21:06:37.451819', '2024-01-15 21:06:37.667796', 107) ON CONFLICT DO NOTHING;


--
-- TOC entry 3471 (class 0 OID 32875)
-- Dependencies: 229
-- Data for Name: ur_trip; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_trip VALUES (3, 3, '2024-01-05 18:29:32.782706', '2024-01-19 09:00:00', 1, 0.00, 12, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (8, 1, '2024-01-08 15:02:05.957915', '2024-01-09 11:03:00', 1, 0.00, 52, 9, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (42, 1, '2024-01-15 15:25:07.460141', '2024-01-17 17:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (43, 1, '2024-01-15 15:25:20.167906', '2024-01-17 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (44, 1, '2024-01-15 15:32:05.749117', '2024-01-17 10:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (45, 1, '2024-01-15 15:36:52.844046', '2024-01-15 10:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (46, 3, '2024-01-15 15:43:24.408415', '2024-01-15 11:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (47, 3, '2024-01-15 15:43:24.408415', '2024-01-22 11:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (48, 3, '2024-01-15 15:43:24.408415', '2024-01-29 11:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (49, 3, '2024-01-15 15:43:24.408415', '2024-02-05 11:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (50, 3, '2024-01-15 15:43:24.408415', '2024-02-12 11:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (51, 3, '2024-01-15 15:43:24.408415', '2024-02-19 11:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (52, 1, '2024-01-15 19:18:00.114493', '2024-01-15 01:17:37', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (53, 4, '2024-01-15 21:39:44.500482', '2024-01-15 08:00:00', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (54, 4, '2024-01-15 21:39:44.500482', '2024-01-16 08:00:00', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (55, 4, '2024-01-15 21:39:44.500482', '2024-01-18 08:00:00', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (56, 4, '2024-01-15 21:39:44.500482', '2024-01-19 08:00:00', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (57, 4, '2024-01-15 21:39:44.500482', '2024-01-22 08:00:00', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (58, 4, '2024-01-15 21:39:44.500482', '2024-01-23 08:00:00', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (59, 4, '2024-01-15 21:39:44.500482', '2024-01-25 08:00:00', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (60, 4, '2024-01-15 21:39:44.500482', '2024-01-26 08:00:00', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (61, 4, '2024-01-15 21:39:44.500482', '2024-01-29 08:00:00', 1, 0.00, 50, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (2, 2, '2024-01-05 18:22:15.730821', '2023-12-15 09:00:00', 2, 2.00, 2, 4, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (1, 2, '2024-01-05 18:22:15.730821', '2024-01-11 22:30:00', 1, 2.00, 2, 3, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (9, 4, '2024-01-15 12:15:21.046153', '2024-01-24 10:00:00', 1, 0.00, 96, 3, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (10, 4, '2024-01-15 12:44:01.498131', '2024-12-27 09:00:00', 1, 0.00, 96, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (11, 3, '2024-01-15 13:36:21.56982', '2024-01-15 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (12, 4, '2024-01-15 13:39:29.195312', '2024-01-14 09:00:00', 1, 0.00, 54, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (13, 3, '2024-01-15 13:42:10.464354', '2024-01-15 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (14, 3, '2024-01-15 13:42:10.464354', '2024-01-16 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (15, 3, '2024-01-15 13:42:10.464354', '2024-01-17 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (16, 3, '2024-01-15 13:44:14.485241', '2024-01-15 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (17, 3, '2024-01-15 13:44:14.485241', '2024-01-16 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (18, 3, '2024-01-15 13:44:14.485241', '2024-01-19 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (20, 3, '2024-01-15 13:48:36.55752', '2024-01-15 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (21, 3, '2024-01-15 13:48:36.55752', '2024-01-22 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (22, 3, '2024-01-15 13:49:54.237558', '2024-01-15 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (23, 3, '2024-01-15 13:49:54.237558', '2024-01-16 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (24, 3, '2024-01-15 13:49:54.237558', '2024-01-22 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (25, 3, '2024-01-15 13:49:54.237558', '2024-01-23 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (28, 3, '2024-01-15 14:06:57.554197', '2024-01-15 09:00:00', 1, 0.00, 90, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (29, 3, '2024-01-15 14:06:57.554197', '2024-01-16 09:00:00', 1, 0.00, 90, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (30, 0, '2024-01-15 14:10:10.590529', '2024-01-29 09:00:00', 1, 0.00, 90, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (31, 0, '2024-01-15 14:10:10.590529', '2024-01-30 09:00:00', 1, 0.00, 90, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (32, 1, '2024-01-15 15:15:20.338233', '2024-01-29 09:00:00', 1, 0.00, 52, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (37, 3, '2024-01-15 15:21:13.546372', '2024-01-22 10:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (38, 3, '2024-01-15 15:21:13.546372', '2024-01-29 10:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (39, 3, '2024-01-15 15:21:13.546372', '2024-02-05 10:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (40, 3, '2024-01-15 15:21:13.546372', '2024-02-12 10:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (41, 3, '2024-01-15 15:21:13.546372', '2024-02-19 10:00:36', 1, 0.00, 52, 5, 1, 1.00) ON CONFLICT DO NOTHING;


--
-- TOC entry 3475 (class 0 OID 32940)
-- Dependencies: 233
-- Data for Name: ur_join; Type: TABLE DATA; Schema: uniride; Owner: rayan
--



--
-- TOC entry 3476 (class 0 OID 1105935)
-- Dependencies: 234
-- Data for Name: ur_rating_criteria; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (169, 'Prêt à Partagerggddddd', 'Partage d''extras.', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (184, 'qsd3', 'qsd', 1) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (174, 'SUPER MEGA COOL', 'SUPER MEGA COOL', 1) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (167, 'Offre de Conversationbd', 'Prêt à discuter.', 1) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (162, 'Ambiance du Véhicule', 'Ambiance chaleureuse et confortable.', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (164, 'Musique Sympaddd', 'Playlist accueillante.', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (170, 'Remerciements et Évaluationsdsdf', 'Exprime la gratitude.ddf', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (168, 'Attitude Positive', 'Attitude positive.', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (179, 'en attente', 'SUPER MEGA COOL', NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (183, 'sqds', 'qsd', NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (166, 'Appréciation de la Musiqued', 'Aime la musique partagée.', NULL) ON CONFLICT DO NOTHING;


--
-- TOC entry 3477 (class 0 OID 1105940)
-- Dependencies: 235
-- Data for Name: ur_rating; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (24, 5, 9, 2, 168) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (26, 2, 9, 3, 169) ON CONFLICT DO NOTHING;


--
-- TOC entry 3473 (class 0 OID 32900)
-- Dependencies: 231
-- Data for Name: ur_trip_validation; Type: TABLE DATA; Schema: uniride; Owner: rayan
--



--
-- TOC entry 3469 (class 0 OID 32859)
-- Dependencies: 227
-- Data for Name: ur_vehicle; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_vehicle VALUES (66, 'c3', 'CP-123-ER', 'FR', 'Bleu', 'Citroen', 2, '2024-01-08 14:02:42.103961', '2024-01-08 14:02:42.103961', 52) ON CONFLICT DO NOTHING;


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 218
-- Name: ur_address_a_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_address_a_id_seq', 11, true);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 222
-- Name: ur_document_verification_v_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_document_verification_v_id_seq', 60, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 224
-- Name: ur_documents_d_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_documents_d_id_seq', 60, true);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 237
-- Name: ur_join_j_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_join_j_id_seq', 10, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 236
-- Name: ur_rating_criteria_rc_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_rating_criteria_rc_id_seq', 185, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 238
-- Name: ur_rating_n_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_rating_n_id_seq', 26, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 216
-- Name: ur_role_r_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_role_r_id_seq', 1, false);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 228
-- Name: ur_trip_t_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_trip_t_id_seq', 61, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 230
-- Name: ur_trip_validation_v_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_trip_validation_v_id_seq', 1, false);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 220
-- Name: ur_user_u_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_user_u_id_seq', 107, true);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 226
-- Name: ur_vehicule_v_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_vehicule_v_id_seq', 66, true);


-- Completed on 2024-01-16 09:17:13 UTC

--
-- PostgreSQL database dump complete
--

