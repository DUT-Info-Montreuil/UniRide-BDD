--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1

-- Started on 2024-01-07 15:01:27 UTC

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
-- TOC entry 3439 (class 0 OID 32784)
-- Dependencies: 219
-- Data for Name: ur_address; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_address (a_id, a_street_number, a_street_name, a_city, a_postal_code, a_latitude, a_longitude, a_timestamp_modification) FROM stdin;
1	140	Rue de la Nouvelle France	Montreuil	93100	48.8625700000	2.4642050000	2024-01-05 18:22:15.730821
2	5	Rue Curial	Paris	75019	48.8899830000	2.3715060000	2024-01-05 18:22:15.730821
3	4	Rue des Cailloux	Clichy	92110	48.8957510000	2.3054130000	2024-01-05 18:22:15.730821
4	6	Rue des Cailloux	Clichy	92110	48.8957240000	2.3056710000	2024-01-05 18:22:15.730821
5	3	Rue des Cailloux	Clichy	92110	48.8960700000	2.3051650000	2024-01-05 18:29:31.578719
6	7	Boulevard Voltaire	Paris	75011	48.8662790000	2.3662120000	2024-01-06 15:08:35.992617
7	2	Rue Montmartre	Paris	75001	48.8633240000	2.3461010000	2024-01-06 15:35:15.147358
8	5	Allée Mansart	Noisy-le-Sec	93130	48.8871120000	2.4566540000	2024-01-06 21:36:10.723211
\.


--
-- TOC entry 3437 (class 0 OID 32775)
-- Dependencies: 217
-- Data for Name: ur_role; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_role (r_id, r_name, r_description, r_timestamp_addition, r_timestamp_modification) FROM stdin;
0	administrateur	Administrateur système avec des droits étendus pour gérer lapplication de covoiturage.	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821
1	driver	Conducteur autorisé à proposer des trajets et à conduire des passagers.	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821
2	passenger	Passager ayant la possibilité de rechercher et de réserver des trajets.	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821
3	pending	Utilisateur qui as pas validé ses documents.	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821
\.


--
-- TOC entry 3441 (class 0 OID 32794)
-- Dependencies: 221
-- Data for Name: ur_user; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_user (u_id, r_id, u_login, u_lastname, u_student_email, u_password, u_timestamp_creation, u_timestamp_modification, u_profile_picture, u_gender, u_firstname, u_phone_number, u_email_verified, u_status, u_description, u_home_address_id, u_work_address_id) FROM stdin;
47	3	fraise	FRAISE	fraise@iut.univ-paris8.fr	$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC	2024-01-05 20:44:59.310525	2024-01-05 20:44:59.310525	\N	H	fraise	0123456789	t	3		\N	\N
2	3	jdupont	Dupont	jdupont@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	M	Jean	0601122334	f	3	\N	\N	\N
3	3	smartin	Martin	smartin@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	F	Sophie	0609876543	f	3	\N	\N	\N
4	3	fperez	Perez	fperez@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	M	François	0605556667	f	3	\N	\N	\N
5	3	lpierre	Pierre	lpierre@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	F	Léa	0601112233	f	3	\N	\N	\N
6	3	rmartinez	Martinez	rmartinez@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	M	Rosa	0604445556	f	3	\N	\N	\N
7	3	pgarcia	Garcia	pgarcia@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	F	Pablo	0607778889	f	3	\N	\N	\N
8	3	adelacroix	Delacroix	adelacroix@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	M	Antoine	0601234567	f	3	\N	\N	\N
9	3	bthomas	Thomas	bthomas@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	F	Béatrice	0609876543	f	3	\N	\N	\N
11	3	hleclerc	Leclerc	hleclerc@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	F	Henri	0601112233	f	3	\N	\N	\N
10	1	gmoreau	Moreau	gmoreau@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	M	Gabrielle	0605556667	f	3	\N	\N	\N
12	2	jleroux	Le Roux	jleroux@iut.univ-paris.fr	$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO	2024-01-05 18:22:15.730821	2024-01-05 18:22:15.730821	\N	M	Julie	0609998887	f	3	\N	\N	\N
48	3	Driver	DeLaPlace	aybouazizz@iut.univ-paris8.fr	$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC	2024-01-05 20:54:11.653437	2024-01-05 20:54:11.653437	\N	H	maxime	0625365425	f	3		\N	\N
13	3	testtest	testtest	testtest@iut.univ-paris8.fr	$2b$12$CrXbxXB4ZQhZSxmI5/1KxusaDh8sUc7Z7FVgXel03jFxAAKcqwbwq	2024-01-05 18:27:39.809473	2024-01-05 18:27:39.809473	\N	H	testtest	0781787554	t	3	\N	\N	\N
1	3	fhmmgh	castex	syanklmdfffffffg@iut.univ-paris8.fr	$2b$12$CrXbxXB4ZQhZSxmI5/1KxusaDh8sUc7Z7FVgXel03jFxAAKcqwbwq	2024-01-05 18:22:00.595781	2024-01-05 18:22:00.595781	\N	H	jean	0781787554	t	3	\N	\N	\N
49	1	aybouaziz	Ayoub	aybouaziz@iut.univ-paris8.fr	$2b$12$CrXbxXB4ZQhZSxmI5/1Kxuv6mhtE6JP/LJtN1ZZarrRBb.L3052AC	2024-01-05 20:55:55.004476	2024-01-05 20:55:55.004476	\N	H	Koukane	0625365425	t	3		\N	\N
\.


--
-- TOC entry 3452 (class 0 OID 32925)
-- Dependencies: 232
-- Data for Name: ur_assign; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_assign (r_id, u_id) FROM stdin;
\.


--
-- TOC entry 3443 (class 0 OID 32826)
-- Dependencies: 223
-- Data for Name: ur_document_verification; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_document_verification (v_id, v_license_verified, v_id_card_verified, v_school_certificate_verified, v_insurance_verified, v_timestamp_modification, u_id, v_license_description, v_card_description, v_school_certificate_description, v_insurance_description) FROM stdin;
3	0	0	0	0	2024-01-05 20:44:59.930202	47				
2	-1	-1	-1	-1	2024-01-05 18:27:40.193474	13	dfjnjk;dbfhn	bz ta mere	document perimé	perimé
1	-1	-1	-1	-1	2024-01-05 18:22:01.008229	1	ddazdza		dzadzad	pas bon
4	1	0	0	0	2024-01-07 14:31:19.352033	49				
\.


--
-- TOC entry 3445 (class 0 OID 32843)
-- Dependencies: 225
-- Data for Name: ur_documents; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_documents (d_id, d_license, d_id_card, d_school_certificate, d_insurance, d_timestamp_addition, d_timestamp_modification, u_id) FROM stdin;
1	1.jpg	\N	\N	\N	2024-01-05 18:22:00.840604	2024-01-05 18:22:01.008229	1
2	13.jpg	\N	\N	\N	2024-01-05 18:27:40.039003	2024-01-05 18:27:40.193474	13
3	\N	\N	\N	\N	2024-01-05 20:44:59.930202	2024-01-05 20:44:59.930202	47
4	49.jpg	\N	\N	\N	2024-01-05 20:55:55.299011	2024-01-07 14:31:19.352033	49
\.


--
-- TOC entry 3449 (class 0 OID 32875)
-- Dependencies: 229
-- Data for Name: ur_trip; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_trip (t_id, t_total_passenger_count, t_timestamp_creation, t_timestamp_proposed, t_status, t_price, t_user_id, t_address_departure_id, t_address_arrival_id, t_initial_price) FROM stdin;
1	2	2024-01-05 18:22:15.730821	2023-12-15 09:00:00	1	2.00	2	3	1	1.00
2	2	2024-01-05 18:22:15.730821	2023-12-15 09:00:00	1	2.00	2	4	1	1.00
3	3	2024-01-05 18:29:32.782706	2024-01-19 09:00:00	1	0.00	12	5	1	1.00
4	3	2024-01-05 20:33:15.516314	2024-01-19 17:30:00	1	0.00	13	5	1	1.00
5	2	2024-01-06 15:08:37.244464	2024-01-19 08:32:00	1	0.00	47	6	1	1.00
6	4	2024-01-06 15:35:16.289226	2024-01-23 07:34:00	1	0.00	47	7	1	1.00
7	1	2024-01-06 21:36:11.686825	2024-01-12 09:36:00	1	0.00	49	8	1	1.00
\.


--
-- TOC entry 3453 (class 0 OID 32940)
-- Dependencies: 233
-- Data for Name: ur_join; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_join (u_id, t_id, r_accepted, r_passenger_count, r_date_requested) FROM stdin;
1	4	1	1	2024-01-05 20:34:32.911725
13	3	1	1	2024-01-05 20:25:07.379172
47	4	1	1	2024-01-06 13:39:05.430336
49	4	0	1	2024-01-06 14:22:35.480445
13	5	1	1	2024-01-06 15:11:02.438907
13	6	1	1	2024-01-06 15:36:55.787919
\.


--
-- TOC entry 3451 (class 0 OID 32900)
-- Dependencies: 231
-- Data for Name: ur_trip_validation; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_trip_validation (v_id, v_code, u_id, t_id, u_id_1) FROM stdin;
\.


--
-- TOC entry 3447 (class 0 OID 32859)
-- Dependencies: 227
-- Data for Name: ur_vehicle; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

COPY uniride.ur_vehicle (v_id, v_model, v_license_plate, v_country_license_plate, v_color, v_brand, v_total_places, v_timestamp_addition, v_timestamp_modification, u_id) FROM stdin;
33	C3	CP-123-ER	FR	bleu	Citroen	2	2024-01-06 20:27:45.078932	2024-01-06 20:27:45.078932	49
\.


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 218
-- Name: ur_address_a_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_address_a_id_seq', 8, true);


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 222
-- Name: ur_document_verification_v_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_document_verification_v_id_seq', 4, true);


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 224
-- Name: ur_documents_d_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_documents_d_id_seq', 4, true);


--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 216
-- Name: ur_role_r_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_role_r_id_seq', 1, false);


--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 228
-- Name: ur_trip_t_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_trip_t_id_seq', 7, true);


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 230
-- Name: ur_trip_validation_v_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_trip_validation_v_id_seq', 1, false);


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 220
-- Name: ur_user_u_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_user_u_id_seq', 49, true);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 226
-- Name: ur_vehicule_v_id_seq; Type: SEQUENCE SET; Schema: uniride; Owner: rayan
--

SELECT pg_catalog.setval('uniride.ur_vehicule_v_id_seq', 65, true);


-- Completed on 2024-01-07 15:01:31 UTC

--
-- PostgreSQL database dump complete
--

