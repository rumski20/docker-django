--
-- PostgreSQL database dump
--

-- Dumped from database version 8.4.22
-- Dumped by pg_dump version 9.1.24
-- Started on 2017-09-27 13:23:47 CDT

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 716 (class 1259 OID 30292985)
-- Dependencies: 56
-- Name: auth_glrimon; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_glrimon (
    name text NOT NULL
);


--
-- TOC entry 554 (class 1259 OID 30187504)
-- Dependencies: 9505 9506 9507 56
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    level integer DEFAULT 0,
    lft integer DEFAULT 0,
    rght integer DEFAULT 0,
    tree_id integer,
    parent_id integer
);


--
-- TOC entry 553 (class 1259 OID 30187502)
-- Dependencies: 554 56
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 9772 (class 0 OID 0)
-- Dependencies: 553
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 552 (class 1259 OID 30187489)
-- Dependencies: 56
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 551 (class 1259 OID 30187487)
-- Dependencies: 552 56
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 9773 (class 0 OID 0)
-- Dependencies: 551
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 562 (class 1259 OID 30187569)
-- Dependencies: 56
-- Name: auth_message; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_message (
    id integer NOT NULL,
    user_id integer NOT NULL,
    message text NOT NULL
);


--
-- TOC entry 561 (class 1259 OID 30187567)
-- Dependencies: 562 56
-- Name: auth_message_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 9774 (class 0 OID 0)
-- Dependencies: 561
-- Name: auth_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_message_id_seq OWNED BY auth_message.id;


--
-- TOC entry 550 (class 1259 OID 30187479)
-- Dependencies: 56
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- TOC entry 549 (class 1259 OID 30187477)
-- Dependencies: 550 56
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 9775 (class 0 OID 0)
-- Dependencies: 549
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 560 (class 1259 OID 30187549)
-- Dependencies: 56
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- TOC entry 558 (class 1259 OID 30187534)
-- Dependencies: 56
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- TOC entry 557 (class 1259 OID 30187532)
-- Dependencies: 558 56
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 9776 (class 0 OID 0)
-- Dependencies: 557
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 559 (class 1259 OID 30187547)
-- Dependencies: 560 56
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 9777 (class 0 OID 0)
-- Dependencies: 559
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 556 (class 1259 OID 30187519)
-- Dependencies: 56
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 555 (class 1259 OID 30187517)
-- Dependencies: 556 56
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 9778 (class 0 OID 0)
-- Dependencies: 555
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 564 (class 1259 OID 30187585)
-- Dependencies: 56
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- TOC entry 563 (class 1259 OID 30187583)
-- Dependencies: 564 56
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 9779 (class 0 OID 0)
-- Dependencies: 563
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 567 (class 1259 OID 30187608)
-- Dependencies: 56
-- Name: django_site; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


--
-- TOC entry 566 (class 1259 OID 30187606)
-- Dependencies: 567 56
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 9780 (class 0 OID 0)
-- Dependencies: 566
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- TOC entry 9504 (class 2604 OID 30187507)
-- Dependencies: 553 554 554
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 9503 (class 2604 OID 30187492)
-- Dependencies: 551 552 552
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 9511 (class 2604 OID 30187572)
-- Dependencies: 561 562 562
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_message ALTER COLUMN id SET DEFAULT nextval('auth_message_id_seq'::regclass);


--
-- TOC entry 9502 (class 2604 OID 30187482)
-- Dependencies: 549 550 550
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 9510 (class 2604 OID 30187552)
-- Dependencies: 559 560 560
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 9509 (class 2604 OID 30187537)
-- Dependencies: 557 558 558
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 9508 (class 2604 OID 30187522)
-- Dependencies: 555 556 556
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 9512 (class 2604 OID 30187588)
-- Dependencies: 563 564 564
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 9513 (class 2604 OID 30187611)
-- Dependencies: 566 567 567
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- TOC entry 9767 (class 0 OID 30292985)
-- Dependencies: 716 9768
-- Data for Name: auth_glrimon; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_glrimon (name) FROM stdin;
BrentMurry
RyanArcher
NickDanz
CarlRuetz
ValBrady
AlanSteinman
RobertHowe
JosephGathman
JohnSchneider
ThomasOdonnell
AshleyMoerke
GenericTest
RichAxler
GLRIMonTest
TerryBrown
DonUzarski
DougWilcox
MatCooper
DeborahClark
JanCiborowski
PegBostwick
IanDavison
ThomasGehring
GaryLamberti
GeraldNiemi
GregGrabas
LucindaJohnson
\.


--
-- TOC entry 9754 (class 0 OID 30187504)
-- Dependencies: 554 9768
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group (id, name, level, lft, rght, tree_id, parent_id) FROM stdin;
11	glrimon_veg_editor	1	11	13	9	15
20	glrimon_view_fish_qa	0	0	0	\N	\N
21	glrimon_view_all_fish	0	0	0	\N	\N
15	glrimon_all_editor	0	1	14	9	\N
1	ggl_editors	0	0	2	1	\N
6	glrimon_fieldcrew	2	18	20	14	2
5	glrimon_cms	1	13	15	14	12
17	glrimon_view_veg_qa	2	-7	-6	5	16
19	glrimon_view_bird_qa	0	0	0	\N	\N
3	glrimon_view_all_all	0	6	-4	5	\N
16	glrimon_view_all_qa	1	-8	-5	5	3
14	glrimon_view_all_veg	1	8	-9	5	3
2	glrimon_pi	1	16	21	14	12
10	glrimon_bird_editor	1	5	7	9	15
8	glrimon_amphib_editor	1	2	4	9	15
4	glrimon_marker	0	3	5	3	\N
7	mnbba_fieldcrew	0	6	8	8	\N
13	glrimon_query_editor	0	12	14	15	\N
22	glrimon_bug_editor	0	0	0	\N	\N
9	glrimon_fishbug_editor	1	8	10	9	15
12	glrimon_admin	0	11	22	14	\N
18	glrig2_fishbug_editor	0	0	0	\N	\N
\.


--
-- TOC entry 9781 (class 0 OID 0)
-- Dependencies: 553
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_id_seq', 22, true);


--
-- TOC entry 9752 (class 0 OID 30187489)
-- Dependencies: 552 9768
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
782	21	1009
783	15	353
784	15	344
785	15	542
786	15	347
787	15	392
788	15	317
789	15	543
790	15	314
791	15	284
792	15	544
793	15	930
794	15	302
795	15	545
796	15	929
797	15	299
798	15	928
799	3	543
800	3	930
801	3	929
802	3	928
803	14	928
804	2	544
805	2	930
806	2	545
807	2	929
808	2	542
809	2	928
810	2	543
811	2	221
812	2	259
813	2	219
814	2	231
815	2	254
1018	12	541
1019	12	542
1020	12	543
1021	12	544
1022	12	545
1023	12	64
1024	12	65
1025	12	66
1026	12	67
1027	12	68
1028	12	69
1029	12	70
1030	12	71
1031	12	72
1032	12	73
1033	12	74
1034	12	75
1035	12	76
1036	12	77
1037	12	78
1038	12	79
1039	12	80
1040	12	81
1041	12	82
1042	12	83
1043	12	84
1044	12	85
1045	12	86
1046	12	87
1047	12	88
1048	12	89
1049	12	90
1050	12	91
1051	12	92
1052	12	93
1053	12	155
1054	12	156
1055	12	157
1056	12	158
1057	12	159
1058	12	160
1059	12	161
1060	12	162
1061	12	163
1062	12	164
1063	12	165
1064	12	166
1065	12	167
1066	12	168
1067	12	169
1068	12	170
1069	12	171
1070	12	172
1071	12	173
1072	12	174
1073	12	175
1074	12	176
1075	12	177
1076	12	178
1077	12	179
1078	12	180
1079	12	181
1080	12	182
1081	12	183
1082	12	184
1083	12	218
1084	12	219
1085	12	221
1086	12	231
1087	12	251
1088	12	254
1089	12	259
1090	12	284
1091	12	299
1092	12	302
1093	12	314
1094	12	317
1095	12	344
1096	12	347
1097	12	353
1098	12	392
1099	12	928
1100	12	929
1101	12	930
1102	12	1009
1103	12	502
1104	12	503
1105	12	511
1106	18	794
1107	18	812
1108	18	797
1109	18	830
903	13	544
904	13	930
905	13	545
906	13	929
907	13	542
908	13	928
909	13	543
910	13	221
911	11	928
562	15	812
563	11	317
564	11	543
565	11	314
566	20	1009
567	21	542
568	1	88
569	1	89
570	1	90
571	1	76
572	1	77
573	1	78
574	1	67
575	1	68
576	1	69
577	1	70
578	1	71
579	1	72
580	1	73
581	1	74
582	1	75
583	1	79
584	1	80
585	1	81
586	1	82
587	1	83
588	1	84
589	1	85
590	1	86
591	1	87
592	1	64
593	1	65
594	1	66
595	1	91
596	1	92
597	1	93
598	1	13
599	1	14
600	1	15
601	1	103
602	1	104
603	1	105
604	1	112
605	1	113
606	1	114
607	1	100
608	1	101
609	1	102
610	1	34
611	1	35
612	1	36
613	1	37
614	1	38
615	1	39
616	1	58
617	1	59
618	1	60
619	1	61
620	1	62
621	1	63
622	1	25
623	1	26
624	1	27
625	1	43
626	1	44
627	1	45
628	1	52
629	1	53
630	1	54
631	1	31
632	1	32
633	1	33
634	1	55
635	1	56
636	1	57
637	1	49
638	1	50
639	1	51
640	1	40
641	1	41
642	1	42
643	1	46
644	1	47
645	1	48
646	1	28
647	1	29
648	1	30
649	1	97
650	1	98
651	1	99
652	1	16
653	1	17
654	1	18
655	1	115
656	1	116
657	1	117
658	1	133
659	1	134
660	1	135
661	1	124
662	1	125
663	1	126
664	1	130
665	1	131
666	1	132
667	1	118
668	1	119
669	1	120
670	1	121
671	1	122
672	1	123
673	1	127
674	1	128
675	1	129
676	1	19
677	1	20
678	1	21
679	1	106
680	1	107
681	1	108
682	1	109
683	1	110
684	1	111
685	1	94
686	1	95
687	1	96
688	6	259
689	6	219
690	6	231
691	6	221
692	6	254
693	5	88
694	5	179
695	5	89
696	5	180
697	5	90
698	5	181
699	5	76
700	5	167
701	5	77
702	5	168
703	5	78
704	5	169
705	5	67
706	5	158
707	5	68
708	5	159
709	5	69
710	5	160
711	5	70
712	5	161
713	5	71
714	5	162
715	5	72
716	5	163
717	5	164
718	5	73
719	5	165
720	5	74
721	5	166
722	5	75
723	5	79
724	5	170
725	5	80
726	5	171
727	5	81
728	5	172
729	5	82
730	5	173
731	5	83
732	5	174
733	5	84
734	5	175
735	5	176
736	5	85
737	5	177
738	5	86
739	5	178
740	5	87
741	5	155
742	5	64
743	5	156
744	5	65
745	5	157
746	5	66
747	5	182
748	5	91
749	5	183
750	5	92
751	5	184
752	5	93
754	17	928
755	19	929
756	3	544
757	3	545
758	3	542
759	3	221
760	16	930
761	16	929
762	16	928
763	14	543
764	2	218
765	10	302
766	10	545
767	10	929
768	10	299
769	8	284
770	8	544
771	8	930
772	7	259
773	13	502
774	13	503
775	13	511
776	13	541
912	15	1009
915	22	1001
916	22	995
917	22	989
918	22	998
1011	9	353
1012	9	392
1013	9	1009
1014	9	344
1015	9	857
1016	9	347
1017	9	542
\.


--
-- TOC entry 9782 (class 0 OID 0)
-- Dependencies: 551
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1109, true);


--
-- TOC entry 9762 (class 0 OID 30187569)
-- Dependencies: 562 9768
-- Data for Name: auth_message; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_message (id, user_id, message) FROM stdin;
\.


--
-- TOC entry 9783 (class 0 OID 0)
-- Dependencies: 561
-- Name: auth_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_message_id_seq', 1, false);


--
-- TOC entry 9750 (class 0 OID 30187479)
-- Dependencies: 550 9768
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add message	4	add_message
11	Can change message	4	change_message
12	Can delete message	4	delete_message
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add site	7	add_site
20	Can change site	7	change_site
21	Can delete site	7	delete_site
22	Can add log entry	10	add_logentry
23	Can change log entry	10	change_logentry
24	Can delete log entry	10	delete_logentry
25	Can add lake	12	add_lake
26	Can change lake	12	change_lake
27	Can delete lake	12	delete_lake
28	Can add taxa	13	add_taxa
29	Can change taxa	13	change_taxa
30	Can delete taxa	13	delete_taxa
31	Can add shape	11	add_shape
32	Can change shape	11	change_shape
33	Can delete shape	11	delete_shape
34	Can add attr_class	14	add_attr_class
35	Can change attr_class	14	change_attr_class
36	Can delete attr_class	14	delete_attr_class
37	Can add attr_type	15	add_attr_type
38	Can change attr_type	15	change_attr_type
39	Can delete attr_type	15	delete_attr_type
40	Can add source	16	add_source
41	Can change source	16	change_source
42	Can delete source	16	delete_source
43	Can add location	17	add_location
44	Can change location	17	change_location
45	Can delete location	17	delete_location
46	Can add source_field	18	add_source_field
47	Can change source_field	18	change_source_field
48	Can delete source_field	18	delete_source_field
49	Can add shape_type	19	add_shape_type
50	Can change shape_type	19	change_shape_type
51	Can delete shape_type	19	delete_shape_type
52	Can add observation	20	add_observation
53	Can change observation	20	change_observation
54	Can delete observation	20	delete_observation
55	Can add shape_link	21	add_shape_link
56	Can change shape_link	21	change_shape_link
57	Can delete shape_link	21	delete_shape_link
58	Can add context	8	add_context
59	Can change context	8	change_context
60	Can delete context	8	delete_context
61	Can add context_link	9	add_context_link
62	Can change context_link	9	change_context_link
63	Can delete context_link	9	delete_context_link
64	Can add placeholder	22	add_placeholder
65	Can change placeholder	22	change_placeholder
66	Can delete placeholder	22	delete_placeholder
67	Can add page	23	add_page
68	Can change page	23	change_page
69	Can delete page	23	delete_page
70	Can add PageModerator	24	add_pagemoderator
71	Can change PageModerator	24	change_pagemoderator
72	Can delete PageModerator	24	delete_pagemoderator
73	Can add Page moderator state	25	add_pagemoderatorstate
74	Can change Page moderator state	25	change_pagemoderatorstate
75	Can delete Page moderator state	25	delete_pagemoderatorstate
76	Can add Page global permission	26	add_globalpagepermission
77	Can change Page global permission	26	change_globalpagepermission
78	Can delete Page global permission	26	delete_globalpagepermission
79	Can add Page permission	27	add_pagepermission
80	Can change Page permission	27	change_pagepermission
81	Can delete Page permission	27	delete_pagepermission
82	Can add User (page)	28	add_pageuser
83	Can change User (page)	28	change_pageuser
84	Can delete User (page)	28	delete_pageuser
85	Can add User group (page)	29	add_pageusergroup
86	Can change User group (page)	29	change_pageusergroup
87	Can delete User group (page)	29	delete_pageusergroup
88	Can add cms plugin	30	add_cmsplugin
89	Can change cms plugin	30	change_cmsplugin
90	Can delete cms plugin	30	delete_cmsplugin
91	Can add title	31	add_title
92	Can change title	31	change_title
93	Can delete title	31	delete_title
94	Can add text	32	add_text
95	Can change text	32	change_text
96	Can delete text	32	delete_text
97	Can add picture	33	add_picture
98	Can change picture	33	change_picture
99	Can delete picture	33	delete_picture
100	Can add link	34	add_link
101	Can change link	34	change_link
102	Can delete link	34	delete_link
103	Can add file	35	add_file
104	Can change file	35	change_file
105	Can delete file	35	delete_file
106	Can add Snippet	36	add_snippet
107	Can change Snippet	36	change_snippet
108	Can delete Snippet	36	delete_snippet
109	Can add Snippet	37	add_snippetptr
110	Can change Snippet	37	change_snippetptr
111	Can delete Snippet	37	delete_snippetptr
112	Can add google map	38	add_googlemap
113	Can change google map	38	change_googlemap
114	Can delete google map	38	delete_googlemap
115	Can add dataset	40	add_dataset
116	Can change dataset	40	change_dataset
117	Can delete dataset	40	delete_dataset
118	Can add investigator	41	add_investigator
119	Can change investigator	41	change_investigator
120	Can delete investigator	41	delete_investigator
121	Can add site	42	add_site
122	Can change site	42	change_site
123	Can delete site	42	delete_site
124	Can add indicator	43	add_indicator
125	Can change indicator	43	change_indicator
126	Can delete indicator	43	delete_indicator
127	Can add site_indicator	44	add_site_indicator
128	Can change site_indicator	44	change_site_indicator
129	Can delete site_indicator	44	delete_site_indicator
130	Can add investgator_indicator	45	add_investgator_indicator
131	Can change investgator_indicator	45	change_investgator_indicator
132	Can delete investgator_indicator	45	delete_investgator_indicator
133	Can add dataset_indicator	46	add_dataset_indicator
134	Can change dataset_indicator	46	change_dataset_indicator
135	Can delete dataset_indicator	46	delete_dataset_indicator
136	Can delete log entry	8	delete_logentry
137	Can change log entry	8	change_logentry
138	Can add log entry	8	add_logentry
139	Can change tagged item	17	change_taggeditem
140	Can add tag	16	add_tag
141	Can delete tagged item	17	delete_taggeditem
142	Can delete tag	16	delete_tag
143	Can add tagged item	17	add_taggeditem
144	Can change tag	16	change_tag
145	Can change site	19	change_site
146	Can delete site	19	delete_site
147	Can add site	19	add_site
148	Can view information about sites	19	view_site
149	Can add comment	20	add_comment
150	Can change comment	20	change_comment
151	Can delete comment	20	delete_comment
152	Can add placeholder	21	add_placeholder
153	Can change placeholder	21	change_placeholder
154	Can delete placeholder	21	delete_placeholder
155	Can add page	22	add_page
156	Can change page	22	change_page
157	Can delete page	22	delete_page
158	Can add PageModerator	23	add_pagemoderator
159	Can change PageModerator	23	change_pagemoderator
160	Can delete PageModerator	23	delete_pagemoderator
161	Can add Page moderator state	24	add_pagemoderatorstate
162	Can change Page moderator state	24	change_pagemoderatorstate
163	Can delete Page moderator state	24	delete_pagemoderatorstate
164	Can add Page global permission	25	add_globalpagepermission
165	Can change Page global permission	25	change_globalpagepermission
166	Can delete Page global permission	25	delete_globalpagepermission
167	Can add Page permission	26	add_pagepermission
168	Can change Page permission	26	change_pagepermission
169	Can delete Page permission	26	delete_pagepermission
170	Can add User (page)	27	add_pageuser
171	Can change User (page)	27	change_pageuser
172	Can delete User (page)	27	delete_pageuser
173	Can add User group (page)	28	add_pageusergroup
174	Can change User group (page)	28	change_pageusergroup
175	Can delete User group (page)	28	delete_pageusergroup
176	Can add cms plugin	29	add_cmsplugin
177	Can change cms plugin	29	change_cmsplugin
178	Can delete cms plugin	29	delete_cmsplugin
179	Can add title	30	add_title
180	Can change title	30	change_title
181	Can delete title	30	delete_title
182	Can add text	31	add_text
183	Can change text	31	change_text
184	Can delete text	31	delete_text
185	Can add picture	32	add_picture
186	Can change picture	32	change_picture
187	Can delete picture	32	delete_picture
188	Can add link	33	add_link
189	Can change link	33	change_link
190	Can delete link	33	delete_link
191	Can add file	34	add_file
192	Can change file	34	change_file
193	Can delete file	34	delete_file
194	Can add Snippet	35	add_snippet
195	Can change Snippet	35	change_snippet
196	Can delete Snippet	35	delete_snippet
197	Can add Snippet	36	add_snippetptr
198	Can change Snippet	36	change_snippetptr
199	Can delete Snippet	36	delete_snippetptr
200	Can add google map	37	add_googlemap
201	Can change google map	37	change_googlemap
202	Can delete google map	37	delete_googlemap
203	Can add migration history	38	add_migrationhistory
204	Can change migration history	38	change_migrationhistory
205	Can delete migration history	38	delete_migrationhistory
206	Can add tag	48	add_tag
207	Can change tag	48	change_tag
208	Can delete tag	48	delete_tag
209	Can add tagged item	49	add_taggeditem
210	Can change tagged item	49	change_taggeditem
211	Can delete tagged item	49	delete_taggeditem
212	Can add cache key	50	add_cachekey
213	Can change cache key	50	change_cachekey
214	Can delete cache key	50	delete_cachekey
215	Can add migration history	51	add_migrationhistory
216	Can change migration history	51	change_migrationhistory
217	Can delete migration history	51	delete_migrationhistory
218	Can add site	52	add_site
219	Can change site	52	change_site
220	Can delete site	52	delete_site
221	Can view information about sites	52	view_site
222	Can add comment	53	add_comment
223	Can change comment	53	change_comment
224	Can delete comment	53	delete_comment
225	Can add re st field	54	add_restfield
226	Can change re st field	54	change_restfield
227	Can delete re st field	54	delete_restfield
228	Can add site	55	add_site
229	Can change site	55	change_site
230	Can delete site	55	delete_site
231	User can save edits	52	change_site_really
232	Can add record	56	add_record
233	Can change record	56	change_record
234	Can delete record	56	delete_record
235	Can add record_obs	57	add_record_obs
236	Can change record_obs	57	change_record_obs
237	Can delete record_obs	57	delete_record_obs
238	Can add inherit page placeholder	58	add_inheritpageplaceholder
239	Can change inherit page placeholder	58	change_inheritpageplaceholder
240	Can delete inherit page placeholder	58	delete_inheritpageplaceholder
241	Can add workflow	59	add_workflow
242	Can change workflow	59	change_workflow
243	Can delete workflow	59	delete_workflow
244	Can add team	60	add_team
245	Can change team	60	change_team
246	Can delete team	60	delete_team
247	Can add taxa	61	add_taxa
248	Can change taxa	61	change_taxa
249	Can delete taxa	61	delete_taxa
250	Can add taxa_team	62	add_taxa_team
251	Can change taxa_team	62	change_taxa_team
252	Can delete taxa_team	62	delete_taxa_team
253	Can add site_status	63	add_site_status
254	Can change site_status	63	change_site_status
255	Can delete site_status	63	delete_site_status
1006	Can add fi_trait_group_value_link	311	add_fi_trait_group_value_link
1007	Can change fi_trait_group_value_link	311	change_fi_trait_group_value_link
259	Can add gps_upload	65	add_gps_upload
260	Can change gps_upload	65	change_gps_upload
261	Can delete gps_upload	65	delete_gps_upload
262	Can add gps_file	66	add_gps_file
263	Can change gps_file	66	change_gps_file
264	Can delete gps_file	66	delete_gps_file
265	Can add a_callcode	67	add_a_callcode
266	Can change a_callcode	67	change_a_callcode
267	Can delete a_callcode	67	delete_a_callcode
268	Can add ab_distance	68	add_ab_distance
269	Can change ab_distance	68	change_ab_distance
270	Can delete ab_distance	68	delete_ab_distance
271	Can add ab_wind	69	add_ab_wind
272	Can change ab_wind	69	change_ab_wind
273	Can delete ab_wind	69	delete_ab_wind
274	Can add a_taxa	70	add_a_taxa
275	Can change a_taxa	70	change_a_taxa
276	Can delete a_taxa	70	delete_a_taxa
277	Can add ab_weather	71	add_ab_weather
278	Can change ab_weather	71	change_ab_weather
279	Can delete ab_weather	71	delete_ab_weather
280	Can add ab_noise	72	add_ab_noise
281	Can change ab_noise	72	change_ab_noise
282	Can delete ab_noise	72	delete_ab_noise
283	Can add a_point	73	add_a_point
284	Can change a_point	73	change_a_point
285	Can delete a_point	73	delete_a_point
286	Can add a_observation	74	add_a_observation
287	Can change a_observation	74	change_a_observation
288	Can delete a_observation	74	delete_a_observation
289	Can add g_timezone	75	add_g_timezone
290	Can change g_timezone	75	change_g_timezone
291	Can delete g_timezone	75	delete_g_timezone
292	Can add b_behavior	76	add_b_behavior
293	Can change b_behavior	76	change_b_behavior
294	Can delete b_behavior	76	delete_b_behavior
295	Can add b_breeding	77	add_b_breeding
296	Can change b_breeding	77	change_b_breeding
297	Can delete b_breeding	77	delete_b_breeding
298	Can add b_taxa	78	add_b_taxa
299	Can change b_taxa	78	change_b_taxa
300	Can delete b_taxa	78	delete_b_taxa
301	Can add b_point	79	add_b_point
302	Can change b_point	79	change_b_point
303	Can delete b_point	79	delete_b_point
304	Can add b_observation	80	add_b_observation
305	Can change b_observation	80	change_b_observation
306	Can delete b_observation	80	delete_b_observation
307	Can add b_aerial	81	add_b_aerial
308	Can change b_aerial	81	change_b_aerial
309	Can delete b_aerial	81	delete_b_aerial
1008	Can delete fi_trait_group_value_link	311	delete_fi_trait_group_value_link
313	Can add v_taxa	83	add_v_taxa
314	Can change v_taxa	83	change_v_taxa
315	Can delete v_taxa	83	delete_v_taxa
316	Can add v_sampling	84	add_v_sampling
317	Can change v_sampling	84	change_v_sampling
318	Can delete v_sampling	84	delete_v_sampling
319	Can add v_transect	85	add_v_transect
320	Can change v_transect	85	change_v_transect
321	Can delete v_transect	85	delete_v_transect
322	Can add v_substrate	86	add_v_substrate
323	Can change v_substrate	86	change_v_substrate
324	Can delete v_substrate	86	delete_v_substrate
325	Can add v_point	87	add_v_point
326	Can change v_point	87	change_v_point
327	Can delete v_point	87	delete_v_point
328	Can add v_observation	88	add_v_observation
329	Can change v_observation	88	change_v_observation
330	Can delete v_observation	88	delete_v_observation
331	Can add v_source	89	add_v_source
332	Can change v_source	89	change_v_source
333	Can delete v_source	89	delete_v_source
334	Can add fi_hydro_connect	90	add_fi_hydro_connect
335	Can change fi_hydro_connect	90	change_fi_hydro_connect
336	Can delete fi_hydro_connect	90	delete_fi_hydro_connect
337	Can add fi_veg_zone_struct	91	add_fi_veg_zone_struct
338	Can change fi_veg_zone_struct	91	change_fi_veg_zone_struct
339	Can delete fi_veg_zone_struct	91	delete_fi_veg_zone_struct
340	Can add fi_braiding_index	92	add_fi_braiding_index
341	Can change fi_braiding_index	92	change_fi_braiding_index
342	Can delete fi_braiding_index	92	delete_fi_braiding_index
343	Can add fi_sampling	93	add_fi_sampling
344	Can change fi_sampling	93	change_fi_sampling
345	Can delete fi_sampling	93	delete_fi_sampling
346	Can add fi_shore_struct	94	add_fi_shore_struct
347	Can change fi_shore_struct	94	change_fi_shore_struct
348	Can delete fi_shore_struct	94	delete_fi_shore_struct
349	Can add fi_sampling_shore_struct	95	add_fi_sampling_shore_struct
350	Can change fi_sampling_shore_struct	95	change_fi_sampling_shore_struct
351	Can delete fi_sampling_shore_struct	95	delete_fi_sampling_shore_struct
352	Can add fi_lc_nearshore	96	add_fi_lc_nearshore
353	Can change fi_lc_nearshore	96	change_fi_lc_nearshore
354	Can delete fi_lc_nearshore	96	delete_fi_lc_nearshore
355	Can add fi_sampling_lc_nearshore	97	add_fi_sampling_lc_nearshore
356	Can change fi_sampling_lc_nearshore	97	change_fi_sampling_lc_nearshore
357	Can delete fi_sampling_lc_nearshore	97	delete_fi_sampling_lc_nearshore
358	Can add fi_water_level	98	add_fi_water_level
359	Can change fi_water_level	98	change_fi_water_level
360	Can delete fi_water_level	98	delete_fi_water_level
364	Can add fi_hab_types	100	add_fi_hab_types
365	Can change fi_hab_types	100	change_fi_hab_types
366	Can delete fi_hab_types	100	delete_fi_hab_types
370	Can add fi_recreation	102	add_fi_recreation
371	Can change fi_recreation	102	change_fi_recreation
372	Can delete fi_recreation	102	delete_fi_recreation
376	Can add fi_disturbance	104	add_fi_disturbance
377	Can change fi_disturbance	104	change_fi_disturbance
378	Can delete fi_disturbance	104	delete_fi_disturbance
382	Can add fi_pollution	106	add_fi_pollution
383	Can change fi_pollution	106	change_fi_pollution
384	Can delete fi_pollution	106	delete_fi_pollution
388	Can add fi_sampling_disturbance	108	add_fi_sampling_disturbance
389	Can change fi_sampling_disturbance	108	change_fi_sampling_disturbance
390	Can delete fi_sampling_disturbance	108	delete_fi_sampling_disturbance
391	Can add fi_zone_veg	109	add_fi_zone_veg
392	Can change fi_zone_veg	109	change_fi_zone_veg
393	Can delete fi_zone_veg	109	delete_fi_zone_veg
394	Can add fi_sampling_zone	110	add_fi_sampling_zone
395	Can change fi_sampling_zone	110	change_fi_sampling_zone
396	Can delete fi_sampling_zone	110	delete_fi_sampling_zone
397	Can add fi_zone_fyke	111	add_fi_zone_fyke
398	Can change fi_zone_fyke	111	change_fi_zone_fyke
399	Can delete fi_zone_fyke	111	delete_fi_zone_fyke
400	Can add fi_zone_habitat	112	add_fi_zone_habitat
401	Can change fi_zone_habitat	112	change_fi_zone_habitat
402	Can delete fi_zone_habitat	112	delete_fi_zone_habitat
403	Can add fi_zone_invert	113	add_fi_zone_invert
404	Can change fi_zone_invert	113	change_fi_zone_invert
405	Can delete fi_zone_invert	113	delete_fi_zone_invert
406	Can add fi_zone_dom	114	add_fi_zone_dom
407	Can change fi_zone_dom	114	change_fi_zone_dom
408	Can delete fi_zone_dom	114	delete_fi_zone_dom
409	Can add fi_zone_wq	115	add_fi_zone_wq
410	Can change fi_zone_wq	115	change_fi_zone_wq
411	Can delete fi_zone_wq	115	delete_fi_zone_wq
412	Can add cluster	116	add_cluster
413	Can change cluster	116	change_cluster
414	Can delete cluster	116	delete_cluster
415	Can add township	117	add_township
416	Can change township	117	change_township
417	Can delete township	117	delete_township
418	Can add block	118	add_block
419	Can change block	118	change_block
420	Can delete block	118	delete_block
421	Can add distcode	119	add_distcode
422	Can change distcode	119	change_distcode
423	Can delete distcode	119	delete_distcode
424	Can add bba_evidence	120	add_bba_evidence
425	Can change bba_evidence	120	change_bba_evidence
426	Can delete bba_evidence	120	delete_bba_evidence
427	Can add mncode	121	add_mncode
428	Can change mncode	121	change_mncode
429	Can delete mncode	121	delete_mncode
430	Can add timecode	122	add_timecode
431	Can change timecode	122	change_timecode
432	Can delete timecode	122	delete_timecode
433	Can add typecode	123	add_typecode
434	Can change typecode	123	change_typecode
435	Can delete typecode	123	delete_typecode
436	Can add project	124	add_project
437	Can change project	124	change_project
438	Can delete project	124	delete_project
439	Can add coord_origin	125	add_coord_origin
440	Can change coord_origin	125	change_coord_origin
441	Can delete coord_origin	125	delete_coord_origin
442	Can add habcode	126	add_habcode
443	Can change habcode	126	change_habcode
444	Can delete habcode	126	delete_habcode
445	Can add noisecode	127	add_noisecode
446	Can change noisecode	127	change_noisecode
447	Can delete noisecode	127	delete_noisecode
448	Can add skycode	128	add_skycode
449	Can change skycode	128	change_skycode
450	Can delete skycode	128	delete_skycode
451	Can add windcode	129	add_windcode
452	Can change windcode	129	change_windcode
453	Can delete windcode	129	delete_windcode
454	Can add coord	130	add_coord
455	Can change coord	130	change_coord
456	Can delete coord	130	delete_coord
457	Can add point	131	add_point
458	Can change point	131	change_point
459	Can delete point	131	delete_point
460	Can add sampling_type	132	add_sampling_type
461	Can change sampling_type	132	change_sampling_type
462	Can delete sampling_type	132	delete_sampling_type
463	Can add sampling_status	133	add_sampling_status
464	Can change sampling_status	133	change_sampling_status
465	Can delete sampling_status	133	delete_sampling_status
466	Can add sampling	134	add_sampling
467	Can change sampling	134	change_sampling
468	Can delete sampling	134	delete_sampling
469	Can add birdobs	135	add_birdobs
470	Can change birdobs	135	change_birdobs
471	Can delete birdobs	135	delete_birdobs
472	Can add b_image	136	add_b_image
473	Can change b_image	136	change_b_image
474	Can delete b_image	136	delete_b_image
475	Can add f_taxa	137	add_f_taxa
476	Can change f_taxa	137	change_f_taxa
477	Can delete f_taxa	137	delete_f_taxa
478	Can add f_fish_obs	138	add_f_fish_obs
479	Can change f_fish_obs	138	change_f_fish_obs
480	Can delete f_fish_obs	138	delete_f_fish_obs
481	Can add f_fish_total	139	add_f_fish_total
482	Can change f_fish_total	139	change_f_fish_total
483	Can delete f_fish_total	139	delete_f_fish_total
484	Can add fi_zone_photo	140	add_fi_zone_photo
485	Can change fi_zone_photo	140	change_fi_zone_photo
486	Can delete fi_zone_photo	140	delete_fi_zone_photo
487	Can add fi_sampling_lc_photo	141	add_fi_sampling_lc_photo
488	Can change fi_sampling_lc_photo	141	change_fi_sampling_lc_photo
489	Can delete fi_sampling_lc_photo	141	delete_fi_sampling_lc_photo
490	Can add fi_substrate	142	add_fi_substrate
491	Can change fi_substrate	142	change_fi_substrate
492	Can delete fi_substrate	142	delete_fi_substrate
493	Can add fi_zone_sub_dom	143	add_fi_zone_sub_dom
494	Can change fi_zone_sub_dom	143	change_fi_zone_sub_dom
495	Can delete fi_zone_sub_dom	143	delete_fi_zone_sub_dom
496	Can add fi_zone_size	144	add_fi_zone_size
497	Can change fi_zone_size	144	change_fi_zone_size
498	Can delete fi_zone_size	144	delete_fi_zone_size
499	Can add fi_rep_wq	145	add_fi_rep_wq
500	Can change fi_rep_wq	145	change_fi_rep_wq
501	Can delete fi_rep_wq	145	delete_fi_rep_wq
502	Can add q_folder	146	add_q_folder
503	Can change q_folder	146	change_q_folder
504	Can delete q_folder	146	delete_q_folder
505	Can add q_folder_permission	147	add_q_folder_permission
506	Can change q_folder_permission	147	change_q_folder_permission
507	Can delete q_folder_permission	147	delete_q_folder_permission
508	Can add q_folder_ref	148	add_q_folder_ref
509	Can change q_folder_ref	148	change_q_folder_ref
510	Can delete q_folder_ref	148	delete_q_folder_ref
511	Can add q_query	149	add_q_query
512	Can change q_query	149	change_q_query
513	Can delete q_query	149	delete_q_query
514	Can add q_query_permission	150	add_q_query_permission
515	Can change q_query_permission	150	change_q_query_permission
516	Can delete q_query_permission	150	delete_q_query_permission
517	Can add q_query_ref	151	add_q_query_ref
518	Can change q_query_ref	151	change_q_query_ref
519	Can delete q_query_ref	151	delete_q_query_ref
520	Can add q_field	152	add_q_field
521	Can change q_field	152	change_q_field
522	Can delete q_field	152	delete_q_field
523	Can add b_iec_group	153	add_b_iec_group
524	Can change b_iec_group	153	change_b_iec_group
525	Can delete b_iec_group	153	delete_b_iec_group
526	Can add b_iec_member	154	add_b_iec_member
527	Can change b_iec_member	154	change_b_iec_member
528	Can delete b_iec_member	154	delete_b_iec_member
529	Can add fi_crew_code	155	add_fi_crew_code
530	Can change fi_crew_code	155	change_fi_crew_code
531	Can delete fi_crew_code	155	delete_fi_crew_code
532	Can add fi_zone_lab_wq	156	add_fi_zone_lab_wq
533	Can change fi_zone_lab_wq	156	change_fi_zone_lab_wq
534	Can delete fi_zone_lab_wq	156	delete_fi_zone_lab_wq
535	Can add user log	157	add_userlog
536	Can change user log	157	change_userlog
537	Can delete user log	157	delete_userlog
538	Can add del req	158	add_delreq
539	Can change del req	158	change_delreq
540	Can delete del req	158	delete_delreq
541	Can view query/folder viewers	149	view_viewers
542	Can view fi_sampling	93	view_fi_sampling
543	Can view v_sampling	84	view_v_sampling
544	Can view a_point	73	view_a_point
545	Can view b_point	79	view_b_point
546	Can add f_fish_photo	159	add_f_fish_photo
547	Can change f_fish_photo	159	change_f_fish_photo
548	Can delete f_fish_photo	159	delete_f_fish_photo
549	Can add asset	160	add_asset
550	Can change asset	160	change_asset
551	Can delete asset	160	delete_asset
552	Can add attr_type	161	add_attr_type
553	Can change attr_type	161	change_attr_type
554	Can delete attr_type	161	delete_attr_type
555	Can add bounds	162	add_bounds
556	Can change bounds	162	change_bounds
557	Can delete bounds	162	delete_bounds
558	Can add path	163	add_path
559	Can change path	163	change_path
560	Can delete path	163	delete_path
561	Can add attribute	164	add_attribute
562	Can change attribute	164	change_attribute
563	Can delete attribute	164	delete_attribute
564	Can add format	165	add_format
565	Can change format	165	change_format
566	Can delete format	165	delete_format
567	Can add geom_type	166	add_geom_type
568	Can change geom_type	166	change_geom_type
569	Can delete geom_type	166	delete_geom_type
570	Can add drive	167	add_drive
571	Can change drive	167	change_drive
572	Can delete drive	167	delete_drive
1009	Can view QA fish data	93	glrimon_view_fish_qa
1010	Can add fi_sample_stage	312	add_fi_sample_stage
1011	Can change fi_sample_stage	312	change_fi_sample_stage
1012	Can delete fi_sample_stage	312	delete_fi_sample_stage
1013	Can add fi_sample_stage_inst	313	add_fi_sample_stage_inst
1014	Can change fi_sample_stage_inst	313	change_fi_sample_stage_inst
1015	Can delete fi_sample_stage_inst	313	delete_fi_sample_stage_inst
1016	Can add fi_sample_location	314	add_fi_sample_location
1017	Can change fi_sample_location	314	change_fi_sample_location
1018	Can delete fi_sample_location	314	delete_fi_sample_location
1019	Can add f_invert_taxonomy	315	add_f_invert_taxonomy
1020	Can change f_invert_taxonomy	315	change_f_invert_taxonomy
1021	Can delete f_invert_taxonomy	315	delete_f_invert_taxonomy
1022	Can add brush_type	316	add_brush_type
1023	Can change brush_type	316	change_brush_type
1024	Can delete brush_type	316	delete_brush_type
1025	Can add phenomena	317	add_phenomena
1026	Can change phenomena	317	change_phenomena
1027	Can delete phenomena	317	delete_phenomena
1028	Can add brush	318	add_brush
1029	Can change brush	318	change_brush
1030	Can delete brush	318	delete_brush
1031	Can add timeshape	319	add_timeshape
1032	Can change timeshape	319	change_timeshape
597	Can add f_taxa	176	add_f_taxa
598	Can change f_taxa	176	change_f_taxa
599	Can delete f_taxa	176	delete_f_taxa
1033	Can delete timeshape	319	delete_timeshape
1034	Can add point	320	add_point
1035	Can change point	320	change_point
1036	Can delete point	320	delete_point
1037	Can add point_level	321	add_point_level
1038	Can change point_level	321	change_point_level
1039	Can delete point_level	321	delete_point_level
1040	Can add run	322	add_run
1041	Can change run	322	change_run
1042	Can delete run	322	delete_run
1043	Can add phenom_obs	323	add_phenom_obs
1044	Can change phenom_obs	323	change_phenom_obs
1045	Can delete phenom_obs	323	delete_phenom_obs
1046	Can add output_type	324	add_output_type
1047	Can change output_type	324	change_output_type
1048	Can delete output_type	324	delete_output_type
1049	Can add output_col	325	add_output_col
1050	Can change output_col	325	change_output_col
1051	Can delete output_col	325	delete_output_col
1052	Can add ws_blocks_ls_simp	326	add_ws_blocks_ls_simp
1053	Can change ws_blocks_ls_simp	326	change_ws_blocks_ls_simp
1054	Can delete ws_blocks_ls_simp	326	delete_ws_blocks_ls_simp
1055	Can add fi_pnt_rocks	327	add_fi_pnt_rocks
1056	Can change fi_pnt_rocks	327	change_fi_pnt_rocks
1057	Can delete fi_pnt_rocks	327	delete_fi_pnt_rocks
1058	Can add fi_pnt_rock_id	328	add_fi_pnt_rock_id
1059	Can change fi_pnt_rock_id	328	change_fi_pnt_rock_id
1060	Can delete fi_pnt_rock_id	328	delete_fi_pnt_rock_id
1061	Can add fi_hab_data	329	add_fi_hab_data
1062	Can change fi_hab_data	329	change_fi_hab_data
1063	Can delete fi_hab_data	329	delete_fi_hab_data
1064	Can add f_invert_taxa	330	add_f_invert_taxa
1065	Can change f_invert_taxa	330	change_f_invert_taxa
1066	Can delete f_invert_taxa	330	delete_f_invert_taxa
1067	Can add f_bug_obs	331	add_f_bug_obs
1068	Can change f_bug_obs	331	change_f_bug_obs
1069	Can delete f_bug_obs	331	delete_f_bug_obs
1070	Can add user_status	332	add_user_status
1071	Can change user_status	332	change_user_status
1072	Can delete user_status	332	delete_user_status
780	Can view page	23	view_page
781	Can add fi_braiding_index	237	add_fi_braiding_index
782	Can change fi_braiding_index	237	change_fi_braiding_index
783	Can delete fi_braiding_index	237	delete_fi_braiding_index
784	Can add fi_disturbance	238	add_fi_disturbance
785	Can change fi_disturbance	238	change_fi_disturbance
786	Can delete fi_disturbance	238	delete_fi_disturbance
787	Can add fi_hab_types	239	add_fi_hab_types
788	Can change fi_hab_types	239	change_fi_hab_types
789	Can delete fi_hab_types	239	delete_fi_hab_types
790	Can add fi_hydro_connect	240	add_fi_hydro_connect
791	Can change fi_hydro_connect	240	change_fi_hydro_connect
792	Can delete fi_hydro_connect	240	delete_fi_hydro_connect
793	Can add fi_shore_struct	241	add_fi_shore_struct
794	Can change fi_shore_struct	241	change_fi_shore_struct
795	Can delete fi_shore_struct	241	delete_fi_shore_struct
796	Can add fi_lc_nearshore	242	add_fi_lc_nearshore
797	Can change fi_lc_nearshore	242	change_fi_lc_nearshore
798	Can delete fi_lc_nearshore	242	delete_fi_lc_nearshore
799	Can add fi_pollution	243	add_fi_pollution
800	Can change fi_pollution	243	change_fi_pollution
801	Can delete fi_pollution	243	delete_fi_pollution
802	Can add fi_recreation	244	add_fi_recreation
803	Can change fi_recreation	244	change_fi_recreation
804	Can delete fi_recreation	244	delete_fi_recreation
805	Can add fi_crew_code	245	add_fi_crew_code
806	Can change fi_crew_code	245	change_fi_crew_code
807	Can delete fi_crew_code	245	delete_fi_crew_code
808	Can add fi_veg_zone_struct	246	add_fi_veg_zone_struct
809	Can change fi_veg_zone_struct	246	change_fi_veg_zone_struct
810	Can delete fi_veg_zone_struct	246	delete_fi_veg_zone_struct
811	Can add fi_sampling	247	add_fi_sampling
812	Can change fi_sampling	247	change_fi_sampling
813	Can delete fi_sampling	247	delete_fi_sampling
814	Can add fi_water_level	248	add_fi_water_level
815	Can change fi_water_level	248	change_fi_water_level
816	Can delete fi_water_level	248	delete_fi_water_level
817	Can add fi_sampling_disturbance	249	add_fi_sampling_disturbance
818	Can change fi_sampling_disturbance	249	change_fi_sampling_disturbance
819	Can delete fi_sampling_disturbance	249	delete_fi_sampling_disturbance
820	Can add fi_sampling_lc_photo	250	add_fi_sampling_lc_photo
821	Can change fi_sampling_lc_photo	250	change_fi_sampling_lc_photo
822	Can delete fi_sampling_lc_photo	250	delete_fi_sampling_lc_photo
823	Can add fi_sampling_zone	251	add_fi_sampling_zone
824	Can change fi_sampling_zone	251	change_fi_sampling_zone
825	Can delete fi_sampling_zone	251	delete_fi_sampling_zone
826	Can add fi_transect	252	add_fi_transect
827	Can change fi_transect	252	change_fi_transect
828	Can delete fi_transect	252	delete_fi_transect
829	Can add fi_g2_sed	253	add_fi_g2_sed
830	Can change fi_g2_sed	253	change_fi_g2_sed
831	Can delete fi_g2_sed	253	delete_fi_g2_sed
832	Can add fi_pnt_aq_hab	254	add_fi_pnt_aq_hab
833	Can change fi_pnt_aq_hab	254	change_fi_pnt_aq_hab
834	Can delete fi_pnt_aq_hab	254	delete_fi_pnt_aq_hab
835	Can add fi_pnt_shore_hab	255	add_fi_pnt_shore_hab
836	Can change fi_pnt_shore_hab	255	change_fi_pnt_shore_hab
837	Can delete fi_pnt_shore_hab	255	delete_fi_pnt_shore_hab
838	Can add fi_pnt_form	256	add_fi_pnt_form
839	Can change fi_pnt_form	256	change_fi_pnt_form
840	Can delete fi_pnt_form	256	delete_fi_pnt_form
841	Can add fi_pnt_depth	257	add_fi_pnt_depth
842	Can change fi_pnt_depth	257	change_fi_pnt_depth
843	Can delete fi_pnt_depth	257	delete_fi_pnt_depth
844	Can add fi_flow_regime	258	add_fi_flow_regime
845	Can change fi_flow_regime	258	change_fi_flow_regime
846	Can delete fi_flow_regime	258	delete_fi_flow_regime
847	Can add fi_transect_pnt	259	add_fi_transect_pnt
848	Can change fi_transect_pnt	259	change_fi_transect_pnt
849	Can delete fi_transect_pnt	259	delete_fi_transect_pnt
850	Can add fi_pnt_unlisted	260	add_fi_pnt_unlisted
851	Can change fi_pnt_unlisted	260	change_fi_pnt_unlisted
852	Can delete fi_pnt_unlisted	260	delete_fi_pnt_unlisted
853	Can add fi_pnt_wq	261	add_fi_pnt_wq
854	Can change fi_pnt_wq	261	change_fi_pnt_wq
855	Can delete fi_pnt_wq	261	delete_fi_pnt_wq
856	Can add fi_invert_type	262	add_fi_invert_type
857	Can change fi_invert_type	262	change_fi_invert_type
858	Can delete fi_invert_type	262	delete_fi_invert_type
859	Can add fi_zone_fyke	263	add_fi_zone_fyke
860	Can change fi_zone_fyke	263	change_fi_zone_fyke
861	Can delete fi_zone_fyke	263	delete_fi_zone_fyke
862	Can add f_fish_photo	264	add_f_fish_photo
863	Can change f_fish_photo	264	change_f_fish_photo
864	Can delete f_fish_photo	264	delete_f_fish_photo
865	Can add f_fish_obs	265	add_f_fish_obs
866	Can change f_fish_obs	265	change_f_fish_obs
867	Can delete f_fish_obs	265	delete_f_fish_obs
868	Can add f_fish_total	266	add_f_fish_total
869	Can change f_fish_total	266	change_f_fish_total
870	Can delete f_fish_total	266	delete_f_fish_total
871	Can add fi_zone_wq	267	add_fi_zone_wq
872	Can change fi_zone_wq	267	change_fi_zone_wq
873	Can delete fi_zone_wq	267	delete_fi_zone_wq
874	Can add fi_zone_lab_wq	268	add_fi_zone_lab_wq
875	Can change fi_zone_lab_wq	268	change_fi_zone_lab_wq
876	Can delete fi_zone_lab_wq	268	delete_fi_zone_lab_wq
877	Can add fi_pnt_dom	269	add_fi_pnt_dom
878	Can change fi_pnt_dom	269	change_fi_pnt_dom
879	Can delete fi_pnt_dom	269	delete_fi_pnt_dom
880	Can add fi_pnt_invert	270	add_fi_pnt_invert
881	Can change fi_pnt_invert	270	change_fi_pnt_invert
882	Can delete fi_pnt_invert	270	delete_fi_pnt_invert
883	Can add v_source	271	add_v_source
884	Can change v_source	271	change_v_source
885	Can delete v_source	271	delete_v_source
886	Can add v_sampling	272	add_v_sampling
887	Can change v_sampling	272	change_v_sampling
888	Can delete v_sampling	272	delete_v_sampling
889	Can add v_transect	273	add_v_transect
890	Can change v_transect	273	change_v_transect
891	Can delete v_transect	273	delete_v_transect
892	Can add v_taxa	274	add_v_taxa
893	Can change v_taxa	274	change_v_taxa
894	Can delete v_taxa	274	delete_v_taxa
895	Can add v_substrate	275	add_v_substrate
896	Can change v_substrate	275	change_v_substrate
897	Can delete v_substrate	275	delete_v_substrate
898	Can add v_point	276	add_v_point
899	Can change v_point	276	change_v_point
900	Can delete v_point	276	delete_v_point
901	Can add v_observation	277	add_v_observation
902	Can change v_observation	277	change_v_observation
903	Can delete v_observation	277	delete_v_observation
904	Can add site	278	add_site
905	Can change site	278	change_site
906	Can delete site	278	delete_site
907	Can add comment	279	add_comment
908	Can change comment	279	change_comment
909	Can delete comment	279	delete_comment
910	Can add workflow	280	add_workflow
911	Can change workflow	280	change_workflow
912	Can delete workflow	280	delete_workflow
913	Can add team	281	add_team
914	Can change team	281	change_team
915	Can delete team	281	delete_team
916	Can add taxa	282	add_taxa
917	Can change taxa	282	change_taxa
918	Can delete taxa	282	delete_taxa
919	Can add taxa_team	283	add_taxa_team
920	Can change taxa_team	283	change_taxa_team
921	Can delete taxa_team	283	delete_taxa_team
922	Can add site_status	284	add_site_status
923	Can change site_status	284	change_site_status
924	Can delete site_status	284	delete_site_status
925	Can add fi_zone_photo	285	add_fi_zone_photo
926	Can change fi_zone_photo	285	change_fi_zone_photo
927	Can delete fi_zone_photo	285	delete_fi_zone_photo
928	Can view QA veg data	84	view_QA_veg_data
929	Can view QA bird data	79	view_QA_bird_data
930	Can view QA amphib data	73	view_QA_amphib_data
931	Can add context	286	add_context
932	Can change context	286	change_context
933	Can delete context	286	delete_context
934	Can add contains	287	add_contains
935	Can change contains	287	change_contains
936	Can delete contains	287	delete_contains
937	Can add contains test type a	288	add_containstesttypea
938	Can change contains test type a	288	change_containstesttypea
939	Can delete contains test type a	288	delete_containstesttypea
940	Can add contains test type b	289	add_containstesttypeb
941	Can change contains test type b	289	change_containstesttypeb
942	Can delete contains test type b	289	delete_containstesttypeb
943	Can add fi_lab_invert	290	add_fi_lab_invert
944	Can change fi_lab_invert	290	change_fi_lab_invert
945	Can delete fi_lab_invert	290	delete_fi_lab_invert
988	Can add f_invert_taxa	305	add_f_invert_taxa
989	Can change f_invert_taxa	305	change_f_invert_taxa
990	Can delete f_invert_taxa	305	delete_f_invert_taxa
991	Can add fi_bug_obs	306	add_fi_bug_obs
992	Can change fi_bug_obs	306	change_fi_bug_obs
993	Can delete fi_bug_obs	306	delete_fi_bug_obs
994	Can add fi_trait_value	307	add_fi_trait_value
995	Can change fi_trait_value	307	change_fi_trait_value
996	Can delete fi_trait_value	307	delete_fi_trait_value
997	Can add fi_trait_group	308	add_fi_trait_group
998	Can change fi_trait_group	308	change_fi_trait_group
999	Can delete fi_trait_group	308	delete_fi_trait_group
1000	Can add fi_trait_group_instance	309	add_fi_trait_group_instance
1001	Can change fi_trait_group_instance	309	change_fi_trait_group_instance
1002	Can delete fi_trait_group_instance	309	delete_fi_trait_group_instance
1003	Can add fi_trait_instance	310	add_fi_trait_instance
1004	Can change fi_trait_instance	310	change_fi_trait_instance
1005	Can delete fi_trait_instance	310	delete_fi_trait_instance
\.


--
-- TOC entry 9784 (class 0 OID 0)
-- Dependencies: 549
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_permission_id_seq', 1072, true);


--
-- TOC entry 9760 (class 0 OID 30187549)
-- Dependencies: 560 9768
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
26	CarlRuetz	Carl	Ruetz	ruetzc@gvsu.edu	sha1$901f4$3d8529189efac36fbace5a2e281176c424798605	f	t	f	2011-01-12 11:52:06-06	2011-01-12 11:52:06-06
43	JoshBednar				sha1$fe961$d1c6c3130be67b8e8011616ec5da19f93d9acd51	f	t	f	2011-05-11 12:09:13-05	2011-05-11 11:22:42-05
23	BrentMurry	Brent	Murry	murry1ba@cmich.edu	sha1$f743b$7f16e3c3e63aeff84617dbd5f1fcac6d24e22616	f	t	f	2011-01-12 11:51:03-06	2011-01-12 11:51:03-06
25	NickDanz	Nick	Danz	NDANZ@uwsuper.edu	sha1$b710b$f7fffd5e192bd471c19bb8abedfd75df91542b9d	f	t	f	2012-03-06 21:47:35.759475-06	2011-01-12 11:51:53-06
52	AllisonKneisel	Allison	Kneisel	kneisela@mail.gvsu.edu	sha1$3d63a$586a3c07e39c6512caac65ee097945441f419ca1	f	t	f	2011-09-28 09:52:38.616564-05	2011-06-02 09:39:24-05
78	AndrewSawyer	Andrew	Sawyer	andrew_kawx@hotmail.com	sha1$d6b1a2$0c800797321a8eab3cccd5a11aa352ef0953dbf9	f	t	f	2011-09-28 20:39:52.589155-05	2011-06-23 15:50:26.945314-05
79	NadineLitwin	Nadine	Litwin	nlitwin82@gmail.com	sha1$9f4d8b$193f4f3a33da2fb517a59f74a48e39a7fa46f445	f	t	f	2011-10-08 09:42:11.622897-05	2011-06-23 15:50:57.714974-05
5	RichAxler	Rich	Axler	raxler@nrri.umn.edu	sha1$09120$ea2972be7107970cc58dc9caf1ea3e4150bbdef2	t	t	f	2010-12-03 08:59:14-06	2010-12-03 08:59:14-06
55	BrandonBreen				sha1$3b396$b2edf832bc96adbdd89b1268de6fb346a2dc7924	f	t	f	2011-06-05 08:25:08-05	2011-06-05 08:25:08-05
7	eruzycki	Elaine	Ruzycki	eruzycki@d.umn.edu	sha1$59afe$aa38f7711070ec6837627c52ee018eaa55977210	t	t	f	2010-12-17 12:34:09-06	2010-12-17 12:34:09-06
109	BritaJohnson	Brita	Johnson	joh03821@umn.edu	sha1$5c186$3160e62c2bc2e5b4e22ab9a1c406411a43560c69	f	t	f	2011-10-10 13:07:33.911085-05	2011-10-04 13:18:25-05
57	AlexisGrinde				sha1$c4ea3$2c7c674dc2321a359f2a2c89a8c5deccdf9504cb	f	t	f	2011-06-05 08:59:28-05	2011-06-05 08:59:28-05
90	CodyClosson	Cody	Closson	cclosson@uwsuper.edu	sha1$001491$be4ba2c9a89e409eaf85cec94790d230ad47d363	f	t	f	2011-07-13 22:42:11.337167-05	2011-07-13 22:42:11.337196-05
77	TimIrvin	Tim	Irvin	timothy.irvin@gmail.com	sha1$b633d9$ad1b2f16aa6bedd46d4ff750401e8fc3cc37732a	f	t	f	2011-07-12 13:31:00.2313-05	2011-06-23 15:49:39.845431-05
88	MacHogfeldt	Mac	Hogfeldt	hogfeldtm01@myemail.northland.edu	sha1$7c34c0$5ef34165ee4080ff5a78b2d00528ced714994f43	f	t	f	2011-09-08 10:48:47.427105-05	2011-07-13 22:41:15.819705-05
71	HannahPanci	Hannah	Panci	hpanci@gmail.com	sha1$c8020$80a21282c03e4152b2c6d74fca3b2b28a6e613ec	f	t	f	2012-03-27 11:19:19.473839-05	2011-06-18 18:04:09-05
111	JohnSchneider	John	Schneider	Schneider.John@epamail.epa.gov	sha1$c2ae1$c1b4e77fdef3457149ab2c6310ffcd6ffe18a6f5	f	t	f	2011-11-01 18:02:14.686383-05	2011-10-31 15:29:32-05
6	uglwl	Waterlevels Project			sha1$eb11f$aa920b9b11f9c76954462014d788391f32172920	t	t	f	2011-02-14 07:44:12.438245-06	2010-12-09 14:29:37-06
97	IanSmith	Ian	Smith	Ian.Smith@ec.gc.ca	sha1$2f38f2$59a32c2354409bdeea1053259f09c230dc9ff76a	f	t	f	2011-11-04 13:40:30.323531-05	2011-08-18 12:47:33-05
61	ThomasErickson				sha1$6da08$5f798607da5891142205dd6cb641faa48107fdea	f	t	f	2011-06-05 12:24:34.639166-05	2011-06-05 09:04:29-05
94	KeliaAxler	Kelia	Axler	axle0001@umn.edu	sha1$85211$23c9388d9ed7503a34d899d4cffbe126aad0eb10	f	t	f	2012-01-30 14:39:41.647238-06	2011-08-02 13:19:44-05
87	MattJahnke	Matt	Jahnke	mjahnke1@uwsuper.edu	sha1$658c02$92c5e4f5d9083616f09fede01cab0d5aca204ca2	f	t	f	2011-09-24 14:02:48.00105-05	2011-07-13 22:39:22.018541-05
70	ClairePolfus	Claire	Polfus	cpolfus@gmail.com	sha1$13588$2087a22a7bee8803b89a5db2821a6ee12cc3a692	f	t	f	2011-07-13 14:17:15.796319-05	2011-06-18 18:03:04-05
113	LarissaHerrera	Larissa	Herrera	herre109@umn.edu	sha1$3bf10$535887a431ecb5bc73a083e1fb5071ab7a4a086d	f	t	f	2012-01-11 14:41:23.573552-06	2011-12-13 12:40:58-06
68	AmandaChambers	Amanda	Chambers	achambers@lssu.edu	sha1$4acd6$90a3d840bee97c7e0306d6ebed00e749bf7d6659	f	t	f	2011-10-29 08:40:33.741971-05	2011-06-13 10:41:40-05
49	JohnBateman	John	Bateman	jbate2@brockport.edu	sha1$36f78$f0314f8df7c357e022f44d541f7dccaec0a036b0	f	t	f	2011-10-30 18:38:44.524518-05	2011-05-13 10:18:50-05
17	IanDavison				sha1$f7b12$983dfc1a768b8163b519f1b537c2747661ae4a08	f	t	f	2011-01-12 11:48:52.880151-06	2011-01-12 11:48:52.88017-06
53	AnnaPeterson				sha1$06895$7286f15d7fd08a5b91a238035701bd62f5e0c9a7	f	t	f	2011-07-08 14:00:16.805556-05	2011-06-05 08:12:07-05
116	NicoleWood	Nicole	Wood	wood1nj@cmich.edu	sha1$e4abc$9e8491c0cb17c500a90c5479055fd49f83fdec63	f	t	f	2012-03-19 11:45:58.918243-05	2012-02-11 11:05:09-06
19	GaryLamberti				sha1$14d0d$8f836cb0e829d339d6846aa71f8b2185fa2b0d86	f	t	f	2011-01-12 11:49:54.429819-06	2011-01-12 11:49:54.429843-06
59	CarolCarter				sha1$9ec8e$5a1815e623287d4b748489d2ba29a79fb0db79b8	f	t	f	2011-06-05 19:35:54.60621-05	2011-06-05 09:02:12-05
22	LucindaJohnson				sha1$a62c5$f5e57d501f2b794048152b2a14b70b735cff9a7e	f	t	f	2011-01-12 11:50:46.640621-06	2011-01-12 11:50:46.640643-06
8	GenericTest	Generic	Test	tbrown@nrri.umn.edu	sha1$87dcf$9f5efdb19edc43076315e0339ebf75308a08fdd2	f	t	f	2011-06-17 12:30:59.800779-05	2011-01-10 13:54:09-06
82	TylerHoar	Tyler	Hoar	thoar@rogers.com	sha1$b0bdf6$dcf52585bc73c01019cdf886414f86dd1e0cd9cd	f	t	f	2011-09-25 20:45:32.455633-05	2011-06-23 15:52:30.635292-05
47	AaronGroves	Aaron	Groves	groveaj21@uwgb.edu	sha1$242d4$49f6dbaf098b4840f57c1657d9006916a02912b1	f	t	f	2011-06-24 17:38:47.688057-05	2011-05-12 15:54:32-05
114	CoryPeterson	Cory	Peterson	pete6015@d.umn.edu	sha1$09ea6$5b6b0bbd93df80128decd8a179a163c7643dc2bb	f	t	f	2011-12-16 11:59:17-06	2011-12-16 11:59:17-06
24	RyanArcher	Ryan	Archer	rarcher@bsc-eoc.org	sha1$cb340$63606f1025426651bdff6423ec9f39bf86c1dc61	f	t	f	2011-03-16 09:53:03.307066-05	2011-01-12 11:51:31-06
36	KevinODonnell	Kevin	O'Donnell	ODonnell.Thomas@epamail.epa.gov	sha1$1e7a3$002c8974614f9c75ef161e9a318fc838909287af	f	t	f	2011-04-27 09:41:54-05	2011-02-06 09:28:45-06
38	DanBreneman	Dan	Breneman	dbrenema@d.umn.edu	sha1$b4bc6$b56cf3ac7c858119c854ce2f4b41d0768a7b420e	f	t	f	2012-02-28 10:04:22.547486-06	2011-02-24 10:59:47-06
28	RobertHowe	Robert	Howe		sha1$b6bbd$991a245037ea0315482756b1db74be4800981abe	f	t	f	2012-03-14 21:35:35.642138-05	2011-01-12 11:52:49-06
112	LauraBourgeau-Chavez	Laura	Bourgeau-Chavez	lchavez@mtu.edu	sha1$5a8d5$eb86d46aaccde8a9ee460cff9c9d885a4cdc5b52	f	t	f	2012-01-19 12:42:31.350363-06	2011-11-21 12:16:57-06
118	CarliGurholt	Carli	Gurholt	gurho1cr@cmich.edu	sha1$8759d$cbfdc264065f2d84dda6345ad21316580d66fdf5	f	t	f	2012-03-23 14:10:10.71927-05	2012-03-23 13:17:05-05
115	GaiGeng	Gai	Geng	gengx064@d.umn.edu	sha1$be03f$1d1ea06846bfca9ab4944baf92517cdd4b7ab08d	t	t	f	2012-03-06 12:40:22.676662-06	2012-01-24 21:04:51-06
4	GeorgeHost	George	Host	ghost@d.umn.edu	sha1$6f508$082beebc1ef19662f96f88983390654f059de65d	t	t	f	2011-08-08 12:49:50.076702-05	2010-12-03 08:58:16-06
110	JoshDumke	Josh	Dumke	jddumke@d.umn.edu	sha1$736c5$687dac49aef3a01a0f104edd26b9fa785e221152	f	t	f	2012-03-15 07:14:04-05	2011-10-31 13:53:35-05
117	CodyWebster	Cody	Webster	webst1wc@cmich.edu	sha1$0c181$d863ac47a3aaac38b89d842c4c6c951418dedf16	f	t	f	2012-02-21 11:18:43-06	2012-02-21 11:18:43-06
98	JohnBrett	John	Brett	John.Brett@ec.gc.ca	sha1$f41ee2$4c32f20177e2a390816f3b3351387b99b0e5deb8	f	t	f	2011-08-18 13:58:06.773527-05	2011-08-18 12:48:09.333158-05
33	AshleyMoerke	Ashley	Moerke	amoerke@lssu.edu	sha1$d77d2$b54852bd58240f0ba10426b4af21cd6390c4effa	f	t	f	2012-03-15 07:18:15.682327-05	2011-01-12 11:55:20-06
2	nwill	Norm	Will	nwill@nrri.umn.edu	sha1$472d0$b43751ffee59a56b422c656bc04a7a7109207c5d	t	t	f	2012-01-09 11:17:38-06	2010-12-03 08:53:22-06
119	MylesFalconer	Myles	Falconer	mfalconer@birdscanada.org	sha1$a2a98$fe5236e351d34963ab00214acb0fc65415ecda91	f	t	f	2012-03-27 21:50:25-05	2012-03-27 21:50:25-05
44	CarlyLapin	Carly	Lapin	lapi0029@d.umn.edu	sha1$13574$c4f04e122e378a281f44dda2ade8909f3d96b2d0	f	t	f	2011-05-12 14:13:41-05	2011-05-12 10:30:57-05
54	RyanAtwell				sha1$ed2d4$16bc9a8e6518107c6bfbf85c7740b5dde70343ec	f	t	f	2011-06-05 08:24:05-05	2011-06-05 08:24:05-05
95	EllisRaatz	Ellis	Raatz	eraatz@lssu.edu	sha1$c4393$5aeed1b7e78f0cda1d981797ed55dd496e504da7	f	t	f	2011-09-28 17:19:55.856858-05	2011-08-16 09:17:26-05
37	DebbieWaters	Debbie	Waters	dwaters@hawkridge.org	sha1$ffeac$c2f8c71bf5f6cf3bcf13d3e1d425a795248158cd	f	t	f	2011-08-10 08:53:09.742228-05	2011-02-08 14:22:53-06
58	EdZlonis				sha1$1bbba$44a45869f6131c2a45bc1a1256fbaca5d3bafd0c	f	t	f	2011-06-05 09:01:01-05	2011-06-05 09:01:01-05
60	PaulDolan				sha1$ac44f$c4340b6ae3854300bc5545f5d31e7b0a3adfeee8	f	t	f	2011-06-05 09:03:29-05	2011-06-05 09:03:29-05
86	AryanaFerguson	Aryana	Ferguson	madrona_consulting@comcast.net	sha1$e3cfb$4f4d676b389ff5e0d634adcc30c5eea50221acf6	f	t	f	2011-09-29 17:47:42.702942-05	2011-07-12 10:51:37-05
62	MattiHakkila				sha1$5ca45$778352abd48c00825acb19b69b2b7274e2d4b722	f	t	f	2011-06-05 09:05:22-05	2011-06-05 09:05:22-05
81	SarahPetrasek	Sarah	Petrasek	momgeebee@gmail.com	sha1$ba8fa$de52532ec872f03c9c6a27ea7c0ad28447108b05	f	t	f	2011-07-29 16:39:58.292501-05	2011-06-23 15:52:02.367799-05
15	JanCiborowski	Jan	Ciborowski	cibor@uwindsor.ca	sha1$4689f$4b2782e3fa0795b57289b5f2be19fef557b59d42	f	t	f	2012-03-14 22:01:31.827312-05	2011-01-12 11:46:56-06
12	DonUzarski	Don	Uzarski	uzars1dg@cmich.edu	sha1$8017d$981fcf9f01575e9796c1b7489aee8bd0c58e0193	f	t	f	2011-06-13 11:39:40-05	2011-01-12 11:39:45-06
106	MichaelBredeweg	Michael	Bredeweg	michaelbredeweg@gmail.com	sha1$e48b24$47c3c5dc2367a4c802a2889227e671ce4b74c147	f	t	f	2011-08-29 20:46:38.22959-05	2011-08-29 20:46:38.229609-05
103	RobCornish	Rob	Cornish	rcorn1@brockport.edu	sha1$cd24c9$e095489082dbdd6f2addf252c948dd59be4a525a	f	t	f	2012-02-28 12:13:27.364862-06	2011-08-24 12:38:41.27316-05
41	DennyAlbert	Denny	Albert	albertd@hort.oregonstate.edu	sha1$936c0$58026bb6c1fbba0c65bbfcebed08aa2d7165f355	f	t	f	2012-03-21 18:28:53.475529-05	2011-03-20 14:21:19-05
42	PaulMeysembourg	Paul	Meysembourg	pmeysemb@nrri.umn.edu	sha1$fd9f5$22a5bb72121ba4339888bcfa72049b0b8dcc4f59	t	t	f	2011-11-29 12:36:57.557028-06	2011-04-20 15:47:06-05
91	AaronHeminway	Aaron	Heminway	ahemi1@brockport.edu	sha1$b6c750$2906769ec55e0857aeb66f35201bc028c90c7211	f	t	f	2012-02-16 13:13:19.375584-06	2011-07-13 22:43:04.297213-05
64	JessicaSherman	Jessica	Sherman	sherm2jj@cmich.edu	sha1$cd82a$4fdd12ee0653f9abf23dd95e05bc4cf0ce5bb5ef	f	t	f	2011-09-19 09:24:42-05	2011-06-13 08:54:10-05
50	JeremyErickson	Jeremy	Erickson	eric0792@d.umn.edu	sha1$19558$a9509b8d2dec08c5491c73eb53212c8d30c7a1f7	f	t	f	2011-05-13 10:20:15-05	2011-05-13 10:20:15-05
56	AnnieBracey	Annie	Bracey	brace005@d.umn.edu	sha1$33f05$a224d5bf7fe0442ab6b3cfc666c62ad90b8a3a90	f	t	f	2012-03-22 13:18:31.464622-05	2011-06-05 08:26:52-05
18	ThomasGehring	Thomas	Gehring	gehri1tm@cmich.edu	sha1$1b9e4$4dda6c9790319b672fbda5964ff17cf14b60abe9	f	t	f	2012-02-20 10:32:22.115856-06	2011-01-12 11:49:25-06
48	MarkWolf	Mark	Wolf	wolfmf25@uwgb.edu	sha1$c8f8a$b06fb9bd76f41bd1aa63b669cdb58102d4e85704	f	t	f	2011-05-15 17:12:52.912609-05	2011-05-12 15:56:05-05
80	SteveTimmermans	Steve	Timmermans	marsh_birds@yahoo.ca	sha1$c0ebee$6f101ea6014bca664bf8ccfb8e516364ee61ab02	f	t	f	2011-10-12 08:53:54.461286-05	2011-06-23 15:51:24.65529-05
21	GregGrabas	Greg	Grabas	Greg.Grabas@ec.gc.ca	sha1$0b681$cc08292cfd35c3b1e98a89620e9a1a49f10b96d7	f	t	f	2012-03-23 09:12:01.79761-05	2011-01-12 11:50:27-06
34	RobertHell	Robert	Hell	rhell@nrri.umn.edu	sha1$e6214$e1fd46444490bd3511f3753fc22bdc0607825eb0	f	t	f	2012-03-26 08:25:18.607814-05	2011-01-12 17:16:56-06
120	MorganBrown	Morgan	Brown	jbrow247@uwo.ca	sha1$aba27$df710dd01841afc860f75fe80e7fc52d19f99ca6	f	t	f	2012-03-27 21:51:52-05	2012-03-27 21:51:52-05
20	GeraldNiemi	Gerald	Niemi	gniemi@d.umn.edu	sha1$32d45$9e2c68c79fcb2944d33996e5a939574a2abca9b5	f	t	f	2011-08-25 15:08:31.044005-05	2011-01-12 11:50:14-06
83	SatuPernanen	Satu	Pernanen	s.pernanen@sympatico.ca	sha1$60f119$a39c1258b5e1d5901460be09f97cd6c040f2d40d	f	t	f	2011-08-07 21:10:45.95268-05	2011-06-23 15:52:58.976555-05
67	DustinJordan	Dustin	Jordan	jorda1dw@cmich.edu	sha1$69291$41e800bcddf4bcb490b4754f507ab47e1acd705d	f	f	f	2011-11-11 11:23:30-06	2011-06-13 08:57:50-05
101	CodySmeltzer	Cody	Smeltzer	csmel1@brockport.edu	sha1$98d672$415ac56c37938aa0db8acd755cbed0a32ab5989c	f	t	f	2011-08-24 12:37:48.424392-05	2011-08-24 12:37:48.424409-05
65	NeilSchock	Neil	Schock	schoc1nt@cmich.edu	sha1$2647c$8236a2c22192cb8adecc957def096cbed009cef1	f	t	f	2012-02-24 15:39:25.846641-06	2011-06-13 08:55:20-05
45	NickWalton	Nick	Walton	waltonn@uwgb.edu	sha1$1f488$5b21f12f29e267de89755bd6b370b44ee246cbef	f	t	f	2011-12-19 14:39:30.982695-06	2011-05-12 15:50:38-05
102	DaveSanderson-Kilchenstein	Dave	Sanderson-Kilchenstein	redfire311@gmail.com	sha1$3a53c$2afef7bd040eef56e743dfd9343e5cd78287b4e4	f	t	f	2011-10-28 01:28:27.185644-05	2011-08-24 12:38:20-05
100	MattPiche	Matt	Piche	mpich1@brockport.edu	sha1$490a65$e21fd034dfda380cbc0a7c3fe8f8a5d7db973c7b	f	t	f	2012-01-27 10:45:51.41911-06	2011-08-24 12:37:22.364481-05
107	ShannonFraser	Shannon	Fraser	macstrawberry_19@hotmail.com	sha1$16e04$ea09b4348abad769b93eb07afa3dbd16f6daa031	f	t	f	2011-09-28 14:59:52.706625-05	2011-09-15 08:31:39-05
11	DougWilcox	Doug	Wilcox	dwilcox@brockport.edu	sha1$a8471$4f89fadf4879ecba15c7e1fa4e1ef817a679509b	f	t	f	2011-05-13 12:19:17-05	2011-01-11 16:25:41-06
99	MichelleDobrin	Michelle	Dobrin	michelle.dobrin@gmail.com	sha1$36259$7421226378143a07bdebf5406e46e038f2ff837b	f	t	f	2011-08-22 16:18:08-05	2011-08-22 16:18:08-05
51	JessicaComben	Jessica	Comben	jncomben@gmail.com	sha1$c7ac8$e1e93223ee5c4025120a389e6490f7b1f7a66c3c	f	t	f	2012-03-02 07:31:49.232486-06	2011-06-02 09:36:33-05
69	LiWang	Li	Wang	liwang@uwindsor.ca	sha1$1935c$9c95cf9c2e40760f8be1c453d8758b045ab48a59	f	t	f	2012-03-21 12:24:13.942751-05	2011-06-17 11:47:08-05
9	ValBrady	Val	Brady	vbrady@nrri.umn.edu	sha1$a3b72$0a0265b6f59aeafa1876de531e8a6836c6f54fe5	t	t	f	2012-03-23 16:04:16.881835-05	2011-01-10 13:55:11-06
29	JosephGathman	Joseph	Gathman	joseph.gathman@uwrf.edu	sha1$b054a$2a80e6827246320182ae917fe94970376ec3f55a	f	t	f	2012-03-26 18:19:08.641342-05	2011-01-12 11:53:07-06
66	ChadBlass	Chad	Blass	crblass@gmail.com	sha1$50e62$041844022d1d1e4db8b38d1b72152111a8b0389a	f	t	f	2012-03-27 17:20:11.425846-05	2011-06-13 08:56:43-05
39	ThomasClement	Thomas	Clement	cleme2ta@cmich.edu	sha1$2b608$5ba6f2b067a1e7847061652db76d2360e75d1174	f	t	f	2012-03-07 12:06:16.110967-06	2011-02-25 14:08:03-06
104	DaynaSmith	Dayna	Smith	dsmith39@nd.edu	sha1$ce001$56624197643325b618c0b2f3b343a96b9c445cc2	f	t	f	2012-03-07 15:02:50.191622-06	2011-08-25 13:23:20-05
121	SophieGibbs	Sophie	Gibbs	a-gibbs@hotmail.com	sha1$91ad9$baff4d20112ddb0cb349ab67215198732b495f1e	f	t	f	2012-03-27 21:53:18-05	2012-03-27 21:53:18-05
92	DanielRokitnicki-Wojcik	Daniel	Rokitnicki-Wojcik	Daniel.RokitnickiWojcik@ec.gc.ca	sha1$bceedc$e4f401d54b366c16af874d482b8957d38cc7b62c	f	t	f	2012-03-15 06:49:07.637736-05	2011-07-13 22:43:40-05
63	JessicaKosiara	Jessica	Kosiara	jkosiara@nd.edu	sha1$613af$06ff35d416f54b1135552448573de5df5d818a9f	f	t	f	2012-03-20 14:41:49.490889-05	2011-06-09 09:11:28-05
3	ndobiesz	Norine	Dobiesz	ndobiesz@gmail.com	sha1$df63c$640043c908a3531258b0e96ba155c7fd7069e7f0	t	t	f	2012-03-22 10:22:57.979647-05	2010-12-03 08:57:02-06
46	ErinGnass	Erin	Gnass	gnasse@uwgb.edu	sha1$76b60$f486400819630e77201d9836a5fcfa9ea19802bb	f	t	f	2012-02-22 17:50:29.337815-06	2011-05-12 15:52:54-05
89	CarolReschke	Carol	Reschke	creschke@nrri.umn.edu	sha1$fb6e61$b2ff677708c929d02eecc519640779ecfe63e977	f	t	f	2011-09-27 16:01:15.966306-05	2011-07-13 22:41:50.497191-05
35	BradMudrzynski	Brad	Mudrzynski	bmud0314@brockport.edu	sha1$bbe4a$6dc659e80ddb183ec2a2c11f4e882d9395315aed	f	t	f	2012-03-22 16:37:35.413694-05	2011-01-13 14:36:51-06
108	MitchellBercier	Mitchell	Bercier	berc0033@d.umn.edu	sha1$92522$84e2f23e2802bf8e00ff91f045fbcc9790c61778	f	f	f	2011-11-09 12:06:15-06	2011-09-22 14:50:05-05
85	ToddLemein	Todd	Lemein	lemeint@hort.oregonstate.edu	sha1$028c42$236f19edea42e608bbe62022eb4e48537973d703	f	t	f	2012-02-07 16:34:13.246005-06	2011-07-01 09:59:41-05
40	DougTozer	Doug	Tozer	dtozer@bsc-eoc.org	sha1$eb206$2c07bc3cb51d5e5523326d554452c2109339da45	f	t	f	2012-03-27 12:11:39.100087-05	2011-03-18 21:11:44-05
96	DenbySadler	Denby	Sadler	Denby.Sadler@ec.gc.ca	sha1$bfab70$350fe449ad49f8db2f003d33e481c1d001050951	f	t	f	2012-02-21 10:26:54.15724-06	2011-08-18 12:47:10.763224-05
1	TerryBrown	Terry	Brown	tbrown@nrri.umn.edu	sha1$985fd$232e4b53303b340980764da71fb12ec80e780a1a	t	t	t	2013-09-17 10:11:57.219318-05	2010-08-20 18:13:44-05
10	GLRIMonTest	GLRIMon	Test	tbrown@nrri.umn.edu	sha1$b4205$7f0265c16e054a4f10280d443b64ef83a46f26f0	f	t	f	2012-02-01 15:12:39.594884-06	2011-01-10 13:58:03-06
13	MattCooper	Matthew	Cooper	mcooper3@nd.edu	sha1$8be9e$b2f103a30e9c65bf07ec423c6577d555db321df3	f	t	f	2012-03-07 15:12:56.858253-06	2011-01-12 11:46:10-06
\.


--
-- TOC entry 9758 (class 0 OID 30187534)
-- Dependencies: 558 9768
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
496	116	8
497	116	10
304	63	9
305	63	6
498	116	6
6	7	1
499	56	8
500	56	2
308	33	9
309	33	2
434	12	12
310	68	9
311	68	6
14	5	1
501	56	10
153	77	8
154	77	10
155	77	6
156	78	8
157	78	10
502	56	6
314	95	9
315	95	6
158	78	6
159	79	8
160	79	10
161	79	6
162	80	8
163	80	10
164	80	6
165	81	8
166	81	10
167	81	6
168	82	8
169	82	10
170	82	6
171	83	8
172	83	10
173	83	6
174	20	8
175	20	2
176	20	10
448	64	17
177	28	8
45	29	2
46	24	2
316	92	9
178	28	2
449	64	19
179	28	10
317	92	11
180	40	8
450	64	6
318	92	6
319	96	9
320	96	6
181	40	2
451	64	9
59	4	1
323	98	9
324	98	6
182	40	10
463	113	21
464	113	22
474	94	9
328	99	9
329	99	6
70	26	2
183	46	8
184	46	10
73	3	1
475	94	18
185	46	6
186	45	8
187	45	10
476	94	6
80	47	6
81	48	6
503	56	7
83	50	2
188	45	6
505	23	9
506	23	6
507	67	8
89	43	6
90	43	7
91	44	6
92	44	7
93	53	7
94	54	7
95	55	7
508	67	10
97	57	7
98	58	7
99	59	7
100	60	7
101	61	7
102	62	7
509	67	6
106	66	6
513	117	9
514	117	11
515	117	6
521	118	8
522	118	10
523	118	11
524	118	6
525	2	1
530	119	8
531	119	10
532	119	6
197	49	8
198	49	10
199	49	6
536	121	8
201	25	2
202	25	11
537	121	10
538	121	6
205	86	11
206	86	6
207	85	11
133	70	8
134	70	10
135	70	6
136	71	8
137	71	10
138	71	6
139	37	8
140	37	2
141	37	10
142	37	7
208	85	6
219	15	9
220	15	2
221	15	11
222	15	6
224	21	2
225	21	11
226	21	4
227	21	6
228	41	2
229	41	11
230	41	6
240	87	11
241	87	6
242	88	11
243	88	6
244	89	11
245	89	6
246	90	11
247	90	6
248	91	11
249	91	6
259	18	8
260	18	2
261	18	10
262	18	6
276	11	8
277	11	2
278	11	11
279	11	10
518	110	9
342	35	2
519	110	18
344	35	4
345	35	8
346	35	9
347	35	10
348	35	11
349	100	9
350	101	9
520	110	6
352	103	9
353	104	9
354	104	6
355	106	9
356	106	6
357	51	9
358	51	6
359	52	9
360	52	6
437	112	14
526	9	18
527	9	12
528	9	13
529	9	22
533	120	8
534	120	10
535	120	6
369	39	9
370	39	2
371	65	9
372	65	6
373	107	11
374	107	6
384	97	9
385	97	11
386	97	6
459	38	9
460	38	2
461	38	6
390	109	9
462	38	22
392	109	6
469	114	9
470	114	6
405	102	9
406	102	6
408	36	3
409	111	3
410	1	12
412	13	9
413	13	2
414	13	12
481	69	9
482	69	18
483	69	11
484	69	6
485	108	1
488	115	1
492	10	9
493	34	9
494	34	18
495	34	6
\.


--
-- TOC entry 9785 (class 0 OID 0)
-- Dependencies: 557
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 538, true);


--
-- TOC entry 9786 (class 0 OID 0)
-- Dependencies: 559
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_id_seq', 121, true);


--
-- TOC entry 9756 (class 0 OID 30187519)
-- Dependencies: 556 9768
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
287	9	1071
199	36	219
281	108	89
282	108	95
284	34	476
285	34	989
286	34	598
18	6	128
19	6	129
20	6	130
21	6	131
22	6	132
23	6	133
24	6	134
25	6	135
26	6	115
27	6	116
28	6	118
29	6	119
30	6	121
31	6	122
32	6	124
33	6	125
34	6	127
66	3	89
67	3	95
68	37	299
248	42	128
249	42	129
250	42	130
251	42	131
252	42	132
253	42	133
254	42	134
255	42	263
256	42	135
257	42	115
258	42	116
259	42	117
260	42	118
261	42	119
262	42	120
263	42	121
264	42	122
265	42	123
266	42	124
267	42	125
268	42	126
269	42	127
\.


--
-- TOC entry 9787 (class 0 OID 0)
-- Dependencies: 555
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 287, true);


--
-- TOC entry 9764 (class 0 OID 30187585)
-- Dependencies: 564 9768
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	message	auth	message
5	content type	contenttypes	contenttype
6	session	sessions	session
7	site	sites	site
8	context	olmap	context
9	context_link	olmap	context_link
10	log entry	admin	logentry
11	shape	olmap	shape
12	lake	olmap	lake
13	taxa	olmap	taxa
14	attr_class	olmap	attr_class
15	attr_type	olmap	attr_type
16	source	olmap	source
17	location	olmap	location
18	source_field	olmap	source_field
19	shape_type	olmap	shape_type
20	observation	olmap	observation
21	shape_link	olmap	shape_link
22	placeholder	cms	placeholder
23	page	cms	page
24	PageModerator	cms	pagemoderator
25	Page moderator state	cms	pagemoderatorstate
26	Page global permission	cms	globalpagepermission
27	Page permission	cms	pagepermission
28	User (page)	cms	pageuser
29	User group (page)	cms	pageusergroup
30	cms plugin	cms	cmsplugin
31	title	cms	title
32	text	text	text
33	picture	picture	picture
34	link	link	link
35	file	file	file
36	Snippet	snippet	snippet
37	Snippet	snippet	snippetptr
38	google map	googlemap	googlemap
39	cms plugin text	gglws	cmsplugintext
40	dataset	sitedb	dataset
41	investigator	sitedb	investigator
42	site	sitedb	site
43	indicator	sitedb	indicator
44	site_indicator	sitedb	site_indicator
45	investgator_indicator	sitedb	investgator_indicator
46	dataset_indicator	sitedb	dataset_indicator
47	cms plugin text	sitedb	cmsplugintext
48	tag	tagging	tag
49	tagged item	tagging	taggeditem
50	cache key	menus	cachekey
51	migration history	south	migrationhistory
52	site	siteapp	site
53	comment	siteapp	comment
54	re st field	cmsplugin_rst	restfield
55	site	marksite	site
56	record	olmap	record
57	record_obs	olmap	record_obs
58	inherit page placeholder	inherit	inheritpageplaceholder
59	workflow	siteapp	workflow
60	team	siteapp	team
61	taxa	siteapp	taxa
62	taxa_team	siteapp	taxa_team
63	site_status	siteapp	site_status
286	context	contains	context
65	gps_upload	gps_upload	gps_upload
66	gps_file	gps_upload	gps_file
287	contains	contains	contains
288	contains test type a	contains	containstesttypea
289	contains test type b	contains	containstesttypeb
290	fi_lab_invert	glrimon_models	fi_lab_invert
305	f_invert_taxa	glrimon_models	f_invert_taxa
306	fi_bug_obs	glrimon_models	fi_bug_obs
307	fi_trait_value	glrimon_models	fi_trait_value
308	fi_trait_group	glrimon_models	fi_trait_group
309	fi_trait_group_instance	glrimon_models	fi_trait_group_instance
310	fi_trait_instance	glrimon_models	fi_trait_instance
312	fi_sample_stage	glrimon_models	fi_sample_stage
313	fi_sample_stage_inst	glrimon_models	fi_sample_stage_inst
314	fi_sample_location	glrimon_models	fi_sample_location
315	f_invert_taxonomy	glrimon_models	f_invert_taxonomy
316	brush_type	coreinfo	brush_type
317	phenomena	coreinfo	phenomena
318	brush	coreinfo	brush
319	timeshape	coreinfo	timeshape
320	point	coreinfo	point
321	point_level	coreinfo	point_level
322	run	coreinfo	run
323	phenom_obs	coreinfo	phenom_obs
326	ws_blocks_ls_simp	coreinfo	ws_blocks_ls_simp
327	fi_pnt_rocks	glrig2_models	fi_pnt_rocks
328	fi_pnt_rock_id	glrig2_models	fi_pnt_rock_id
329	fi_hab_data	glrig2_models	fi_hab_data
330	f_invert_taxa	glrig2_models	f_invert_taxa
331	f_bug_obs	glrig2_models	f_bug_obs
332	user_status	siteapp	user_status
116	cluster	bird_models	cluster
117	township	bird_models	township
118	block	bird_models	block
119	distcode	bird_models	distcode
120	bba_evidence	bird_models	bba_evidence
121	mncode	bird_models	mncode
122	timecode	bird_models	timecode
123	typecode	bird_models	typecode
124	project	bird_models	project
125	coord_origin	bird_models	coord_origin
126	habcode	bird_models	habcode
127	noisecode	bird_models	noisecode
128	skycode	bird_models	skycode
129	windcode	bird_models	windcode
130	coord	bird_models	coord
131	point	bird_models	point
132	sampling_type	bird_models	sampling_type
133	sampling_status	bird_models	sampling_status
134	sampling	bird_models	sampling
135	birdobs	bird_models	birdobs
136	b_image	bird_models	b_image
311	fi_trait_group_value_link	glrimon_models	fi_trait_group_value_link
324	output_type	coreinfo	output_type
325	output_col	coreinfo	output_col
157	user log	sdde	userlog
158	del req	sdde	delreq
160	asset	gis_asset	asset
161	attr_type	gis_asset	attr_type
162	bounds	gis_asset	bounds
163	path	gis_asset	path
164	attribute	gis_asset	attribute
165	format	gis_asset	format
166	geom_type	gis_asset	geom_type
167	drive	gis_asset	drive
176	f_taxa	glrig2_models	f_taxa
237	fi_braiding_index	glrig2_models	fi_braiding_index
238	fi_disturbance	glrig2_models	fi_disturbance
137	f_taxa	glrimon_models	f_taxa
138	f_fish_obs	glrimon_models	f_fish_obs
139	f_fish_total	glrimon_models	f_fish_total
140	fi_zone_photo	glrimon_models	fi_zone_photo
141	fi_sampling_lc_photo	glrimon_models	fi_sampling_lc_photo
142	fi_substrate	glrimon_models	fi_substrate
143	fi_zone_sub_dom	glrimon_models	fi_zone_sub_dom
144	fi_zone_size	glrimon_models	fi_zone_size
145	fi_rep_wq	glrimon_models	fi_rep_wq
146	q_folder	glrimon_models	q_folder
147	q_folder_permission	glrimon_models	q_folder_permission
148	q_folder_ref	glrimon_models	q_folder_ref
149	q_query	glrimon_models	q_query
150	q_query_permission	glrimon_models	q_query_permission
151	q_query_ref	glrimon_models	q_query_ref
152	q_field	glrimon_models	q_field
153	b_iec_group	glrimon_models	b_iec_group
154	b_iec_member	glrimon_models	b_iec_member
155	fi_crew_code	glrimon_models	fi_crew_code
156	fi_zone_lab_wq	glrimon_models	fi_zone_lab_wq
159	f_fish_photo	glrimon_models	f_fish_photo
239	fi_hab_types	glrig2_models	fi_hab_types
240	fi_hydro_connect	glrig2_models	fi_hydro_connect
241	fi_shore_struct	glrig2_models	fi_shore_struct
242	fi_lc_nearshore	glrig2_models	fi_lc_nearshore
243	fi_pollution	glrig2_models	fi_pollution
244	fi_recreation	glrig2_models	fi_recreation
245	fi_crew_code	glrig2_models	fi_crew_code
246	fi_veg_zone_struct	glrig2_models	fi_veg_zone_struct
247	fi_sampling	glrig2_models	fi_sampling
248	fi_water_level	glrig2_models	fi_water_level
249	fi_sampling_disturbance	glrig2_models	fi_sampling_disturbance
250	fi_sampling_lc_photo	glrig2_models	fi_sampling_lc_photo
251	fi_sampling_zone	glrig2_models	fi_sampling_zone
252	fi_transect	glrig2_models	fi_transect
253	fi_g2_sed	glrig2_models	fi_g2_sed
254	fi_pnt_aq_hab	glrig2_models	fi_pnt_aq_hab
255	fi_pnt_shore_hab	glrig2_models	fi_pnt_shore_hab
256	fi_pnt_form	glrig2_models	fi_pnt_form
257	fi_pnt_depth	glrig2_models	fi_pnt_depth
258	fi_flow_regime	glrig2_models	fi_flow_regime
259	fi_transect_pnt	glrig2_models	fi_transect_pnt
260	fi_pnt_unlisted	glrig2_models	fi_pnt_unlisted
261	fi_pnt_wq	glrig2_models	fi_pnt_wq
262	fi_invert_type	glrig2_models	fi_invert_type
263	fi_zone_fyke	glrig2_models	fi_zone_fyke
264	f_fish_photo	glrig2_models	f_fish_photo
265	f_fish_obs	glrig2_models	f_fish_obs
266	f_fish_total	glrig2_models	f_fish_total
267	fi_zone_wq	glrig2_models	fi_zone_wq
268	fi_zone_lab_wq	glrig2_models	fi_zone_lab_wq
269	fi_pnt_dom	glrig2_models	fi_pnt_dom
270	fi_pnt_invert	glrig2_models	fi_pnt_invert
271	v_source	glrig2_models	v_source
272	v_sampling	glrig2_models	v_sampling
273	v_transect	glrig2_models	v_transect
274	v_taxa	glrig2_models	v_taxa
275	v_substrate	glrig2_models	v_substrate
276	v_point	glrig2_models	v_point
277	v_observation	glrig2_models	v_observation
278	site	glrig2_models	site
279	comment	glrig2_models	comment
280	workflow	glrig2_models	workflow
281	team	glrig2_models	team
282	taxa	glrig2_models	taxa
283	taxa_team	glrig2_models	taxa_team
284	site_status	glrig2_models	site_status
285	fi_zone_photo	glrig2_models	fi_zone_photo
67	a_callcode	glrimon_models	a_callcode
68	ab_distance	glrimon_models	ab_distance
69	ab_wind	glrimon_models	ab_wind
70	a_taxa	glrimon_models	a_taxa
71	ab_weather	glrimon_models	ab_weather
72	ab_noise	glrimon_models	ab_noise
73	a_point	glrimon_models	a_point
74	a_observation	glrimon_models	a_observation
75	g_timezone	glrimon_models	g_timezone
76	b_behavior	glrimon_models	b_behavior
77	b_breeding	glrimon_models	b_breeding
78	b_taxa	glrimon_models	b_taxa
79	b_point	glrimon_models	b_point
80	b_observation	glrimon_models	b_observation
81	b_aerial	glrimon_models	b_aerial
83	v_taxa	glrimon_models	v_taxa
84	v_sampling	glrimon_models	v_sampling
85	v_transect	glrimon_models	v_transect
86	v_substrate	glrimon_models	v_substrate
87	v_point	glrimon_models	v_point
88	v_observation	glrimon_models	v_observation
89	v_source	glrimon_models	v_source
90	fi_hydro_connect	glrimon_models	fi_hydro_connect
91	fi_veg_zone_struct	glrimon_models	fi_veg_zone_struct
92	fi_braiding_index	glrimon_models	fi_braiding_index
93	fi_sampling	glrimon_models	fi_sampling
94	fi_shore_struct	glrimon_models	fi_shore_struct
95	fi_sampling_shore_struct	glrimon_models	fi_sampling_shore_struct
96	fi_lc_nearshore	glrimon_models	fi_lc_nearshore
97	fi_sampling_lc_nearshore	glrimon_models	fi_sampling_lc_nearshore
98	fi_water_level	glrimon_models	fi_water_level
100	fi_hab_types	glrimon_models	fi_hab_types
102	fi_recreation	glrimon_models	fi_recreation
104	fi_disturbance	glrimon_models	fi_disturbance
106	fi_pollution	glrimon_models	fi_pollution
108	fi_sampling_disturbance	glrimon_models	fi_sampling_disturbance
109	fi_zone_veg	glrimon_models	fi_zone_veg
110	fi_sampling_zone	glrimon_models	fi_sampling_zone
111	fi_zone_fyke	glrimon_models	fi_zone_fyke
112	fi_zone_habitat	glrimon_models	fi_zone_habitat
113	fi_zone_invert	glrimon_models	fi_zone_invert
114	fi_zone_dom	glrimon_models	fi_zone_dom
115	fi_zone_wq	glrimon_models	fi_zone_wq
\.


--
-- TOC entry 9788 (class 0 OID 0)
-- Dependencies: 563
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_content_type_id_seq', 332, true);


--
-- TOC entry 9766 (class 0 OID 30187608)
-- Dependencies: 567 9768
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_site (id, domain, name) FROM stdin;
1	beaver.nrri.umn.edu/uglwl	beaver.nrri.umn.edu/uglwl
2	beaver.nrri.umn.edu/glrimon	beaver.nrri.umn.edu/glrimon
3	www.globalgreatlakes.org	www.globalgreatlakes.org
\.


--
-- TOC entry 9789 (class 0 OID 0)
-- Dependencies: 566
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_site_id_seq', 3, true);


--
-- TOC entry 9555 (class 2606 OID 30292992)
-- Dependencies: 716 716 9769
-- Name: auth_glrimon_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_glrimon
    ADD CONSTRAINT auth_glrimon_pkey PRIMARY KEY (name);


--
-- TOC entry 9526 (class 2606 OID 30187511)
-- Dependencies: 554 554 9769
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 9521 (class 2606 OID 30187496)
-- Dependencies: 552 552 552 9769
-- Name: auth_group_permissions_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 9524 (class 2606 OID 30187494)
-- Dependencies: 552 552 9769
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 9528 (class 2606 OID 30187509)
-- Dependencies: 554 554 9769
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 9546 (class 2606 OID 30187577)
-- Dependencies: 562 562 9769
-- Name: auth_message_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_pkey PRIMARY KEY (id);


--
-- TOC entry 9516 (class 2606 OID 30187486)
-- Dependencies: 550 550 550 9769
-- Name: auth_permission_content_type_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_key UNIQUE (content_type_id, codename);


--
-- TOC entry 9518 (class 2606 OID 30187484)
-- Dependencies: 550 550 9769
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 9537 (class 2606 OID 30187539)
-- Dependencies: 558 558 9769
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 9540 (class 2606 OID 30187541)
-- Dependencies: 558 558 558 9769
-- Name: auth_user_groups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 9542 (class 2606 OID 30187554)
-- Dependencies: 560 560 9769
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 9531 (class 2606 OID 30187524)
-- Dependencies: 556 556 9769
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 9534 (class 2606 OID 30187526)
-- Dependencies: 556 556 556 9769
-- Name: auth_user_user_permissions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 9544 (class 2606 OID 30187556)
-- Dependencies: 560 560 9769
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 9549 (class 2606 OID 30187592)
-- Dependencies: 564 564 564 9769
-- Name: django_content_type_app_label_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_key UNIQUE (app_label, model);


--
-- TOC entry 9551 (class 2606 OID 30187590)
-- Dependencies: 564 564 9769
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 9553 (class 2606 OID 30187613)
-- Dependencies: 567 567 9769
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- TOC entry 9519 (class 1259 OID 30187615)
-- Dependencies: 552 9769
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 9522 (class 1259 OID 30187616)
-- Dependencies: 552 9769
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 9547 (class 1259 OID 30187621)
-- Dependencies: 562 9769
-- Name: auth_message_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_message_user_id ON auth_message USING btree (user_id);


--
-- TOC entry 9514 (class 1259 OID 30187614)
-- Dependencies: 550 9769
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- TOC entry 9535 (class 1259 OID 30187620)
-- Dependencies: 558 9769
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- TOC entry 9538 (class 1259 OID 30187619)
-- Dependencies: 558 9769
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- TOC entry 9529 (class 1259 OID 30187618)
-- Dependencies: 556 9769
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 9532 (class 1259 OID 30187617)
-- Dependencies: 556 9769
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 9558 (class 2606 OID 30187497)
-- Dependencies: 9517 550 552 9769
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 9563 (class 2606 OID 30187578)
-- Dependencies: 9541 560 562 9769
-- Name: auth_message_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_message
    ADD CONSTRAINT auth_message_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 9562 (class 2606 OID 30187542)
-- Dependencies: 9527 554 558 9769
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 9560 (class 2606 OID 30187527)
-- Dependencies: 9517 550 556 9769
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 9556 (class 2606 OID 30187593)
-- Dependencies: 9550 564 550 9769
-- Name: content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 9557 (class 2606 OID 30187512)
-- Dependencies: 9527 554 552 9769
-- Name: group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 9561 (class 2606 OID 30187562)
-- Dependencies: 9541 560 558 9769
-- Name: user_id_refs_id_831107f1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 9559 (class 2606 OID 30187557)
-- Dependencies: 9541 560 556 9769
-- Name: user_id_refs_id_f2045483; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2017-09-27 13:23:51 CDT

--
-- PostgreSQL database dump complete
--

