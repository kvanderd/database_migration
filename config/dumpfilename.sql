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
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: apprentice; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO apprentice;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: apprentice
--

ALTER TABLE ONLY articles ALTER COLUMN id SET DEFAULT nextval('articles_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY articles (id, title, description, url, category, tags) FROM stdin;
1	assumenda voluptates quam	Fugiat exercitationem nihil est voluptas maxime eaque pariatur. Fugiat id est libero dolore impedit enim. Necessitatibus iure facere repudiandae iste consequuntur et. Ab qui rerum.	articles/7/23/2013/assumenda-voluptates-quam	Sports	
2	in eum omnis	Voluptate placeat reiciendis et laboriosam. Quo et ratione qui. Aspernatur in molestiae. Eum quae ut maxime nam fugiat maiores nemo. Eum est quaerat.	articles/7/23/2013/in-eum-omnis	computer-world	random-tags
3	quibusdam error dolor	Possimus quia dolor. Et ea est dolor omnis. Velit omnis deleniti. Eum laborum molestiae magnam dolor.	articles/7/23/2013/quibusdam-error-dolor	sport	hate
4	dolores dignissimos vero	Magnam et et sit blanditiis. Et id harum officiis repudiandae aut repellendus. Fuga inventore aliquam ipsa est. Est et nesciunt distinctio. Consequatur recusandae vel.	articles/7/23/2013/dolores-dignissimos-vero	computer-world	
5	mollitia totam doloribus	Est voluptatibus perferendis eum. Molestias earum perspiciatis impedit quia vero et. Distinctio aut ab dolorum blanditiis qui saepe. Unde eligendi ipsum. Id ad veniam neque.	articles/7/23/2013/mollitia-totam-doloribus	Business	
6	maxime quo expedita	Optio dignissimos eum blanditiis fugit. Repellendus nesciunt et. Et ducimus laudantium porro et ab maiores rem. Veniam maiores harum in autem doloribus repellat. Error consequatur officiis.	articles/7/23/2013/maxime-quo-expedita	computer world	
7	nulla nostrum reiciendis	Pariatur placeat minima nesciunt voluptate. Blanditiis officiis dolores. Asperiores quas ea fuga ex et hic nobis.	articles/7/23/2013/nulla-nostrum-reiciendis	Business	
8	fuga aperiam eaque	Eaque dolor repellendus. Quas ipsa consectetur occaecati quo qui nesciunt. Illum omnis voluptas temporibus qui. Est architecto quis unde sed atque.	articles/7/23/2013/fuga-aperiam-eaque	computer-world	medicine
9	voluptatem tempore quia	Commodi voluptas consequatur. Ea delectus repellendus consectetur aperiam aut est incidunt. Consectetur numquam non.	articles/7/23/2013/voluptatem-tempore-quia	Business	art, random
10	voluptatem magni expedita	Sunt perspiciatis omnis et. Dolorem asperiores est dolor. Mollitia sit et. Laudantium recusandae aut accusantium dolore.	articles/7/23/2013/voluptatem-magni-expedita	business	love, random, music
11	nihil suscipit itaque	Ullam culpa quibusdam. Qui aliquid sapiente necessitatibus quia quas quam delectus. Nostrum in sit sequi. Dolores autem eaque enim nobis suscipit sed aut. Reprehenderit quidem et deleniti dolorem.	articles/7/23/2013/nihil-suscipit-itaque	Sports	rails
12	ut excepturi eos	Praesentium est dolores cumque. Est eveniet odit ut est alias deleniti voluptatem. Ratione qui quia sint non ipsam.	articles/7/23/2013/ut-excepturi-eos	programming	
13	quis ea qui	Est cupiditate vel vel laboriosam. Et quia odio. Eum ut ut voluptates et sapiente. Sint excepturi illo incidunt. Et repellat omnis.	articles/7/23/2013/quis-ea-qui	business	jquery, random-tags
14	ab excepturi harum	Ut omnis est voluptatem. Sapiente dolores qui omnis eius modi occaecati sunt. Impedit cupiditate exercitationem id. Nobis nesciunt libero recusandae.	articles/7/23/2013/ab-excepturi-harum	computer world	
15	adipisci vel maxime	Explicabo non porro rerum ut alias ea. Fuga molestias exercitationem blanditiis. Labore id est minima pariatur vel. Sit reprehenderit non minima aut.	articles/7/23/2013/adipisci-vel-maxime	HEALTH	art
16	quis sed sed	Sed ut quia numquam distinctio. Ea sed omnis. Perferendis et quas iste voluptatem pariatur explicabo aut. Provident velit corporis molestiae.	articles/7/23/2013/quis-sed-sed	business	
17	hic provident aspernatur	A iure odit minus. Ipsa quis nihil ut. Nobis laborum ut illum similique.	articles/7/23/2013/hic-provident-aspernatur	HEALTH	
18	doloremque suscipit et	Voluptas ut corporis et a earum quo. Quis quod eos. Enim vel sunt odit non.	articles/7/23/2013/doloremque-suscipit-et	HEALTH	hate
19	expedita earum quis	Cumque blanditiis architecto. Quia eum sit omnis nam recusandae. Illum dolorem dignissimos aut dicta tenetur mollitia sed. Autem hic molestiae.	articles/7/23/2013/expedita-earum-quis	Sports	
20	deserunt voluptate ullam	Delectus rerum fugiat et qui asperiores beatae voluptatem. Quidem earum sequi praesentium fugit quis inventore. Iure ab provident eos.	articles/7/23/2013/deserunt-voluptate-ullam	business	love, cloud, jquery
21	voluptates magni rerum	Dolor commodi omnis. Maxime fugiat assumenda et mollitia. Ut debitis velit architecto.	articles/7/23/2013/voluptates-magni-rerum	computer-world	rails
22	aperiam tempore autem	Molestiae earum vel sint inventore officia ut eum. Dolores eligendi inventore suscipit aut nihil nesciunt rerum. Iste dolorum laborum provident sint officia. Est a dignissimos.	articles/7/23/2013/aperiam-tempore-autem	computer-world	art
23	possimus iste asperiores	Et voluptatem dicta ipsa veritatis. Consequatur amet aut impedit eum vel qui illo. Temporibus cum suscipit aspernatur quis. Dignissimos sed cumque quo optio distinctio illo.	articles/7/23/2013/possimus-iste-asperiores	Business	rails, random-tags
24	odit dolor non	Repudiandae quae et veniam doloremque. Aut porro incidunt doloremque voluptatibus et tenetur omnis. Ullam est assumenda sint est quis sunt autem.	articles/7/23/2013/odit-dolor-non	HEALTH	
25	aut temporibus voluptatem	Numquam perspiciatis ratione ipsum dolores mollitia. Ipsum aut inventore. Fugit ut non dolor hic laborum accusamus doloremque. Perferendis quae quo vero quos iusto ipsa quod.	articles/7/23/2013/aut-temporibus-voluptatem	business	
26	sunt corporis consequatur	Esse rerum quia ut. Aut porro rem. Repellendus deserunt sint doloremque eos numquam ipsum.	articles/7/23/2013/sunt-corporis-consequatur	Sports	
27	qui dolorem natus	Ducimus dolor autem. Voluptas dolorum officiis fugit. Est autem voluptatem eum sit ratione.	articles/7/23/2013/qui-dolorem-natus	computer world	cloud, tech
28	dolore tempore ab	Et asperiores voluptatibus amet. Ut velit vero. Ut et sequi quo aut fugit esse. Voluptates qui distinctio voluptatum.	articles/7/23/2013/dolore-tempore-ab	sport	cloud
29	nihil consectetur laudantium	Mollitia eum corrupti voluptas sunt molestiae asperiores velit. Illo dolores nobis natus possimus. Et expedita facere ea.	articles/7/23/2013/nihil-consectetur-laudantium	HEALTH	
30	ea consectetur saepe	Dolore repellat id odio ducimus dolorem. Suscipit quod similique quis. Et doloribus quasi eos autem esse suscipit. Natus molestiae delectus veniam et.	articles/7/23/2013/ea-consectetur-saepe	Sports	random-tags, rails
31	eum omnis laboriosam	Ab assumenda labore culpa aut odio. Omnis veniam labore voluptatem incidunt iste. Dolor impedit hic. Sit et molestias suscipit dolorum molestiae ad. Veniam sunt et.	articles/7/23/2013/eum-omnis-laboriosam	business	hate, medicine, cloud
32	ea labore iusto	Mollitia voluptatem ab voluptatem. Est nesciunt error aut enim. Amet explicabo iure eligendi nesciunt dolores. Doloremque molestiae animi et vel distinctio sunt non.	articles/7/23/2013/ea-labore-iusto	computer-world	
33	et ratione maiores	Dolore voluptatem et doloribus provident aperiam. Quisquam ipsa aperiam voluptate corporis eos quibusdam esse. Quia reiciendis porro corrupti et dolores.	articles/7/23/2013/et-ratione-maiores	HEALTH	widget, random-tags
34	mollitia ut cum	Itaque numquam quos ipsam et sit blanditiis. Quisquam ut veniam voluptas nam sed labore. Recusandae quae ut maiores cupiditate.	articles/7/23/2013/mollitia-ut-cum	Business	random-tags
35	ipsam quos voluptates	Animi repudiandae perferendis est cum totam. Rerum laboriosam veniam. Corporis libero laborum commodi dolores aut molestias est. Quo est non quas. Et laudantium sed laborum iure.	articles/7/23/2013/ipsam-quos-voluptates	computer-world	medicine, love
36	culpa occaecati expedita	Sed incidunt est provident. Eaque in ut tempore dolor. Fugit nihil eos aut animi nulla. Ea voluptas velit culpa consequatur ab.	articles/7/23/2013/culpa-occaecati-expedita	HEALTH	art, ruby
37	et explicabo aut	Et voluptas reiciendis similique saepe nostrum. Tempore vel non asperiores eaque. Reprehenderit est voluptatem. Occaecati facilis ut enim exercitationem laborum consequatur.	articles/7/23/2013/et-explicabo-aut	computer-world	rails, medicine, love
38	in iure tempora	Et earum aut fugiat ut voluptas mollitia. Ipsa voluptatum qui ea veritatis autem aut aut. Dolores est in unde quae nobis quisquam dicta. Rem error aut totam possimus id. Optio in voluptatem iste porro molestiae.	articles/7/23/2013/in-iure-tempora	computer world	jquery, art, cloud
39	nobis dolor ducimus	A blanditiis omnis deserunt aut fugit id. Architecto labore sequi error facilis et autem. Nostrum quia nihil sit. Laudantium quia rerum mollitia.	articles/7/23/2013/nobis-dolor-ducimus	programming	
40	corporis sapiente sit	Veniam iste perferendis dolore et est nobis et. Voluptatem ut deserunt eos officiis dolorem labore suscipit. Omnis ut ipsam tenetur sint est. Rem veritatis nulla eos id.	articles/7/23/2013/corporis-sapiente-sit	Business	
41	officia repudiandae voluptatibus	Blanditiis nihil voluptas expedita velit quis qui. Repellendus facilis fugit dicta est corrupti. Incidunt reprehenderit quis dolorem neque autem consequuntur.	articles/7/23/2013/officia-repudiandae-voluptatibus	Business	ruby
42	et ut dolorem	Quasi sit dolor possimus quisquam. Velit voluptatem sed alias porro omnis cumque ut. Velit non porro consequuntur animi perferendis rerum. Perspiciatis explicabo alias earum quas natus.	articles/7/23/2013/et-ut-dolorem	HEALTH	tech, jquery, music
43	et ut et	Et saepe nisi voluptatibus officiis quis et. Voluptatem praesentium voluptatem officiis labore minima. Harum ipsam distinctio sed inventore qui enim quod.	articles/7/23/2013/et-ut-et	programming	computer, love
44	voluptas incidunt sed	Aperiam aut temporibus voluptatem veniam consequatur modi maiores. Dolores repudiandae reprehenderit ut qui explicabo quis qui. Tempora recusandae alias qui qui.	articles/7/23/2013/voluptas-incidunt-sed	programming	random, random-tags, widget
45	omnis ea aliquid	Possimus ratione voluptatem esse. Molestias asperiores nemo sapiente nisi. Pariatur voluptate non aspernatur dolorem blanditiis.	articles/7/23/2013/omnis-ea-aliquid	computer-world	hate
46	consequatur eos perspiciatis	Et accusantium sunt. Quia ratione et. Incidunt voluptates sapiente perferendis aliquid officiis molestiae.	articles/7/23/2013/consequatur-eos-perspiciatis	Sports	tech, ruby, cloud
47	magni provident modi	Maiores rerum cupiditate earum beatae. Consequatur beatae enim officia. Eligendi reprehenderit quia qui perferendis. Aut explicabo quia officiis delectus.	articles/7/23/2013/magni-provident-modi	programming	
48	praesentium est ab	Ducimus necessitatibus aliquam et. Natus minus distinctio at. Velit nostrum quaerat rem eum.	articles/7/23/2013/praesentium-est-ab	Business	
49	possimus eaque velit	Corporis ab et est voluptates sunt doloribus fugiat. Voluptas et sed eaque voluptatem. Perferendis repellat hic dolorem vel voluptate quasi id. Suscipit a et molestiae.	articles/7/23/2013/possimus-eaque-velit	programming	ruby, art
50	deleniti qui sit	Similique occaecati sint. Sequi dolore error et molestiae est corporis. Occaecati earum impedit eos distinctio nisi. Saepe sunt vitae rerum adipisci consequatur qui. Quis ullam sint minus enim ut eos sunt.	articles/7/23/2013/deleniti-qui-sit	Business	random, hate, medicine
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: apprentice
--

SELECT pg_catalog.setval('articles_id_seq', 50, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: apprentice
--

COPY schema_migrations (version) FROM stdin;
20130311183138
\.


--
-- Name: articles_pkey; Type: CONSTRAINT; Schema: public; Owner: apprentice; Tablespace: 
--

ALTER TABLE ONLY articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


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

