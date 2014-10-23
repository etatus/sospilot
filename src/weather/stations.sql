--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: knmi; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA knmi;


ALTER SCHEMA knmi OWNER TO postgres;

SET search_path = knmi, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: stations; Type: TABLE; Schema: knmi; Owner: postgres; Tablespace: 
--

CREATE TABLE stations (
    gid integer NOT NULL,
    point public.geometry(Point,4326),
    wmo character varying,
    station_code integer,
    name character varying,
    obs_pres integer,
    obs_wind integer,
    obs_temp integer,
    obs_hum integer,
    obs_prec integer,
    obs_rad integer,
    obs_vis integer,
    obs_clouds integer,
    obs_presweather integer,
    obs_snowdepth integer,
    obs_soiltemp integer,
    lon double precision,
    lat double precision,
    height double precision
);


ALTER TABLE knmi.stations OWNER TO postgres;

--
-- Name: stations_gid_seq; Type: SEQUENCE; Schema: knmi; Owner: postgres
--

CREATE SEQUENCE stations_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE knmi.stations_gid_seq OWNER TO postgres;

--
-- Name: stations_gid_seq; Type: SEQUENCE OWNED BY; Schema: knmi; Owner: postgres
--

ALTER SEQUENCE stations_gid_seq OWNED BY stations.gid;


--
-- Name: gid; Type: DEFAULT; Schema: knmi; Owner: postgres
--

ALTER TABLE ONLY stations ALTER COLUMN gid SET DEFAULT nextval('stations_gid_seq'::regclass);


--
-- Data for Name: stations; Type: TABLE DATA; Schema: knmi; Owner: postgres
--

COPY stations (gid, point, wmo, station_code, name, obs_pres, obs_wind, obs_temp, obs_hum, obs_prec, obs_rad, obs_vis, obs_clouds, obs_presweather, obs_snowdepth, obs_soiltemp, lon, lat, height) FROM stdin;
1	0101000020E610000023DBF97E6A7C0740B55D0172AF294B40	 06201	201	D15-FA-1	1	1	1	1	0	0	1	1	1	0	0	2.93575000000000008	54.3256666666669972	42.7000000000000028
2	0101000020E610000007BCBBBBBBBB0A40AE47E17A142E4A40	 06203	203	P11-B	1	1	1	1	0	0	1	1	1	0	0	3.34166666666670009	52.3599999999999994	41.8400000000000034
3	0101000020E61000008DB0055BB0050D40E97CD2277DA24A40	 06204	204	K14-FA-1C	1	1	1	1	0	0	1	1	1	0	0	3.62777777777779997	53.2694444444439981	41.7999999999999972
4	0101000020E610000083D961EA727B0E407A7EB1E417B34B40	 06205	205	A12-CPP	1	1	1	1	0	0	1	1	1	0	0	3.81027777777780008	55.399166666667	48.3500000000000014
5	0101000020E610000049EA72FB830C10401EEFEEEEEE0E4B40	 06206	206	F16-A	1	1	1	1	0	0	1	1	1	0	0	4.01222222222220015	54.1166666666670011	43.3999999999999986
6	0101000020E61000005B86CA0E53D71340450C951DA6CE4A40	 06207	207	L9-FF-1	1	1	1	1	0	0	1	1	1	0	0	4.96027777777779999	53.6144444444439969	44
7	0101000020E61000006A44444444C417401EEFEEEEEEBE4A40	 06208	208	AWG-1	1	1	1	1	0	0	1	1	1	0	0	5.94166666666670018	53.4916666666670011	40.5
8	0101000020E6100000963C76CAC711124003DE49AB5B3B4A40	06209	209	IJMOND WP	0	1	0	0	0	0	0	0	0	0	0	4.51736370417270017	52.4637350187949991	0
9	0101000020E61000006B01D3B7C4B71140362384B5CA154A40	 06210	210	VALKENBURG AWS	1	1	1	1	1	1	1	1	1	0	0	4.42946135735869984	52.1702486891939969	-0.200000000000000011
10	0101000020E61000009787A9CBED8F0740A9DF2B1C7DE94A40	 06211	211	J6-A	1	1	1	1	0	0	1	1	1	0	0	2.94527777777779987	53.8241305555560032	45.7000000000000028
11	0101000020E61000001E7CF36AE299104017832DD882754A40	 06212	212	HOORN-A	1	1	1	1	0	0	1	1	1	0	0	4.15027777777780038	52.9180555555560019	50.8999999999999986
12	0101000020E6100000736437E2373812402A6E38C62A3B4A40	 06225	225	IJMUIDEN WP	0	1	0	0	0	0	0	0	0	0	0	4.55490067923630004	52.4622428679980004	4
13	0101000020E61000003D5E3C8FE41F1340E55A3A83A3764A40	 06235	235	DE KOOIJ VK	1	1	1	1	1	1	1	1	1	1	0	4.78114532285650018	52.926865008824997	1.21999999999999997
14	0101000020E6100000E76AE259D1C8124018192A3B4C6D4B40	 06239	239	F3-FB-1	1	1	1	1	0	0	1	1	1	0	0	4.69611111111110002	54.8538888888890028	50.6000000000000014
15	0101000020E6100000E689882D30291340D16AD34D5F284A40	 06240	240	AMSTERDAM/SCHIPHOL AP	1	1	1	1	1	1	1	1	1	1	0	4.79022284646860008	52.3154084474859999	-3.35000000000000009
16	0101000020E61000009CF869C2E3AE1340BA568831B99E4A40	06242	242	VLIELAND	1	1	1	1	0	0	1	1	1	0	0	4.9207907082729001	53.2400266566960028	10.7899999999999991
17	0101000020E6100000F2355229A3B114403B83F57CF3504A40	 06248	248	WIJDENES WP	0	1	0	0	0	0	0	0	0	0	0	5.17347397388719976	52.6324306677620015	0.800000000000000044
18	0101000020E610000050F38D563FEA13409B2751E443524A40	 06249	249	BERKHOUT AWS	0	1	1	1	1	1	1	0	1	0	0	4.97875724069020009	52.6426968952429988	-2.39999999999999991
19	0101000020E6100000C31392AE196215400132AA0015B24A40	 06251	251	TERSCHELLING HOORN AWS	1	1	1	1	1	1	1	0	1	1	0	5.34580109373650014	53.3912659483940004	0.729999999999999982
20	0101000020E61000009584A14487BF09408833522AD79B4A40	 06252	252	K13-A	1	1	1	1	0	0	1	0	0	0	0	3.21851972215569981	53.2175038243649965	37.6700000000000017
21	0101000020E61000008DA4517F66691240D491F1C7AE404A40	 06257	257	WIJK AAN ZEE AWS	0	0	1	1	1	1	0	0	0	0	0	4.60293005882080042	52.5053338937320007	8.5
22	0101000020E610000025EF4F58FF99154064B63ECDF7524A40	 06258	258	HOUTRIBDIJK WP	0	1	0	0	0	0	0	0	0	0	0	5.40038812625769982	52.6481873089039993	7.25
23	0101000020E610000042816BD004B8144080F55D31A60C4A40	 06260	260	DE BILT AWS	1	1	1	1	1	1	1	1	1	0	1	5.17970586448820036	52.0988218029769996	1.89999999999999991
24	0101000020E610000062B453B1AE8815403BC04D3AC5724A40	06267	267	STAVOREN AWS	0	1	1	1	1	1	1	1	1	1	0	5.38347889970200022	52.8966439132350033	-1.30000000000000004
25	0101000020E61000003CDD43841A1416404A6ADBD6873A4A40	 06269	269	LELYSTAD AP	1	1	1	1	1	1	1	1	1	1	0	5.51963240303239999	52.4572704860079995	-3.66000000000000014
26	0101000020E6100000FF2FE2959C0117409627AE478B9C4A40	 06270	270	LEEUWARDEN	1	1	1	1	1	1	1	1	1	1	0	5.7515738887122998	53.2230004883160035	1.21999999999999997
27	0101000020E6100000224F23B0BE8C17407001FDEFD7594A40	 06273	273	MARKNESSE AWS	0	1	1	1	1	1	1	0	1	0	1	5.88744616714009972	52.7019023881319981	-3.35000000000000009
28	0101000020E6100000F0BC5D1F427D17409C08FDB505074A40	 06275	275	DEELEN	1	1	1	1	1	1	1	1	1	1	0	5.87232254991180014	52.0548617825999997	48.1599999999999966
29	0101000020E610000033F6F8B9E0CB184055E289B0AEB44A40	 06277	277	LAUWERSOOG AWS	0	1	1	1	1	1	0	0	0	0	0	6.19909945089379999	53.4115811036360029	2.89999999999999991
30	0101000020E61000007862844631091940B1413AB89F374A40	 06278	278	HEINO AWS	0	1	1	1	1	1	0	0	0	0	0	6.25897703345309964	52.434561756558999	3.60000000000000009
31	0101000020E610000064373AADB84A1A4029CA7814E15F4A40	 06279	279	HOOGEVEEN AWS	1	1	1	1	1	1	1	1	1	1	0	6.57297011058640024	52.7490563955109977	15.8200000000000003
32	0101000020E61000003172E921E2561A404B76469FD48F4A40	06280	280	GRONINGEN AP EELDE	1	1	1	1	1	1	1	1	1	1	0	6.58484700190869976	53.1236762136510023	5.17999999999999972
33	0101000020E6100000597F009D7CA01A40E34482F6A4084A40	 06283	283	HUPSEL AWS	0	1	1	1	1	1	0	0	0	0	0	6.65672536197220044	52.0675342689590011	29.0700000000000003
34	0101000020E6100000F24A7EB1E497194074A8EC3075C94A40	 06285	285	HUIBERTGAT WP	0	1	0	0	0	0	0	0	0	0	0	6.39833333333329968	53.5738888888890017	0
35	0101000020E6100000E20BDAE1E7981C4075B0B369E2984A40	 06286	286	NIEUW BEERTA AWS	0	1	1	1	1	1	0	0	0	0	1	7.14932206052159991	53.1944095733059967	-0.200000000000000011
36	0101000020E6100000DB41686841901B403EACED84F6224A40	 06290	290	TWENTE AWS	1	1	1	1	1	1	1	1	1	1	0	6.89087451111160032	52.2731481705200025	34.75
37	0101000020E6100000D488888888080B40713D0AD7A3B04940	 06308	308	CADZAND WP	0	1	0	0	0	0	0	0	0	0	0	3.37916666666670018	51.3800000000000026	0
38	0101000020E61000009B50D6743FC40C40B2266DA27DB84940	 06310	310	VLISSINGEN AWS	1	1	1	1	1	1	1	1	1	0	0	3.59582415846859993	51.4413340599979989	8.02999999999999936
39	0101000020E6100000E9D06676A3610D401EE8E55B50B04940	 06311	311	HOOFDPLAAT	0	1	0	0	0	0	0	0	0	0	0	3.67267506123799992	51.3774523613540026	0
40	0101000020E61000007C0BD00DE0EF0C403F52D18041E24940	06312	312	OOSTERSCHELDE WP	0	1	0	0	0	0	0	0	0	0	0	3.61712656775620012	51.7676239988400013	0
41	0101000020E61000005A5BD521F5EF0940B14A2DD779C04940	 06313	313	VLAKTE VAN DE RAAN	0	1	0	0	0	0	0	0	0	0	0	3.24216677124370012	51.5037182780409992	0
42	0101000020E61000007B14AE47E1FA0F40E210111111B94940	 06315	315	HANSWEERT	0	1	0	0	0	0	0	0	0	0	0	3.99750000000000005	51.4458333333329989	0
43	0101000020E6100000DD872039388D0D407304EDD2F3D34940	 06316	316	OOSTERSCHELDE 4	0	1	0	0	0	0	0	0	0	0	0	3.69395489340329997	51.6558784158049988	0
44	0101000020E61000001D8206FF41E30E407756A8DAC49C4940	 06319	319	WESTDORPE AWS	1	1	1	1	1	1	1	0	1	1	0	3.86096572149860018	51.224757511325997	1.67999999999999994
45	0101000020E6100000D8AC6824E05B0D4064E6AFDF75F64940	 06320	320	LICHTEILAND GOEREE	1	1	1	1	0	0	1	0	1	0	0	3.66986111111109992	51.9254722222219982	22
46	0101000020E610000049C350ED12330A40B38734DEBCFF4940	 06321	321	EURO PLATFORM	1	1	1	1	0	0	1	0	0	0	0	3.27493844416349988	51.9979512936110027	19
47	0101000020E6100000FACA1E3E28061040C71D763436CC4940	 06324	324	STAVENISSE	0	1	0	0	0	0	0	0	0	0	0	4.00601288855500037	51.5954042031040032	0
48	0101000020E610000052CC7F2FC67C104084DD4E2FD7FE4940	06330	330	HOEK VAN HOLLAND AWS	1	1	1	1	1	1	0	0	0	0	0	4.12184976785199986	51.9909419188579989	11.8599999999999994
49	0101000020E610000085EB51B81EC51040ABDCFE2043BD4940	 06331	331	MAROLLEGAT	0	1	0	0	0	0	0	0	0	0	0	4.19249999999999989	51.4786111111110003	0
50	0101000020E6100000B91803EB385E11407B700BB14FB94940	 06340	340	WOENSDRECHT	1	1	1	1	1	0	1	1	1	0	0	4.34201399999999982	51.4477444940430004	19.1999999999999993
51	0101000020E6100000442F9BF22A401140C600E18327F24940	 06343	343	ROTTERDAM GEULHAVEN	0	1	0	0	0	0	0	0	0	0	0	4.31266383239909956	51.8918309067390027	3.5
52	0101000020E6100000DB69A549A0C9114056C3E625F7FA4940	 06344	344	ROTTERDAM THE HAGUE AP	1	1	1	1	1	1	1	1	1	1	0	4.44690051147559995	51.9606673599979985	-4.26999999999999957
53	0101000020E6100000013E6FD124B41340D093373609FC4940	 06348	348	CABAUW TOWER AWS	1	1	1	1	1	1	1	0	1	1	0	4.92592169991940043	51.9690311213850009	-0.709999999999999964
54	0101000020E61000003C034432AFBD1340919891484EC84940	 06350	350	GILZE RIJEN	1	1	1	1	1	1	1	1	1	1	0	4.93523863353840042	51.564889021961001	14.9399999999999995
55	0101000020E6100000F2859674E39414404F8E86A2C5ED4940	 06356	356	HERWIJNEN AWS	1	1	1	1	1	1	0	1	0	1	0	5.14539892357560014	51.8575938374530025	0.660000000000000031
56	0101000020E6100000064355510D821540AEF9DA2492B94940	06370	370	EINDHOVEN AP	1	1	1	1	1	1	1	1	1	0	0	5.37700392802140037	51.4497724599089992	22.5599999999999987
57	0101000020E61000007B47718D8DD31640428574A84AD44940	 06375	375	VOLKEL	1	1	1	1	1	1	1	1	1	1	0	5.70659466747189992	51.6585283822009984	21.9499999999999993
58	0101000020E610000013D92386D80C1740DA6860762D994940	 06377	377	ELL AWS	0	1	1	1	1	1	1	1	1	1	0	5.76254472345160007	51.1966999026059995	30
59	0101000020E610000071A84BF8100C1740EC15E36FDF734940	 06380	380	MAASTRICHT AACHEN AP	1	1	1	1	1	1	1	1	1	1	0	5.76178348504809978	50.905256257898003	114.299999999999997
60	0101000020E61000006D428037D0C81840D39645BBA7BF4940	 06391 	391	ARCEN AWS 	0	1	1	1	1	1	0	0	0	0	0	6.19610678406079973	51.4973062600889975	19.5
\.


--
-- Name: stations_gid_seq; Type: SEQUENCE SET; Schema: knmi; Owner: postgres
--

SELECT pg_catalog.setval('stations_gid_seq', 60, true);


--
-- Name: stations_pkey; Type: CONSTRAINT; Schema: knmi; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY stations
    ADD CONSTRAINT stations_pkey PRIMARY KEY (gid);


--
-- Name: stations_point_geom_idx; Type: INDEX; Schema: knmi; Owner: postgres; Tablespace: 
--

CREATE INDEX stations_point_geom_idx ON stations USING gist (point);


--
-- PostgreSQL database dump complete
--
