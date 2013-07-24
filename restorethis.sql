--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    url character varying(255),
    category character varying(255),
    tags character varying(255)
);


ALTER TABLE public.articles OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO apprentice;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE articles_id_seq OWNED BY articles.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE categories (
    id integer NOT NULL,
    category character varying(255),
    post_id integer
);


ALTER TABLE public.categories OWNER TO apprentice;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO apprentice;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE posts (
    id integer NOT NULL,
    title character varying(255),
    description text,
    url character varying(255)
);


ALTER TABLE public.posts OWNER TO apprentice;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO apprentice;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apprentice;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    tag character varying(255),
    post_id integer
);


ALTER TABLE public.tags OWNER TO apprentice;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: apprentice
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO apprentice;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: apprentice
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles (id, title, description, url, category, tags) FROM stdin;
1	numquam eos eligendi	Quis corrupti pariatur. Aut qui numquam. Quibusdam quidem facilis ut quia sed in. Vel sequi rerum quod aliquid ut facere praesentium. Cumque aut perferendis nisi.	articles/7/23/2013/numquam-eos-eligendi	Business	jquery
2	dicta aspernatur hic	Neque enim omnis nam repellat dignissimos quidem accusantium. Animi voluptatem quisquam debitis molestiae hic rerum in. Et architecto repudiandae.	articles/7/23/2013/dicta-aspernatur-hic	HEALTH	ruby, random
3	consectetur sint mollitia	Nihil at non praesentium ad. Et est et quisquam velit. Deserunt laudantium odio libero nam aspernatur voluptas ut. Enim unde dolorem ad et et.	articles/7/23/2013/consectetur-sint-mollitia	HEALTH	medicine
4	qui voluptas quis	Ex sed eum ad quibusdam. Dicta voluptas et ut voluptatem. Vel et cupiditate eligendi possimus ipsum. Et ipsam quam perspiciatis qui alias sed debitis. Et et laborum.	articles/7/23/2013/qui-voluptas-quis	computer-world	medicine
5	debitis incidunt alias	Harum tenetur ut eos. Laborum eum doloribus delectus. Velit voluptatibus quasi veniam et architecto. Quis magnam voluptates accusamus et sed. Nihil dolor odit autem quo sit adipisci ea.	articles/7/23/2013/debitis-incidunt-alias	HEALTH	
6	nostrum dignissimos adipisci	Ex similique pariatur. Est iusto qui. Itaque ducimus quae praesentium nobis non. Consequatur eligendi ut eaque sed nihil qui.	articles/7/23/2013/nostrum-dignissimos-adipisci	Sports	random-tags, medicine, art
7	ipsam est nulla	Voluptatem excepturi atque porro error doloribus. Veritatis nihil minus et suscipit error. Aut laboriosam pariatur perspiciatis minus totam ex.	articles/7/23/2013/ipsam-est-nulla	Business	tech, jquery
8	eos expedita veritatis	Voluptas qui ullam et iste maxime recusandae quae. Libero et doloremque. Sunt cumque numquam aspernatur ut.	articles/7/23/2013/eos-expedita-veritatis	programming	ruby
9	quia ut vitae	Rem explicabo aut veniam consequatur. A sapiente consectetur sit facilis aliquid occaecati minus. Nam vero reprehenderit omnis ut eos commodi. Delectus totam expedita repellat eum repellendus vel molestiae.	articles/7/23/2013/quia-ut-vitae	HEALTH	art, cloud
10	vel at sed	Doloremque ex vitae nihil rerum minima provident necessitatibus. Qui aut voluptatem ipsam labore omnis saepe sapiente. Aut vel dolor hic minima. Beatae expedita quia libero sequi. Temporibus recusandae quidem magni eligendi ipsa qui exercitationem.	articles/7/23/2013/vel-at-sed	HEALTH	tech, hate
11	quam dolorum sit	Voluptatem in dolorem minus. Adipisci in nihil excepturi ipsa. Consequatur est vel sed quisquam. Qui aut eos. Minima provident aut hic at quia.	articles/7/23/2013/quam-dolorum-sit	business	cloud, hate, love
12	aliquid autem et	Rerum aspernatur exercitationem cupiditate et totam sed. Blanditiis ad in modi est quis. Accusamus quibusdam dolore odio aut. Exercitationem doloribus nisi minus sequi.	articles/7/23/2013/aliquid-autem-et	business	widget
13	et occaecati aut	Omnis vel veritatis aut dolore neque. Voluptatem non error voluptate. Molestiae qui quia iusto deleniti possimus impedit quae.	articles/7/23/2013/et-occaecati-aut	programming	music, love
14	a quas labore	Molestias id quia est adipisci. Est aut minima. Aut minima sint quia. Eligendi error suscipit quia.	articles/7/23/2013/a-quas-labore	computer-world	random-tags
15	incidunt illum magni	Facere reiciendis nam consectetur. Maiores officiis numquam ipsum tenetur aperiam et. Qui neque perferendis dolorem. Sed impedit sed ut ea earum. Iusto occaecati rerum ea ut eius.	articles/7/23/2013/incidunt-illum-magni	Business	
16	quae sed incidunt	Vel qui natus illo quibusdam facere eos minima. In quia earum qui. Enim expedita perspiciatis. Vero sunt dolor voluptas numquam nulla. Omnis saepe ea maxime rem laboriosam et.	articles/7/23/2013/quae-sed-incidunt	HEALTH	
17	et est quo	Dolor et rerum rerum neque molestias quasi. Quisquam fuga ut ea officia vel. Eum eos consequatur sapiente libero autem enim magni.	articles/7/23/2013/et-est-quo	sport	tech
18	voluptas quis sed	Hic vel adipisci laboriosam. Iste sint cupiditate. In veritatis natus fugit tempora.	articles/7/23/2013/voluptas-quis-sed	programming	cloud, hate
19	adipisci eum qui	Dolorum et assumenda vel. Maiores ea voluptates vel quisquam. Praesentium non alias ut est.	articles/7/23/2013/adipisci-eum-qui	sport	widget, jquery, art
20	voluptatem possimus voluptas	Veritatis veniam sit tempora ab. Ullam vel labore. Maiores rerum et sapiente beatae non. Qui perferendis non ut ipsam aut sapiente. Nisi iure est vel ut.	articles/7/23/2013/voluptatem-possimus-voluptas	HEALTH	hate, cloud, rails
21	distinctio atque nihil	In porro sit. Fugiat aspernatur doloribus expedita ad voluptas. Error qui quia. Expedita sit ut autem.	articles/7/23/2013/distinctio-atque-nihil	HEALTH	love
22	dolore qui blanditiis	Et animi numquam magnam inventore et cupiditate. Sit quasi maiores quaerat voluptate fuga. Non consequatur repellat fugiat quos. Qui et earum ut consectetur impedit voluptates neque.	articles/7/23/2013/dolore-qui-blanditiis	programming	
23	quia saepe animi	Quia maxime quam. Dolores dignissimos aut est et enim. Alias sed est. Voluptatem earum consectetur vel et ut. Unde quia dolorum aut cum.	articles/7/23/2013/quia-saepe-animi	computer-world	hate, random-tags
24	quo consequatur eos	Laudantium iste fugit aut. Eligendi nihil quo est possimus sunt molestiae aut. Accusantium harum temporibus earum molestias. Et voluptatem quaerat est ex molestias eveniet.	articles/7/23/2013/quo-consequatur-eos	business	random, random-tags, cloud
25	dolorem voluptas consectetur	Molestias rerum dolorem eligendi veniam. Vel ut sit quia ullam vero. Distinctio ut impedit voluptates. Ratione sit magni aperiam et sed.	articles/7/23/2013/dolorem-voluptas-consectetur	sport	cloud
26	distinctio dolor et	Voluptatibus et adipisci modi distinctio. Explicabo ea doloremque corporis. Id enim tempora ratione. Odit quis ex et. Necessitatibus dicta corrupti tempore aut molestiae sunt veritatis.	articles/7/23/2013/distinctio-dolor-et	Business	
27	quibusdam qui et	Doloribus laborum eos quia et. Similique sit minima. In neque dolores eos eveniet rerum minima.	articles/7/23/2013/quibusdam-qui-et	Business	widget, random-tags, hate
28	exercitationem sequi eligendi	Distinctio qui odio culpa qui officia aliquid dolores. Quas ducimus quasi natus architecto nobis. Excepturi dicta provident ab. Rem cumque veniam. Quis voluptatem aliquam delectus optio eum tempora.	articles/7/23/2013/exercitationem-sequi-eligendi	Business	rails
29	animi necessitatibus atque	Sed eum provident et aut maiores atque. Officiis esse incidunt sequi quia in eum. Quos delectus sunt eum officiis beatae. Maiores nobis sint amet cupiditate sit id dolore.	articles/7/23/2013/animi-necessitatibus-atque	computer-world	
30	aperiam rem consectetur	Corrupti quasi et voluptatem cumque et deleniti. Ut voluptatum quis. Eum molestias ut nobis maxime. Ut ullam sint maiores ea dolore in. Nulla officia dolores eius inventore nihil repudiandae.	articles/7/23/2013/aperiam-rem-consectetur	Sports	widget, cloud, rails
31	incidunt molestiae voluptate	Sit voluptatem ex et optio. Molestias maiores occaecati rerum voluptas modi dolor. Sit qui amet veritatis minus hic totam odio.	articles/7/23/2013/incidunt-molestiae-voluptate	programming	cloud
32	et excepturi esse	Hic et ea voluptas est voluptas animi nemo. Accusantium porro deleniti in nam est distinctio. Aut quae vel.	articles/7/23/2013/et-excepturi-esse	HEALTH	art, cloud
33	et qui voluptatem	Recusandae sed aspernatur excepturi veniam voluptatum. Inventore iure accusantium. Et facilis quaerat aut. Distinctio ut nam. Dolore qui animi consequatur quos.	articles/7/23/2013/et-qui-voluptatem	business	
34	consequatur necessitatibus totam	Iste rerum numquam officia veniam porro ratione. Eum minima atque voluptatem eos aperiam tempora. Harum ea aperiam laudantium deserunt asperiores. Est molestiae dolorum. Voluptas sit maxime.	articles/7/23/2013/consequatur-necessitatibus-totam	business	love, jquery
35	sunt dolor alias	Aut dolores neque est ut. Dolorum laboriosam veniam. Consequatur ullam corporis dolores perferendis vero sed. Id autem dolores et maiores eaque nesciunt cum.	articles/7/23/2013/sunt-dolor-alias	business	random, random-tags, cloud
36	illum ullam delectus	Recusandae magni voluptatem qui similique veniam quis. Quidem hic temporibus vero officia nihil. Vel hic voluptatem. Aut earum assumenda in omnis accusantium.	articles/7/23/2013/illum-ullam-delectus	sport	jquery
37	maxime accusamus in	Qui tempore cupiditate tempora ratione. Qui at non est in et id. Qui corporis voluptas dolore quibusdam ea voluptatum sequi. Dolorem earum qui illum numquam assumenda.	articles/7/23/2013/maxime-accusamus-in	HEALTH	
38	consequuntur reiciendis soluta	Ea quo dolor quas enim voluptatum et. At saepe nam cupiditate ea. Velit fuga repudiandae voluptatem dignissimos. Et qui et aut.	articles/7/23/2013/consequuntur-reiciendis-soluta	Sports	ruby
39	eligendi qui omnis	Tempora laboriosam ullam culpa voluptas illo doloremque. Id consequuntur rerum. Vero ducimus natus sunt dicta ab. Est harum odit.	articles/7/23/2013/eligendi-qui-omnis	sport	widget
40	quis illo sint	Eos aperiam voluptatem quia est. Dicta recusandae quaerat qui. Eligendi corporis molestias nulla fugit et. Enim qui asperiores.	articles/7/23/2013/quis-illo-sint	HEALTH	rails, tech, jquery
41	rerum eveniet et	Quasi necessitatibus et nisi similique velit nihil ipsa. Rerum repellat voluptatem aut excepturi sunt dolores. Temporibus rem velit quia sit.	articles/7/23/2013/rerum-eveniet-et	programming	cloud, rails
42	dolorem rerum molestiae	Voluptatem provident qui. Consequatur consequuntur quia necessitatibus distinctio. Sint laboriosam ut ratione nihil.	articles/7/23/2013/dolorem-rerum-molestiae	programming	jquery, rails
43	perferendis sapiente reprehenderit	Cupiditate nisi officiis voluptate debitis. Atque error aut in illo id quia aut. Omnis ut odit ut.	articles/7/23/2013/perferendis-sapiente-reprehenderit	sport	cloud, art
44	quisquam vel voluptatem	Et vero rerum accusantium porro. Ut unde possimus. Nulla odit voluptas qui nihil.	articles/7/23/2013/quisquam-vel-voluptatem	programming	jquery
45	consequatur vel dolorum	Dolore et distinctio ipsam qui et. Nihil id eligendi non nostrum commodi quod inventore. Similique in optio ipsa et nobis voluptatibus porro. Quidem et veniam sint necessitatibus. Cum quam quibusdam.	articles/7/23/2013/consequatur-vel-dolorum	sport	music
46	officiis qui sapiente	Deserunt et dicta aut. Accusantium praesentium corrupti impedit et aut deleniti. Blanditiis assumenda porro. Rem eum nisi inventore iste. Qui sed vel.	articles/7/23/2013/officiis-qui-sapiente	computer-world	random, music
47	minus nobis error	Eos omnis architecto iusto dicta adipisci magnam. Commodi ut quidem rerum. Laudantium quas nulla alias enim atque molestiae est.	articles/7/23/2013/minus-nobis-error	programming	tech, cloud, widget
48	aut minus molestias	Tenetur rerum modi accusamus dolores. Dolores sequi recusandae ut. Non et id rerum sed in. Quas animi et voluptatem. Aliquid fugiat aut occaecati dolorem ad eius ipsam.	articles/7/23/2013/aut-minus-molestias	HEALTH	
49	adipisci et provident	Expedita magnam facere velit sed modi hic. Atque quas in et iusto. Quia sit et accusamus quia porro voluptas. Sapiente vel sed rerum aspernatur animi. Rerum culpa eum quod.	articles/7/23/2013/adipisci-et-provident	Business	
50	eveniet magnam velit	Iure expedita porro pariatur numquam id. Consequatur optio nobis. Vero maiores quis et.	articles/7/23/2013/eveniet-magnam-velit	programming	
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_id_seq', 50, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY categories (id, category, post_id) FROM stdin;
101	Business	1
102	HEALTH	2
103	HEALTH	3
104	computer-world	4
105	HEALTH	5
106	Sports	6
107	Business	7
108	programming	8
109	HEALTH	9
110	HEALTH	10
111	business	11
112	business	12
113	programming	13
114	computer-world	14
115	Business	15
116	HEALTH	16
117	sport	17
118	programming	18
119	sport	19
120	HEALTH	20
121	HEALTH	21
122	programming	22
123	computer-world	23
124	business	24
125	sport	25
126	Business	26
127	Business	27
128	Business	28
129	computer-world	29
130	Sports	30
131	programming	31
132	HEALTH	32
133	business	33
134	business	34
135	business	35
136	sport	36
137	HEALTH	37
138	Sports	38
139	sport	39
140	HEALTH	40
141	programming	41
142	programming	42
143	sport	43
144	programming	44
145	sport	45
146	computer-world	46
147	programming	47
148	HEALTH	48
149	Business	49
150	programming	50
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('categories_id_seq', 150, true);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY posts (id, title, description, url) FROM stdin;
206	numquam eos eligendi	Quis corrupti pariatur. Aut qui numquam. Quibusdam quidem facilis ut quia sed in. Vel sequi rerum quod aliquid ut facere praesentium. Cumque aut perferendis nisi.	articles/7/23/2013/numquam-eos-eligendi
207	dicta aspernatur hic	Neque enim omnis nam repellat dignissimos quidem accusantium. Animi voluptatem quisquam debitis molestiae hic rerum in. Et architecto repudiandae.	articles/7/23/2013/dicta-aspernatur-hic
208	consectetur sint mollitia	Nihil at non praesentium ad. Et est et quisquam velit. Deserunt laudantium odio libero nam aspernatur voluptas ut. Enim unde dolorem ad et et.	articles/7/23/2013/consectetur-sint-mollitia
209	qui voluptas quis	Ex sed eum ad quibusdam. Dicta voluptas et ut voluptatem. Vel et cupiditate eligendi possimus ipsum. Et ipsam quam perspiciatis qui alias sed debitis. Et et laborum.	articles/7/23/2013/qui-voluptas-quis
210	debitis incidunt alias	Harum tenetur ut eos. Laborum eum doloribus delectus. Velit voluptatibus quasi veniam et architecto. Quis magnam voluptates accusamus et sed. Nihil dolor odit autem quo sit adipisci ea.	articles/7/23/2013/debitis-incidunt-alias
211	nostrum dignissimos adipisci	Ex similique pariatur. Est iusto qui. Itaque ducimus quae praesentium nobis non. Consequatur eligendi ut eaque sed nihil qui.	articles/7/23/2013/nostrum-dignissimos-adipisci
212	ipsam est nulla	Voluptatem excepturi atque porro error doloribus. Veritatis nihil minus et suscipit error. Aut laboriosam pariatur perspiciatis minus totam ex.	articles/7/23/2013/ipsam-est-nulla
213	eos expedita veritatis	Voluptas qui ullam et iste maxime recusandae quae. Libero et doloremque. Sunt cumque numquam aspernatur ut.	articles/7/23/2013/eos-expedita-veritatis
214	quia ut vitae	Rem explicabo aut veniam consequatur. A sapiente consectetur sit facilis aliquid occaecati minus. Nam vero reprehenderit omnis ut eos commodi. Delectus totam expedita repellat eum repellendus vel molestiae.	articles/7/23/2013/quia-ut-vitae
215	vel at sed	Doloremque ex vitae nihil rerum minima provident necessitatibus. Qui aut voluptatem ipsam labore omnis saepe sapiente. Aut vel dolor hic minima. Beatae expedita quia libero sequi. Temporibus recusandae quidem magni eligendi ipsa qui exercitationem.	articles/7/23/2013/vel-at-sed
216	quam dolorum sit	Voluptatem in dolorem minus. Adipisci in nihil excepturi ipsa. Consequatur est vel sed quisquam. Qui aut eos. Minima provident aut hic at quia.	articles/7/23/2013/quam-dolorum-sit
217	aliquid autem et	Rerum aspernatur exercitationem cupiditate et totam sed. Blanditiis ad in modi est quis. Accusamus quibusdam dolore odio aut. Exercitationem doloribus nisi minus sequi.	articles/7/23/2013/aliquid-autem-et
218	et occaecati aut	Omnis vel veritatis aut dolore neque. Voluptatem non error voluptate. Molestiae qui quia iusto deleniti possimus impedit quae.	articles/7/23/2013/et-occaecati-aut
219	a quas labore	Molestias id quia est adipisci. Est aut minima. Aut minima sint quia. Eligendi error suscipit quia.	articles/7/23/2013/a-quas-labore
220	incidunt illum magni	Facere reiciendis nam consectetur. Maiores officiis numquam ipsum tenetur aperiam et. Qui neque perferendis dolorem. Sed impedit sed ut ea earum. Iusto occaecati rerum ea ut eius.	articles/7/23/2013/incidunt-illum-magni
221	quae sed incidunt	Vel qui natus illo quibusdam facere eos minima. In quia earum qui. Enim expedita perspiciatis. Vero sunt dolor voluptas numquam nulla. Omnis saepe ea maxime rem laboriosam et.	articles/7/23/2013/quae-sed-incidunt
222	et est quo	Dolor et rerum rerum neque molestias quasi. Quisquam fuga ut ea officia vel. Eum eos consequatur sapiente libero autem enim magni.	articles/7/23/2013/et-est-quo
223	voluptas quis sed	Hic vel adipisci laboriosam. Iste sint cupiditate. In veritatis natus fugit tempora.	articles/7/23/2013/voluptas-quis-sed
224	adipisci eum qui	Dolorum et assumenda vel. Maiores ea voluptates vel quisquam. Praesentium non alias ut est.	articles/7/23/2013/adipisci-eum-qui
225	voluptatem possimus voluptas	Veritatis veniam sit tempora ab. Ullam vel labore. Maiores rerum et sapiente beatae non. Qui perferendis non ut ipsam aut sapiente. Nisi iure est vel ut.	articles/7/23/2013/voluptatem-possimus-voluptas
226	distinctio atque nihil	In porro sit. Fugiat aspernatur doloribus expedita ad voluptas. Error qui quia. Expedita sit ut autem.	articles/7/23/2013/distinctio-atque-nihil
227	dolore qui blanditiis	Et animi numquam magnam inventore et cupiditate. Sit quasi maiores quaerat voluptate fuga. Non consequatur repellat fugiat quos. Qui et earum ut consectetur impedit voluptates neque.	articles/7/23/2013/dolore-qui-blanditiis
228	quia saepe animi	Quia maxime quam. Dolores dignissimos aut est et enim. Alias sed est. Voluptatem earum consectetur vel et ut. Unde quia dolorum aut cum.	articles/7/23/2013/quia-saepe-animi
229	quo consequatur eos	Laudantium iste fugit aut. Eligendi nihil quo est possimus sunt molestiae aut. Accusantium harum temporibus earum molestias. Et voluptatem quaerat est ex molestias eveniet.	articles/7/23/2013/quo-consequatur-eos
230	dolorem voluptas consectetur	Molestias rerum dolorem eligendi veniam. Vel ut sit quia ullam vero. Distinctio ut impedit voluptates. Ratione sit magni aperiam et sed.	articles/7/23/2013/dolorem-voluptas-consectetur
231	distinctio dolor et	Voluptatibus et adipisci modi distinctio. Explicabo ea doloremque corporis. Id enim tempora ratione. Odit quis ex et. Necessitatibus dicta corrupti tempore aut molestiae sunt veritatis.	articles/7/23/2013/distinctio-dolor-et
232	quibusdam qui et	Doloribus laborum eos quia et. Similique sit minima. In neque dolores eos eveniet rerum minima.	articles/7/23/2013/quibusdam-qui-et
233	exercitationem sequi eligendi	Distinctio qui odio culpa qui officia aliquid dolores. Quas ducimus quasi natus architecto nobis. Excepturi dicta provident ab. Rem cumque veniam. Quis voluptatem aliquam delectus optio eum tempora.	articles/7/23/2013/exercitationem-sequi-eligendi
234	animi necessitatibus atque	Sed eum provident et aut maiores atque. Officiis esse incidunt sequi quia in eum. Quos delectus sunt eum officiis beatae. Maiores nobis sint amet cupiditate sit id dolore.	articles/7/23/2013/animi-necessitatibus-atque
235	aperiam rem consectetur	Corrupti quasi et voluptatem cumque et deleniti. Ut voluptatum quis. Eum molestias ut nobis maxime. Ut ullam sint maiores ea dolore in. Nulla officia dolores eius inventore nihil repudiandae.	articles/7/23/2013/aperiam-rem-consectetur
236	incidunt molestiae voluptate	Sit voluptatem ex et optio. Molestias maiores occaecati rerum voluptas modi dolor. Sit qui amet veritatis minus hic totam odio.	articles/7/23/2013/incidunt-molestiae-voluptate
237	et excepturi esse	Hic et ea voluptas est voluptas animi nemo. Accusantium porro deleniti in nam est distinctio. Aut quae vel.	articles/7/23/2013/et-excepturi-esse
238	et qui voluptatem	Recusandae sed aspernatur excepturi veniam voluptatum. Inventore iure accusantium. Et facilis quaerat aut. Distinctio ut nam. Dolore qui animi consequatur quos.	articles/7/23/2013/et-qui-voluptatem
239	consequatur necessitatibus totam	Iste rerum numquam officia veniam porro ratione. Eum minima atque voluptatem eos aperiam tempora. Harum ea aperiam laudantium deserunt asperiores. Est molestiae dolorum. Voluptas sit maxime.	articles/7/23/2013/consequatur-necessitatibus-totam
240	sunt dolor alias	Aut dolores neque est ut. Dolorum laboriosam veniam. Consequatur ullam corporis dolores perferendis vero sed. Id autem dolores et maiores eaque nesciunt cum.	articles/7/23/2013/sunt-dolor-alias
241	illum ullam delectus	Recusandae magni voluptatem qui similique veniam quis. Quidem hic temporibus vero officia nihil. Vel hic voluptatem. Aut earum assumenda in omnis accusantium.	articles/7/23/2013/illum-ullam-delectus
242	maxime accusamus in	Qui tempore cupiditate tempora ratione. Qui at non est in et id. Qui corporis voluptas dolore quibusdam ea voluptatum sequi. Dolorem earum qui illum numquam assumenda.	articles/7/23/2013/maxime-accusamus-in
243	consequuntur reiciendis soluta	Ea quo dolor quas enim voluptatum et. At saepe nam cupiditate ea. Velit fuga repudiandae voluptatem dignissimos. Et qui et aut.	articles/7/23/2013/consequuntur-reiciendis-soluta
244	eligendi qui omnis	Tempora laboriosam ullam culpa voluptas illo doloremque. Id consequuntur rerum. Vero ducimus natus sunt dicta ab. Est harum odit.	articles/7/23/2013/eligendi-qui-omnis
245	quis illo sint	Eos aperiam voluptatem quia est. Dicta recusandae quaerat qui. Eligendi corporis molestias nulla fugit et. Enim qui asperiores.	articles/7/23/2013/quis-illo-sint
246	rerum eveniet et	Quasi necessitatibus et nisi similique velit nihil ipsa. Rerum repellat voluptatem aut excepturi sunt dolores. Temporibus rem velit quia sit.	articles/7/23/2013/rerum-eveniet-et
247	dolorem rerum molestiae	Voluptatem provident qui. Consequatur consequuntur quia necessitatibus distinctio. Sint laboriosam ut ratione nihil.	articles/7/23/2013/dolorem-rerum-molestiae
248	perferendis sapiente reprehenderit	Cupiditate nisi officiis voluptate debitis. Atque error aut in illo id quia aut. Omnis ut odit ut.	articles/7/23/2013/perferendis-sapiente-reprehenderit
249	quisquam vel voluptatem	Et vero rerum accusantium porro. Ut unde possimus. Nulla odit voluptas qui nihil.	articles/7/23/2013/quisquam-vel-voluptatem
250	consequatur vel dolorum	Dolore et distinctio ipsam qui et. Nihil id eligendi non nostrum commodi quod inventore. Similique in optio ipsa et nobis voluptatibus porro. Quidem et veniam sint necessitatibus. Cum quam quibusdam.	articles/7/23/2013/consequatur-vel-dolorum
251	officiis qui sapiente	Deserunt et dicta aut. Accusantium praesentium corrupti impedit et aut deleniti. Blanditiis assumenda porro. Rem eum nisi inventore iste. Qui sed vel.	articles/7/23/2013/officiis-qui-sapiente
252	minus nobis error	Eos omnis architecto iusto dicta adipisci magnam. Commodi ut quidem rerum. Laudantium quas nulla alias enim atque molestiae est.	articles/7/23/2013/minus-nobis-error
253	aut minus molestias	Tenetur rerum modi accusamus dolores. Dolores sequi recusandae ut. Non et id rerum sed in. Quas animi et voluptatem. Aliquid fugiat aut occaecati dolorem ad eius ipsam.	articles/7/23/2013/aut-minus-molestias
254	adipisci et provident	Expedita magnam facere velit sed modi hic. Atque quas in et iusto. Quia sit et accusamus quia porro voluptas. Sapiente vel sed rerum aspernatur animi. Rerum culpa eum quod.	articles/7/23/2013/adipisci-et-provident
255	eveniet magnam velit	Iure expedita porro pariatur numquam id. Consequatur optio nobis. Vero maiores quis et.	articles/7/23/2013/eveniet-magnam-velit
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('posts_id_seq', 255, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY schema_migrations (version) FROM stdin;
20130311183138
20130723173301
20130723181747
20130723181755
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY tags (id, tag, post_id) FROM stdin;
102	jquery	1
103	ruby, random	2
104	medicine	3
105	medicine	4
106		5
107	random-tags, medicine, art	6
108	tech, jquery	7
109	ruby	8
110	art, cloud	9
111	tech, hate	10
112	cloud, hate, love	11
113	widget	12
114	music, love	13
115	random-tags	14
116		15
117		16
118	tech	17
119	cloud, hate	18
120	widget, jquery, art	19
121	hate, cloud, rails	20
122	love	21
123		22
124	hate, random-tags	23
125	random, random-tags, cloud	24
126	cloud	25
127		26
128	widget, random-tags, hate	27
129	rails	28
130		29
131	widget, cloud, rails	30
132	cloud	31
133	art, cloud	32
134		33
135	love, jquery	34
136	random, random-tags, cloud	35
137	jquery	36
138		37
139	ruby	38
140	widget	39
141	rails, tech, jquery	40
142	cloud, rails	41
143	jquery, rails	42
144	cloud, art	43
145	jquery	44
146	music	45
147	random, music	46
148	tech, cloud, widget	47
149		48
150		49
151		50
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('tags_id_seq', 151, true);


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: apprentice
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM apprentice;
GRANT ALL ON SCHEMA public TO apprentice;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

