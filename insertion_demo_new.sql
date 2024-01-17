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

INSERT INTO uniride.ur_user VALUES (200, 0, 'admin', 'Admin', 'admin@iut.univ-paris8.fr', '$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC', '2024-01-08 15:03:31.007845', '2024-01-08 15:03:31.007845', 'default_profile_picture.png', 'H', 'Tremblay', '0625365425', true, 3, '') ON CONFLICT DO NOTHING;




--Conducteurs
INSERT INTO uniride.ur_user VALUES (1, 1, 'jdupont', 'Dupont', 'jdupont@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'M', 'Jean', '0601122334', true, 3, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (2, 1, 'smartin', 'Martin', 'smartin@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'F', 'Sophie', '0609876543', true, 3, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (3, 1, 'jsmith', 'Smith', 'jsmith@iut.univ-paris.fr', '$2b$12$HgO9S/.RZ2x/uXc/09o1fuA0K72iMmxuU8Kw8HPRg2gJeS0MdsMFy', '2024-01-06 10:45:22.123456', '2024-01-06 10:45:22.123456', 'default_profile_picture.png', 'M', 'John', '1234567890', true, 3, 'Étudiant en développement logiciel') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (4, 1, 'lpierre', 'Pierre', 'lpierre@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'F', 'Léa', '0601112233', true, 3, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (5, 1, 'rmartinez', 'Martinez', 'rmartinez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'M', 'Rosa', '0604445556', true, 3, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (6, 1, 'pgarcia', 'Garcia', 'pgarcia@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'F', 'Pablo', '0607778889', true, 3, NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (7, 1, 'asmith', 'Smith', 'asmith@iut.univ-paris.fr', '$2b$12$SxR6hjUsenw2AyxY.GXsYumK0BpXtkyjjs/8q2bYq76Y0ldR.Pa12', '2024-01-07 08:30:45.987654', '2024-01-07 08:30:45.987654', 'default_profile_picture.png', 'F', 'Alice', '9876543210', true, 3, 'Étudiante en marketing') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (8, 1, 'mjohnson', 'Johnson', 'mjohnson@iut.univ-paris.fr', '$2b$12$Xuk5Ls9eMd3iZYh5yXzYtud4HIN3e8lrT9Gp.YF8seUcy.VNWjCHS', '2024-01-08 15:10:30.555555', '2024-01-08 15:10:30.555555', 'default_profile_picture.png', 'M', 'Michael', '5551112233', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (9, 1, 'cgreen', 'Green', 'cgreen@iut.univ-paris.fr', '$2b$12$gF6lm5a/d6.iCg/2/4CwPe7gWvutd4h38Zq0wffCJ1CzNrmvc5e.e', '2024-01-15 21:18:10.888888', '2024-01-15 21:18:10.888888', 'default_profile_picture.png', 'F', 'Catherine', '9876543210', true, 3, 'Étudiante Responsable des ressources humaines') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (10, 1, 'bwilliams', 'Williams', 'bwilliams@iut.univ-paris.fr', '$2b$12$RvtpBkgQdlyH89HP3r8AgOTYpxlmE7vsJ5shjRzUimJNfVVFLkF36', '2024-02-02 09:30:45.654321', '2024-02-02 09:30:45.654321', 'default_profile_picture.png', 'M', 'Brian', '5559876543', true, 3, 'Étudiante Analyste financier') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (11, 1, 'lsmith', 'Smith', 'lsmith@iut.univ-paris.fr', '$2b$12$3L4GusASXqg/.U.96bMXGOZL.4p2D/bJfglD/jMGrqFis78UJlFrO', '2024-02-05 12:15:30.987654', '2024-02-05 12:15:30.987654', 'default_profile_picture.png', 'F', 'Laura', '1239876540', true, 3, 'Étudiante') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (12, 1, 'rjohnson', 'Johnson', 'rjohnson@iut.univ-paris.fr', '$2b$12$r9.C2rxgCNPEbhXpAdUnfuURJjRGTo5hYQQ2EQG8soUew9OEGjMe.', '2024-02-08 16:45:22.222222', '2024-02-08 16:45:22.222222', 'default_profile_picture.png', 'M', 'Rachel', '9871234567', true, 3, 'Étudiante Responsable marketing') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (13, 1, 'jjones', 'Jones', 'jjones@iut.univ-paris.fr', '$2b$12$A3zITMd0omTXZJpWsM3D..MK67yQWhP4m9rYS7ehoTSd1NBkLHZ5W', '2024-02-12 14:30:45.555555', '2024-02-12 14:30:45.555555', 'default_profile_picture.png', 'M', 'Jessica', '1112223334', true, 3, 'Étudiante Ingénieur') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (14, 1, 'kgarcia', 'Garcia', 'kgarcia@iut.univ-paris.fr', '$2b$12$RZINiIMCMTCNHxZ7esGdYumr/s4kmKd0qgYe/nC9BsLR1/6p4YSgC', '2024-02-18 20:18:10.888888', '2024-02-18 20:18:10.888888', 'default_profile_picture.png', 'F', 'Kevin', '9876543210', true, 3, 'Étudiante ngénieur logiciel') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (15, 1, 'mrodriguez', 'Rodriguez', 'mrodriguez@iut.univ-paris.fr', '$2b$12$pn8S2A5vOITI0gck1MMOieCMs1L0zytiyOhJ.DSjX8bUK2e0FmiE2', '2024-02-22 09:30:45.123123', '2024-02-22 09:30:45.123123', 'default_profile_picture.png', 'M', 'Maria', '5551112233', true, 3, 'Étudiante') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (16, 1, 'jmartinez', 'Martinez', 'jmartinez@iut.univ-paris.fr', '$2b$12$LOsTbBKr/SgQr8.J9V8oXu6T.g1IfaLv/Wm0qzsk9X.8e/c8hpd1i', '2024-02-25 12:15:30.654321', '2024-02-25 12:15:30.654321', 'default_profile_picture.png', 'F', 'John', '1234567890', true, 3, 'Étudiante Spécialiste RH') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (17, 1, 'sallen', 'Allen', 'sallen@iut.univ-paris.fr', '$2b$12$UD7OTVTd2pP05x2PILcJXu.QbRZ8UCzO6GmmDX7MKjJUIsPgeklE2', '2024-03-10 09:30:45.123123', '2024-03-10 09:30:45.123123', 'default_profile_picture.png', 'M', 'Susan', '5551112233', true, 3, 'Étudiante Étudiante') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (18, 1, 'jcooper', 'Cooper', 'jcooper@iut.univ-paris.fr', '$2b$12$.6gt9TO0RvTSyG0no0Dfn.LCVfUvYHzIyFrZGgJgO/Mt5Z9Xp8E6O', '2024-03-14 12:15:30.654321', '2024-03-14 12:15:30.654321', 'default_profile_picture.png', 'F', 'James', '1234567890', true, 3, 'Étudiante Chef de projet') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (19, 1, 'tward', 'Ward', 'tward@iut.univ-paris.fr', '$2b$12$p8Om4ovRyDdfxY3Z8d4ulOn37kk9WRiOdy2Yc0cvKPg3/wf1v.5Ue', '2024-03-22 14:30:45.555555', '2024-03-22 14:30:45.555555', 'default_profile_picture.png', 'M', 'Taylor', '1112223334', true, 3, '') ON CONFLICT DO NOTHING;

--Passagers
INSERT INTO uniride.ur_user VALUES (34, 2, 'hsmith', 'Smith', 'hsmith@iut.univ-paris.fr', '$2b$12$7o7gFdku14rtO0v1lzXqROQhx2Ds.eCO7Eux3egcNvA4u6eyV7eii', '2024-03-26 09:30:45.123123', '2024-03-26 09:30:45.123123', 'default_profile_picture.png', 'M', 'Hannah', '5551112233', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (35, 2, 'rjones', 'Jones', 'rjones@iut.univ-paris.fr', '$2b$12$0ktFwwWqNLdq2aW3.ezY6.6xVrAbK/29rUS9NhInH6ybL8HxLciR.', '2024-03-30 12:15:30.654321', '2024-03-30 12:15:30.654321', 'default_profile_picture.png', 'F', 'Robert', '1234567890', true, 3, 'Étudiant Rédacteur de Contenu') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (36, 2, 'kmartin', 'Martin', 'kmartin@iut.univ-paris.fr', '$2b$12$3IolvtcsQlLQ/9xKopxsJOUO/99ixvOZQbwR38.7vptXCQhDA1A5K', '2024-04-03 16:45:22.222222', '2024-04-03 16:45:22.222222', 'default_profile_picture.png', 'M', 'Katherine', '9876543210', true, 3, 'Étudiant Designer Graphique') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (37, 2, 'jwalker', 'Walker', 'jwalker@iut.univ-paris.fr', '$2b$12$HNByFvErE.SyPZJbiWkCCuRyibS7NmPwUeUru2.3pU3FSPXTQR7Lu', '2024-04-07 14:30:45.555555', '2024-04-07 14:30:45.555555', 'default_profile_picture.png', 'M', 'Jessica', '1112223334', true, 3, 'Étudiant Développeur UI') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (38, 2, 'gcollins', 'Collins', 'gcollins@iut.univ-paris.fr', '$2b$12$H7nIrMwMcnZWu2w9hbwTVu5lLzIS5Hp0M8FsE7tnTmy/zgCNyf3Su', '2024-04-11 20:18:10.888888', '2024-04-11 20:18:10.888888', 'default_profile_picture.png', 'F', 'George', '9876543210', true, 3, 'Étudiant Gestionnaire des Médias Sociaux') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (39, 2, 'wroberts', 'Roberts', 'wroberts@iut.univ-paris.fr', '$2b$12$6U3PLZzDGUONLHFe7wRaFe2iO5A4Lzd5AMWCD1bfrLGRO6w0z4m4y', '2024-04-15 09:30:45.123123', '2024-04-15 09:30:45.123123', 'default_profile_picture.png', 'M', 'Wendy', '5551112233', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (40, 2, 'nrodriguez', 'Rodriguez', 'nrodriguez@iut.univ-paris.fr', '$2b$12$dOKxXvNY8ADsg95YcIzm0u.sFD0xe8/MXHTz25os5.Q.RM9q2gm9q', '2024-04-19 12:15:30.654321', '2024-04-19 12:15:30.654321', 'default_profile_picture.png', 'F', 'Nathan', '1234567890', true, 3, 'Étudiant Consultant en Informatique') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (41, 2, 'pcooper', 'Cooper', 'pcooper@iut.univ-paris.fr', '$2b$12$6fZ8Y8iAI93vcJ/lXT4UsO3Rf4nTie3nb2QhyQDq/G2prPcmDgskC', '2024-04-23 16:45:22.222222', '2024-04-23 16:45:22.222222', 'default_profile_picture.png', 'M', 'Paula', '9876543210', true, 3, 'Étudiant Analyste de Systèmes') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (42, 2, 'jrogers', 'Rogers', 'jrogers@iut.univ-paris.fr', '$2b$12$g1BBwDEPzE1AmoHPUDMVjeFQiq3Ev3zgKHhZP6vzfyXM/aAr1g6yi', '2024-04-27 14:30:45.555555', '2024-04-27 14:30:45.555555', 'default_profile_picture.png', 'M', 'Jessica', '1112223334', true, 3, 'Étudiant Chef de Produit') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (43, 2, 'mhill', 'Hill', 'mhill@iut.univ-paris.fr', '$2b$12$Acp5/G8CVem9t.EC9a.6zOhUqND3Sg8Z6bFfgXmt7oyHFx9h7HbKa', '2024-05-01 20:18:10.888888', '2024-05-01 20:18:10.888888', 'default_profile_picture.png', 'F', 'Mark', '9876543210', true, 3, 'Étudiant Testeur QA') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (44, 2, 'jhernandez', 'Hernandez', 'jhernandez@iut.univ-paris.fr', '$2b$12$otB0rFYnsMWYZgIzX9VT2eZHKB2rL1PVkWsTylnsX/3hx6.uJW83i', '2024-05-05 09:30:45.123123', '2024-05-05 09:30:45.123123', 'default_profile_picture.png', 'M', 'Jennifer', '5551112233', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (45, 2, 'cwhite', 'White', 'cwhite@iut.univ-paris.fr', '$2b$12$pCm13OhG9.d.jm4CQk8wXeFm9BzqqZ6QHckQ4HWzEx6eTICfJ3rpu', '2024-05-09 12:15:30.654321', '2024-05-09 12:15:30.654321', 'default_profile_picture.png', 'F', 'Chris', '1234567890', true, 3, 'Étudiant Spécialiste des Médias Sociaux') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (46, 2, 'cmorris', 'Morris', 'cmorris@iut.univ-paris.fr', '$2b$12$nmCet.2v/b.WMz2XXvhRROHAZSWEbv5RfwzxlDzNEFonMfRaWTTUm', '2024-05-13 16:45:22.222222', '2024-05-13 16:45:22.222222', 'default_profile_picture.png', 'M', 'Christina', '9876543210', true, 3, 'Étudiant Designer UX/UI') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (47, 2, 'lrossi', 'Rossi', 'lrossi@iut.univ-paris.fr', '$2b$12$3r8E5j24zdD38z7z8m3rtuzksOX9.ePbOUsV2wMziLDBzC03c.d0y', '2024-05-17 14:30:45.555555', '2024-05-17 14:30:45.555555', 'default_profile_picture.png', 'M', 'Linda', '1112223334', true, 3, 'Étudiant Testeur de Logiciels') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (48, 2, 'amurray', 'Murray', 'amurray@iut.univ-paris.fr', '$2b$12$.aC7DjQHo6FvOj9rsl.O5uOysKziHEg9GLDCTEG2qUc8W3yvBtDJu', '2024-05-21 20:18:10.888888', '2024-05-21 20:18:10.888888', 'default_profile_picture.png', 'F', 'Alex', '9876543210', true, 3, 'Étudiant Coordinateur Marketing') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (49, 2, 'dbrown', 'Brown', 'dbrown@iut.univ-paris.fr', '$2b$12$K3Gnmn.LLlzv3sPnWXQkUeC75xGxKTo0dDlvOxKf1Vr/D6BhXvFdq', '2024-05-25 09:30:45.123123', '2024-05-25 09:30:45.123123', 'default_profile_picture.png', 'M', 'Diana', '5551112233', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (50, 2, 'jking', 'King', 'jking@iut.univ-paris.fr', '$2b$12$4S3PThfEP8/7Pm.6cHLQLO6s/3sfRJfycRm6I1QDy4bDXCj.eWZWC', '2024-05-29 12:15:30.654321', '2024-05-29 12:15:30.654321', 'default_profile_picture.png', 'F', 'John', '1234567890', true, 3, 'Étudiant Analyste dAffaires') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (51, 2, 'elee', 'Lee', 'elee@iut.univ-paris.fr', '$2b$12$dcVouu0ILhABE8AnZ8wahO9r5wxU9k3NG4c3nizLCeEfgIfMI1mZi', '2024-06-02 16:45:22.222222', '2024-06-02 16:45:22.222222', 'default_profile_picture.png', 'M', 'Emily', '9876543210', true, 3, 'Étudiant Stratège de Contenu') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (52, 2, 'kward', 'Ward', 'kward@iut.univ-paris.fr', '$2b$12$kWfS/mgQvDspUrT53d8vgOML5kZmjil/Bk/MC6y0XiYXqybCAVr8.', '2024-06-06 14:30:45.555555', '2024-06-06 14:30:45.555555', 'default_profile_picture.png', 'M', 'Kristen', '1112223334', true, 3, 'Étudiant Développeur Frontend') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (53, 2, 'eparker', 'Parker', 'eparker@iut.univ-paris.fr', '$2b$12$NsJ6ZNC8y5eCetZ6DTI2/eiFl4HZWQnB2fsm0EzgFwA9MPl/.DMgG', '2024-05-02 12:45:30.987654', '2024-05-02 12:45:30.987654', 'default_profile_picture.png', 'F', 'Ethan', '9876543210', true, 3, 'Étudiant Marketing Coordinator') ON CONFLICT DO NOTHING;


--Pending
INSERT INTO uniride.ur_user VALUES (54, 3, 'wcooper', 'Cooper', 'wcooper@iut.univ-paris.fr', '$2b$12$dGJujBDRtUvcWEWY5YkTtuX0rPv4Iu6go/ULeLp5G.6ELCsqHTSJu', '2024-05-06 16:30:45.123123', '2024-05-06 16:30:45.123123', 'default_profile_picture.png', 'M', 'Wendy', '5551112233', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (55, 3, 'mlopez', 'Lopez', 'mlopez@iut.univ-paris.fr', '$2b$12$5GZu7BY.ZS.CXKSRMgWeUOEE9/Mo1X5vJ5Syv9t1.C4O3F..Tckb6', '2024-05-10 14:15:30.654321', '2024-05-10 14:15:30.654321', 'default_profile_picture.png', 'F', 'Mario', '1234567890', true, 3, 'Étudiant Représentant des ventes') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (56, 3, 'pdavis', 'Davis', 'pdavis@iut.univ-paris.fr', '$2b$12$2tZl.Z.RgYgoR.A2pLwPKOpz3JY3ILNVlIlVdoF/w7Y3tzv4q3CDy', '2024-05-14 20:18:10.888888', '2024-05-14 20:18:10.888888', 'default_profile_picture.png', 'M', 'Patricia', '9876543210', true, 3, 'Étudiant Analyste de données') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (57, 3, 'ljean', 'Jean', 'ljean@iut.univ-paris.fr', '$2b$12$2tZl.Z.RgYgoR.A2pLwPKOpz3JY3ILNVlIlVdoF/w7Y3tzv4q3CDy', '2024-05-14 20:18:10.888888', '2024-05-14 20:18:10.888888', 'default_profile_picture.png', 'M', 'Louis', '9876543210', true, 3, 'Étudiant Analyste de données') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (58, 3, 'awilliams', 'Williams', 'awilliams@iut.univ-paris.fr', '$2b$12$lNvqnm2.fG4jUwsXpCzmFeitTXJNQG8WlyHbZV30fT6TMC0kd2ERK', '2024-05-22 12:15:30.654321', '2024-05-22 12:15:30.654321', 'default_profile_picture.png', 'M', 'Anna', '1234567890', true, 3, 'Étudiant Analyste Marketing') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (59, 3, 'rsmith', 'Smith', 'rsmith@iut.univ-paris.fr', '$2b$12$HNkRSmJAdCwJ1iBnIv1m6u2g9NTAylL.T5u5L.JVZMltc9vOPA2wG', '2024-05-26 16:45:22.222222', '2024-05-26 16:45:22.222222', 'default_profile_picture.png', 'F', 'Robert', '9876543210', true, 3, 'Étudiant Gestionnaire de produit') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (60, 3, 'cmartin', 'Martin', 'cmartin@iut.univ-paris.fr', '$2b$12$KVj8WCE4nI0uH5XT.t0D1erBYziGYPYwTbVCRO6O.ej/v/DGkazFi', '2024-05-30 14:30:45.555555', '2024-05-30 14:30:45.555555', 'default_profile_picture.png', 'M', 'Catherine', '1112223334', true, 3, 'Étudiant Testeur de logiciels') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (61, 3, 'jhall', 'Hall', 'jhall@iut.univ-paris.fr', '$2b$12$tLQWdzJkR44C.6ov1gb8wOBbFg1ZfIasMlTz7FkmyDjF2dH2hnMU.', '2024-06-02 20:18:10.888888', '2024-06-02 20:18:10.888888', 'default_profile_picture.png', 'F', 'John', '9876543210', true, 3, 'Étudiant Coordinateur RH') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (62, 3, 'rhill', 'Hill', 'rhill@iut.univ-paris.fr', '$2b$12$l6rrDlRhSdsT3upO9J6N9uTIuOFiD8Tthw9KjW5eRspEmExm1dTiO', '2024-06-06 09:30:45.123123', '2024-06-06 09:30:45.123123', 'default_profile_picture.png', 'M', 'Rebecca', '5551112233', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (63, 3, 'bthompson', 'Thompson', 'bthompson@iut.univ-paris.fr', '$2b$12$2nC3FxxqPw8nH3aLxF.7GeA3I1oU7GylPfZt.5JpOtpFCoZMB0c1C', '2024-06-10 12:45:30.987654', '2024-06-10 12:45:30.987654', 'default_profile_picture.png', 'F', 'Benjamin', '9876543210', true, 3, 'Étudiant Spécialiste en Marketing') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (64, 3, 'jjackson', 'Jackson', 'jjackson@iut.univ-paris.fr', '$2b$12$NzFn4EN/1/QBo6/VETvF/eD53AIdiUfVl.DgVHD9qGpCDz0UBPjqG', '2024-06-14 16:30:45.123123', '2024-06-14 16:30:45.123123', 'default_profile_picture.png', 'M', 'Julia', '5551112233', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (65, 3, 'rrogers', 'Rogers', 'rrogers@iut.univ-paris.fr', '$2b$12$qdzrMY9kuj/WVHMCm2OeW.Jx/ATGufAYWdCIfJ/qfI/W5J9lvFmFO', '2024-06-18 14:15:30.654321', '2024-06-18 14:15:30.654321', 'default_profile_picture.png', 'F', 'Richard', '1234567890', true, 3, 'Étudiant Responsable des ventes') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (66, 3, 'lcollins', 'Collins', 'lcollins@iut.univ-paris.fr', '$2b$12$BoOuUrtymGyVUaGi4yFMf..vBzWKNxfp5tZKY.rCjzkF9oA0eivTG', '2024-06-22 20:18:10.888888', '2024-06-22 20:18:10.888888', 'default_profile_picture.png', 'M', 'Laura', '9876543210', true, 3, 'Étudiant Scientifique des données') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (67, 3, 'nwright', 'Wright', 'nwright@iut.univ-paris.fr', '$2b$12$FzPG01PZAOqDFLM7aL2E0uLOzh3U3NzguFq8lyCahJL0yFbYhE5YO', '2024-06-26 09:30:45.123123', '2024-06-26 09:30:45.123123', 'default_profile_picture.png', 'F', 'Nicholas', '5559876543', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (69, 3, 'emurphy', 'Murphy', 'emurphy@iut.univ-paris.fr', '$2b$12$FQYQv/uZ4FZZeNqZMWLPwus/DNRU.eDCAD/QNT9FZ9VdbWxMskrhq', '2024-07-04 16:45:22.222222', '2024-07-04 16:45:22.222222', 'default_profile_picture.png', 'F', 'Edward', '9876543210', true, 3, 'Étudiant Responsable de produit') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (70, 3, 'jroberts', 'Roberts', 'jroberts@iut.univ-paris.fr', '$2b$12$WucbMeEhPj50vSV/21Uk..Y8RVD5py5o72JZutw1SlZ2CFn6FltSy', '2024-07-08 14:30:45.555555', '2024-07-08 14:30:45.555555', 'default_profile_picture.png', 'M', 'Jennifer', '1112223334', true, 3, 'Étudiant Testeur de logiciels') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (71, 3, 'dcook', 'Cook', 'dcook@iut.univ-paris.fr', '$2b$12$1G6Mq0eIISpnb84bsCkkceYmtDH28qV27WWFG/m.xWt96yWZ9ZcBa', '2024-07-12 20:18:10.888888', '2024-07-12 20:18:10.888888', 'default_profile_picture.png', 'F', 'Daniel', '9876543210', true, 3, 'Étudiant Coordinateur RH') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (72, 3, 'jkxing', 'Kixng', 'jkisng@iut.univ-paris.fr', '$2b$12$3y6RvPImWvwZbz0whLBO.O1My3lQeRxNLbG8XmtiSisIMe3LWw2k6', '2024-07-16 09:30:45.123123', '2024-07-16 09:30:45.123123', 'default_profile_picture.png', 'M', 'Jessica', '5551112233', true, 3, 'Étudiant') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (73, 3, 'mstewart', 'Stewart', 'mstewart@iut.univ-paris.fr', '$2b$12$Wtn8JbsHIZD18FqG2vaCEOhvWIBlHR3bllBgzq.N/k1VshBzWdx/m', '2024-07-20 12:45:30.987654', '2024-07-20 12:45:30.987654', 'default_profile_picture.png', 'F', 'Michael', '9876543210', true, 3, 'Marketing Specialist') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_user VALUES (68, 3, 'flous', 'Funese', 'flous@iut.univ-paris.fr', '$2b$12$Wtn8JbsHIZD18FqG2vaCEOhvWIBlHR3bllBgzq.N/k1VshBzWdx/m', '2024-07-20 12:45:30.987654', '2024-07-20 12:45:30.987654', 'default_profile_picture.png', 'F', 'Louis', '9876543210', true, 3, 'Marketing Specialist') ON CONFLICT DO NOTHING;


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

--Admin
INSERT INTO uniride.ur_document_verification VALUES (12, 1, 1, 1, 1, '2024-01-08 10:1:51.278823', 200, '', '', '', '') ON CONFLICT DO NOTHING;

--Conducteurs
INSERT INTO uniride.ur_document_verification VALUES (1, 1, 1, 1, 1, '2024-01-08 10:1:51.278823', 1, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (2, 1, 1, 1, 1, '2024-01-08 09:11:25.398616', 2, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (3, 1, 1, 1, 1, '2024-01-08 14:59:19.767923', 3, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (4, 1, 1, 1, 1, '2024-01-08 10:06:40.07921', 4, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (5, 1, 1, 1, 1, '2024-01-08 10:10:51.278823', 5, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (6, 1, 1, 1, 1, '2024-01-08 15:06:46.552803', 6, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (7, 1, 1, 1, 1, '2024-01-15 14:33:53.253248', 7, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (8, 1, 1, 1, 1, '2024-01-15 16:29:47.25875', 8, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (9, 1, 1, 1, 1, '2024-01-15 17:00:25.625731', 9, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (10,1, 1, 1, 1, '2024-01-15 12:17:40.633436', 10, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (11,1, 1, 1, 1, '2024-01-15 20:42:35.837721', 11, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (12,1, 1, 1, 1, '2024-01-15 14:33:53.253248', 12, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (13,1, 1, 1, 1, '2024-01-15 16:29:47.25875', 13, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (14,1, 1, 1, 1, '2024-01-15 17:00:25.625731', 14, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (15,1, 1, 1, 1, '2024-01-15 12:17:40.633436', 15, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (16,1, 1, 1, 1, '2024-01-08 10:1:51.278823', 16, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (17,1, 1, 1, 1, '2024-01-08 10:1:51.278823', 17, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (18,1, 1, 1, 1, '2024-01-08 10:1:51.278823', 18, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (19,1, 1, 1, 1, '2024-01-08 10:1:51.278823', 19, '', '', '', '') ON CONFLICT DO NOTHING;


--Passagers
INSERT INTO uniride.ur_document_verification VALUES (20, 0, 1, 1, 0, '2024-01-08 10:1:51.278823', 34, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (21, 0, 1, 1, 0, '2024-01-08 09:11:25.398616', 35, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (22, 0, 1, 1, 0, '2024-01-08 14:59:19.767923', 36, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (23, 0, 1, 1, 0, '2024-01-08 10:06:40.07921', 37, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (24, 0, 1, 1, 0, '2024-01-08 10:10:51.278823', 38, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (25, 0, 1, 1, 0, '2024-01-08 15:06:46.552803', 39, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (26, 0, 1, 1, 0, '2024-01-15 14:33:53.253248', 40, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (27, 0, 1, 1, 0, '2024-01-15 16:29:47.25875', 41, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (28, 0, 1, 1, 0, '2024-01-15 17:00:25.625731', 42, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (29, 0, 1, 1, 0, '2024-01-15 12:17:40.633436', 43, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (30, 0, 1, 1, 0, '2024-01-15 20:42:35.837721', 44, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (31, 0, 1, 1, 0, '2024-01-15 14:33:53.253248', 45, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (32, 0, 1, 1, 0, '2024-01-15 16:29:47.25875', 46, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (33, 0, 1, 1, 0, '2024-01-15 17:00:25.625731', 47, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (34, 0, 1, 1, 0, '2024-01-15 12:17:40.633436', 48, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (35, 0, 1, 1, 0, '2024-01-08 10:1:51.278823', 49, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (36, 0, 1, 1, 0, '2024-01-08 10:1:51.278823', 50, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (37, 0, 1, 1, 0, '2024-01-08 10:1:51.278823', 51, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (38, 0, 1, 1, 0, '2024-01-08 10:1:51.278823', 52, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (39, 0, 1, 1, 0, '2024-01-08 10:1:51.278823', 53, '', '', '', '') ON CONFLICT DO NOTHING;

--Pending
INSERT INTO uniride.ur_document_verification VALUES (40, 0, 0, 0, 0, '2024-01-08 10:1:51.278823', 54, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (41, 0, 0, 0, 0, '2024-01-08 09:11:25.398616',55, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (42, 0, 0, 0, 0, '2024-01-08 14:59:19.767923', 56, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (43, 0, 0, 0, 0, '2024-01-08 10:06:40.07921', 57, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (44, 0, 0, 0, 0, '2024-01-08 10:10:51.278823', 58, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (45, 0, 0, 0, 0, '2024-01-08 15:06:46.552803', 59, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (46, 0, 0, 0, 0, '2024-01-15 14:33:53.253248', 60, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (47, 0, 0, 0, 0, '2024-01-15 16:29:47.25875', 61, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (48, 0, 0, 0, 0, '2024-01-15 17:00:25.625731', 62, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (49, 0, 0, 0, 0, '2024-01-15 12:17:40.633436', 63, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (50, 0, 0, 0, 0, '2024-01-15 20:42:35.837721', 64, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (51, 0, 0, 0, 0, '2024-01-15 14:33:53.253248', 65, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (52, 0, 0, 0, 0, '2024-01-15 16:29:47.25875', 66, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (53, 0, 0, 0, 0, '2024-01-15 17:00:25.625731', 67, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (54, 0, 0, 0, 0, '2024-01-15 12:17:40.633436', 68, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (55, 0, 0, 0, 0, '2024-01-08 10:1:51.278823', 69, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (56, 0, 0, 0, 0, '2024-01-08 10:1:51.278823', 70, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (57, 0, 0, 0, 0, '2024-01-08 10:1:51.278823', 71, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (58, 0, 0, 0, 0, '2024-01-08 10:1:51.278823', 72, '', '', '', '') ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_document_verification VALUES (59, 0, 0, 0, 0, '2024-01-08 10:1:51.278823', 73, '', '', '', '') ON CONFLICT DO NOTHING;




--
-- TOC entry 3467 (class 0 OID 32843)
-- Dependencies: 225
-- Data for Name: ur_documents; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

--Admin 
INSERT INTO uniride.ur_documents VALUES (200, NULL,NULL,NULL,NULL, '2024-01-08 09:11:25.398616', '2024-01-08 09:11:25.398616', 200) ON CONFLICT DO NOTHING;


--Conducteurs
INSERT INTO uniride.ur_documents VALUES (10, NULL,NULL,NULL,NULL, '2024-01-08 09:11:25.398616', '2024-01-08 09:11:25.398616', 1) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (11, NULL,NULL,NULL,NULL, '2024-01-08 09:11:25.398616', '2024-01-08 09:11:25.398616', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (12, NULL,NULL,NULL,NULL, '2024-01-08 10:06:40.07921', '2024-01-08 10:06:40.07921', 3) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (13, NULL,NULL,NULL,NULL, '2024-01-08 10:10:51.278823', '2024-01-08 10:10:51.278823', 4) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (14, NULL,NULL,NULL,NULL, '2024-01-08 15:06:46.552803', '2024-01-08 15:06:46.552803', 5) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (15, NULL,NULL,NULL,NULL, '2024-01-09 13:49:04.932748', '2024-01-09 13:49:04.932748', 6) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (16, NULL,NULL,NULL,NULL, '2024-01-12 13:53:39.918235', '2024-01-12 13:53:39.918235', 7) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (17, NULL,NULL,NULL,NULL, '2024-01-12 13:58:43.297933', '2024-01-12 13:58:43.297933', 8) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (18, NULL,NULL,NULL,NULL, '2024-01-12 14:00:21.359661', '2024-01-12 14:00:21.359661', 9) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (20, NULL,NULL,NULL,NULL, '2024-01-12 14:03:05.597813', '2024-01-12 14:03:05.597813' , 10) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (21, NULL,NULL,NULL,NULL, '2024-01-12 14:05:16.361869', '2024-01-12 14:05:16.361869', 11) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (22, NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 12) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (23, NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 13) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (24, NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 14) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (25, NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 15) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (26, NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 16) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (27, NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 17) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (28, NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 18) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (29, NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 19) ON CONFLICT DO NOTHING;


--Passagers
INSERT INTO uniride.ur_documents VALUES (44, '34.png',NULL, NULL, '34.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 34) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (45, '35.png',NULL, NULL, '35.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 35) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (46, '36.png',NULL, NULL, '36.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 36) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (47, '37.png',NULL, NULL, '37.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 37) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (48, '38.png',NULL, NULL, '38.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 38) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (49, '39.png',NULL, NULL, '39.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 39) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (50, '40.png',NULL, NULL, '40.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 40) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (51, '41.png',NULL, NULL, '41.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 41) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (52, '42.png',NULL, NULL, '42.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 42) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (53, '43.png',NULL, NULL, '43.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 43) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (54, '44.png',NULL, NULL, '44.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 44) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (55, '45.png',NULL, NULL, '45.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 45) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (56, '46.png',NULL, NULL, '46.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 46) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (57, '47.png',NULL, NULL, '47.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 47) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (58, '48.png',NULL, NULL, '48.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 48) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (59, '49.png',NULL, NULL, '49.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 49) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (60, '50.png',NULL, NULL, '50.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 50) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (61, '51.png',NULL, NULL, '51.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 51) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (62, '52.png',NULL, NULL, '52.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 52) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (63, '53.png',NULL, NULL, '53.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 53) ON CONFLICT DO NOTHING;


--Pending
INSERT INTO uniride.ur_documents VALUES (64, '54.png','54.png','54.png','54.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 54) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (65, '55.png','55.png','55.png','55.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 55) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (66, '56.png','56.png','56.png','56.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 56) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (67, '57.png','57.png','57.png','57.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 57) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (68, '58.png','58.png','58.png','58.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 58) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (69, '59.png','59.png','59.png','59.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 59) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (70, '60.png','60.png','60.png','60.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 60) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (71, '61.png','61.png','61.png','61.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 61) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (72, '62.png','62.png','62.png','62.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 62) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (73, '63.png','63.png','63.png','63.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 63) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (74, '64.png','64.png','64.png','64.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 64) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (75, '65.png','65.png','65.png','65.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 65) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (76, '66.png','66.png','66.png','66.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 66) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (77, '67.png','67.png','67.png','67.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 67) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (78, '68.png','68.png','68.png','68.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 68) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (79, '69.png','69.png','69.png','69.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 69) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (70, '70.png','70.png','70.png','70.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 70) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (71, '71.png','71.png','71.png','71.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 71) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (72, '72.png','72.png','72.png','72.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 72) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_documents VALUES (73, '73.png','73.png','73.png','73.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 73) ON CONFLICT DO NOTHING;
--
-- TOC entry 3471 (class 0 OID 32875)
-- Dependencies: 229
-- Data for Name: ur_trip; Type: TABLE DATA; Schema: uniride; Owner: rayan
--
INSERT INTO uniride.ur_trip VALUES (1, 2, '2024-01-05 18:22:15.730821', '2024-01-11 22:30:00', 1, 2.00, 2, 3, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (2, 2, '2024-01-05 18:22:15.730821', '2023-12-15 09:00:00', 2, 2.00, 2, 4, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (3, 3, '2024-01-05 18:29:32.782706', '2024-01-19 09:00:00', 2, 0.00, 1, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (8, 1, '2024-01-08 15:02:05.957915', '2024-01-09 11:03:00', 1, 0.00, 2, 9, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (9, 4, '2024-01-15 12:15:21.046153', '2024-01-24 10:00:00', 1, 0.00, 5, 3, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (10, 4, '2024-01-15 12:44:01.498131', '2024-12-27 09:00:00', 1, 0.00, 4, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (11, 3, '2024-01-15 13:36:21.56982', '2024-01-15 09:00:00', 1, 0.00, 3, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (12, 4, '2024-01-15 13:39:29.195312', '2024-01-14 09:00:00', 1, 0.00, 10, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (13, 3, '2024-01-15 13:42:10.464354', '2024-01-15 09:00:00', 1, 0.00, 10, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (14, 3, '2024-01-15 13:42:10.464354', '2024-01-16 09:00:00', 2, 0.00, 10, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (15, 3, '2024-01-15 13:42:10.464354', '2024-01-17 09:00:00', 3, 0.00, 10, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (16, 3, '2024-01-15 13:44:14.485241', '2024-01-15 09:00:00', 1, 0.00, 10, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (17, 3, '2024-01-15 13:44:14.485241', '2024-01-16 09:00:00', 2, 0.00, 10, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (18, 3, '2024-01-15 13:44:14.485241', '2024-01-19 09:00:00', 1, 0.00, 10, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (20, 3, '2024-01-15 13:48:36.55752', '2024-01-15 09:00:00', 1, 0.00, 6, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (21, 3, '2024-01-15 13:48:36.55752', '2024-01-22 09:00:00', 1, 0.00, 7, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (22, 3, '2024-01-15 13:49:54.237558', '2024-01-15 09:00:00', 1, 0.00, 9, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (23, 3, '2024-01-15 13:49:54.237558', '2024-01-16 09:00:00', 1, 0.00, 3, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (24, 3, '2024-01-15 13:49:54.237558', '2024-01-22 09:00:00', 1, 0.00, 4, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (25, 3, '2024-01-15 13:49:54.237558', '2024-01-23 09:00:00', 3, 0.00, 4, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (28, 3, '2024-01-15 14:06:57.554197', '2024-01-15 09:00:00', 1, 0.00, 4, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (29, 3, '2024-01-15 14:06:57.554197', '2024-01-16 09:00:00', 1, 0.00, 4, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (30, 0, '2024-01-15 14:10:10.590529', '2024-01-29 09:00:00', 2, 0.00, 4, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (31, 0, '2024-01-15 14:10:10.590529', '2024-01-30 09:00:00', 1, 0.00, 4, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (32, 1, '2024-01-15 15:15:20.338233', '2024-01-29 09:00:00', 1, 0.00, 4, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (37, 3, '2024-01-15 15:21:13.546372', '2024-01-22 10:00:36', 1, 0.00, 4, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (38, 3, '2024-01-15 15:21:13.546372', '2024-01-29 10:00:36', 2, 0.00, 4, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (39, 3, '2024-01-15 15:21:13.546372', '2024-02-05 10:00:36', 3, 0.00, 4, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (40, 3, '2024-01-15 15:21:13.546372', '2024-02-12 10:00:36', 3, 0.00, 4, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (41, 3, '2024-01-15 15:21:13.546372', '2024-02-19 10:00:36', 2, 0.00, 4, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (42, 1, '2024-01-15 15:25:07.460141', '2024-01-17 17:00:00', 1, 0.00,2, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (43, 1, '2024-01-15 15:25:20.167906', '2024-01-17 09:00:00', 1, 0.00,2, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (44, 1, '2024-01-15 15:32:05.749117', '2024-01-17 10:00:00', 2, 0.00,2, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (45, 1, '2024-01-15 15:36:52.844046', '2024-01-15 10:00:00', 1, 0.00,2, 1, 2, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (46, 3, '2024-01-15 15:43:24.408415', '2024-01-15 11:00:36', 1, 0.00,2, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (47, 3, '2024-01-15 15:43:24.408415', '2024-01-22 11:00:36', 1, 0.00,2, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (48, 3, '2024-01-15 15:43:24.408415', '2024-01-29 11:00:36', 3, 0.00,2, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (49, 3, '2024-01-15 15:43:24.408415', '2024-02-05 11:00:36', 2, 0.00,2, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (50, 3, '2024-01-15 15:43:24.408415', '2024-02-12 11:00:36', 1, 0.00,2, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (51, 3, '2024-01-15 15:43:24.408415', '2024-02-19 11:00:36', 1, 0.00,2, 5, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (52, 1, '2024-01-15 19:18:00.114493', '2024-01-15 01:17:37', 1, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (53, 4, '2024-01-15 21:39:44.500482', '2024-01-15 08:00:00', 1, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (54, 4, '2024-01-15 21:39:44.500482', '2024-01-16 08:00:00', 1, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (55, 4, '2024-01-15 21:39:44.500482', '2024-01-18 08:00:00', 1, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (56, 4, '2024-01-15 21:39:44.500482', '2024-01-19 08:00:00', 1, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (57, 4, '2024-01-15 21:39:44.500482', '2024-01-22 08:00:00', 3, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (58, 4, '2024-01-15 21:39:44.500482', '2024-01-23 08:00:00', 2, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (59, 4, '2024-01-15 21:39:44.500482', '2024-01-25 08:00:00', 1, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (60, 4, '2024-01-15 21:39:44.500482', '2024-01-26 08:00:00', 1, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_trip VALUES (61, 4, '2024-01-15 21:39:44.500482', '2024-01-29 08:00:00', 1, 0.00, 2, 11, 1, 1.00) ON CONFLICT DO NOTHING;

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
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (167, 'Offre de Conversationbd', 'Prêt à discuter.', 1) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (169, 'Prêt à Partager', 'Partage d''extras.', 1) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (174, 'SUPER MEGA COOL', 'SUPER MEGA COOL', 1) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (162, 'Ambiance du Véhicule', 'Ambiance chaleureuse et confortable.', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (164, 'Musique Sympaddd', 'Playlist accueillante.', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (168, 'Attitude Positive', 'Attitude positive.', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (170, 'Remerciements et Évaluationsdsdf', 'Exprime la gratitude.ddf', 2) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (179, 'en attente', 'SUPER MEGA COOL', NULL) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating_criteria OVERRIDING SYSTEM VALUE VALUES (166, 'Appréciation de la Musiqued', 'Aime la musique partagée.', NULL) ON CONFLICT DO NOTHING;


--
-- TOC entry 3477 (class 0 OID 1105940)
-- Dependencies: 235
-- Data for Name: ur_rating; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

--Notes conducteur
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (1, 5, 1, 2, 167) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (2, 3, 1, 3, 169) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (3, 1, 1, 42, 174) ON CONFLICT DO NOTHING;

INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (4, 2, 2, 2, 167) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (5, 5, 2, 3, 169) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (6, 4, 2, 43, 174) ON CONFLICT DO NOTHING;

INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (7, 2, 3, 2, 167) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (8, 3, 3, 3, 169) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (9, 1, 3, 45, 174) ON CONFLICT DO NOTHING;

INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (10, 3, 4, 2, 167) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (11, 5, 4, 3, 169) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (12, 5, 4, 47, 174) ON CONFLICT DO NOTHING;

--Notes Passager
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (13, 5, 37, 2, 162) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (14, 3, 37, 3, 168) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (15, 1, 37, 42, 170) ON CONFLICT DO NOTHING;

INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (16, 2, 38, 2, 162) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (17, 5, 38, 3, 168) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (18, 4, 38, 43, 170) ON CONFLICT DO NOTHING;

INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (19, 2, 39, 2, 162) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (20, 3, 39, 3, 168) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (21, 1, 39, 45, 170) ON CONFLICT DO NOTHING;

INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (22, 3, 40, 2, 162) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (23, 5, 40, 3, 164) ON CONFLICT DO NOTHING;
INSERT INTO uniride.ur_rating OVERRIDING SYSTEM VALUE VALUES (24, 5, 40, 47, 170) ON CONFLICT DO NOTHING;




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

INSERT INTO uniride.ur_vehicle VALUES (66, 'c3', 'CP-123-ER', 'FR', 'Bleu', 'Citroen', 2, '2024-01-08 14:02:42.103961', '2024-01-08 14:02:42.103961', 2) ON CONFLICT DO NOTHING;


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

