C:\Program Files\edb\as13\bin\pg_restore.exe --host "localhost" --port "5444" --username "enterprisedb" --no-password --dbname "ergoedb" --verbose "C:\\JANUAP~1\\ERGO20~2.BAC"
pg_restore: connecting to database for restore
pg_restore: creating SCHEMA "accounting"
pg_restore: creating COMMENT "SCHEMA accounting"
pg_restore: creating SCHEMA "ads"
pg_restore: creating SCHEMA "anagraph"
pg_restore: creating COMMENT "SCHEMA anagraph"
pg_restore: creating SCHEMA "analytics"
pg_restore: creating SCHEMA "assets"
pg_restore: creating SCHEMA "attorneys"
pg_restore: creating COMMENT "SCHEMA attorneys"
pg_restore: creating SCHEMA "books"
pg_restore: creating SCHEMA "cloud"
pg_restore: creating COMMENT "SCHEMA cloud"
pg_restore: creating SCHEMA "cms"
pg_restore: creating COMMENT "SCHEMA cms"
pg_restore: creating SCHEMA "confluence"
pg_restore: creating SCHEMA "crm"
pg_restore: creating COMMENT "SCHEMA crm"
pg_restore: creating SCHEMA "custom_tm_logistic"
pg_restore: while PROCESSING TOC:
pg_restore: from TOC entry 64; 2615 123601 SCHEMA custom_tm_logistic postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER SCHEMA custom_tm_logistic OWNER TO postgres;

pg_restore: creating EXTENSION "orafce"
pg_restore: from TOC entry 11; 3079 39279 EXTENSION orafce (no owner)
pg_restore: error: could not execute query: ERRORE:  apertura del file di controllo dell'estensione "C:/Program Files/edb/as13/share/extension/orafce.control" fallita: No such file or directory
Command was: CREATE EXTENSION IF NOT EXISTS orafce WITH SCHEMA public;


pg_restore: creating COMMENT "EXTENSION orafce"
pg_restore: from TOC entry 13377; 0 0 COMMENT EXTENSION orafce 
pg_restore: error: could not execute query: ERRORE:  l'estensione "orafce" non esiste
Command was: COMMENT ON EXTENSION orafce IS 'Functions and operators that emulate a subset of functions and packages from the Oracle RDBMS';


pg_restore: creating SCHEMA "documents"
pg_restore: creating COMMENT "SCHEMA documents"
pg_restore: creating SCHEMA "football"
pg_restore: creating COMMENT "SCHEMA football"
pg_restore: creating SCHEMA "gis"
pg_restore: creating SCHEMA "health"
pg_restore: creating COMMENT "SCHEMA health"
pg_restore: creating SCHEMA "items"
pg_restore: creating SCHEMA "jira"
pg_restore: creating SCHEMA "jpublic"
pg_restore: creating COMMENT "SCHEMA jpublic"
pg_restore: creating SCHEMA "locale"
pg_restore: creating SCHEMA "logistic"
pg_restore: creating SCHEMA "mail"
pg_restore: creating SCHEMA "maillist"
pg_restore: creating SCHEMA "planner"
pg_restore: creating SCHEMA "re"
pg_restore: creating SCHEMA "repository"
pg_restore: creating COMMENT "SCHEMA repository"
pg_restore: creating SCHEMA "school"
pg_restore: creating COMMENT "SCHEMA school"
pg_restore: creating SCHEMA "shipping"
pg_restore: creating SCHEMA "social"
pg_restore: creating SCHEMA "sportmedia"
pg_restore: from TOC entry 40; 2615 30612 SCHEMA sportmedia postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER SCHEMA sportmedia OWNER TO postgres;

pg_restore: creating SCHEMA "swap"
pg_restore: from TOC entry 41; 2615 30613 SCHEMA swap januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER SCHEMA swap OWNER TO januaguest;

pg_restore: creating SCHEMA "system"
pg_restore: creating COMMENT "SCHEMA system"
pg_restore: creating SCHEMA "temp"
pg_restore: creating SCHEMA "topology"
pg_restore: from TOC entry 59; 2615 41539 SCHEMA topology postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER SCHEMA topology OWNER TO postgres;

pg_restore: creating COMMENT "SCHEMA topology"
pg_restore: creating SCHEMA "uni"
pg_restore: creating SCHEMA "workflow"
pg_restore: creating EXTENSION "plpython2u"
pg_restore: from TOC entry 1; 3079 55261 EXTENSION plpython2u (no owner)
pg_restore: error: could not execute query: ERRORE:  accesso al file "$libdir/plpython2" fallito: No such file or directory
Command was: CREATE EXTENSION IF NOT EXISTS plpython2u WITH SCHEMA pg_catalog;


pg_restore: creating COMMENT "EXTENSION plpython2u"
pg_restore: from TOC entry 13386; 0 0 COMMENT EXTENSION plpython2u 
pg_restore: error: could not execute query: ERRORE:  l'estensione "plpython2u" non esiste
Command was: COMMENT ON EXTENSION plpython2u IS 'PL/Python2U untrusted procedural language';


pg_restore: creating EXTENSION "plpythonu"
pg_restore: from TOC entry 2; 3079 39912 EXTENSION plpythonu (no owner)
pg_restore: error: could not execute query: ERRORE:  accesso al file "$libdir/plpython2" fallito: No such file or directory
Command was: CREATE EXTENSION IF NOT EXISTS plpythonu WITH SCHEMA pg_catalog;


pg_restore: creating COMMENT "EXTENSION plpythonu"
pg_restore: from TOC entry 13387; 0 0 COMMENT EXTENSION plpythonu 
pg_restore: error: could not execute query: ERRORE:  l'estensione "plpythonu" non esiste
Command was: COMMENT ON EXTENSION plpythonu IS 'PL/PythonU untrusted procedural language';


pg_restore: creating EXTENSION "plr"
pg_restore: from TOC entry 7; 3079 41694 EXTENSION plr (no owner)
pg_restore: error: could not execute query: ERRORE:  apertura del file di controllo dell'estensione "C:/Program Files/edb/as13/share/extension/plr.control" fallita: No such file or directory
Command was: CREATE EXTENSION IF NOT EXISTS plr WITH SCHEMA public;


pg_restore: creating COMMENT "EXTENSION plr"
pg_restore: from TOC entry 13388; 0 0 COMMENT EXTENSION plr 
pg_restore: error: could not execute query: ERRORE:  l'estensione "plr" non esiste
Command was: COMMENT ON EXTENSION plr IS 'load R interpreter and execute R script from within a database';


pg_restore: creating EXTENSION "hstore"
pg_restore: creating COMMENT "EXTENSION hstore"
pg_restore: creating EXTENSION "pg_prewarm"
pg_restore: creating COMMENT "EXTENSION pg_prewarm"
pg_restore: creating EXTENSION "postgis"
pg_restore: creating COMMENT "EXTENSION postgis"
pg_restore: creating EXTENSION "postgis_topology"
pg_restore: creating COMMENT "EXTENSION postgis_topology"
pg_restore: creating EXTENSION "postgres_fdw"
pg_restore: creating COMMENT "EXTENSION postgres_fdw"
pg_restore: creating EXTENSION "quantile"
pg_restore: from TOC entry 6; 3079 41729 EXTENSION quantile (no owner)
pg_restore: error: could not execute query: ERRORE:  apertura del file di controllo dell'estensione "C:/Program Files/edb/as13/share/extension/quantile.control" fallita: No such file or directory
Command was: CREATE EXTENSION IF NOT EXISTS quantile WITH SCHEMA public;


pg_restore: creating COMMENT "EXTENSION quantile"
pg_restore: from TOC entry 13394; 0 0 COMMENT EXTENSION quantile 
pg_restore: error: could not execute query: ERRORE:  l'estensione "quantile" non esiste
Command was: COMMENT ON EXTENSION quantile IS 'Provides quantile aggregate function.';


pg_restore: creating EXTENSION "tsm_system_time"
pg_restore: creating COMMENT "EXTENSION tsm_system_time"
pg_restore: creating EXTENSION "uuid-ossp"
pg_restore: creating COMMENT "EXTENSION "uuid-ossp""
pg_restore: creating FUNCTION "accounting.get_payment_code_by_id(integer, integer)"
pg_restore: creating FUNCTION "accounting.get_payment_id_by_code(character varying, integer)"
pg_restore: creating FUNCTION "accounting.get_payment_term_by_code(character varying, integer)"
pg_restore: creating FUNCTION "accounting.vat_insert_id()"
pg_restore: creating FUNCTION "ads.abnn_trg()"
pg_restore: creating FUNCTION "ads.admn_trg()"
pg_restore: creating FUNCTION "ads.adsfrombanner(character varying)"
pg_restore: from TOC entry 1018; 1255 30618 FUNCTION adsfrombanner(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION ads.adsfrombanner(urlbanner character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "ads.adsfrombannerlog(character varying, character varying, bigint, bigint, character varying, bigint, character varying, character varying)"
pg_restore: from TOC entry 1019; 1255 30619 FUNCTION adsfrombannerlog(character varying, character varying, bigint, bigint, character varying, bigint, character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION ads.adsfrombannerlog(urlbanner character varying, ip character varying, site_id bigint, page_id bigint, site_key character varying, page_location_id bigint, headers character varying, agent character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "ads.adsfromid(integer, character varying, character varying, character varying)"
pg_restore: from TOC entry 1020; 1255 30620 FUNCTION adsfromid(integer, character varying, character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION ads.adsfromid(id integer, remoteip character varying, header character varying, remoteurl character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "ads.alst_trg()"
pg_restore: creating FUNCTION "ads.apbl_trg()"
pg_restore: creating FUNCTION "ads.banner(character varying, bigint, bigint, bigint, character varying)"
pg_restore: from TOC entry 1021; 1255 30621 FUNCTION banner(character varying, bigint, bigint, bigint, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION ads.banner(ip character varying, site_id bigint, site_key bigint, page_location_id bigint, headers character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "ads.banner_cursor(character varying, bigint, bigint, bigint, character varying)"
pg_restore: from TOC entry 1022; 1255 30622 FUNCTION banner_cursor(character varying, bigint, bigint, bigint, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION ads.banner_cursor(ip character varying, site_id bigint, site_key bigint, page_location_id bigint, headers character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "ads.banner_random_url(character varying, character varying, text)"
pg_restore: creating FUNCTION "ads.domains_seq_trg()"
pg_restore: creating FUNCTION "ads.nvl(bigint, integer)"
pg_restore: from TOC entry 1025; 1255 30625 FUNCTION nvl(bigint, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION ads.nvl(value bigint, replace integer) OWNER TO postgres;

pg_restore: creating FUNCTION "anagraph.abrn_trg()"
pg_restore: creating FUNCTION "anagraph.adnt_trg()"
pg_restore: creating FUNCTION "anagraph.anag_categories_trans_update()"
pg_restore: creating FUNCTION "anagraph.anag_trg()"
pg_restore: creating FUNCTION "anagraph.anagraph_identities_trg()"
pg_restore: creating FUNCTION "anagraph.anagraph_insert_osm()"
pg_restore: creating FUNCTION "anagraph.anagraph_new_id_trg()"
pg_restore: from TOC entry 1027; 1255 30627 FUNCTION anagraph_new_id_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION anagraph.anagraph_new_id_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "anagraph.anagraph_update_osm()"
pg_restore: creating FUNCTION "anagraph.anagraph_update_web()"
pg_restore: creating FUNCTION "anagraph.anagraphs_insert(smallint, integer, integer, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, integer, character varying, character varying, numeric, integer, smallint, character varying, character varying, character varying, numeric, smallint, smallint, character varying, text, boolean, boolean, smallint, character varying, date, character varying, character varying, smallint, smallint, character varying, character varying, bigint, bigint, smallint, date, date, smallint, character varying, boolean, character varying, smallint, character varying, smallint, boolean, character varying, smallint, smallint, boolean, bigint, integer, character varying, character varying, character varying, integer, bigint, double precision, double precision)"
pg_restore: creating FUNCTION "anagraph.angr_trg()"
pg_restore: creating FUNCTION "anagraph.categories_from_osm()"
pg_restore: creating FUNCTION "anagraph.categories_new_id_trg()"
pg_restore: creating FUNCTION "anagraph.get_id_by_code(character varying, integer, integer)"
pg_restore: creating FUNCTION "anagraph.get_id_by_name(character varying, character varying, character varying, integer, integer)"
pg_restore: creating FUNCTION "anagraph.get_name_by_id(integer)"
pg_restore: creating FUNCTION "anagraph.group_new_id_trg()"
pg_restore: creating FUNCTION "anagraph.identities_defaults_trg()"
pg_restore: creating FUNCTION "analytics.queries_id_trg()"
pg_restore: from TOC entry 1030; 1255 30632 FUNCTION queries_id_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION analytics.queries_id_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "analytics.query_groups_id_trg()"
pg_restore: from TOC entry 1031; 1255 30633 FUNCTION query_groups_id_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION analytics.query_groups_id_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "books.book_defs_get_id()"
pg_restore: creating FUNCTION "cloud.addcomputer(bigint, character varying, character varying)"
pg_restore: creating FUNCTION "cloud.addcomputerkey(character varying, character varying, character varying)"
pg_restore: from TOC entry 1034; 1255 30636 FUNCTION addcomputerkey(character varying, character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cloud.addcomputerkey(p_session_key character varying, p_computer_name character varying, p_computer_key character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "cloud.addfiledir(integer, integer, boolean, character varying, character varying, character varying, character varying, date, integer, character varying, character varying, integer, character varying, bigint)"
pg_restore: from TOC entry 1035; 1255 30637 FUNCTION addfiledir(integer, integer, boolean, character varying, character varying, character varying, character varying, date, integer, character varying, character varying, integer, character varying, bigint) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cloud.addfiledir(p_id integer, p_parent_id integer, p_dir boolean, p_treeorder character varying, p_namenoext character varying, p_location character varying, p_description character varying, p_datetime date, p_attr integer, p_extension character varying, p_name character varying, p_user_id integer, p_session_key character varying, p_directory_id bigint) OWNER TO postgres;

pg_restore: creating FUNCTION "cloud.blob_files_id_trg()"
pg_restore: from TOC entry 1036; 1255 30638 FUNCTION blob_files_id_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cloud.blob_files_id_trg() OWNER TO postgres;

pg_restore: creating COMMENT "cloud.FUNCTION blob_files_id_trg()"
pg_restore: creating FUNCTION "cloud.cblb_trg()"
pg_restore: creating FUNCTION "cloud.ccmp_trg()"
pg_restore: creating FUNCTION "cloud.cdrc_trg()"
pg_restore: creating FUNCTION "cloud.cfld_trg()"
pg_restore: creating FUNCTION "cloud.cimg_trg()"
pg_restore: creating FUNCTION "cloud.ctxt_trg()"
pg_restore: creating FUNCTION "cloud.cxtf_trg()"
pg_restore: creating FUNCTION "cloud.cxtr_trg()"
pg_restore: creating FUNCTION "cloud.external_files_id_trg()"
pg_restore: creating FUNCTION "cloud.insert_file(character varying, character varying, character varying, bytea, integer, integer)"
pg_restore: creating FUNCTION "cloud.insert_image(character varying, character varying, character varying, character varying, bytea, integer, integer)"
pg_restore: creating FUNCTION "cloud.insertimage(bytea, character varying)"
pg_restore: creating FUNCTION "cloud.insertimage(bytea, character varying, character varying, integer, integer)"
pg_restore: creating FUNCTION "cloud.insertimage(bytea, character varying, character varying, integer, integer, character varying, character varying)"
pg_restore: creating FUNCTION "cms.articles_ins(bigint, text, text, integer, text, timestamp with time zone, character varying, character varying, text, integer, integer, integer, integer, character varying, boolean, smallint, integer)"
pg_restore: creating FUNCTION "cms.carg_trg()"
pg_restore: creating FUNCTION "cms.cgrg_trg()"
pg_restore: creating FUNCTION "cms.cgrm_trg()"
pg_restore: creating FUNCTION "cms.cgrp_trg()"
pg_restore: creating FUNCTION "cms.cmar_trg()"
pg_restore: creating FUNCTION "cms.cmn_trg()"
pg_restore: creating FUNCTION "cms.cmni_trg()"
pg_restore: creating FUNCTION "cms.cmnt_trg()"
pg_restore: creating FUNCTION "cms.cpgp_trg()"
pg_restore: creating FUNCTION "cms.cpgs_trg()"
pg_restore: creating FUNCTION "cms.cpgt_trg()"
pg_restore: creating FUNCTION "cms.cpps_trg()"
pg_restore: creating FUNCTION "cms.crgm_trg()"
pg_restore: creating FUNCTION "cms.crgr_trg()"
pg_restore: creating FUNCTION "cms.crsa_trg()"
pg_restore: creating FUNCTION "cms.crsf_trg()"
pg_restore: creating FUNCTION "cms.crtc_trg()"
pg_restore: creating FUNCTION "cms.csbr_trg()"
pg_restore: creating FUNCTION "cms.cspc_trg()"
pg_restore: creating FUNCTION "cms.csss_trg()"
pg_restore: creating FUNCTION "cms.cthm_trg()"
pg_restore: creating FUNCTION "cms.ctht_trg()"
pg_restore: creating FUNCTION "cms.ctmp_trg()"
pg_restore: creating FUNCTION "cms.ctmt_trg()"
pg_restore: creating FUNCTION "cms.cwbs_trg()"
pg_restore: creating FUNCTION "cms.cwbt_trg()"
pg_restore: creating FUNCTION "cms.get_argument_id()"
pg_restore: from TOC entry 1039; 1255 30641 FUNCTION get_argument_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cms.get_argument_id() OWNER TO postgres;

pg_restore: creating FUNCTION "cms.get_events_id()"
pg_restore: creating FUNCTION "cms.get_graphimenuid()"
pg_restore: from TOC entry 1040; 1255 30642 FUNCTION get_graphimenuid() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cms.get_graphimenuid() OWNER TO postgres;

pg_restore: creating FUNCTION "cms.get_graphimenurowid()"
pg_restore: from TOC entry 1041; 1255 30643 FUNCTION get_graphimenurowid() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cms.get_graphimenurowid() OWNER TO postgres;

pg_restore: creating FUNCTION "cms.get_news_id()"
pg_restore: creating FUNCTION "cms.get_rss_feed_id()"
pg_restore: from TOC entry 1042; 1255 30644 FUNCTION get_rss_feed_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cms.get_rss_feed_id() OWNER TO postgres;

pg_restore: creating FUNCTION "cms.get_sub_argument_id()"
pg_restore: from TOC entry 1043; 1255 30645 FUNCTION get_sub_argument_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cms.get_sub_argument_id() OWNER TO postgres;

pg_restore: creating FUNCTION "cms.get_website_id()"
pg_restore: creating FUNCTION "cms.new_session(character varying, character varying, character varying, character varying)"
pg_restore: from TOC entry 1045; 1255 30647 FUNCTION new_session(character varying, character varying, character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cms.new_session(ip character varying, host character varying, user_agent character varying, url character varying) OWNER TO postgres;

pg_restore: creating COMMENT "cms.FUNCTION new_session(ip character varying, host character varying, user_agent character varying, url character varying)"
pg_restore: creating FUNCTION "cms.send_rss_articles()"
pg_restore: from TOC entry 1046; 1255 30648 FUNCTION send_rss_articles() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION cms.send_rss_articles() OWNER TO postgres;

pg_restore: creating FUNCTION "crm.quote_prodserv_ai_trg()"
pg_restore: from TOC entry 1047; 1255 30649 FUNCTION quote_prodserv_ai_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION crm.quote_prodserv_ai_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "crm.quote_prodserve_ins_trg()"
pg_restore: creating FUNCTION "crm.quotefrmmodels_bi_trg()"
pg_restore: from TOC entry 1049; 1255 30651 FUNCTION quotefrmmodels_bi_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION crm.quotefrmmodels_bi_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.entrate_postesta(uuid)"
pg_restore: creating FUNCTION "custom_tm_logistic.guid_trg()"
pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_clifo(character varying)"
pg_restore: from TOC entry 3200; 1255 123684 FUNCTION sp_del_clifo(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_del_clifo(p_codice character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_cntr_type(character varying)"
pg_restore: from TOC entry 3225; 1255 123877 FUNCTION sp_del_cntr_type(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_del_cntr_type(p_cod_cntr character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_documenti(character varying)"
pg_restore: from TOC entry 3192; 1255 123653 FUNCTION sp_del_documenti(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_del_documenti(p_tipodichiarazione character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_entrate(smallint, integer, integer)"
pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_fd(integer)"
pg_restore: from TOC entry 3184; 1255 123634 FUNCTION sp_del_fd(integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_del_fd(p_codice integer) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_imballi(character varying)"
pg_restore: from TOC entry 3208; 1255 123751 FUNCTION sp_del_imballi(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_del_imballi(p_codimballo character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_marche(integer)"
pg_restore: from TOC entry 3217; 1255 123816 FUNCTION sp_del_marche(integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_del_marche(p_codmarca integer) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_merci(integer)"
pg_restore: from TOC entry 3221; 1255 123832 FUNCTION sp_del_merci(integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_del_merci(p_codice integer) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_tipi_documento(character varying)"
pg_restore: from TOC entry 3204; 1255 123719 FUNCTION sp_del_tipi_documento(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_del_tipi_documento(p_tipodocumento character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_del_uffici(character varying)"
pg_restore: from TOC entry 3196; 1255 123666 FUNCTION sp_del_uffici(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_del_uffici(p_codufficio character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_clifo(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, character, numeric, uuid)"
pg_restore: from TOC entry 3199; 1255 123683 FUNCTION sp_ins_clifo(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, character, numeric, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_clifo(p_codice character varying, p_ragionesoc character varying, p_ragionesoc2 character varying, p_tipo character varying, p_indirizzo character varying, p_cap character varying, p_localita character varying, p_provincia character varying, p_paiv character varying, p_tel character varying, p_fax character varying, p_email character varying, p_mincnt20 numeric, p_mincnt40 numeric, p_codcliente character varying, p_flgnoassicurazione character, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_nazione character varying, p_tipoimportazione character, p_importot1 numeric, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_clifo01(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, character, numeric, uuid)"
pg_restore: from TOC entry 3209; 1255 123760 FUNCTION sp_ins_clifo01(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, character, numeric, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_clifo01(p_codice character varying, p_ragionesoc character varying, p_ragionesoc2 character varying, p_tipo character varying, p_indirizzo character varying, p_cap character varying, p_localita character varying, p_provincia character varying, p_paiv character varying, p_tel character varying, p_fax character varying, p_email character varying, p_mincnt20 numeric, p_mincnt40 numeric, p_codcliente character varying, p_flgnoassicurazione character, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_nazione character varying, p_tipoimportazione character, p_importot1 numeric, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_cntr_type(character varying, character varying, character varying, integer, integer, double precision, character varying, integer, integer, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3224; 1255 123876 FUNCTION sp_ins_cntr_type(character varying, character varying, character varying, integer, integer, double precision, character varying, integer, integer, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_cntr_type(p_cod_cntr character varying, p_des_cntr character varying, p_siz_cntr character varying, p_gg_franchigia integer, p_tariffa integer, p_thcimp double precision, p_thcval character varying, p_tarifpri integer, p_gg_prirata integer, p_max_weight double precision, p_max_volume double precision, p_lunghezza double precision, p_larghezza double precision, p_altezza double precision, p_lunghezza_interna double precision, p_lunghezza_allaporta double precision, p_larghezza_interna double precision, p_larghezza_allaporta double precision, p_altezza_interna double precision, p_altezza_allaporta double precision, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_documenti(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone)"
pg_restore: from TOC entry 3191; 1255 123652 FUNCTION sp_ins_documenti(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_documenti(p_tipodichiarazione character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_entrate(smallint, integer, integer, character, character varying, timestamp without time zone, character, character, character, character, character, timestamp without time zone, character varying, timestamp without time zone, character varying, integer, character varying, character varying, character varying, character varying, character varying, character varying, timestamp without time zone, character varying, character varying, smallint, timestamp without time zone, character varying, character varying, character varying, character varying, character varying, character varying, character varying, timestamp without time zone, character varying, character varying, integer, character varying, timestamp without time zone, integer, character, character varying, timestamp without time zone, character varying, character varying, numeric, character varying, integer, numeric, character varying, character varying, character varying, character varying, integer, character varying, character varying, timestamp without time zone, character, character varying, timestamp without time zone, character, character varying, integer, smallint, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character varying, character, character varying, character varying, character varying, character, character, numeric, character varying, character varying, integer, character varying, character varying, character varying, character, timestamp without time zone, character varying, timestamp without time zone, character varying, timestamp without time zone)"
pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_fd(integer, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3183; 1255 123633 FUNCTION sp_ins_fd(integer, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_fd(p_codice integer, p_fd character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_imballi(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3207; 1255 123750 FUNCTION sp_ins_imballi(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_imballi(p_codimballo character varying, p_desimballo character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_magazzini(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, uuid)"
pg_restore: from TOC entry 3179; 1255 123620 FUNCTION sp_ins_magazzini(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_magazzini(p_codice character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_localita character varying, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_marche(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3216; 1255 123815 FUNCTION sp_ins_marche(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_marche(p_codmarca integer, p_marca character varying, p_codicemerce integer, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_merci(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, character, uuid)"
pg_restore: from TOC entry 3220; 1255 123831 FUNCTION sp_ins_merci(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, character, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_merci(p_codice integer, p_merce character varying, p_codcategoria integer, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_flgportale character, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_tipi_documento(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3203; 1255 123718 FUNCTION sp_ins_tipi_documento(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_tipi_documento(p_tipodocumento character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_ins_uffici(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3195; 1255 123665 FUNCTION sp_ins_uffici(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_ins_uffici(p_codufficio character varying, p_desufficio character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_clifo()"
pg_restore: from TOC entry 3197; 1255 123681 FUNCTION sp_sel_clifo() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_clifo() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_cntr_type()"
pg_restore: from TOC entry 3222; 1255 123874 FUNCTION sp_sel_cntr_type() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_cntr_type() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_documenti()"
pg_restore: from TOC entry 3189; 1255 123650 FUNCTION sp_sel_documenti() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_documenti() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_entrate()"
pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_fd()"
pg_restore: from TOC entry 3181; 1255 123631 FUNCTION sp_sel_fd() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_fd() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_imballi()"
pg_restore: from TOC entry 3205; 1255 123748 FUNCTION sp_sel_imballi() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_imballi() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_magazzini()"
pg_restore: from TOC entry 3177; 1255 123618 FUNCTION sp_sel_magazzini() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_magazzini() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_marche()"
pg_restore: from TOC entry 3214; 1255 123813 FUNCTION sp_sel_marche() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_marche() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_merci()"
pg_restore: from TOC entry 3218; 1255 123829 FUNCTION sp_sel_merci() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_merci() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_tipi_documento()"
pg_restore: from TOC entry 3201; 1255 123716 FUNCTION sp_sel_tipi_documento() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_tipi_documento() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_sel_uffici()"
pg_restore: from TOC entry 3193; 1255 123663 FUNCTION sp_sel_uffici() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_sel_uffici() OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_clifo(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, character, numeric, uuid)"
pg_restore: from TOC entry 3198; 1255 123682 FUNCTION sp_upd_clifo(character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, character, numeric, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_clifo(p_codice character varying, p_ragionesoc character varying, p_ragionesoc2 character varying, p_tipo character varying, p_indirizzo character varying, p_cap character varying, p_localita character varying, p_provincia character varying, p_paiv character varying, p_tel character varying, p_fax character varying, p_email character varying, p_mincnt20 numeric, p_mincnt40 numeric, p_codcliente character varying, p_flgnoassicurazione character, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_nazione character varying, p_tipoimportazione character, p_importot1 numeric, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_cntr_type(character varying, character varying, character varying, integer, integer, double precision, character varying, integer, integer, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3223; 1255 123875 FUNCTION sp_upd_cntr_type(character varying, character varying, character varying, integer, integer, double precision, character varying, integer, integer, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_cntr_type(p_cod_cntr character varying, p_des_cntr character varying, p_siz_cntr character varying, p_gg_franchigia integer, p_tariffa integer, p_thcimp double precision, p_thcval character varying, p_tarifpri integer, p_gg_prirata integer, p_max_weight double precision, p_max_volume double precision, p_lunghezza double precision, p_larghezza double precision, p_altezza double precision, p_lunghezza_interna double precision, p_lunghezza_allaporta double precision, p_larghezza_interna double precision, p_larghezza_allaporta double precision, p_altezza_interna double precision, p_altezza_allaporta double precision, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_documenti(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone)"
pg_restore: from TOC entry 3190; 1255 123651 FUNCTION sp_upd_documenti(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_documenti(p_tipodichiarazione character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_entrate(smallint, integer, integer, character, character varying, timestamp without time zone, character, character, character, character, character, timestamp without time zone, character varying, timestamp without time zone, character varying, integer, character varying, character varying, character varying, character varying, character varying, character varying, timestamp without time zone, character varying, character varying, smallint, timestamp without time zone, character varying, character varying, character varying, character varying, character varying, character varying, character varying, timestamp without time zone, character varying, character varying, integer, character varying, timestamp without time zone, integer, character, character varying, timestamp without time zone, character varying, character varying, numeric, character varying, integer, numeric, character varying, character varying, character varying, character varying, integer, character varying, character varying, timestamp without time zone, character, character varying, timestamp without time zone, character, character varying, integer, smallint, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character varying, character, character varying, character varying, character varying, character, character, numeric, character varying, character varying, integer, character varying, character varying, character varying, character, timestamp without time zone, character varying, timestamp without time zone, character varying, timestamp without time zone)"
pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_fd(integer, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3182; 1255 123632 FUNCTION sp_upd_fd(integer, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_fd(p_codice integer, p_fd character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_imballi(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3206; 1255 123749 FUNCTION sp_upd_imballi(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_imballi(p_codimballo character varying, p_desimballo character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_magazzini(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, uuid)"
pg_restore: from TOC entry 3178; 1255 123619 FUNCTION sp_upd_magazzini(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_magazzini(p_codice character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_localita character varying, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_marche(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3215; 1255 123814 FUNCTION sp_upd_marche(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_marche(p_codmarca integer, p_marca character varying, p_codicemerce integer, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_merci(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, character, uuid)"
pg_restore: from TOC entry 3219; 1255 123830 FUNCTION sp_upd_merci(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, character, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_merci(p_codice integer, p_merce character varying, p_codcategoria integer, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_flgportale character, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_tipi_documento(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3202; 1255 123717 FUNCTION sp_upd_tipi_documento(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_tipi_documento(p_tipodocumento character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.sp_upd_uffici(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3194; 1255 123664 FUNCTION sp_upd_uffici(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION custom_tm_logistic.sp_upd_uffici(p_codufficio character varying, p_desufficio character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "custom_tm_logistic.update_documents()"
pg_restore: creating FUNCTION "custom_tm_logistic.update_magazzino()"
pg_restore: creating COMMENT "custom_tm_logistic.FUNCTION update_magazzino()"
pg_restore: creating FUNCTION "documents.doctypes_insert_id_trg()"
pg_restore: creating FUNCTION "documents.documents_insert_id_trg()"
pg_restore: creating FUNCTION "documents.rows_insert_id_trg()"
pg_restore: creating FUNCTION "documents.types_get_id_by_code(character varying, integer)"
pg_restore: creating FUNCTION "football.external_files_id_trg()"
pg_restore: from TOC entry 1050; 1255 30652 FUNCTION external_files_id_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION football.external_files_id_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "football.fchm_trg()"
pg_restore: creating FUNCTION "football.fclb_trg()"
pg_restore: creating FUNCTION "football.fcld_trg()"
pg_restore: creating FUNCTION "football.fcls_trg()"
pg_restore: creating FUNCTION "football.ffld_trg()"
pg_restore: creating FUNCTION "football.flgp_trg()"
pg_restore: creating FUNCTION "football.flgs_trg()"
pg_restore: creating FUNCTION "football.fmtd_trg()"
pg_restore: creating FUNCTION "football.fmth_trg()"
pg_restore: creating FUNCTION "football.fmtp_trg()"
pg_restore: creating FUNCTION "football.fplc_trg()"
pg_restore: creating FUNCTION "football.frkt_trg()"
pg_restore: creating FUNCTION "football.frls_trg()"
pg_restore: creating FUNCTION "football.fsnc_trg()"
pg_restore: creating FUNCTION "football.fssn_trg()"
pg_restore: creating FUNCTION "football.ft_birthdate_players()"
pg_restore: creating FUNCTION "football.ft_calendar_match_id_trg()"
pg_restore: creating FUNCTION "football.ft_clubs_id_trg()"
pg_restore: from TOC entry 1053; 1255 30655 FUNCTION ft_clubs_id_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION football.ft_clubs_id_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "football.ft_gen_calendar_json(integer, integer)"
pg_restore: from TOC entry 1054; 1255 30656 FUNCTION ft_gen_calendar_json(integer, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION football.ft_gen_calendar_json(p_season_id integer, p_league_id integer) OWNER TO postgres;

pg_restore: creating FUNCTION "football.ft_generate_all_clubs()"
pg_restore: from TOC entry 1055; 1255 30657 FUNCTION ft_generate_all_clubs() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION football.ft_generate_all_clubs() OWNER TO postgres;

pg_restore: creating FUNCTION "football.ft_generate_club_anagraph(integer, character varying)"
pg_restore: from TOC entry 1056; 1255 30658 FUNCTION ft_generate_club_anagraph(integer, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION football.ft_generate_club_anagraph(p_club_id integer, p_club_name character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "football.ft_player_career_id_trg()"
pg_restore: creating FUNCTION "football.ft_player_origin()"
pg_restore: creating FUNCTION "football.ft_rankings_id_trg()"
pg_restore: creating FUNCTION "football.ft_rankings_season(integer, integer)"
pg_restore: creating FUNCTION "football.ft_return_matches(integer, integer)"
pg_restore: creating FUNCTION "football.ft_return_matches(integer, integer, integer)"
pg_restore: from TOC entry 1062; 1255 30664 FUNCTION ft_return_matches(integer, integer, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION football.ft_return_matches(p_league_id integer, p_season_id integer, p_days integer) OWNER TO postgres;

pg_restore: creating FUNCTION "football.ft_update_al_careers(boolean)"
pg_restore: creating FUNCTION "football.ft_update_careers(integer, integer)"
pg_restore: creating FUNCTION "football.ft_update_ranking()"
pg_restore: from TOC entry 1064; 1255 30666 FUNCTION ft_update_ranking() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION football.ft_update_ranking() OWNER TO postgres;

pg_restore: creating FUNCTION "football.ftmc_trg()"
pg_restore: creating FUNCTION "football.ftmh_trg()"
pg_restore: creating FUNCTION "football.ftmp_trg()"
pg_restore: creating FUNCTION "football.ftms_trg()"
pg_restore: creating FUNCTION "football.ftmt_trg()"
pg_restore: creating FUNCTION "football.ftps_trg()"
pg_restore: creating FUNCTION "football.ftrc_trg()"
pg_restore: creating FUNCTION "football.ftrn_trg()"
pg_restore: creating FUNCTION "football.fvnt_trg()"
pg_restore: creating FUNCTION "football.match_level(boolean, smallint)"
pg_restore: creating FUNCTION "football.pplr_trg()"
pg_restore: creating FUNCTION "football.update_clubs()"
pg_restore: creating FUNCTION "football.update_team_logo()"
pg_restore: creating COMMENT "football.FUNCTION update_team_logo()"
pg_restore: creating FUNCTION "gis.update_categories()"
pg_restore: creating FUNCTION "health.add_doctor(character varying, character varying, character varying, date, smallint, smallint, smallint)"
pg_restore: from TOC entry 1067; 1255 30669 FUNCTION add_doctor(character varying, character varying, character varying, date, smallint, smallint, smallint) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.add_doctor(p_firstname character varying, p_lastname character varying, p_organisation_number character varying, p_organisation_date date, p_organisation_id smallint, p_district_id smallint, p_council_id smallint) OWNER TO postgres;

pg_restore: creating COMMENT "health.FUNCTION add_doctor(p_firstname character varying, p_lastname character varying, p_organisation_number character varying, p_organisation_date date, p_organisation_id smallint, p_district_id smallint, p_council_id smallint)"
pg_restore: creating FUNCTION "health.anagraph_wards_services_indexing()"
pg_restore: creating COMMENT "health.FUNCTION anagraph_wards_services_indexing()"
pg_restore: creating FUNCTION "health.assignbooking(bigint, bigint)"
pg_restore: creating FUNCTION "health.booking_anagraph_confirmation(integer, bigint)"
pg_restore: creating FUNCTION "health.booking_rows_defaults()"
pg_restore: creating COMMENT "health.FUNCTION booking_rows_defaults()"
pg_restore: creating FUNCTION "health.booking_undo_anagraph_confirmation(bigint)"
pg_restore: creating FUNCTION "health.bookingfinalisation(bigint, bigint, character varying, boolean, boolean, date, date, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, boolean, character varying, boolean, smallint, date, character)"
pg_restore: creating COMMENT "health.FUNCTION bookingfinalisation(p_booking_id bigint, p_session_id bigint, p_session_key character varying, p_has_prescription boolean, p_has_relative boolean, p_book_since date, p_book_until date, p_insurance character varying, p_agreement character varying, p_notes character varying, person_firstname character varying, person_lastname character varying, person_fiscalcode character varying, person_address character varying, person_town character varying, person_postalcode character varying, person_stateprovince character varying, person_notes character varying, pr_first_code character varying, pr_second_code character varying, pr_province character varying, pr_first_name character varying, pr_last_name character varying, pr_fiscal_code character varying, pr_exemption boolean, pr_exemption_code character varying, pr_exemption_income boolean, pr_services smallint, pr_date date, pr_priority character)"
pg_restore: creating FUNCTION "health.bookinginstitutes(bigint, character varying, integer, integer, integer, bigint)"
pg_restore: creating FUNCTION "health.count_notifications(integer)"
pg_restore: creating FUNCTION "health.get_association_id()"
pg_restore: from TOC entry 1076; 1255 30680 FUNCTION get_association_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.get_association_id() OWNER TO postgres;

pg_restore: creating FUNCTION "health.get_booking_id()"
pg_restore: creating FUNCTION "health.get_council_id()"
pg_restore: from TOC entry 1078; 1255 30682 FUNCTION get_council_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.get_council_id() OWNER TO postgres;

pg_restore: creating FUNCTION "health.get_institutes(integer, smallint, double precision, double precision, smallint, integer, bigint)"
pg_restore: creating COMMENT "health.FUNCTION get_institutes(p_item_id integer, p_pagination smallint, p_latitude double precision, p_longitude double precision, p_limit smallint, p_user_id integer, p_session_id bigint)"
pg_restore: creating FUNCTION "health.get_new_branch_id()"
pg_restore: from TOC entry 1080; 1255 30686 FUNCTION get_new_branch_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.get_new_branch_id() OWNER TO postgres;

pg_restore: creating FUNCTION "health.get_new_branch_speciality_id()"
pg_restore: from TOC entry 1081; 1255 30687 FUNCTION get_new_branch_speciality_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.get_new_branch_speciality_id() OWNER TO postgres;

pg_restore: creating FUNCTION "health.get_notification_id()"
pg_restore: creating FUNCTION "health.get_organization_id()"
pg_restore: from TOC entry 1083; 1255 30689 FUNCTION get_organization_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.get_organization_id() OWNER TO postgres;

pg_restore: creating FUNCTION "health.get_speciality_id()"
pg_restore: from TOC entry 1084; 1255 30690 FUNCTION get_speciality_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.get_speciality_id() OWNER TO postgres;

pg_restore: creating FUNCTION "health.get_subspecialities_id()"
pg_restore: from TOC entry 1085; 1255 30691 FUNCTION get_subspecialities_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.get_subspecialities_id() OWNER TO postgres;

pg_restore: creating FUNCTION "health.get_ward_services_id()"
pg_restore: creating FUNCTION "health.insert_services()"
pg_restore: creating FUNCTION "health.keys_assign()"
pg_restore: creating FUNCTION "health.keys_assign_id(integer)"
pg_restore: creating FUNCTION "health.notification_read(bigint)"
pg_restore: from TOC entry 1090; 1255 30696 FUNCTION notification_read(bigint) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.notification_read(p_notification_id bigint) OWNER TO postgres;

pg_restore: creating FUNCTION "health.nvl(numeric, numeric)"
pg_restore: creating FUNCTION "health.rebuild_search_indexes()"
pg_restore: from TOC entry 1092; 1255 30698 FUNCTION rebuild_search_indexes() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION health.rebuild_search_indexes() OWNER TO postgres;

pg_restore: creating FUNCTION "health.search_services(character varying)"
pg_restore: creating FUNCTION "health.search_services(character varying, integer)"
pg_restore: creating FUNCTION "health.search_services_index(character varying, integer)"
pg_restore: creating FUNCTION "health.search_services_indexing()"
pg_restore: creating FUNCTION "health.send_notification(bigint, integer, integer, text, character varying, smallint, bigint)"
pg_restore: creating FUNCTION "health.services_anagraphs_items_update(boolean)"
pg_restore: creating COMMENT "health.FUNCTION services_anagraphs_items_update(p_update_all boolean)"
pg_restore: creating FUNCTION "health.services_anagraphs_searchstring_update(boolean)"
pg_restore: creating COMMENT "health.FUNCTION services_anagraphs_searchstring_update(p_update_all boolean)"
pg_restore: creating FUNCTION "health.services_anagraphs_update()"
pg_restore: creating COMMENT "health.FUNCTION services_anagraphs_update()"
pg_restore: creating FUNCTION "health.setbooking(bigint, boolean)"
pg_restore: creating FUNCTION "health.stripstring(character varying)"
pg_restore: creating FUNCTION "health.stripstringsearch(character varying, character varying)"
pg_restore: creating FUNCTION "health.update_services()"
pg_restore: creating FUNCTION "health.user_booking_confirmation(bigint)"
pg_restore: creating COMMENT "health.FUNCTION user_booking_confirmation(p_booking_id bigint)"
pg_restore: creating FUNCTION "items.dimensions_id_trg()"
pg_restore: creating FUNCTION "items.families_id_trg()"
pg_restore: creating FUNCTION "items.get_id_by_code(character varying, integer)"
pg_restore: creating FUNCTION "items.insert_id_trg()"
pg_restore: creating FUNCTION "items.items_id_trg()"
pg_restore: creating FUNCTION "items.packages_get_id_by_code(character varying, integer)"
pg_restore: creating FUNCTION "items.stripstringsearch(character varying)"
pg_restore: creating FUNCTION "jpublic.check_country_id()"
pg_restore: from TOC entry 1110; 1255 30716 FUNCTION check_country_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION jpublic.check_country_id() OWNER TO postgres;

pg_restore: creating FUNCTION "jpublic.check_insert_date()"
pg_restore: from TOC entry 1111; 1255 30717 FUNCTION check_insert_date() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION jpublic.check_insert_date() OWNER TO postgres;

pg_restore: creating FUNCTION "jpublic.distance(double precision, double precision, double precision, double precision)"
pg_restore: creating FUNCTION "jpublic.get_country_id(public.varchar2)"
pg_restore: from TOC entry 3235; 1255 124097 FUNCTION get_country_id(public.varchar2) ergo
pg_restore: error: could not execute query: ERRORE:  il tipo public.varchar2 non esiste
Command was: CREATE FUNCTION jpublic.get_country_id(p_code public.varchar2) RETURNS smallint
    LANGUAGE plpgsql
    AS $$declare
  p_result smallint; 
begin
  if length(p_code) = 3 then
      select into p_result country_id from jpublic.countries where
	     is_country_code = p_code; 
  else 
      select into p_result country_id from jpublic.countries where
	     is_country_code2 = p_code;   
  end if; 

  return p_result; 
end; $$;


pg_restore: error: could not execute query: ERRORE:  il tipo "public.varchar2" non esiste
Command was: ALTER FUNCTION jpublic.get_country_id(p_code public.varchar2) OWNER TO ergo;

pg_restore: creating COMMENT "jpublic.FUNCTION get_country_id(p_code public.varchar2)"
pg_restore: from TOC entry 13410; 0 0 COMMENT FUNCTION get_country_id(p_code public.varchar2) ergo
pg_restore: error: could not execute query: ERRORE:  il tipo "public.varchar2" non esiste
Command was: COMMENT ON FUNCTION jpublic.get_country_id(p_code public.varchar2) IS 'Gets country ID providing a numeric code, or iso2-iso3 country Code';


pg_restore: creating FUNCTION "jpublic.get_country_id_by_code(character varying)"
pg_restore: creating FUNCTION "jpublic.get_district_id_trg()"
pg_restore: from TOC entry 1113; 1255 30719 FUNCTION get_district_id_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION jpublic.get_district_id_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "jpublic.get_isoregionid_trg()"
pg_restore: from TOC entry 1114; 1255 30720 FUNCTION get_isoregionid_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION jpublic.get_isoregionid_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "jpublic.get_new_country_id()"
pg_restore: from TOC entry 1115; 1255 30721 FUNCTION get_new_country_id() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION jpublic.get_new_country_id() OWNER TO postgres;

pg_restore: creating FUNCTION "jpublic.get_town_id_trg()"
pg_restore: from TOC entry 1116; 1255 30722 FUNCTION get_town_id_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION jpublic.get_town_id_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "jpublic.guid_trg()"
pg_restore: creating FUNCTION "jpublic.insert_date_new()"
pg_restore: creating FUNCTION "jpublic.insert_date_trg()"
pg_restore: creating FUNCTION "jpublic.nvl(integer, integer)"
pg_restore: creating FUNCTION "jpublic.random_string(integer)"
pg_restore: creating FUNCTION "logistic.awb_id_trg()"
pg_restore: creating FUNCTION "logistic.awb_rows_id_trg()"
pg_restore: creating FUNCTION "logistic.get_location_id_by_code(character varying, integer)"
pg_restore: creating FUNCTION "logistic.get_location_name_by_code(character varying, integer)"
pg_restore: creating FUNCTION "logistic.locations_bi_trg()"
pg_restore: creating FUNCTION "logistic.logistic_bi_trg()"
pg_restore: creating FUNCTION "logistic.pickup_orders_trg()"
pg_restore: creating FUNCTION "maillist.get_attachment_id_bi_trg()"
pg_restore: from TOC entry 1121; 1255 30727 FUNCTION get_attachment_id_bi_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION maillist.get_attachment_id_bi_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "maillist.get_mailing_list_bi_trg()"
pg_restore: from TOC entry 1122; 1255 30728 FUNCTION get_mailing_list_bi_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION maillist.get_mailing_list_bi_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "maillist.ms_send_bi_trg()"
pg_restore: from TOC entry 1123; 1255 30729 FUNCTION ms_send_bi_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION maillist.ms_send_bi_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "public.custom_tm_logisticsp_del_magazzini(character varying)"
pg_restore: from TOC entry 3180; 1255 123621 FUNCTION custom_tm_logisticsp_del_magazzini(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.custom_tm_logisticsp_del_magazzini(p_codice character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "public.decode(boolean, boolean, integer, integer)"
pg_restore: from TOC entry 1124; 1255 30730 FUNCTION decode(boolean, boolean, integer, integer) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION public.decode(value boolean, checker boolean, vtrue integer, vfalse integer) OWNER TO januaguest;

pg_restore: creating FUNCTION "public.decode(smallint, smallint, bigint, bigint)"
pg_restore: creating FUNCTION "public.decode(integer, integer, bigint, bigint)"
pg_restore: creating FUNCTION "public.decode(bigint, integer, integer, integer)"
pg_restore: creating FUNCTION "public.decode(bigint, bigint, bigint, bigint)"
pg_restore: creating FUNCTION "public.entity2char(text)"
pg_restore: from TOC entry 1129; 1255 30735 FUNCTION entity2char(text) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.entity2char(t text) OWNER TO postgres;

pg_restore: creating FUNCTION "public.guid_trg()"
pg_restore: creating FUNCTION "public.insert_date_trg()"
pg_restore: creating FUNCTION "public.nvl(smallint, integer)"
pg_restore: from TOC entry 1131; 1255 30737 FUNCTION nvl(smallint, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.nvl(value smallint, replace integer) OWNER TO postgres;

pg_restore: creating FUNCTION "public.nvl(integer, integer)"
pg_restore: from TOC entry 1132; 1255 30738 FUNCTION nvl(integer, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.nvl(value integer, replace integer) OWNER TO postgres;

pg_restore: creating FUNCTION "public.nvl(bigint, bigint)"
pg_restore: from TOC entry 1133; 1255 30739 FUNCTION nvl(bigint, bigint) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.nvl(value bigint, replace bigint) OWNER TO postgres;

pg_restore: creating FUNCTION "public.nvl(text, text)"
pg_restore: from TOC entry 1134; 1255 30740 FUNCTION nvl(text, text) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.nvl(value text, replace text) OWNER TO postgres;

pg_restore: creating FUNCTION "public.nvl(character varying, character varying)"
pg_restore: from TOC entry 1135; 1255 30741 FUNCTION nvl(character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.nvl(value character varying, replace character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "public.sel_cursor_from_emp()"
pg_restore: creating TABLE "public.emp"
pg_restore: creating FUNCTION "public.sel_from_emp()"
pg_restore: creating FUNCTION "public.sp_del_documenti(character varying)"
pg_restore: from TOC entry 3188; 1255 123649 FUNCTION sp_del_documenti(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_del_documenti(p_tipodichiarazione character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_del_entrate(smallint, integer, integer)"
pg_restore: creating FUNCTION "public.sp_del_magazzini(character varying)"
pg_restore: from TOC entry 3176; 1255 123617 FUNCTION sp_del_magazzini(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_del_magazzini(p_codice character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_del_marche(integer)"
pg_restore: from TOC entry 3213; 1255 123808 FUNCTION sp_del_marche(integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_del_marche(p_codmarca integer) OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_ins_documenti(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone)"
pg_restore: from TOC entry 3187; 1255 123648 FUNCTION sp_ins_documenti(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_ins_documenti(p_tipodichiarazione character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone) OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_ins_entrate(smallint, integer, integer, character, character varying, timestamp without time zone, character, character, character, character, character, timestamp without time zone, character varying, timestamp without time zone, character varying, integer, character varying, character varying, character varying, character varying, character varying, character varying, timestamp without time zone, character varying, character varying, smallint, timestamp without time zone, character varying, character varying, character varying, character varying, character varying, character varying, character varying, timestamp without time zone, character varying, character varying, integer, character varying, timestamp without time zone, integer, character, character varying, timestamp without time zone, character varying, character varying, numeric, character varying, integer, numeric, character varying, character varying, character varying, character varying, integer, character varying, character varying, timestamp without time zone, character, character varying, timestamp without time zone, character, character varying, integer, smallint, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character varying, character, character varying, character varying, character varying, character, character, numeric, character varying, character varying, integer, character varying, character varying, character varying, character, timestamp without time zone, character varying, timestamp without time zone, character varying, timestamp without time zone)"
pg_restore: creating FUNCTION "public.sp_ins_magazzini(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, uuid)"
pg_restore: from TOC entry 3175; 1255 123616 FUNCTION sp_ins_magazzini(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_ins_magazzini(p_codice character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_localita character varying, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_ins_marche(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3212; 1255 123807 FUNCTION sp_ins_marche(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_ins_marche(p_codmarca integer, p_marca character varying, p_codicemerce integer, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_sel_documenti()"
pg_restore: from TOC entry 3185; 1255 123646 FUNCTION sp_sel_documenti() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_sel_documenti() OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_sel_entrate()"
pg_restore: creating FUNCTION "public.sp_sel_magazzini()"
pg_restore: from TOC entry 3173; 1255 123614 FUNCTION sp_sel_magazzini() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_sel_magazzini() OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_sel_marche()"
pg_restore: from TOC entry 3210; 1255 123805 FUNCTION sp_sel_marche() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_sel_marche() OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_upd_documenti(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone)"
pg_restore: from TOC entry 3186; 1255 123647 FUNCTION sp_upd_documenti(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_upd_documenti(p_tipodichiarazione character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone) OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_upd_entrate(smallint, integer, integer, character, character varying, timestamp without time zone, character, character, character, character, character, timestamp without time zone, character varying, timestamp without time zone, character varying, integer, character varying, character varying, character varying, character varying, character varying, character varying, timestamp without time zone, character varying, character varying, smallint, timestamp without time zone, character varying, character varying, character varying, character varying, character varying, character varying, character varying, timestamp without time zone, character varying, character varying, integer, character varying, timestamp without time zone, integer, character, character varying, timestamp without time zone, character varying, character varying, numeric, character varying, integer, numeric, character varying, character varying, character varying, character varying, integer, character varying, character varying, timestamp without time zone, character, character varying, timestamp without time zone, character, character varying, integer, smallint, character varying, character varying, character varying, character varying, numeric, numeric, character varying, character varying, character, character varying, character varying, character varying, character, character, numeric, character varying, character varying, integer, character varying, character varying, character varying, character, timestamp without time zone, character varying, timestamp without time zone, character varying, timestamp without time zone)"
pg_restore: creating FUNCTION "public.sp_upd_magazzini(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, uuid)"
pg_restore: from TOC entry 3174; 1255 123615 FUNCTION sp_upd_magazzini(character varying, character varying, timestamp without time zone, character varying, character varying, timestamp without time zone, character varying, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_upd_magazzini(p_codice character varying, p_descrizione character varying, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_localita character varying, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "public.sp_upd_marche(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid)"
pg_restore: from TOC entry 3211; 1255 123806 FUNCTION sp_upd_marche(integer, character varying, integer, timestamp without time zone, character varying, character varying, timestamp without time zone, uuid) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.sp_upd_marche(p_codmarca integer, p_marca character varying, p_codicemerce integer, p_datainserimento timestamp without time zone, p_codutente character varying, p_utenteultimamodifica character varying, p_dataultimamodifica timestamp without time zone, p_jguid uuid) OWNER TO postgres;

pg_restore: creating FUNCTION "public.strip_tags(text)"
pg_restore: from TOC entry 1136; 1255 30742 FUNCTION strip_tags(text) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION public.strip_tags(text) OWNER TO postgres;

pg_restore: creating FUNCTION "public.update_date_trg()"
pg_restore: creating FUNCTION "shipping.get_vesselname_by_id(integer)"
pg_restore: creating FUNCTION "shipping.scm_trg()"
pg_restore: creating FUNCTION "shipping.shfd_trg()"
pg_restore: creating FUNCTION "shipping.shfp_trg()"
pg_restore: creating FUNCTION "shipping.shft_trg()"
pg_restore: creating FUNCTION "shipping.shln_trg()"
pg_restore: creating FUNCTION "shipping.shlp_trg()"
pg_restore: creating FUNCTION "shipping.shlr_trg()"
pg_restore: creating FUNCTION "shipping.shpr_trg()"
pg_restore: creating FUNCTION "shipping.shsn_trg()"
pg_restore: creating FUNCTION "shipping.shtm_trg()"
pg_restore: creating FUNCTION "shipping.shtp_trg()"
pg_restore: creating FUNCTION "shipping.shvessels_id_trg()"
pg_restore: creating FUNCTION "shipping.shvs_trg()"
pg_restore: creating FUNCTION "shipping.vessels_get_id_by_code(character varying, integer)"
pg_restore: creating FUNCTION "social.insert_message(integer, integer, character varying, character varying)"
pg_restore: from TOC entry 1138; 1255 30744 FUNCTION insert_message(integer, integer, character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION social.insert_message(in_from_id integer, in_to_id integer, in_subject character varying, in_text character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "swap.clean()"
pg_restore: creating FUNCTION "swap.event_add_user(integer, integer, boolean)"
pg_restore: from TOC entry 1140; 1255 30746 FUNCTION event_add_user(integer, integer, boolean) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.event_add_user(p_event_id integer, p_user_id integer, isadmin boolean, OUT result boolean, OUT errormessage character varying, OUT errorcode character varying) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.event_check(integer)"
pg_restore: creating FUNCTION "swap.event_insert(integer, character varying, character varying, character varying, character varying, double precision, double precision, smallint, smallint, timestamp without time zone, character varying, real)"
pg_restore: creating FUNCTION "swap.events_add_user(integer, integer, boolean)"
pg_restore: creating FUNCTION "swap.events_del_user(integer, integer)"
pg_restore: creating FUNCTION "swap.events_delete(integer, integer)"
pg_restore: from TOC entry 1145; 1255 30751 FUNCTION events_delete(integer, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.events_delete(p_id integer, p_user_id integer, OUT result boolean, OUT errormessage character varying, OUT errorcode character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "swap.events_insert(integer, character varying, character varying, character varying, character varying, double precision, double precision, smallint, smallint, date)"
pg_restore: creating FUNCTION "swap.events_new_id()"
pg_restore: creating TABLE "swap.events"
pg_restore: creating FUNCTION "swap.f_event(integer)"
pg_restore: from TOC entry 1148; 1255 30765 FUNCTION f_event(integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.f_event(event_id integer, OUT event swap.events) OWNER TO postgres;

pg_restore: creating FUNCTION "swap.f_likes(bigint)"
pg_restore: creating FUNCTION "swap.f_profile(integer)"
pg_restore: creating FUNCTION "swap.follow(integer, integer, boolean)"
pg_restore: from TOC entry 1151; 1255 30768 FUNCTION follow(integer, integer, boolean) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.follow(p_user_id integer, p_follower_id integer, p_status boolean) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.followers_adel_trg()"
pg_restore: creating FUNCTION "swap.followers_afterins_trg()"
pg_restore: from TOC entry 1153; 1255 30770 FUNCTION followers_afterins_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.followers_afterins_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "swap.insert_date_new()"
pg_restore: creating FUNCTION "swap.isfollowed(integer, integer)"
pg_restore: from TOC entry 1155; 1255 30772 FUNCTION isfollowed(integer, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.isfollowed(p_user_id integer, p_other_id integer) OWNER TO postgres;

pg_restore: creating FUNCTION "swap.isfollowing(integer, integer)"
pg_restore: from TOC entry 1156; 1255 30773 FUNCTION isfollowing(integer, integer) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.isfollowing(p_user_id integer, p_other_id integer) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.item_images_insert(bigint, character varying, character varying)"
pg_restore: from TOC entry 1157; 1255 30774 FUNCTION item_images_insert(bigint, character varying, character varying) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.item_images_insert(p_item_id bigint, p_url character varying, p_title character varying) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.items_delete()"
pg_restore: from TOC entry 1158; 1255 30775 FUNCTION items_delete() januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.items_delete() OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.items_delete(integer, bigint)"
pg_restore: creating FUNCTION "swap.items_discovered(integer, bigint)"
pg_restore: creating FUNCTION "swap.items_dislikes(integer, bigint, boolean)"
pg_restore: from TOC entry 1161; 1255 30778 FUNCTION items_dislikes(integer, bigint, boolean) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.items_dislikes(p_user_id integer, p_item_id bigint, p_state boolean) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.items_images_new_id()"
pg_restore: creating FUNCTION "swap.items_insert(integer, character varying, character varying)"
pg_restore: creating FUNCTION "swap.items_likes(integer, bigint)"
pg_restore: creating FUNCTION "swap.items_likes(integer, bigint, boolean)"
pg_restore: creating FUNCTION "swap.items_new_id()"
pg_restore: creating FUNCTION "swap.likes_delete_ai_trg()"
pg_restore: creating FUNCTION "swap.likes_update_ai_trg()"
pg_restore: creating FUNCTION "swap.message_insert(bigint, character varying, character varying, integer)"
pg_restore: from TOC entry 1169; 1255 30786 FUNCTION message_insert(bigint, character varying, character varying, integer) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.message_insert(p_swap_id bigint, p_text character varying, p_image_url character varying, p_from_user_id integer, OUT message_id bigint, OUT result boolean, OUT errormessage character varying, OUT errorcode character varying) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.notification_insert(integer, integer, smallint, bigint, bigint, bigint, bigint, integer, integer, character varying)"
pg_restore: from TOC entry 1170; 1255 30787 FUNCTION notification_insert(integer, integer, smallint, bigint, bigint, bigint, bigint, integer, integer, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.notification_insert(p_to_user_id integer, p_from_user_id integer, p_type_id smallint, p_item_id bigint, p_swap_id bigint, p_swap_item_id bigint, p_other_user_item_id bigint, p_db_schema_id integer, p_event_id integer, p_event_title character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "swap.notification_read(integer, bigint)"
pg_restore: from TOC entry 1171; 1255 30788 FUNCTION notification_read(integer, bigint) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.notification_read(p_user_id integer, p_notification_id bigint) OWNER TO januaguest;

pg_restore: creating COMMENT "swap.FUNCTION notification_read(p_user_id integer, p_notification_id bigint)"
pg_restore: creating FUNCTION "swap.notifications_adel_trg()"
pg_restore: from TOC entry 1172; 1255 30789 FUNCTION notifications_adel_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.notifications_adel_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "swap.notifications_ainsert_trg()"
pg_restore: from TOC entry 1173; 1255 30790 FUNCTION notifications_ainsert_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.notifications_ainsert_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "swap.notifications_bupd_trg()"
pg_restore: from TOC entry 1174; 1255 30791 FUNCTION notifications_bupd_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.notifications_bupd_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "swap.notifications_new_id()"
pg_restore: creating FUNCTION "swap.notifications_unread()"
pg_restore: from TOC entry 1176; 1255 30793 FUNCTION notifications_unread() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.notifications_unread() OWNER TO postgres;

pg_restore: creating FUNCTION "swap.nvl(integer, integer)"
pg_restore: from TOC entry 1177; 1255 30794 FUNCTION nvl(integer, integer) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.nvl(value integer, replace integer) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.participate(integer, integer)"
pg_restore: from TOC entry 1178; 1255 30795 FUNCTION participate(integer, integer) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.participate(p_event_id integer, p_user_id integer) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.record_date_biu()"
pg_restore: creating FUNCTION "swap.swap_action(integer, bigint, smallint)"
pg_restore: creating FUNCTION "swap.swap_canclose(integer, integer)"
pg_restore: from TOC entry 1181; 1255 30798 FUNCTION swap_canclose(integer, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.swap_canclose(p_user_id integer, p_to_id integer) OWNER TO postgres;

pg_restore: creating FUNCTION "swap.swap_check(bigint)"
pg_restore: creating FUNCTION "swap.swap_notifications_insert()"
pg_restore: from TOC entry 1183; 1255 30800 FUNCTION swap_notifications_insert() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.swap_notifications_insert() OWNER TO postgres;

pg_restore: creating FUNCTION "swap.swap_profile_get(integer)"
pg_restore: creating FUNCTION "swap.swap_start(integer, bigint, bigint, boolean)"
pg_restore: from TOC entry 1185; 1255 30802 FUNCTION swap_start(integer, bigint, bigint, boolean) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.swap_start(p_user_id integer, p_user_item_id bigint, p_other_item_id bigint, p_onoff boolean) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.swap_start_number(integer, bigint, bigint, boolean)"
pg_restore: from TOC entry 1186; 1255 30803 FUNCTION swap_start_number(integer, bigint, bigint, boolean) januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.swap_start_number(p_user_id integer, p_user_item_id bigint, p_other_item_id bigint, p_onoff boolean) OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.swaps_bupdate_trg()"
pg_restore: from TOC entry 1187; 1255 30804 FUNCTION swaps_bupdate_trg() januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.swaps_bupdate_trg() OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.swaps_new_id()"
pg_restore: from TOC entry 1188; 1255 30805 FUNCTION swaps_new_id() januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION swap.swaps_new_id() OWNER TO januaguest;

pg_restore: creating FUNCTION "swap.update_user_likes(integer)"
pg_restore: from TOC entry 1189; 1255 30806 FUNCTION update_user_likes(integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.update_user_likes(p_user_id integer) OWNER TO postgres;

pg_restore: creating FUNCTION "swap.user_add_followers(integer, integer)"
pg_restore: creating FUNCTION "swap.user_insert_swap_profile()"
pg_restore: from TOC entry 1191; 1255 30808 FUNCTION user_insert_swap_profile() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION swap.user_insert_swap_profile() OWNER TO postgres;

pg_restore: creating FUNCTION "swap.user_item_likes(integer, bigint)"
pg_restore: creating FUNCTION "system.app_forms_biu()"
pg_restore: creating FUNCTION "system.createkey()"
pg_restore: from TOC entry 1194; 1255 30811 FUNCTION createkey() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.createkey() OWNER TO postgres;

pg_restore: creating FUNCTION "system.createpersonalschema(character varying)"
pg_restore: from TOC entry 1195; 1255 30812 FUNCTION createpersonalschema(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.createpersonalschema(p_session_key character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "system.createpublicschema(character varying, character varying, character varying, character varying, boolean, character varying, smallint, smallint)"
pg_restore: from TOC entry 1196; 1255 30813 FUNCTION createpublicschema(character varying, character varying, character varying, character varying, boolean, character varying, smallint, smallint) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.createpublicschema(p_user_key character varying, p_session_key character varying, p_schema_name character varying, p_schema_des character varying, p_isportal boolean, p_package_key character varying, p_country_id smallint, p_default_language_id smallint) OWNER TO postgres;

pg_restore: creating FUNCTION "system.createpublicschema(character varying, character varying, character varying, character varying, boolean, character varying, integer, integer)"
pg_restore: from TOC entry 1197; 1255 30814 FUNCTION createpublicschema(character varying, character varying, character varying, character varying, boolean, character varying, integer, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.createpublicschema(p_user_key character varying, p_session_key character varying, p_schema_name character varying, p_schema_des character varying, p_isportal boolean, p_package_key character varying, p_country_id integer, p_default_language_id integer) OWNER TO postgres;

pg_restore: creating FUNCTION "system.createuserschema(integer)"
pg_restore: creating FUNCTION "system.db_user_email(character varying)"
pg_restore: creating FUNCTION "system.db_user_update_password(character varying, character varying)"
pg_restore: creating FUNCTION "system.db_users_check(integer)"
pg_restore: creating FUNCTION "system.db_users_profile_biu()"
pg_restore: from TOC entry 1200; 1255 30817 FUNCTION db_users_profile_biu() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.db_users_profile_biu() OWNER TO postgres;

pg_restore: creating FUNCTION "system.db_users_profiles_biu()"
pg_restore: from TOC entry 1201; 1255 30818 FUNCTION db_users_profiles_biu() januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER FUNCTION system.db_users_profiles_biu() OWNER TO januaguest;

pg_restore: creating FUNCTION "system.get_key(integer, integer)"
pg_restore: from TOC entry 1202; 1255 30819 FUNCTION get_key(integer, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.get_key(p_id integer, p_digits integer) OWNER TO postgres;

pg_restore: creating FUNCTION "system.get_key(bigint, smallint)"
pg_restore: from TOC entry 1203; 1255 30820 FUNCTION get_key(bigint, smallint) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.get_key(p_id bigint, p_digits smallint) OWNER TO postgres;

pg_restore: creating FUNCTION "system.get_key(bigint, integer)"
pg_restore: from TOC entry 1204; 1255 30821 FUNCTION get_key(bigint, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.get_key(p_id bigint, p_digits integer) OWNER TO postgres;

pg_restore: creating FUNCTION "system.get_new_package()"
pg_restore: from TOC entry 1205; 1255 30822 FUNCTION get_new_package() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.get_new_package() OWNER TO postgres;

pg_restore: creating COMMENT "system.FUNCTION get_new_package()"
pg_restore: creating FUNCTION "system.get_new_user()"
pg_restore: from TOC entry 1206; 1255 30823 FUNCTION get_new_user() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.get_new_user() OWNER TO postgres;

pg_restore: creating FUNCTION "system.get_session_id(character varying)"
pg_restore: from TOC entry 1207; 1255 30824 FUNCTION get_session_id(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.get_session_id(p_session_key character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "system.insert_application(character varying)"
pg_restore: from TOC entry 1208; 1255 30825 FUNCTION insert_application(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.insert_application(p_application_name character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "system.insert_date_new()"
pg_restore: creating FUNCTION "system.insert_package(character varying)"
pg_restore: from TOC entry 1210; 1255 30827 FUNCTION insert_package(character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.insert_package(p_name character varying) OWNER TO postgres;

pg_restore: creating COMMENT "system.FUNCTION insert_package(p_name character varying)"
pg_restore: creating FUNCTION "system.insert_role(character varying, character varying, boolean, boolean, boolean)"
pg_restore: from TOC entry 1211; 1255 30828 FUNCTION insert_role(character varying, character varying, boolean, boolean, boolean) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.insert_role(p_name character varying, p_code character varying, p_admin boolean, p_user boolean, p_guest boolean) OWNER TO postgres;

pg_restore: creating FUNCTION "system.likes_update_ai_trg()"
pg_restore: from TOC entry 1212; 1255 30829 FUNCTION likes_update_ai_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.likes_update_ai_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "system.nvl(integer, integer)"
pg_restore: creating FUNCTION "system.nvl(character varying, character varying)"
pg_restore: creating FUNCTION "system.record_date_biu()"
pg_restore: creating FUNCTION "system.schemasetdefaultuser(integer, integer)"
pg_restore: creating FUNCTION "system.setlog(text)"
pg_restore: from TOC entry 1217; 1255 30834 FUNCTION setlog(text) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.setlog(log text) OWNER TO postgres;

pg_restore: creating FUNCTION "system.setlog(text, bigint)"
pg_restore: creating FUNCTION "system.setuserdefaultschema(character varying, integer)"
pg_restore: from TOC entry 1219; 1255 30836 FUNCTION setuserdefaultschema(character varying, integer) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.setuserdefaultschema(p_session_key character varying, p_user_id integer) OWNER TO postgres;

pg_restore: creating COMMENT "system.FUNCTION setuserdefaultschema(p_session_key character varying, p_user_id integer)"
pg_restore: creating FUNCTION "system.sfrm_trg()"
pg_restore: creating FUNCTION "system.sfrt_trg()"
pg_restore: creating FUNCTION "system.sgrp_trg()"
pg_restore: creating FUNCTION "system.spaf_trg()"
pg_restore: creating FUNCTION "system.spal_trg()"
pg_restore: creating FUNCTION "system.spca_trg()"
pg_restore: creating FUNCTION "system.spck_trg()"
pg_restore: creating FUNCTION "system.spcs_trg()"
pg_restore: creating FUNCTION "system.spfo_trg()"
pg_restore: creating FUNCTION "system.spmf_trg()"
pg_restore: creating FUNCTION "system.spop_trg()"
pg_restore: creating FUNCTION "system.spot_trg()"
pg_restore: creating FUNCTION "system.sppl_trg()"
pg_restore: creating FUNCTION "system.sppm_trg()"
pg_restore: creating FUNCTION "system.sppo_trg()"
pg_restore: creating FUNCTION "system.sppr_trg()"
pg_restore: creating FUNCTION "system.spps_trg()"
pg_restore: creating FUNCTION "system.sppt_trg()"
pg_restore: creating FUNCTION "system.srls_trg()"
pg_restore: creating FUNCTION "system.srr_trg()"
pg_restore: creating FUNCTION "system.ssch_trg()"
pg_restore: creating FUNCTION "system.sscp_trg()"
pg_restore: creating FUNCTION "system.sscr_trg()"
pg_restore: creating FUNCTION "system.sssp_trg()"
pg_restore: creating FUNCTION "system.sssr_trg()"
pg_restore: creating FUNCTION "system.startsessionbyurl(character varying)"
pg_restore: creating FUNCTION "system.stripstringsearch(character varying, character varying)"
pg_restore: from TOC entry 1221; 1255 30838 FUNCTION stripstringsearch(character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.stripstringsearch(p_firstname character varying, p_lastname character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "system.supr_trg()"
pg_restore: creating FUNCTION "system.sura_trg()"
pg_restore: creating FUNCTION "system.suro_trg()"
pg_restore: creating FUNCTION "system.surp_trg()"
pg_restore: creating FUNCTION "system.surs_trg()"
pg_restore: creating FUNCTION "system.suse_trg()"
pg_restore: creating FUNCTION "system.susg_trg()"
pg_restore: creating FUNCTION "system.suss_trg()"
pg_restore: creating FUNCTION "system.test_new_user(character varying, character varying, character varying)"
pg_restore: from TOC entry 1222; 1255 30839 FUNCTION test_new_user(character varying, character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.test_new_user(p_username character varying, p_email character varying, p_password character varying) OWNER TO postgres;

pg_restore: creating COMMENT "system.FUNCTION test_new_user(p_username character varying, p_email character varying, p_password character varying)"
pg_restore: creating FUNCTION "system.user_after_insert()"
pg_restore: creating FUNCTION "system.user_payment(integer, integer, money, character, smallint, date)"
pg_restore: from TOC entry 3023; 1255 41845 FUNCTION user_payment(integer, integer, money, character, smallint, date) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.user_payment(p_user_id integer, p_schema_id integer, p_amount money, p_interval_type character, p_interval_duration smallint, p_payment_date date) OWNER TO postgres;

pg_restore: creating FUNCTION "system.user_update_image_url(integer, character varying)"
pg_restore: from TOC entry 1223; 1255 30840 FUNCTION user_update_image_url(integer, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.user_update_image_url(p_user_id integer, p_image_url character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "system.user_update_trg()"
pg_restore: from TOC entry 1224; 1255 30841 FUNCTION user_update_trg() postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.user_update_trg() OWNER TO postgres;

pg_restore: creating FUNCTION "system.useradd(character varying, character varying, character varying, integer, boolean)"
pg_restore: creating FUNCTION "system.useraddsocial(character varying, character varying, character varying, character varying, boolean)"
pg_restore: from TOC entry 1226; 1255 30843 FUNCTION useraddsocial(character varying, character varying, character varying, character varying, boolean) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.useraddsocial(p_email character varying, p_socialid character varying, p_social_kind character varying, p_country_code character varying, p_ispublic boolean) OWNER TO postgres;

pg_restore: creating FUNCTION "system.useraddsocial(character varying, character varying, character varying, character varying, boolean, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, double precision, double precision, date, character varying, character, character varying, character varying, character varying, json)"
pg_restore: from TOC entry 1227; 1255 30844 FUNCTION useraddsocial(character varying, character varying, character varying, character varying, boolean, character varying, character varying, character varying, character varying, character varying, character varying, character varying, character varying, double precision, double precision, date, character varying, character, character varying, character varying, character varying, json) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.useraddsocial(p_email character varying, p_socialid character varying, p_social_kind character varying, p_country_code character varying, p_ispublic boolean, p_firstname character varying, p_lastname character varying, p_address_town character varying, p_address_street character varying, p_address_number character varying, p_address_postal_code character varying, p_address_full character varying, p_public_email character varying, p_latitude double precision, p_longitude double precision, p_birth_date date, p_fiscal_code character varying, p_gender_code character, p_cellular_phone character varying, p_phone character varying, p_image_url character varying, p_facebook_json json) OWNER TO postgres;

pg_restore: creating FUNCTION "system.userbykey(character varying)"
pg_restore: creating FUNCTION "system.userdel(integer)"
pg_restore: creating FUNCTION "system.usergrantschema(character varying, character varying, boolean, boolean, boolean, boolean)"
pg_restore: from TOC entry 1230; 1255 30848 FUNCTION usergrantschema(character varying, character varying, boolean, boolean, boolean, boolean) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.usergrantschema(p_user_key character varying, p_schema_key character varying, p_isadmin boolean, p_isdefault boolean, p_isowner boolean, p_readwrite boolean) OWNER TO postgres;

pg_restore: creating FUNCTION "system.userlogin(character varying, character varying, character varying)"
pg_restore: creating COMMENT "system.FUNCTION userlogin(p_username character varying, p_password character varying, p_email character varying)"
pg_restore: creating FUNCTION "system.userloginpublic(integer)"
pg_restore: creating FUNCTION "system.userloginsocial(character varying, character varying)"
pg_restore: from TOC entry 1233; 1255 30851 FUNCTION userloginsocial(character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.userloginsocial(p_socialid character varying, p_social_kind character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "system.usertest(character varying, character varying)"
pg_restore: creating FUNCTION "system.usertestsocial(character varying, character varying)"
pg_restore: from TOC entry 1235; 1255 30853 FUNCTION usertestsocial(character varying, character varying) postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER FUNCTION system.usertestsocial(p_socialid character varying, p_social_kind character varying) OWNER TO postgres;

pg_restore: creating FUNCTION "uni.udpr_trg()"
pg_restore: creating FUNCTION "uni.ufcl_trg()"
pg_restore: creating FUNCTION "uni.umdl_trg()"
pg_restore: creating FUNCTION "uni.universities_new_id()"
pg_restore: creating FUNCTION "uni.unvr_trg()"
pg_restore: creating FUNCTION "workflow.get_id_by_code(character varying, integer)"
pg_restore: creating FUNCTION "workflow.workflows_trg()"
pg_restore: creating SEQUENCE "accounting.accounts_seq"
pg_restore: creating TABLE "accounting.ledger_accounts"
pg_restore: creating COMMENT "accounting.TABLE ledger_accounts"
pg_restore: creating COMMENT "accounting.COLUMN ledger_accounts.code"
pg_restore: creating COMMENT "accounting.COLUMN ledger_accounts.name"
pg_restore: creating COMMENT "accounting.COLUMN ledger_accounts.db_schema_id"
pg_restore: creating TABLE "accounting.payment_terms"
pg_restore: creating COMMENT "accounting.COLUMN payment_terms.description"
pg_restore: creating COMMENT "accounting.COLUMN payment_terms.master_term_id"
pg_restore: creating COMMENT "accounting.COLUMN payment_terms.installment_rate"
pg_restore: creating TABLE "accounting.pcash_accounting_books"
pg_restore: creating COMMENT "accounting.TABLE pcash_accounting_books"
pg_restore: creating TABLE "accounting.pcash_accounting_periods"
pg_restore: creating COMMENT "accounting.TABLE pcash_accounting_periods"
pg_restore: creating COMMENT "accounting.COLUMN pcash_accounting_periods.period"
pg_restore: creating TABLE "accounting.pcash_accounting_row"
pg_restore: creating COMMENT "accounting.TABLE pcash_accounting_row"
pg_restore: creating COMMENT "accounting.COLUMN pcash_accounting_row.journal_date"
pg_restore: creating COMMENT "accounting.COLUMN pcash_accounting_row.debit"
pg_restore: creating TABLE "accounting.pcash_accounting_rows_ledgers"
pg_restore: creating COMMENT "accounting.COLUMN pcash_accounting_rows_ledgers.debit"
pg_restore: creating COMMENT "accounting.COLUMN pcash_accounting_rows_ledgers.credit"
pg_restore: creating TABLE "accounting.pcash_books_ledgers"
pg_restore: creating COMMENT "accounting.TABLE pcash_books_ledgers"
pg_restore: creating COMMENT "accounting.COLUMN pcash_books_ledgers.is_cash"
pg_restore: creating TABLE "accounting.pcash_ledger_types"
pg_restore: creating COMMENT "accounting.TABLE pcash_ledger_types"
pg_restore: creating COMMENT "accounting.COLUMN pcash_ledger_types.is_cash"
pg_restore: creating TABLE "accounting.pretty_cash_ledgers"
pg_restore: creating COMMENT "accounting.TABLE pretty_cash_ledgers"
pg_restore: creating COMMENT "accounting.COLUMN pretty_cash_ledgers.pcash_name"
pg_restore: creating COMMENT "accounting.COLUMN pretty_cash_ledgers.account_guid"
pg_restore: creating SEQUENCE "accounting.vat_seq"
pg_restore: creating TABLE "accounting.vat_codes"
pg_restore: creating TABLE "ads.adwords_campaigns"
pg_restore: creating TABLE "ads.adwords_locations"
pg_restore: creating TABLE "ads.adwords_terms"
pg_restore: creating TABLE "ads.banner_logs"
pg_restore: creating SEQUENCE "ads.banner_logs_seq"
pg_restore: creating TABLE "ads.banners"
pg_restore: creating COMMENT "ads.COLUMN banners.customer_id"
pg_restore: creating COMMENT "ads.COLUMN banners.abnn_jguid"
pg_restore: creating SEQUENCE "ads.banners_seq"
pg_restore: from TOC entry 850; 1259 94396 SEQUENCE banners_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE ads.banners_seq OWNER TO postgres;

pg_restore: creating TABLE "ads.click_logs"
pg_restore: creating SEQUENCE "ads.click_logs_seq"
pg_restore: creating TABLE "ads.domains"
pg_restore: creating COMMENT "ads.COLUMN domains.admn_jguid"
pg_restore: creating TABLE "ads.domains_locations"
pg_restore: creating SEQUENCE "ads.domains_seq"
pg_restore: from TOC entry 266; 1259 30886 SEQUENCE domains_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE ads.domains_seq OWNER TO postgres;

pg_restore: creating TABLE "ads.last_banner"
pg_restore: creating COMMENT "ads.COLUMN last_banner.alst_jguid"
pg_restore: creating TABLE "ads.publish_slots"
pg_restore: creating COMMENT "ads.COLUMN publish_slots.apbl_jguid"
pg_restore: creating SEQUENCE "anagraph.an_anagraph_seq"
pg_restore: creating TABLE "anagraph.an_locations"
pg_restore: creating COMMENT "anagraph.TABLE an_locations"
pg_restore: creating COMMENT "anagraph.COLUMN an_locations.id"
pg_restore: creating COMMENT "anagraph.COLUMN an_locations.anagraph_id"
pg_restore: creating COMMENT "anagraph.COLUMN an_locations.osm_place_id"
pg_restore: creating TABLE "anagraph.anag_categories"
pg_restore: creating TABLE "anagraph.anagraphs"
pg_restore: from TOC entry 270; 1259 30896 TABLE anagraphs postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE anagraph.anagraphs OWNER TO postgres;

pg_restore: creating COMMENT "anagraph.COLUMN anagraphs.an_main_group_id"
pg_restore: creating COMMENT "anagraph.COLUMN anagraphs.search_index"
pg_restore: creating COMMENT "anagraph.COLUMN anagraphs.anagraph64"
pg_restore: creating COMMENT "anagraph.COLUMN anagraphs.anag_jguid"
pg_restore: creating COMMENT "anagraph.COLUMN anagraphs.user_insert"
pg_restore: creating COMMENT "anagraph.COLUMN anagraphs.custom_field_1"
pg_restore: creating COMMENT "anagraph.COLUMN anagraphs.vessel_id"
pg_restore: creating TABLE "anagraph.branches"
pg_restore: from TOC entry 271; 1259 30906 TABLE branches postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE anagraph.branches OWNER TO postgres;

pg_restore: creating COMMENT "anagraph.COLUMN branches.abrn_jguid"
pg_restore: creating TABLE "anagraph.categories"
pg_restore: creating SEQUENCE "anagraph.categories_seq"
pg_restore: creating TABLE "anagraph.categories_translations"
pg_restore: creating SEQUENCE "anagraph.group_seq"
pg_restore: creating TABLE "anagraph.groups"
pg_restore: from TOC entry 273; 1259 30914 TABLE groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE anagraph.groups OWNER TO postgres;

pg_restore: creating COMMENT "anagraph.COLUMN groups.an_group_id"
pg_restore: creating COMMENT "anagraph.COLUMN groups.group_des"
pg_restore: creating COMMENT "anagraph.COLUMN groups.sub_group"
pg_restore: creating COMMENT "anagraph.COLUMN groups.sub_group_des"
pg_restore: creating COMMENT "anagraph.COLUMN groups.settings"
pg_restore: creating COMMENT "anagraph.COLUMN groups."position""
pg_restore: creating COMMENT "anagraph.COLUMN groups.accounting"
pg_restore: creating COMMENT "anagraph.COLUMN groups.cod_account"
pg_restore: creating COMMENT "anagraph.COLUMN groups.local"
pg_restore: creating COMMENT "anagraph.COLUMN groups.group_cod"
pg_restore: creating COMMENT "anagraph.COLUMN groups.ledger_cod"
pg_restore: creating COMMENT "anagraph.COLUMN groups.subledger_cod"
pg_restore: creating COMMENT "anagraph.COLUMN groups."grouping""
pg_restore: creating COMMENT "anagraph.COLUMN groups.description"
pg_restore: creating COMMENT "anagraph.COLUMN groups.angr_jguid"
pg_restore: creating TABLE "anagraph.identities"
pg_restore: from TOC entry 274; 1259 30918 TABLE identities postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE anagraph.identities OWNER TO postgres;

pg_restore: creating COMMENT "anagraph.COLUMN identities.adnt_jguid"
pg_restore: creating TABLE "gis.osm_categories"
pg_restore: creating TABLE "gis.osm_places"
pg_restore: creating VIEW "anagraph.osm_anagraphs"
pg_restore: creating TABLE "analytics.group_users"
pg_restore: from TOC entry 275; 1259 30927 TABLE group_users postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE analytics.group_users OWNER TO postgres;

pg_restore: creating TABLE "analytics.params"
pg_restore: creating COMMENT "analytics.TABLE params"
pg_restore: creating COMMENT "analytics.COLUMN params.name"
pg_restore: creating COMMENT "analytics.COLUMN params.query_id"
pg_restore: creating COMMENT "analytics.COLUMN params.value"
pg_restore: creating TABLE "analytics.queries"
pg_restore: from TOC entry 276; 1259 30930 TABLE queries postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE analytics.queries OWNER TO postgres;

pg_restore: creating COMMENT "analytics.TABLE queries"
pg_restore: creating COMMENT "analytics.COLUMN queries.master_id"
pg_restore: creating COMMENT "analytics.COLUMN queries.isdetail"
pg_restore: creating COMMENT "analytics.COLUMN queries.description"
pg_restore: creating TABLE "analytics.queries_schemas"
pg_restore: creating SEQUENCE "analytics.queries_seq"
pg_restore: creating TABLE "analytics.query_groups"
pg_restore: from TOC entry 279; 1259 30941 TABLE query_groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE analytics.query_groups OWNER TO postgres;

pg_restore: creating SEQUENCE "analytics.query_groups_seq"
pg_restore: creating TABLE "books.authors"
pg_restore: creating SEQUENCE "books.book_defs_seq"
pg_restore: from TOC entry 282; 1259 30949 SEQUENCE book_defs_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE books.book_defs_seq OWNER TO postgres;

pg_restore: creating TABLE "books.definitions"
pg_restore: creating COMMENT "books.COLUMN definitions.book_def_id"
pg_restore: creating COMMENT "books.COLUMN definitions.author_id"
pg_restore: creating COMMENT "books.COLUMN definitions.language_id"
pg_restore: creating TABLE "books.offers"
pg_restore: from TOC entry 284; 1259 30958 TABLE offers postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE books.offers OWNER TO postgres;

pg_restore: creating COMMENT "books.COLUMN offers.book_def_id"
pg_restore: creating TABLE "books.offers_views"
pg_restore: from TOC entry 285; 1259 30964 TABLE offers_views postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE books.offers_views OWNER TO postgres;

pg_restore: creating TABLE "cloud.blob_files"
pg_restore: creating COMMENT "cloud.COLUMN blob_files.cblb_jguid"
pg_restore: creating COMMENT "cloud.COLUMN blob_files.description"
pg_restore: creating TABLE "cloud.blob_files_old"
pg_restore: creating COMMENT "cloud.COLUMN blob_files_old.blob_jguid"
pg_restore: creating COMMENT "cloud.COLUMN blob_files_old.cblb_jguid"
pg_restore: creating COMMENT "cloud.COLUMN blob_files_old.file_name"
pg_restore: creating SEQUENCE "cloud.cloud_computers_seq"
pg_restore: from TOC entry 287; 1259 30974 SEQUENCE cloud_computers_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cloud.cloud_computers_seq OWNER TO postgres;

pg_restore: creating SEQUENCE "cloud.cloud_directories_seq"
pg_restore: from TOC entry 288; 1259 30976 SEQUENCE cloud_directories_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cloud.cloud_directories_seq OWNER TO postgres;

pg_restore: creating SEQUENCE "cloud.cloud_images_blob_id_seq"
pg_restore: from TOC entry 289; 1259 30978 SEQUENCE cloud_images_blob_id_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cloud.cloud_images_blob_id_seq OWNER TO postgres;

pg_restore: creating SEQUENCE "cloud.cloud_images_seq"
pg_restore: creating SEQUENCE "cloud.cloud_text_files_seq"
pg_restore: from TOC entry 290; 1259 30980 SEQUENCE cloud_text_files_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cloud.cloud_text_files_seq OWNER TO postgres;

pg_restore: creating TABLE "cloud.computers"
pg_restore: from TOC entry 291; 1259 30982 TABLE computers postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cloud.computers OWNER TO postgres;

pg_restore: creating COMMENT "cloud.TABLE computers"
pg_restore: creating COMMENT "cloud.COLUMN computers.computer_id"
pg_restore: creating COMMENT "cloud.COLUMN computers.computer_uk"
pg_restore: creating COMMENT "cloud.COLUMN computers.computer_name"
pg_restore: creating COMMENT "cloud.COLUMN computers.computer_key"
pg_restore: creating COMMENT "cloud.COLUMN computers.ccmp_jguid"
pg_restore: creating TABLE "cloud.directories"
pg_restore: from TOC entry 292; 1259 30988 TABLE directories postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cloud.directories OWNER TO postgres;

pg_restore: creating COMMENT "cloud.TABLE directories"
pg_restore: creating COMMENT "cloud.COLUMN directories.computer_id"
pg_restore: creating COMMENT "cloud.COLUMN directories.cdrc_jguid"
pg_restore: creating TABLE "cloud.external_files"
pg_restore: from TOC entry 293; 1259 30995 TABLE external_files postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cloud.external_files OWNER TO postgres;

pg_restore: creating COMMENT "cloud.COLUMN external_files.ext_file_key"
pg_restore: creating COMMENT "cloud.COLUMN external_files.cxtf_jguid"
pg_restore: creating COMMENT "cloud.COLUMN external_files.jguid"
pg_restore: creating TABLE "cloud.external_locations"
pg_restore: from TOC entry 294; 1259 30998 TABLE external_locations postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cloud.external_locations OWNER TO postgres;

pg_restore: creating COMMENT "cloud.COLUMN external_locations.cxtr_jguid"
pg_restore: creating SEQUENCE "cloud.file_seq"
pg_restore: creating COMMENT "cloud.SEQUENCE file_seq"
pg_restore: creating TABLE "cloud.filedirlist"
pg_restore: creating COMMENT "cloud.TABLE filedirlist"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.id"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.local_id"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.parent_id"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.dir"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.treeorder"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.name"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.description"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.filedatetime"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.fileattr"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.external_file_id"
pg_restore: creating COMMENT "cloud.COLUMN filedirlist.cfld_jguid"
pg_restore: creating TABLE "cloud.images"
pg_restore: creating COMMENT "cloud.COLUMN images.filename"
pg_restore: creating COMMENT "cloud.COLUMN images.ext_file_key"
pg_restore: creating COMMENT "cloud.COLUMN images.cimg_jguid"
pg_restore: creating SEQUENCE "cloud.images_seq"
pg_restore: creating TABLE "cloud.text_files"
pg_restore: creating COMMENT "cloud.COLUMN text_files.ctxt_jguid"
pg_restore: creating TABLE "cms.app_languages"
pg_restore: from TOC entry 299; 1259 31022 TABLE app_languages postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.app_languages OWNER TO postgres;

pg_restore: creating TABLE "cms.apps"
pg_restore: from TOC entry 300; 1259 31026 TABLE apps postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.apps OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN apps.app_id"
pg_restore: creating COMMENT "cms.COLUMN apps.default_language"
pg_restore: creating COMMENT "cms.COLUMN apps.cpps_jguid"
pg_restore: creating SEQUENCE "cms.apps_seq"
pg_restore: from TOC entry 301; 1259 31033 SEQUENCE apps_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.apps_seq OWNER TO postgres;

pg_restore: creating TABLE "cms.arguments"
pg_restore: from TOC entry 302; 1259 31035 TABLE arguments postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.arguments OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN arguments.carg_jguid"
pg_restore: creating TABLE "cms.arguments_groups"
pg_restore: from TOC entry 303; 1259 31041 TABLE arguments_groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.arguments_groups OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN arguments_groups.crgm_jguid"
pg_restore: creating TABLE "cms.arguments_roles"
pg_restore: from TOC entry 304; 1259 31044 TABLE arguments_roles postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.arguments_roles OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN arguments_roles.crgr_jguid"
pg_restore: creating SEQUENCE "cms.arguments_seq"
pg_restore: creating TABLE "cms.articles"
pg_restore: from TOC entry 306; 1259 31050 TABLE articles postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.articles OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN articles.article_id"
pg_restore: creating COMMENT "cms.COLUMN articles.title"
pg_restore: creating COMMENT "cms.COLUMN articles.article_key"
pg_restore: creating COMMENT "cms.COLUMN articles.language_id"
pg_restore: creating COMMENT "cms.COLUMN articles.crtc_jguid"
pg_restore: creating SEQUENCE "cms.articles_seq"
pg_restore: creating TABLE "cms.events"
pg_restore: creating SEQUENCE "cms.events_seq"
pg_restore: creating TABLE "cms.graphic_menu"
pg_restore: creating COMMENT "cms.COLUMN graphic_menu.cgrm_jguid"
pg_restore: creating TABLE "cms.graphic_menu_groups"
pg_restore: creating COMMENT "cms.COLUMN graphic_menu_groups.cgrg_jguid"
pg_restore: creating SEQUENCE "cms.graphic_menu_groups_seq"
pg_restore: creating TABLE "cms.graphic_menu_rows"
pg_restore: creating COMMENT "cms.COLUMN graphic_menu_rows.cgrp_jguid"
pg_restore: creating SEQUENCE "cms.graphic_menu_rows_seq"
pg_restore: creating SEQUENCE "cms.graphic_menus_seq"
pg_restore: creating TABLE "cms.main_arguments"
pg_restore: from TOC entry 314; 1259 31083 TABLE main_arguments postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.main_arguments OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN main_arguments.cmar_jguid"
pg_restore: creating SEQUENCE "cms.main_arguments_seq"
pg_restore: creating TABLE "cms.menu"
pg_restore: from TOC entry 315; 1259 31089 TABLE menu postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.menu OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN menu.menu_id"
pg_restore: creating COMMENT "cms.COLUMN menu.menu_level"
pg_restore: creating COMMENT "cms.COLUMN menu.menu_title"
pg_restore: creating COMMENT "cms.COLUMN menu.menu_parent_id"
pg_restore: creating COMMENT "cms.COLUMN menu.menu_page_id"
pg_restore: creating COMMENT "cms.COLUMN menu.app_id"
pg_restore: creating COMMENT "cms.COLUMN menu.cmn_jguid"
pg_restore: creating TABLE "cms.menu_items"
pg_restore: from TOC entry 316; 1259 31094 TABLE menu_items postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.menu_items OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN menu_items.menu_id"
pg_restore: creating COMMENT "cms.COLUMN menu_items.item_id"
pg_restore: creating COMMENT "cms.COLUMN menu_items.item_pos"
pg_restore: creating COMMENT "cms.COLUMN menu_items.item_title"
pg_restore: creating COMMENT "cms.COLUMN menu_items.item_text"
pg_restore: creating COMMENT "cms.COLUMN menu_items.item_page_target"
pg_restore: creating COMMENT "cms.COLUMN menu_items.cmni_jguid"
pg_restore: creating TABLE "cms.menu_items_t"
pg_restore: from TOC entry 317; 1259 31100 TABLE menu_items_t postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.menu_items_t OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN menu_items_t.cmnt_jguid"
pg_restore: creating SEQUENCE "cms.menu_seq"
pg_restore: from TOC entry 318; 1259 31106 SEQUENCE menu_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.menu_seq OWNER TO postgres;

pg_restore: creating TABLE "cms.news"
pg_restore: creating SEQUENCE "cms.news_seq"
pg_restore: creating TABLE "cms.news_types"
pg_restore: creating TABLE "cms.pages"
pg_restore: from TOC entry 319; 1259 31108 TABLE pages postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.pages OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN pages.page_id"
pg_restore: creating COMMENT "cms.COLUMN pages.page_text"
pg_restore: creating COMMENT "cms.COLUMN pages.page_type_id"
pg_restore: creating COMMENT "cms.COLUMN pages.page_short"
pg_restore: creating COMMENT "cms.COLUMN pages.cpgp_jguid"
pg_restore: creating TABLE "cms.pages_t"
pg_restore: from TOC entry 320; 1259 31114 TABLE pages_t postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.pages_t OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN pages_t.page_id"
pg_restore: creating COMMENT "cms.COLUMN pages_t.page_text"
pg_restore: creating COMMENT "cms.COLUMN pages_t.page_short"
pg_restore: creating COMMENT "cms.COLUMN pages_t.cpgt_jguid"
pg_restore: creating TABLE "cms.pages_types"
pg_restore: from TOC entry 321; 1259 31120 TABLE pages_types postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.pages_types OWNER TO postgres;

pg_restore: creating COMMENT "cms.TABLE pages_types"
pg_restore: creating COMMENT "cms.COLUMN pages_types.cpgs_jguid"
pg_restore: creating TABLE "cms.rss_articles"
pg_restore: creating COMMENT "cms.COLUMN rss_articles.crsa_jguid"
pg_restore: creating TABLE "cms.rss_feeds"
pg_restore: creating COMMENT "cms.COLUMN rss_feeds.crsf_jguid"
pg_restore: creating SEQUENCE "cms.rssarticles_seq"
pg_restore: creating SEQUENCE "cms.rssfeed_seq"
pg_restore: creating TABLE "cms.session_logs"
pg_restore: creating TABLE "cms.sessions"
pg_restore: creating COMMENT "cms.COLUMN sessions.csss_jguid"
pg_restore: creating SEQUENCE "cms.sessions_seq"
pg_restore: creating TABLE "cms.specifications"
pg_restore: from TOC entry 329; 1259 31153 TABLE specifications postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.specifications OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN specifications.cspc_jguid"
pg_restore: creating TABLE "cms.sub_arguments"
pg_restore: from TOC entry 330; 1259 31156 TABLE sub_arguments postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.sub_arguments OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN sub_arguments.csbr_jguid"
pg_restore: creating SEQUENCE "cms.sub_arguments_seq"
pg_restore: creating TABLE "cms.templates"
pg_restore: creating COMMENT "cms.COLUMN templates.theme_id"
pg_restore: creating COMMENT "cms.COLUMN templates.template_type"
pg_restore: creating COMMENT "cms.COLUMN templates.ctmt_jguid"
pg_restore: creating TABLE "cms.templates_pages"
pg_restore: creating COMMENT "cms.TABLE templates_pages"
pg_restore: creating COMMENT "cms.COLUMN templates_pages.id"
pg_restore: creating COMMENT "cms.COLUMN templates_pages.db_schema_id"
pg_restore: creating COMMENT "cms.COLUMN templates_pages.page_name"
pg_restore: creating COMMENT "cms.COLUMN templates_pages.body"
pg_restore: creating COMMENT "cms.COLUMN templates_pages.html"
pg_restore: creating COMMENT "cms.COLUMN templates_pages.ctmp_jguid"
pg_restore: creating SEQUENCE "cms.templates_seq"
pg_restore: creating TABLE "cms.themes"
pg_restore: creating COMMENT "cms.COLUMN themes.db_schema_id"
pg_restore: creating COMMENT "cms.COLUMN themes.ctht_jguid"
pg_restore: creating TABLE "cms.themes_pages"
pg_restore: creating COMMENT "cms.TABLE themes_pages"
pg_restore: creating COMMENT "cms.COLUMN themes_pages.id"
pg_restore: creating COMMENT "cms.COLUMN themes_pages.db_schema_id"
pg_restore: creating COMMENT "cms.COLUMN themes_pages.page_name"
pg_restore: creating COMMENT "cms.COLUMN themes_pages.body"
pg_restore: creating COMMENT "cms.COLUMN themes_pages.html"
pg_restore: creating COMMENT "cms.COLUMN themes_pages.cthm_jguid"
pg_restore: creating SEQUENCE "cms.themes_seq"
pg_restore: creating TABLE "cms.web_menus"
pg_restore: from TOC entry 338; 1259 31192 TABLE web_menus postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.web_menus OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN web_menus.web_menu_id"
pg_restore: creating COMMENT "cms.COLUMN web_menus.web_menu_order"
pg_restore: creating COMMENT "cms.COLUMN web_menus.web_menu_title"
pg_restore: creating COMMENT "cms.COLUMN web_menus.web_menu_text"
pg_restore: creating COMMENT "cms.COLUMN web_menus.web_menu_subtitle"
pg_restore: creating COMMENT "cms.COLUMN web_menus.web_menu_img"
pg_restore: creating COMMENT "cms.COLUMN web_menus.web_menu_page_id"
pg_restore: creating COMMENT "cms.COLUMN web_menus.web_menu_img_id"
pg_restore: creating COMMENT "cms.COLUMN web_menus.web_menu_main_img_id"
pg_restore: creating COMMENT "cms.COLUMN web_menus.db_schema_id"
pg_restore: creating TABLE "cms.web_sites"
pg_restore: creating COMMENT "cms.COLUMN web_sites.cwbs_jguid"
pg_restore: creating SEQUENCE "cms.web_sites_seq"
pg_restore: creating TABLE "cms.webitems_pictures"
pg_restore: from TOC entry 341; 1259 31207 TABLE webitems_pictures postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE cms.webitems_pictures OWNER TO postgres;

pg_restore: creating COMMENT "cms.COLUMN webitems_pictures.cwbt_jguid"
pg_restore: creating TABLE "crm.attachments"
pg_restore: from TOC entry 342; 1259 31213 TABLE attachments postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.attachments OWNER TO postgres;

pg_restore: creating TABLE "crm.cform_taxonomies"
pg_restore: from TOC entry 343; 1259 31219 TABLE cform_taxonomies postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.cform_taxonomies OWNER TO postgres;

pg_restore: creating TABLE "crm.contactforms"
pg_restore: from TOC entry 344; 1259 31222 TABLE contactforms postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.contactforms OWNER TO postgres;

pg_restore: creating TABLE "crm.form_definitions"
pg_restore: from TOC entry 345; 1259 31228 TABLE form_definitions postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.form_definitions OWNER TO postgres;

pg_restore: creating TABLE "crm.quote_form_models"
pg_restore: from TOC entry 346; 1259 31231 TABLE quote_form_models postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.quote_form_models OWNER TO postgres;

pg_restore: creating COMMENT "crm.COLUMN quote_form_models.db_schema_id"
pg_restore: creating COMMENT "crm.COLUMN quote_form_models.model_id"
pg_restore: creating COMMENT "crm.COLUMN quote_form_models.time_cost"
pg_restore: creating COMMENT "crm.COLUMN quote_form_models.is_public"
pg_restore: creating COMMENT "crm.COLUMN quote_form_models.time_period_multiplier"
pg_restore: creating COMMENT "crm.COLUMN quote_form_models.isdefault"
pg_restore: creating COMMENT "crm.COLUMN quote_form_models.model_title"
pg_restore: creating COMMENT "crm.COLUMN quote_form_models.monthly_rate"
pg_restore: creating COMMENT "crm.COLUMN quote_form_models.model_full_address"
pg_restore: creating COMMENT "crm.COLUMN quote_form_models.print_checked_only"
pg_restore: creating TABLE "crm.quote_forms"
pg_restore: from TOC entry 347; 1259 31244 TABLE quote_forms postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.quote_forms OWNER TO postgres;

pg_restore: creating COMMENT "crm.COLUMN quote_forms.form_id"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.model_id"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.customer_iso_country"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.customer_iso_lang"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.customer_posta_code"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.customer_phone"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.db_schema_id"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.db_session_id"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.form_date_time"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.form_time_cost"
pg_restore: creating COMMENT "crm.COLUMN quote_forms.form_monthly_rate"
pg_restore: creating TABLE "crm.quote_forms_rows"
pg_restore: from TOC entry 348; 1259 31250 TABLE quote_forms_rows postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.quote_forms_rows OWNER TO postgres;

pg_restore: creating TABLE "crm.quote_frmmodels_prdserv"
pg_restore: from TOC entry 349; 1259 31261 TABLE quote_frmmodels_prdserv postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.quote_frmmodels_prdserv OWNER TO postgres;

pg_restore: creating TABLE "crm.quote_productservices"
pg_restore: from TOC entry 350; 1259 31266 TABLE quote_productservices postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.quote_productservices OWNER TO postgres;

pg_restore: creating COMMENT "crm.COLUMN quote_productservices."position""
pg_restore: creating TABLE "crm.subjects"
pg_restore: from TOC entry 351; 1259 31276 TABLE subjects postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.subjects OWNER TO postgres;

pg_restore: creating TABLE "crm.subjects_details"
pg_restore: from TOC entry 352; 1259 31279 TABLE subjects_details postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE crm.subjects_details OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.aerealtahouse"
pg_restore: creating TABLE "custom_tm_logistic.aerealtamaster"
pg_restore: creating TABLE "custom_tm_logistic.aereaprenotazioni"
pg_restore: creating TABLE "custom_tm_logistic.aerearigheltahouse"
pg_restore: creating TABLE "custom_tm_logistic.aerearigheltamaster"
pg_restore: creating TABLE "custom_tm_logistic.aereavociother"
pg_restore: creating TABLE "custom_tm_logistic.aereavociotherhouse"
pg_restore: creating TABLE "custom_tm_logistic.agentiiata"
pg_restore: creating TABLE "custom_tm_logistic.agenzie"
pg_restore: creating TABLE "custom_tm_logistic.attivitapratica"
pg_restore: creating TABLE "custom_tm_logistic.azienda"
pg_restore: creating TABLE "custom_tm_logistic.banche"
pg_restore: creating TABLE "custom_tm_logistic.clifo"
pg_restore: from TOC entry 878; 1259 123667 TABLE clifo postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.clifo OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.cntr_type"
pg_restore: from TOC entry 883; 1259 123845 TABLE cntr_type postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.cntr_type OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.cod_pagamento"
pg_restore: creating TABLE "custom_tm_logistic.compagnie"
pg_restore: creating TABLE "custom_tm_logistic.condizioni"
pg_restore: creating TABLE "custom_tm_logistic.corpofatt"
pg_restore: creating TABLE "custom_tm_logistic.corpofatt_campioni"
pg_restore: creating TABLE "custom_tm_logistic.corrieri"
pg_restore: creating TABLE "custom_tm_logistic.costi"
pg_restore: creating TABLE "custom_tm_logistic.costi_log"
pg_restore: creating TABLE "custom_tm_logistic.costipredefiniti"
pg_restore: creating TABLE "custom_tm_logistic.datimerce"
pg_restore: creating TABLE "custom_tm_logistic.datispedizione"
pg_restore: creating TABLE "custom_tm_logistic.docarchiviatientrate"
pg_restore: creating TABLE "custom_tm_logistic.documenti"
pg_restore: from TOC entry 876; 1259 123637 TABLE documenti postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.documenti OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.documentiarchiviati"
pg_restore: creating TABLE "custom_tm_logistic.entrate"
pg_restore: creating TABLE "custom_tm_logistic.entrate_righe"
pg_restore: creating COMMENT "custom_tm_logistic.COLUMN entrate_righe.jguid"
pg_restore: creating TABLE "custom_tm_logistic.fd"
pg_restore: from TOC entry 875; 1259 123622 TABLE fd postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.fd OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.fornitori"
pg_restore: creating TABLE "custom_tm_logistic.fvocifatt"
pg_restore: creating TABLE "custom_tm_logistic.imballi"
pg_restore: from TOC entry 880; 1259 123736 TABLE imballi postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.imballi OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.livelli"
pg_restore: creating TABLE "custom_tm_logistic.localita"
pg_restore: creating TABLE "custom_tm_logistic.magazzini"
pg_restore: from TOC entry 874; 1259 123603 TABLE magazzini postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.magazzini OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.marche"
pg_restore: from TOC entry 881; 1259 123777 TABLE marche postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.marche OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.merci"
pg_restore: from TOC entry 882; 1259 123817 TABLE merci postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.merci OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.naveagenzia"
pg_restore: creating TABLE "custom_tm_logistic.navecompagnia"
pg_restore: creating TABLE "custom_tm_logistic.navi"
pg_restore: creating TABLE "custom_tm_logistic.porti"
pg_restore: creating TABLE "custom_tm_logistic.pr_agentiiata"
pg_restore: creating TABLE "custom_tm_logistic.pr_clifo"
pg_restore: creating TABLE "custom_tm_logistic.pr_compagnie"
pg_restore: creating TABLE "custom_tm_logistic.pr_tipodoc"
pg_restore: creating TABLE "custom_tm_logistic.precorpofatt"
pg_restore: creating TABLE "custom_tm_logistic.pretestafatt"
pg_restore: creating TABLE "custom_tm_logistic.progressivi"
pg_restore: creating TABLE "custom_tm_logistic.prospettiquotazioni"
pg_restore: creating TABLE "custom_tm_logistic.ricavi"
pg_restore: creating TABLE "custom_tm_logistic.tabiva"
pg_restore: creating TABLE "custom_tm_logistic.tblview_clifo"
pg_restore: creating TABLE "custom_tm_logistic.testafatt"
pg_restore: creating TABLE "custom_tm_logistic.testafatt_campioni"
pg_restore: creating TABLE "custom_tm_logistic.testaft"
pg_restore: creating TABLE "custom_tm_logistic.testatapratiche"
pg_restore: creating TABLE "custom_tm_logistic.tidofatt"
pg_restore: creating TABLE "custom_tm_logistic.tipi_documento"
pg_restore: from TOC entry 879; 1259 123688 TABLE tipi_documento postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.tipi_documento OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.tipicalcolo"
pg_restore: creating TABLE "custom_tm_logistic.tipidichiarazioni"
pg_restore: creating TABLE "custom_tm_logistic.tipipolizza"
pg_restore: creating TABLE "custom_tm_logistic.tipiriga"
pg_restore: creating TABLE "custom_tm_logistic.tipitariffe"
pg_restore: creating TABLE "custom_tm_logistic.tipocntrs"
pg_restore: creating TABLE "custom_tm_logistic.tipodoc"
pg_restore: creating TABLE "custom_tm_logistic.tipodocarchiviati"
pg_restore: creating TABLE "custom_tm_logistic.uffici"
pg_restore: from TOC entry 877; 1259 123654 TABLE uffici postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE custom_tm_logistic.uffici OWNER TO postgres;

pg_restore: creating TABLE "custom_tm_logistic.unitamisura"
pg_restore: creating TABLE "custom_tm_logistic.utenti"
pg_restore: creating TABLE "custom_tm_logistic.valute"
pg_restore: creating TABLE "documents.heads"
pg_restore: creating COMMENT "documents.COLUMN heads.office_id"
pg_restore: creating COMMENT "documents.COLUMN heads.warehouse_location_id"
pg_restore: creating COMMENT "documents.COLUMN heads.vessel_department_id"
pg_restore: creating COMMENT "documents.COLUMN heads.ref_date"
pg_restore: creating COMMENT "documents.COLUMN heads.ref_code"
pg_restore: creating COMMENT "documents.COLUMN heads.stamp_duty"
pg_restore: creating COMMENT "documents.COLUMN heads.dest_vat_number"
pg_restore: creating COMMENT "documents.COLUMN heads.holder_vat_number"
pg_restore: creating TABLE "documents.rows"
pg_restore: creating COMMENT "documents.TABLE rows"
pg_restore: creating COMMENT "documents.COLUMN rows.vat_id"
pg_restore: creating COMMENT "documents.COLUMN rows.ref_code"
pg_restore: creating COMMENT "documents.COLUMN rows.pallets"
pg_restore: creating COMMENT "documents.COLUMN rows.weight_on_delivery"
pg_restore: creating COMMENT "documents.COLUMN rows.weight_on_order"
pg_restore: creating COMMENT "documents.COLUMN rows.weight_on_shipping"
pg_restore: creating COMMENT "documents.COLUMN rows.doc_origin_number"
pg_restore: creating COMMENT "documents.COLUMN rows.customs_doc_type_id"
pg_restore: creating COMMENT "documents.COLUMN rows.json_nested_table"
pg_restore: creating COMMENT "documents.COLUMN rows.is_description"
pg_restore: creating COMMENT "documents.COLUMN rows.exchange_rage"
pg_restore: creating TABLE "documents.types"
pg_restore: creating COMMENT "documents.COLUMN types.type_group_id"
pg_restore: creating COMMENT "documents.COLUMN types.customs_doc_date"
pg_restore: creating TABLE "items.brands"
pg_restore: from TOC entry 451; 1259 31679 TABLE brands postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.brands OWNER TO postgres;

pg_restore: creating TABLE "items.definitions"
pg_restore: from TOC entry 405; 1259 31500 TABLE definitions postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.definitions OWNER TO postgres;

pg_restore: creating COMMENT "items.COLUMN definitions.db_schema_id"
pg_restore: creating COMMENT "items.COLUMN definitions.main_price"
pg_restore: creating COMMENT "items.COLUMN definitions.group_id"
pg_restore: creating TABLE "items.package_types"
pg_restore: creating TABLE "logistic.awb"
pg_restore: creating COMMENT "logistic.COLUMN awb.awb_type"
pg_restore: creating COMMENT "logistic.COLUMN awb.order_id"
pg_restore: creating COMMENT "logistic.COLUMN awb.carrier_id"
pg_restore: creating COMMENT "logistic.COLUMN awb.carrier_name"
pg_restore: creating COMMENT "logistic.COLUMN awb.carrier_code"
pg_restore: creating COMMENT "logistic.COLUMN awb.shipper_id"
pg_restore: creating COMMENT "logistic.COLUMN awb.shipper_code"
pg_restore: creating COMMENT "logistic.COLUMN awb.consignee_id"
pg_restore: creating COMMENT "logistic.COLUMN awb.consignee_name"
pg_restore: creating COMMENT "logistic.COLUMN awb.consignee_code"
pg_restore: creating COMMENT "logistic.COLUMN awb.iata_agent_id"
pg_restore: creating COMMENT "logistic.COLUMN awb.iata_agent_code"
pg_restore: creating COMMENT "logistic.COLUMN awb.iata_agent_name"
pg_restore: creating COMMENT "logistic.COLUMN awb.field2_shipper_id"
pg_restore: creating COMMENT "logistic.COLUMN awb.issuer_id"
pg_restore: creating COMMENT "logistic.COLUMN awb.issuer_code"
pg_restore: creating COMMENT "logistic.COLUMN awb.issuer_name"
pg_restore: creating COMMENT "logistic.COLUMN awb.issuer_address"
pg_restore: creating COMMENT "logistic.COLUMN awb.issuer_town_postal_code"
pg_restore: creating COMMENT "logistic.COLUMN awb.issuer_vat_code"
pg_restore: creating COMMENT "logistic.COLUMN awb.handling_information"
pg_restore: creating TABLE "logistic.awb_codes"
pg_restore: creating TABLE "logistic.awb_rows"
pg_restore: creating TABLE "logistic.container_types"
pg_restore: creating TABLE "logistic.locations"
pg_restore: creating COMMENT "logistic.COLUMN locations.search_index"
pg_restore: creating TABLE "logistic.shipments"
pg_restore: creating COMMENT "logistic.COLUMN shipments.pickup_date"
pg_restore: creating COMMENT "logistic.COLUMN shipments.delivery_date"
pg_restore: creating COMMENT "logistic.COLUMN shipments.export_type_id"
pg_restore: creating COMMENT "logistic.COLUMN shipments.fullcontainer"
pg_restore: creating COMMENT "logistic.COLUMN shipments.travel_identification_code"
pg_restore: creating COMMENT "logistic.COLUMN shipments.carrier_code"
pg_restore: creating COMMENT "logistic.COLUMN shipments.pol_id"
pg_restore: creating COMMENT "logistic.COLUMN shipments.pol_code"
pg_restore: creating COMMENT "logistic.COLUMN shipments.pod_id"
pg_restore: creating COMMENT "logistic.COLUMN shipments.customer_id"
pg_restore: creating COMMENT "logistic.COLUMN shipments.airport_id"
pg_restore: creating COMMENT "logistic.COLUMN shipments.airport_code"
pg_restore: creating COMMENT "logistic.COLUMN shipments.awb_number"
pg_restore: creating COMMENT "logistic.COLUMN shipments.internal_notes"
pg_restore: creating COMMENT "logistic.COLUMN shipments.route_type"
pg_restore: creating COMMENT "logistic.COLUMN shipments.carrier_name"
pg_restore: creating TABLE "shipping.vessels"
pg_restore: from TOC entry 692; 1259 32692 TABLE vessels postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.vessels OWNER TO postgres;

pg_restore: creating COMMENT "shipping.TABLE vessels"
pg_restore: creating COMMENT "shipping.COLUMN vessels.name"
pg_restore: creating COMMENT "shipping.COLUMN vessels.code"
pg_restore: creating COMMENT "shipping.COLUMN vessels.net_tonnage"
pg_restore: creating COMMENT "shipping.COLUMN vessels.gross_tonnage"
pg_restore: creating COMMENT "shipping.COLUMN vessels.deadweight"
pg_restore: creating COMMENT "shipping.COLUMN vessels.passenger_limit"
pg_restore: creating TABLE "workflow.types"
pg_restore: creating COMMENT "workflow.TABLE types"
pg_restore: creating COMMENT "workflow.COLUMN types.name"
pg_restore: creating TABLE "workflow.workflows"
pg_restore: creating VIEW "custom_tm_logistic.verifiche"
pg_restore: creating TABLE "custom_tm_logistic.vettori"
pg_restore: creating TABLE "documents.attachments"
pg_restore: creating COMMENT "documents.COLUMN attachments.filename"
pg_restore: creating COMMENT "documents.COLUMN attachments.description"
pg_restore: creating COMMENT "documents.COLUMN attachments.context"
pg_restore: creating COMMENT "documents.COLUMN attachments.extension"
pg_restore: creating SEQUENCE "documents.documents_seq"
pg_restore: creating TABLE "documents.payment_schedule"
pg_restore: creating SEQUENCE "documents.rows_seq"
pg_restore: creating TABLE "documents.test"
pg_restore: creating TABLE "documents.type_groups"
pg_restore: creating SEQUENCE "documents.types_seq"
pg_restore: creating TABLE "documents.vat_amounts"
pg_restore: creating COMMENT "documents.COLUMN vat_amounts.doc_id"
pg_restore: creating COMMENT "documents.COLUMN vat_amounts.vat_id"
pg_restore: creating COMMENT "documents.COLUMN vat_amounts.vat_code"
pg_restore: creating TABLE "football.arguments_championships"
pg_restore: creating TABLE "football.ft_calendar"
pg_restore: creating COMMENT "football.TABLE ft_calendar"
pg_restore: creating COMMENT "football.COLUMN ft_calendar.match_id"
pg_restore: creating COMMENT "football.COLUMN ft_calendar.fcld_jguid"
pg_restore: creating TABLE "football.ft_clubs"
pg_restore: from TOC entry 354; 1259 31290 TABLE ft_clubs postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_clubs OWNER TO postgres;

pg_restore: creating COMMENT "football.TABLE ft_clubs"
pg_restore: creating COMMENT "football.COLUMN ft_clubs.club_id"
pg_restore: creating COMMENT "football.COLUMN ft_clubs.club_name"
pg_restore: creating COMMENT "football.COLUMN ft_clubs."Foundation_date""
pg_restore: creating COMMENT "football.COLUMN ft_clubs.athletic_manager"
pg_restore: creating COMMENT "football.COLUMN ft_clubs.colors"
pg_restore: creating COMMENT "football.COLUMN ft_clubs.fclb_jguid"
pg_restore: creating TABLE "football.ft_teams"
pg_restore: creating COMMENT "football.TABLE ft_teams"
pg_restore: creating COMMENT "football.COLUMN ft_teams.team_id"
pg_restore: creating COMMENT "football.COLUMN ft_teams.trainer_id"
pg_restore: creating COMMENT "football.COLUMN ft_teams.ftms_jguid"
pg_restore: creating VIEW "football.calendar_ranks"
pg_restore: creating SEQUENCE "football.ft_calendar_seq"
pg_restore: from TOC entry 357; 1259 31305 SEQUENCE ft_calendar_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_calendar_seq OWNER TO postgres;

pg_restore: creating TABLE "football.ft_championships"
pg_restore: creating COMMENT "football.TABLE ft_championships"
pg_restore: creating COMMENT "football.COLUMN ft_championships.season_id"
pg_restore: creating COMMENT "football.COLUMN ft_championships.league_id"
pg_restore: creating COMMENT "football.COLUMN ft_championships.fchm_jguid"
pg_restore: creating TABLE "football.ft_club_seasons"
pg_restore: from TOC entry 359; 1259 31311 TABLE ft_club_seasons postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_club_seasons OWNER TO postgres;

pg_restore: creating COMMENT "football.COLUMN ft_club_seasons.fcls_jguid"
pg_restore: creating SEQUENCE "football.ft_clubs_seq"
pg_restore: creating TABLE "football.ft_event_types"
pg_restore: creating COMMENT "football.COLUMN ft_event_types.event_id"
pg_restore: creating COMMENT "football.COLUMN ft_event_types.event_des"
pg_restore: creating COMMENT "football.COLUMN ft_event_types.fvnt_jguid"
pg_restore: creating TABLE "football.ft_field_types"
pg_restore: creating COMMENT "football.COLUMN ft_field_types.ftps_jguid"
pg_restore: creating TABLE "football.ft_fields"
pg_restore: creating COMMENT "football.COLUMN ft_fields.ffld_jguid"
pg_restore: creating TABLE "football.ft_league_groups"
pg_restore: from TOC entry 364; 1259 31329 TABLE ft_league_groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_league_groups OWNER TO postgres;

pg_restore: creating COMMENT "football.COLUMN ft_league_groups.flgp_jguid"
pg_restore: creating SEQUENCE "football.ft_league_groups_seq"
pg_restore: from TOC entry 365; 1259 31332 SEQUENCE ft_league_groups_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_league_groups_seq OWNER TO postgres;

pg_restore: creating TABLE "football.ft_leagues"
pg_restore: creating COMMENT "football.TABLE ft_leagues"
pg_restore: creating COMMENT "football.COLUMN ft_leagues.league_id"
pg_restore: creating COMMENT "football.COLUMN ft_leagues.league_name"
pg_restore: creating COMMENT "football.COLUMN ft_leagues.iso_country_code"
pg_restore: creating COMMENT "football.COLUMN ft_leagues.league_position"
pg_restore: creating COMMENT "football.COLUMN ft_leagues.league_code"
pg_restore: creating COMMENT "football.COLUMN ft_leagues.all_players"
pg_restore: creating COMMENT "football.COLUMN ft_leagues.flgs_jguid"
pg_restore: creating SEQUENCE "football.ft_leagues_seq"
pg_restore: creating TABLE "football.ft_match_days"
pg_restore: creating COMMENT "football.COLUMN ft_match_days.fmtd_jguid"
pg_restore: creating TABLE "football.ft_match_events"
pg_restore: creating COMMENT "football.COLUMN ft_match_events.value"
pg_restore: creating COMMENT "football.COLUMN ft_match_events.fmth_jguid"
pg_restore: creating TABLE "football.ft_match_players"
pg_restore: creating COMMENT "football.COLUMN ft_match_players.sent_off"
pg_restore: creating COMMENT "football.COLUMN ft_match_players.fmtp_jguid"
pg_restore: creating SEQUENCE "football.ft_matchevents_seq"
pg_restore: creating TABLE "football.ft_player_career"
pg_restore: from TOC entry 372; 1259 31369 TABLE ft_player_career postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_player_career OWNER TO postgres;

pg_restore: creating COMMENT "football.COLUMN ft_player_career.fplc_jguid"
pg_restore: creating SEQUENCE "football.ft_player_career_seq"
pg_restore: from TOC entry 373; 1259 31372 SEQUENCE ft_player_career_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_player_career_seq OWNER TO postgres;

pg_restore: creating TABLE "football.ft_players"
pg_restore: creating COMMENT "football.TABLE ft_players"
pg_restore: creating COMMENT "football.COLUMN ft_players.pplr_jguid"
pg_restore: creating SEQUENCE "football.ft_ranking_seq"
pg_restore: from TOC entry 375; 1259 31380 SEQUENCE ft_ranking_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_ranking_seq OWNER TO postgres;

pg_restore: creating TABLE "football.ft_ranking_table"
pg_restore: from TOC entry 376; 1259 31382 TABLE ft_ranking_table postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_ranking_table OWNER TO postgres;

pg_restore: creating COMMENT "football.COLUMN ft_ranking_table.frkt_jguid"
pg_restore: creating VIEW "football.ft_ranking_view"
pg_restore: creating TABLE "football.ft_roles"
pg_restore: creating COMMENT "football.COLUMN ft_roles.frls_jguid"
pg_restore: creating TABLE "football.ft_seasons"
pg_restore: creating COMMENT "football.TABLE ft_seasons"
pg_restore: creating COMMENT "football.COLUMN ft_seasons.season_id"
pg_restore: creating COMMENT "football.COLUMN ft_seasons.season_des"
pg_restore: creating COMMENT "football.COLUMN ft_seasons.fssn_jguid"
pg_restore: creating TABLE "football.ft_teams_championships"
pg_restore: creating COMMENT "football.COLUMN ft_teams_championships.ftmc_jguid"
pg_restore: creating TABLE "football.ft_teams_history"
pg_restore: from TOC entry 381; 1259 31401 TABLE ft_teams_history postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_teams_history OWNER TO postgres;

pg_restore: creating COMMENT "football.COLUMN ft_teams_history.ftmh_jguid"
pg_restore: creating TABLE "football.ft_teams_players"
pg_restore: creating COMMENT "football.COLUMN ft_teams_players.team_id"
pg_restore: creating COMMENT "football.COLUMN ft_teams_players.player_id"
pg_restore: creating COMMENT "football.COLUMN ft_teams_players.season_id"
pg_restore: creating COMMENT "football.COLUMN ft_teams_players.ftmp_jguid"
pg_restore: creating SEQUENCE "football.ft_teams_seq"
pg_restore: creating TABLE "football.ft_teams_trainers"
pg_restore: creating COMMENT "football.COLUMN ft_teams_trainers.team_id"
pg_restore: creating COMMENT "football.COLUMN ft_teams_trainers.trainer_id"
pg_restore: creating COMMENT "football.COLUMN ft_teams_trainers.season_id"
pg_restore: creating COMMENT "football.COLUMN ft_teams_trainers.ftmt_jguid"
pg_restore: creating TABLE "football.ft_trainers"
pg_restore: creating COMMENT "football.TABLE ft_trainers"
pg_restore: creating COMMENT "football.COLUMN ft_trainers.trainer_id"
pg_restore: creating COMMENT "football.COLUMN ft_trainers.first_name"
pg_restore: creating COMMENT "football.COLUMN ft_trainers.last_name"
pg_restore: creating COMMENT "football.COLUMN ft_trainers.birthdate"
pg_restore: creating COMMENT "football.COLUMN ft_trainers.ftrn_jguid"
pg_restore: creating TABLE "football.ft_trainers_career"
pg_restore: creating COMMENT "football.COLUMN ft_trainers_career.team_id"
pg_restore: creating COMMENT "football.COLUMN ft_trainers_career.trainer_id"
pg_restore: creating COMMENT "football.COLUMN ft_trainers_career.season_id"
pg_restore: creating COMMENT "football.COLUMN ft_trainers_career.ftrc_jguid"
pg_restore: creating VIEW "football.ft_v_calendar"
pg_restore: from TOC entry 387; 1259 31422 VIEW ft_v_calendar postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_v_calendar OWNER TO postgres;

pg_restore: creating VIEW "football.ft_v_player_matches"
pg_restore: creating VIEW "football.ft_v_rankings"
pg_restore: creating VIEW "football.ft_view_club_teams_championships"
pg_restore: from TOC entry 389; 1259 31432 VIEW ft_view_club_teams_championships postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_view_club_teams_championships OWNER TO postgres;

pg_restore: creating VIEW "football.ft_view_players_careers"
pg_restore: creating VIEW "football.ft_view_players_last_season"
pg_restore: from TOC entry 391; 1259 31441 VIEW ft_view_players_last_season postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE football.ft_view_players_last_season OWNER TO postgres;

pg_restore: creating VIEW "football.ft_view_players_seasons"
pg_restore: creating TABLE "football.json_calendar"
pg_restore: creating COMMENT "football.COLUMN json_calendar.match_id"
pg_restore: creating COMMENT "football.COLUMN json_calendar.fsnc_jguid"
pg_restore: creating VIEW "football.match_events_detail"
pg_restore: creating MATERIALIZED VIEW "football.mv_match_descriptions"
pg_restore: creating MATERIALIZED VIEW "football.mv_players_championships"
pg_restore: creating VIEW "football.player_careers_with_no_match"
pg_restore: creating TABLE "football.tmpranking"
pg_restore: creating TABLE "health.an_pharmacies_sectors"
pg_restore: creating TABLE "health.an_pharmacies_services"
pg_restore: creating TABLE "health.an_pharmacies_timetable"
pg_restore: creating TABLE "health.an_pharmacies_website"
pg_restore: creating TABLE "health.anagraph_wards"
pg_restore: creating COMMENT "health.TABLE anagraph_wards"
pg_restore: creating TABLE "health.anagraph_wards_items"
pg_restore: creating TABLE "health.anagraph_wards_services"
pg_restore: creating TABLE "health.anagraph_wards_services_history"
pg_restore: creating SEQUENCE "health.anagraph_wards_services_seq"
pg_restore: creating TABLE "health.disciplines"
pg_restore: creating VIEW "health.anagraph_wards_services_view"
pg_restore: creating TABLE "health.associations"
pg_restore: creating SEQUENCE "health.associations_seq"
pg_restore: creating SEQUENCE "health.booking_seq"
pg_restore: creating TABLE "health.bookings"
pg_restore: creating COMMENT "health.COLUMN bookings.operator_notes"
pg_restore: creating COMMENT "health.COLUMN bookings.user_notes"
pg_restore: creating TABLE "health.bookings_rows"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.anagraph_id"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.since"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.until"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.notes"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.confirmed"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.opened"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.db_operator_id"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.closed"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.closed_date"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.booked"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.booking_date"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.booking_hour"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.booking_mins"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.sent"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.sent_date"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.received"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.received_date"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.alarm_sent"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.alarm_read"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.ck_confirmed"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.insurance_confirmed"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.agreement_confirmed"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.ck_has_code"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.ck_has_price"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.ck_fast"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.ck_has_place"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.ck_place"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.ck_take_list"
pg_restore: creating COMMENT "health.COLUMN bookings_rows.ck_notes"
pg_restore: creating TABLE "health.branch_specialities"
pg_restore: from TOC entry 412; 1259 31545 TABLE branch_specialities postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE health.branch_specialities OWNER TO postgres;

pg_restore: creating SEQUENCE "health.branch_specialities_seq"
pg_restore: creating TABLE "health.branches"
pg_restore: from TOC entry 414; 1259 31550 TABLE branches postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE health.branches OWNER TO postgres;

pg_restore: creating SEQUENCE "health.branches_seq"
pg_restore: creating SEQUENCE "health.councils_seq"
pg_restore: creating TABLE "health.disciplines_services"
pg_restore: creating TABLE "health.health_profile"
pg_restore: from TOC entry 418; 1259 31560 TABLE health_profile postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE health.health_profile OWNER TO postgres;

pg_restore: creating COMMENT "health.COLUMN health_profile.association_number"
pg_restore: creating COMMENT "health.COLUMN health_profile.association_date"
pg_restore: creating TABLE "health.instruments"
pg_restore: creating TABLE "health.medical_councils"
pg_restore: creating TABLE "health.notifications"
pg_restore: creating COMMENT "health.TABLE notifications"
pg_restore: creating COMMENT "health.COLUMN notifications.booking_action"
pg_restore: creating TABLE "health.notifications_groups"
pg_restore: creating SEQUENCE "health.notifications_seq"
pg_restore: creating TABLE "health.notifications_types"
pg_restore: creating TABLE "health.organization_types"
pg_restore: creating TABLE "health.organizations"
pg_restore: creating TABLE "health.organizations_branches"
pg_restore: from TOC entry 427; 1259 31591 TABLE organizations_branches postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE health.organizations_branches OWNER TO postgres;

pg_restore: creating SEQUENCE "health.organizations_seq"
pg_restore: creating TABLE "health.pharmacy_sections"
pg_restore: creating COMMENT "health.COLUMN pharmacy_sections.image_id"
pg_restore: creating TABLE "health.pharmacy_services"
pg_restore: creating TABLE "health.pharmacy_timetable"
pg_restore: creating TABLE "health.profile_groups"
pg_restore: from TOC entry 432; 1259 31610 TABLE profile_groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE health.profile_groups OWNER TO postgres;

pg_restore: creating TABLE "health.search_index"
pg_restore: from TOC entry 433; 1259 31613 TABLE search_index postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE health.search_index OWNER TO postgres;

pg_restore: creating TABLE "health.search_keys"
pg_restore: from TOC entry 434; 1259 31619 TABLE search_keys postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE health.search_keys OWNER TO postgres;

pg_restore: creating COMMENT "health.TABLE search_keys"
pg_restore: creating TABLE "health.search_keys_text"
pg_restore: creating TABLE "health.search_services"
pg_restore: creating COMMENT "health.COLUMN search_services.managed"
pg_restore: creating TABLE "health.searches"
pg_restore: creating COMMENT "health.COLUMN searches.service_id"
pg_restore: creating TABLE "health.searches_rows"
pg_restore: creating SEQUENCE "health.searches_seq"
pg_restore: creating SEQUENCE "health.sections_id"
pg_restore: creating SEQUENCE "health.services_id"
pg_restore: creating TABLE "health.specialities"
pg_restore: creating TABLE "health.specialities_groups"
pg_restore: creating SEQUENCE "health.specialities_seq"
pg_restore: creating TABLE "health.sub_specialities"
pg_restore: creating SEQUENCE "health.subspecialities_seq"
pg_restore: from TOC entry 446; 1259 31662 SEQUENCE subspecialities_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE health.subspecialities_seq OWNER TO postgres;

pg_restore: creating VIEW "health.view_search_services"
pg_restore: creating VIEW "health.wards_services_view"
pg_restore: creating VIEW "health.wards_services_mview"
pg_restore: creating TABLE "items.branddimensions"
pg_restore: from TOC entry 450; 1259 31676 TABLE branddimensions postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.branddimensions OWNER TO postgres;

pg_restore: creating TABLE "items.brnd_dmn_sizeshapes"
pg_restore: from TOC entry 452; 1259 31685 TABLE brnd_dmn_sizeshapes postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.brnd_dmn_sizeshapes OWNER TO postgres;

pg_restore: creating SEQUENCE "items.default_seq"
pg_restore: creating TABLE "items.dimensions"
pg_restore: from TOC entry 453; 1259 31688 TABLE dimensions postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.dimensions OWNER TO postgres;

pg_restore: creating SEQUENCE "items.dimensions_seq"
pg_restore: creating TABLE "items.discounts"
pg_restore: from TOC entry 455; 1259 31693 TABLE discounts postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.discounts OWNER TO postgres;

pg_restore: creating TABLE "items.families"
pg_restore: from TOC entry 456; 1259 31696 TABLE families postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.families OWNER TO postgres;

pg_restore: creating SEQUENCE "items.families_seq"
pg_restore: creating TABLE "items.grids"
pg_restore: creating TABLE "items.groups"
pg_restore: from TOC entry 960; 1259 125927 TABLE groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.groups OWNER TO postgres;

pg_restore: creating TABLE "items.hazmat"
pg_restore: creating TABLE "items.items_dimensions"
pg_restore: from TOC entry 458; 1259 31706 TABLE items_dimensions postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.items_dimensions OWNER TO postgres;

pg_restore: creating SEQUENCE "items.items_seq"
pg_restore: creating TABLE "items.pricelists"
pg_restore: from TOC entry 460; 1259 31711 TABLE pricelists postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.pricelists OWNER TO postgres;

pg_restore: creating TABLE "items.pricelists_items"
pg_restore: from TOC entry 461; 1259 31715 TABLE pricelists_items postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.pricelists_items OWNER TO postgres;

pg_restore: creating TABLE "system.db_user_sessions"
pg_restore: creating COMMENT "system.TABLE db_user_sessions"
pg_restore: creating COMMENT "system.COLUMN db_user_sessions.db_user_id"
pg_restore: creating COMMENT "system.COLUMN db_user_sessions.db_schema_id"
pg_restore: creating COMMENT "system.COLUMN db_user_sessions.db_session_id"
pg_restore: creating COMMENT "system.COLUMN db_user_sessions.usse_jguid"
pg_restore: creating COMMENT "system.COLUMN db_user_sessions.surs_jguid"
pg_restore: creating TABLE "system.db_users"
pg_restore: from TOC entry 463; 1259 31725 TABLE db_users postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_users OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN db_users.default_schema_id"
pg_restore: creating COMMENT "system.COLUMN db_users.ispublic"
pg_restore: creating COMMENT "system.COLUMN db_users.internal_key"
pg_restore: creating COMMENT "system.COLUMN db_users.payment"
pg_restore: creating COMMENT "system.COLUMN db_users.payment_expiration_date"
pg_restore: creating COMMENT "system.COLUMN db_users.suse_jguid"
pg_restore: creating COMMENT "system.COLUMN db_users.social_id"
pg_restore: creating COMMENT "system.COLUMN db_users.social_type"
pg_restore: creating VIEW "items.search_logs_view"
pg_restore: creating TABLE "items.seasons"
pg_restore: from TOC entry 465; 1259 31737 TABLE seasons postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.seasons OWNER TO postgres;

pg_restore: creating TABLE "items.type_groups"
pg_restore: from TOC entry 466; 1259 31740 TABLE type_groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.type_groups OWNER TO postgres;

pg_restore: creating COMMENT "items.COLUMN type_groups.icon_id"
pg_restore: creating TABLE "items.types"
pg_restore: from TOC entry 467; 1259 31743 TABLE types postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.types OWNER TO postgres;

pg_restore: creating COMMENT "items.COLUMN types.deleted"
pg_restore: creating TABLE "items.web_items"
pg_restore: from TOC entry 468; 1259 31747 TABLE web_items postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE items.web_items OWNER TO postgres;

pg_restore: creating COMMENT "items.COLUMN web_items.qty_spread"
pg_restore: creating COMMENT "items.COLUMN web_items.qty_alarm"
pg_restore: creating TABLE "jpublic.buildings"
pg_restore: creating COMMENT "jpublic.COLUMN buildings.building_id"
pg_restore: creating COMMENT "jpublic.COLUMN buildings.lat"
pg_restore: creating COMMENT "jpublic.COLUMN buildings.long"
pg_restore: creating TABLE "jpublic.contiguous_regions"
pg_restore: from TOC entry 470; 1259 31759 TABLE contiguous_regions postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.contiguous_regions OWNER TO postgres;

pg_restore: creating TABLE "jpublic.countries"
pg_restore: from TOC entry 471; 1259 31762 TABLE countries postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.countries OWNER TO postgres;

pg_restore: creating COMMENT "jpublic.COLUMN countries.country_flag"
pg_restore: creating TABLE "jpublic.countries_trans"
pg_restore: from TOC entry 472; 1259 31769 TABLE countries_trans postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.countries_trans OWNER TO postgres;

pg_restore: creating TABLE "jpublic.country_currencies"
pg_restore: from TOC entry 473; 1259 31773 TABLE country_currencies postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.country_currencies OWNER TO postgres;

pg_restore: creating COMMENT "jpublic.TABLE country_currencies"
pg_restore: creating TABLE "jpublic.cultures"
pg_restore: from TOC entry 474; 1259 31776 TABLE cultures postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.cultures OWNER TO postgres;

pg_restore: creating COMMENT "jpublic.COLUMN cultures.title"
pg_restore: creating COMMENT "jpublic.COLUMN cultures.currency_id"
pg_restore: creating COMMENT "jpublic.COLUMN cultures.decimal_point"
pg_restore: creating COMMENT "jpublic.COLUMN cultures.thousands_separator"
pg_restore: creating COMMENT "jpublic.COLUMN cultures.stopwords"
pg_restore: creating SEQUENCE "jpublic.currencies_seq"
pg_restore: from TOC entry 985; 1259 126901 SEQUENCE currencies_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.currencies_seq OWNER TO postgres;

pg_restore: creating TABLE "jpublic.currencies"
pg_restore: creating COMMENT "jpublic.COLUMN currencies.jguid"
pg_restore: creating TABLE "jpublic.currencies_trans"
pg_restore: from TOC entry 476; 1259 31787 TABLE currencies_trans postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.currencies_trans OWNER TO postgres;

pg_restore: creating TABLE "jpublic.dimension_models"
pg_restore: from TOC entry 477; 1259 31790 TABLE dimension_models postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.dimension_models OWNER TO postgres;

pg_restore: creating TABLE "jpublic.district_trans"
pg_restore: from TOC entry 478; 1259 31793 TABLE district_trans postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.district_trans OWNER TO postgres;

pg_restore: creating COMMENT "jpublic.COLUMN district_trans.district_id"
pg_restore: creating TABLE "jpublic.districts"
pg_restore: from TOC entry 479; 1259 31796 TABLE districts postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.districts OWNER TO postgres;

pg_restore: creating COMMENT "jpublic.COLUMN districts.district_id"
pg_restore: creating COMMENT "jpublic.COLUMN districts.region_id"
pg_restore: creating COMMENT "jpublic.COLUMN districts.iso_district_code"
pg_restore: creating COMMENT "jpublic.COLUMN districts.local_district_code"
pg_restore: creating SEQUENCE "jpublic.districts_seq"
pg_restore: creating TABLE "jpublic.gender"
pg_restore: creating SEQUENCE "jpublic.iso_countries_seq"
pg_restore: creating SEQUENCE "jpublic.iso_districts_seq"
pg_restore: creating SEQUENCE "jpublic.iso_regions_seq"
pg_restore: creating TABLE "jpublic.lang_translations"
pg_restore: from TOC entry 484; 1259 31808 TABLE lang_translations postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.lang_translations OWNER TO postgres;

pg_restore: creating TABLE "jpublic.languages"
pg_restore: from TOC entry 485; 1259 31811 TABLE languages postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.languages OWNER TO postgres;

pg_restore: creating SEQUENCE "jpublic.languages_seq"
pg_restore: from TOC entry 486; 1259 31814 SEQUENCE languages_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.languages_seq OWNER TO postgres;

pg_restore: creating TABLE "jpublic.location_types"
pg_restore: from TOC entry 490; 1259 31834 TABLE location_types postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.location_types OWNER TO postgres;

pg_restore: creating TABLE "jpublic.locations"
pg_restore: creating TABLE "jpublic.mail_attach"
pg_restore: from TOC entry 487; 1259 31822 TABLE mail_attach postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.mail_attach OWNER TO postgres;

pg_restore: creating SEQUENCE "jpublic.munits_seq"
pg_restore: creating TABLE "jpublic.measure_units"
pg_restore: from TOC entry 488; 1259 31828 TABLE measure_units postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.measure_units OWNER TO postgres;

pg_restore: creating COMMENT "jpublic.COLUMN measure_units.jguid"
pg_restore: creating TABLE "jpublic.regions"
pg_restore: from TOC entry 491; 1259 31837 TABLE regions postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.regions OWNER TO postgres;

pg_restore: creating TABLE "jpublic.regions_trans"
pg_restore: from TOC entry 493; 1259 31842 TABLE regions_trans postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE jpublic.regions_trans OWNER TO postgres;

pg_restore: creating TABLE "jpublic.social_networks"
pg_restore: creating TABLE "jpublic.town_areas"
pg_restore: creating TABLE "jpublic.towns"
pg_restore: creating VIEW "jpublic.towns_regions_countries"
pg_restore: creating SEQUENCE "jpublic.towns_seq"
pg_restore: creating TABLE "jpublic.vat_id_codes"
pg_restore: creating COMMENT "jpublic.TABLE vat_id_codes"
pg_restore: creating COMMENT "jpublic.COLUMN vat_id_codes.guid"
pg_restore: creating TABLE "locale.it_it_health_prescription"
pg_restore: creating TABLE "locale.it_it_townscountries_codes"
pg_restore: creating COMMENT "locale.TABLE it_it_townscountries_codes"
pg_restore: creating SEQUENCE "logistic.awb_rows_seq"
pg_restore: from TOC entry 973; 1259 126549 SEQUENCE awb_rows_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE logistic.awb_rows_seq OWNER TO postgres;

pg_restore: creating SEQUENCE "logistic.awb_seq"
pg_restore: creating TABLE "logistic.awb_surcharges"
pg_restore: creating COMMENT "logistic.TABLE awb_surcharges"
pg_restore: creating TABLE "logistic.conditions"
pg_restore: creating COMMENT "logistic.TABLE conditions"
pg_restore: creating COMMENT "logistic.COLUMN conditions.id"
pg_restore: creating COMMENT "logistic.COLUMN conditions.code"
pg_restore: creating SEQUENCE "logistic.locations_seq"
pg_restore: creating SEQUENCE "logistic.pickup_orders_seq"
pg_restore: creating TABLE "logistic.shipment_rows"
pg_restore: creating TABLE "logistic.type_of_goods"
pg_restore: creating SEQUENCE "maillist.attachments_seq"
pg_restore: creating TABLE "maillist.campaign_members"
pg_restore: creating TABLE "maillist.campaigns"
pg_restore: creating TABLE "maillist.clicks"
pg_restore: creating TABLE "maillist.list_members"
pg_restore: creating TABLE "maillist.mailing_list"
pg_restore: creating SEQUENCE "maillist.mailing_list_seq"
pg_restore: creating TABLE "maillist.opens"
pg_restore: creating TABLE "maillist.sender"
pg_restore: creating TABLE "maillist.sender_attachments"
pg_restore: creating COMMENT "maillist.COLUMN sender_attachments.jguid"
pg_restore: creating COMMENT "maillist.COLUMN sender_attachments.description"
pg_restore: creating TABLE "maillist.subset_members"
pg_restore: creating TABLE "maillist.subsets"
pg_restore: creating TABLE "planner.activities"
pg_restore: creating TABLE "planner.activities_groups"
pg_restore: creating TABLE "planner.timetable"
pg_restore: creating COMMENT "planner.COLUMN timetable.anagraph_id"
pg_restore: creating TABLE "public.AO_187CCC_SIDEBAR_LINK"
pg_restore: creating SEQUENCE "public.AO_187CCC_SIDEBAR_LINK_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_187CCC_SIDEBAR_LINK_ID_seq"
pg_restore: creating TABLE "public.AO_21D670_WHITELIST_RULES"
pg_restore: creating SEQUENCE "public.AO_21D670_WHITELIST_RULES_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_21D670_WHITELIST_RULES_ID_seq"
pg_restore: creating TABLE "public.AO_26DB7F_ENTITIES_TO_ROOMS"
pg_restore: creating SEQUENCE "public.AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq"
pg_restore: creating TABLE "public.AO_26DB7F_ENTITIES_TO_ROOM_CFG"
pg_restore: creating SEQUENCE "public.AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq"
pg_restore: creating TABLE "public.AO_38321B_CUSTOM_CONTENT_LINK"
pg_restore: creating SEQUENCE "public.AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"
pg_restore: creating TABLE "public.AO_42E351_HEALTH_CHECK_ENTITY"
pg_restore: creating SEQUENCE "public.AO_42E351_HEALTH_CHECK_ENTITY_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_42E351_HEALTH_CHECK_ENTITY_ID_seq"
pg_restore: creating TABLE "public.AO_54C900_CONTENT_BLUEPRINT_AO"
pg_restore: creating SEQUENCE "public.AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq"
pg_restore: creating TABLE "public.AO_54C900_C_TEMPLATE_REF"
pg_restore: creating SEQUENCE "public.AO_54C900_C_TEMPLATE_REF_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_54C900_C_TEMPLATE_REF_ID_seq"
pg_restore: creating TABLE "public.AO_54C900_SPACE_BLUEPRINT_AO"
pg_restore: creating SEQUENCE "public.AO_54C900_SPACE_BLUEPRINT_AO_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_54C900_SPACE_BLUEPRINT_AO_ID_seq"
pg_restore: creating TABLE "public.AO_5F3884_FEATURE_DISCOVERY"
pg_restore: creating SEQUENCE "public.AO_5F3884_FEATURE_DISCOVERY_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_5F3884_FEATURE_DISCOVERY_ID_seq"
pg_restore: creating TABLE "public.AO_5FB9D7_AOHIP_CHAT_LINK"
pg_restore: creating SEQUENCE "public.AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"
pg_restore: creating TABLE "public.AO_5FB9D7_AOHIP_CHAT_USER"
pg_restore: creating SEQUENCE "public.AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"
pg_restore: creating TABLE "public.AO_6384AB_DISCOVERED"
pg_restore: creating SEQUENCE "public.AO_6384AB_DISCOVERED_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_6384AB_DISCOVERED_ID_seq"
pg_restore: creating TABLE "public.AO_6384AB_FEATURE_METADATA_AO"
pg_restore: creating SEQUENCE "public.AO_6384AB_FEATURE_METADATA_AO_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_6384AB_FEATURE_METADATA_AO_ID_seq"
pg_restore: creating TABLE "public.AO_7CDE43_EVENT"
pg_restore: creating SEQUENCE "public.AO_7CDE43_EVENT_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_7CDE43_EVENT_ID_seq"
pg_restore: creating TABLE "public.AO_7CDE43_FILTER_PARAM"
pg_restore: creating SEQUENCE "public.AO_7CDE43_FILTER_PARAM_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_7CDE43_FILTER_PARAM_ID_seq"
pg_restore: creating TABLE "public.AO_7CDE43_NOTIFICATION"
pg_restore: creating SEQUENCE "public.AO_7CDE43_NOTIFICATION_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_7CDE43_NOTIFICATION_ID_seq"
pg_restore: creating TABLE "public.AO_7CDE43_NOTIFICATION_SCHEME"
pg_restore: creating SEQUENCE "public.AO_7CDE43_NOTIFICATION_SCHEME_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_7CDE43_NOTIFICATION_SCHEME_ID_seq"
pg_restore: creating TABLE "public.AO_7CDE43_RECIPIENT"
pg_restore: creating SEQUENCE "public.AO_7CDE43_RECIPIENT_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_7CDE43_RECIPIENT_ID_seq"
pg_restore: creating TABLE "public.AO_7CDE43_SERVER_CONFIG"
pg_restore: creating SEQUENCE "public.AO_7CDE43_SERVER_CONFIG_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_7CDE43_SERVER_CONFIG_ID_seq"
pg_restore: creating TABLE "public.AO_7CDE43_SERVER_PARAM"
pg_restore: creating SEQUENCE "public.AO_7CDE43_SERVER_PARAM_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_7CDE43_SERVER_PARAM_ID_seq"
pg_restore: creating TABLE "public.AO_88263F_HEALTH_CHECK_STATUS"
pg_restore: creating SEQUENCE "public.AO_88263F_HEALTH_CHECK_STATUS_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_88263F_HEALTH_CHECK_STATUS_ID_seq"
pg_restore: creating TABLE "public.AO_88263F_PROPERTIES"
pg_restore: creating SEQUENCE "public.AO_88263F_PROPERTIES_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_88263F_PROPERTIES_ID_seq"
pg_restore: creating TABLE "public.AO_88263F_READ_NOTIFICATIONS"
pg_restore: creating SEQUENCE "public.AO_88263F_READ_NOTIFICATIONS_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_88263F_READ_NOTIFICATIONS_ID_seq"
pg_restore: creating TABLE "public.AO_88BB94_BATCH_NOTIFICATION"
pg_restore: creating SEQUENCE "public.AO_88BB94_BATCH_NOTIFICATION_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_88BB94_BATCH_NOTIFICATION_ID_seq"
pg_restore: creating TABLE "public.AO_92296B_AORECENTLY_VIEWED"
pg_restore: creating SEQUENCE "public.AO_92296B_AORECENTLY_VIEWED_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_92296B_AORECENTLY_VIEWED_ID_seq"
pg_restore: creating TABLE "public.AO_9412A1_AONOTIFICATION"
pg_restore: creating SEQUENCE "public.AO_9412A1_AONOTIFICATION_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_9412A1_AONOTIFICATION_ID_seq"
pg_restore: creating TABLE "public.AO_9412A1_AOREGISTRATION"
pg_restore: creating TABLE "public.AO_9412A1_AOTASK"
pg_restore: creating SEQUENCE "public.AO_9412A1_AOTASK_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_9412A1_AOTASK_ID_seq"
pg_restore: creating TABLE "public.AO_9412A1_AOUSER"
pg_restore: creating SEQUENCE "public.AO_9412A1_AOUSER_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_9412A1_AOUSER_ID_seq"
pg_restore: creating TABLE "public.AO_9412A1_USER_APP_LINK"
pg_restore: creating SEQUENCE "public.AO_9412A1_USER_APP_LINK_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_9412A1_USER_APP_LINK_ID_seq"
pg_restore: creating TABLE "public.AO_A0B856_WEB_HOOK_LISTENER_AO"
pg_restore: creating SEQUENCE "public.AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"
pg_restore: creating TABLE "public.AO_BAF3AA_AOINLINE_TASK"
pg_restore: creating SEQUENCE "public.AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq"
pg_restore: creating TABLE "public.AO_DC98AE_AOHELP_TIP"
pg_restore: creating SEQUENCE "public.AO_DC98AE_AOHELP_TIP_ID_seq"
pg_restore: creating SEQUENCE OWNED BY "public.AO_DC98AE_AOHELP_TIP_ID_seq"
pg_restore: creating TABLE "public.CIRCOSCRIZIONI"
pg_restore: creating TABLE "public.MUNICIPI"
pg_restore: creating TABLE "public.PRESTAZ_2002"
pg_restore: creating TABLE "public.STRUTTURE_PRESTAZIONI"
pg_restore: creating TABLE "public.asili"
pg_restore: creating TABLE "public.attachmentdata"
pg_restore: creating TABLE "public.audit_affected_object"
pg_restore: creating TABLE "public.audit_changed_value"
pg_restore: creating TABLE "public.auditrecord"
pg_restore: creating TABLE "public.bandana"
pg_restore: creating TABLE "public.bodycontent"
pg_restore: creating TABLE "public.character_entity"
pg_restore: from TOC entry 590; 1259 32230 TABLE character_entity postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.character_entity OWNER TO postgres;

pg_restore: creating TABLE "public.clustersafety"
pg_restore: creating TABLE "public.confancestors"
pg_restore: creating TABLE "public.confversion"
pg_restore: creating TABLE "public.content"
pg_restore: creating TABLE "public.content_label"
pg_restore: creating TABLE "public.content_perm"
pg_restore: creating TABLE "public.content_perm_set"
pg_restore: creating TABLE "public.content_relation"
pg_restore: creating TABLE "public.contentproperties"
pg_restore: creating TABLE "public.costipredefiniti"
pg_restore: creating TABLE "public.crgrid_test"
pg_restore: creating SEQUENCE "public.crgrid_test_id_seq"
pg_restore: creating SEQUENCE OWNED BY "public.crgrid_test_id_seq"
pg_restore: creating TABLE "public.cwd_app_dir_group_mapping"
pg_restore: creating TABLE "public.cwd_app_dir_mapping"
pg_restore: creating TABLE "public.cwd_app_dir_operation"
pg_restore: creating TABLE "public.cwd_application"
pg_restore: creating TABLE "public.cwd_application_address"
pg_restore: creating TABLE "public.cwd_application_attribute"
pg_restore: creating TABLE "public.cwd_directory"
pg_restore: creating TABLE "public.cwd_directory_attribute"
pg_restore: creating TABLE "public.cwd_directory_operation"
pg_restore: creating TABLE "public.cwd_group"
pg_restore: creating TABLE "public.cwd_group_attribute"
pg_restore: creating TABLE "public.cwd_membership"
pg_restore: creating TABLE "public.cwd_user"
pg_restore: creating TABLE "public.cwd_user_attribute"
pg_restore: creating TABLE "public.cwd_user_credential_record"
pg_restore: creating TABLE "public.decorator"
pg_restore: creating TABLE "public.dept"
pg_restore: creating SEQUENCE "public.dept_deptno_seq"
pg_restore: creating SEQUENCE OWNED BY "public.dept_deptno_seq"
pg_restore: creating SEQUENCE "public.emp_empno_seq"
pg_restore: creating SEQUENCE OWNED BY "public.emp_empno_seq"
pg_restore: creating TABLE "public.external_entities"
pg_restore: creating TABLE "public.external_members"
pg_restore: creating TABLE "public.extrnlnks"
pg_restore: creating TABLE "public.follow_connections"
pg_restore: creating TABLE "swap.followers"
pg_restore: creating TABLE "system.db_users_profiles"
pg_restore: creating COMMENT "system.COLUMN db_users_profiles.uspr_jguid"
pg_restore: creating COMMENT "system.COLUMN db_users_profiles.supr_jguid"
pg_restore: creating VIEW "public.followers_view"
pg_restore: from TOC entry 622; 1259 32385 VIEW followers_view postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.followers_view OWNER TO postgres;

pg_restore: creating TABLE "public.ft_clubs_backup"
pg_restore: creating TABLE "public.ft_teams_championship_not_match"
pg_restore: creating VIEW "public.ft_view_club_teams_championships"
pg_restore: from TOC entry 623; 1259 32390 VIEW ft_view_club_teams_championships postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.ft_view_club_teams_championships OWNER TO postgres;

pg_restore: creating VIEW "public.ft_view_players_last_season"
pg_restore: from TOC entry 624; 1259 32394 VIEW ft_view_players_last_season postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.ft_view_players_last_season OWNER TO postgres;

pg_restore: creating VIEW "public.goal_ranking"
pg_restore: creating TABLE "public.groups"
pg_restore: creating TABLE "public.hazmat"
pg_restore: creating TABLE "public.hibernate_unique_key"
pg_restore: creating TABLE "public.imagedetails"
pg_restore: creating TABLE "public.indexqueueentries"
pg_restore: creating TABLE "public.items_archived"
pg_restore: from TOC entry 629; 1259 32410 TABLE items_archived januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE public.items_archived OWNER TO januaguest;

pg_restore: creating TABLE "public.items_likes_archived"
pg_restore: from TOC entry 630; 1259 32417 TABLE items_likes_archived januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE public.items_likes_archived OWNER TO januaguest;

pg_restore: creating TABLE "public.journalentry"
pg_restore: creating TABLE "public.keystore"
pg_restore: creating TABLE "public.label"
pg_restore: creating TABLE "public.likes"
pg_restore: creating TABLE "public.links"
pg_restore: creating TABLE "public.local_members"
pg_restore: creating TABLE "public.locations"
pg_restore: creating SEQUENCE "public.locations_sampleid_seq"
pg_restore: creating SEQUENCE OWNED BY "public.locations_sampleid_seq"
pg_restore: creating TABLE "public.logininfo"
pg_restore: creating TABLE "public.mail.campaign_members"
pg_restore: creating TABLE "public.mail.campaigns"
pg_restore: creating VIEW "public.match_events_detail"
pg_restore: creating TABLE "public.notifications"
pg_restore: creating TABLE "public.os_group"
pg_restore: creating TABLE "public.os_propertyentry"
pg_restore: creating TABLE "public.os_user"
pg_restore: creating TABLE "public.os_user_group"
pg_restore: creating TABLE "public.pagetemplates"
pg_restore: creating TABLE "public.pgdac_blob"
pg_restore: creating SEQUENCE "public.pgdac_blob_uid_seq"
pg_restore: creating SEQUENCE OWNED BY "public.pgdac_blob_uid_seq"
pg_restore: creating TABLE "public.pgdac_loaded"
pg_restore: creating TABLE "public.pgdac_text"
pg_restore: creating SEQUENCE "public.pgdac_text_uid_seq"
pg_restore: creating SEQUENCE OWNED BY "public.pgdac_text_uid_seq"
pg_restore: creating TABLE "public.plugindata"
pg_restore: creating TABLE "public.queries_params"
pg_restore: from TOC entry 647; 1259 32496 TABLE queries_params postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.queries_params OWNER TO postgres;

pg_restore: creating COMMENT "public.COLUMN queries_params.param_des"
pg_restore: creating COMMENT "public.COLUMN queries_params.param_type"
pg_restore: creating COMMENT "public.COLUMN queries_params.int_value"
pg_restore: creating COMMENT "public.COLUMN queries_params.string_value"
pg_restore: creating COMMENT "public.COLUMN queries_params.date_value"
pg_restore: creating COMMENT "public.COLUMN queries_params.lov"
pg_restore: creating COMMENT "public.COLUMN queries_params.lov_text"
pg_restore: creating COMMENT "public.COLUMN queries_params.lov_field"
pg_restore: creating COMMENT "public.COLUMN queries_params.param_text"
pg_restore: creating TABLE "public.query_grids"
pg_restore: from TOC entry 648; 1259 32502 TABLE query_grids postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.query_grids OWNER TO postgres;

pg_restore: creating COMMENT "public.TABLE query_grids"
pg_restore: creating COMMENT "public.COLUMN query_grids.excel"
pg_restore: creating TABLE "public.remembermetoken"
pg_restore: creating TABLE "public.scheduler_clustered_jobs"
pg_restore: creating TABLE "public.scheduler_run_details"
pg_restore: creating TABLE "public.search_services"
pg_restore: creating SEQUENCE "public.seq_journal_entry_id"
pg_restore: creating TABLE "public.spacepermissions"
pg_restore: creating TABLE "public.spaces"
pg_restore: creating TABLE "public.squadre"
pg_restore: from TOC entry 656; 1259 32545 TABLE squadre postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.squadre OWNER TO postgres;

pg_restore: creating TABLE "public.stagioni"
pg_restore: from TOC entry 657; 1259 32548 TABLE stagioni postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.stagioni OWNER TO postgres;

pg_restore: creating TABLE "public.stat_queries"
pg_restore: from TOC entry 658; 1259 32551 TABLE stat_queries postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.stat_queries OWNER TO postgres;

pg_restore: creating TABLE "public.storia_squadre"
pg_restore: from TOC entry 659; 1259 32557 TABLE storia_squadre postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.storia_squadre OWNER TO postgres;

pg_restore: creating TABLE "public.storico_incontri"
pg_restore: from TOC entry 660; 1259 32560 TABLE storico_incontri postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.storico_incontri OWNER TO postgres;

pg_restore: creating TABLE "public.t_carriera_giocatore"
pg_restore: from TOC entry 661; 1259 32563 TABLE t_carriera_giocatore postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.t_carriera_giocatore OWNER TO postgres;

pg_restore: creating TABLE "public.tabellini_partite"
pg_restore: from TOC entry 662; 1259 32566 TABLE tabellini_partite postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.tabellini_partite OWNER TO postgres;

pg_restore: creating TABLE "public.trackbacklinks"
pg_restore: creating TABLE "public.trustedapp"
pg_restore: creating TABLE "public.trustedapprestriction"
pg_restore: creating TABLE "public.user_mapping"
pg_restore: creating TABLE "public.user_relation"
pg_restore: creating TABLE "public.usercontent_relation"
pg_restore: creating TABLE "public.users"
pg_restore: creating TABLE "public.v_item_id"
pg_restore: creating TABLE "public.vtest"
pg_restore: from TOC entry 671; 1259 32608 TABLE vtest postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE public.vtest OWNER TO postgres;

pg_restore: creating TABLE "re.buildings"
pg_restore: from TOC entry 672; 1259 32611 TABLE buildings postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE re.buildings OWNER TO postgres;

pg_restore: creating COMMENT "re.TABLE buildings"
pg_restore: creating TABLE "re.properties"
pg_restore: from TOC entry 673; 1259 32614 TABLE properties postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE re.properties OWNER TO postgres;

pg_restore: creating COMMENT "re.COLUMN properties.type_id"
pg_restore: creating TABLE "re.properties_galleries"
pg_restore: from TOC entry 674; 1259 32617 TABLE properties_galleries postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE re.properties_galleries OWNER TO postgres;

pg_restore: creating TABLE "re.property_types"
pg_restore: creating COMMENT "re.TABLE property_types"
pg_restore: creating COMMENT "re.COLUMN property_types.type_id"
pg_restore: creating TABLE "re.rooms"
pg_restore: from TOC entry 676; 1259 32623 TABLE rooms postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE re.rooms OWNER TO postgres;

pg_restore: creating TABLE "re.rooms_offers"
pg_restore: from TOC entry 677; 1259 32627 TABLE rooms_offers postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE re.rooms_offers OWNER TO postgres;

pg_restore: creating TABLE "re.rooms_tenants"
pg_restore: from TOC entry 678; 1259 32632 TABLE rooms_tenants postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE re.rooms_tenants OWNER TO postgres;

pg_restore: creating TABLE "repository.entities"
pg_restore: creating TABLE "repository.fields"
pg_restore: from TOC entry 953; 1259 125578 TABLE fields postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE repository.fields OWNER TO postgres;

pg_restore: creating TABLE "repository.fieldtypes"
pg_restore: from TOC entry 952; 1259 125563 TABLE fieldtypes postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE repository.fieldtypes OWNER TO postgres;

pg_restore: creating COMMENT "repository.TABLE fieldtypes"
pg_restore: creating TABLE "repository.fieldtypes_groups"
pg_restore: from TOC entry 951; 1259 125556 TABLE fieldtypes_groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE repository.fieldtypes_groups OWNER TO postgres;

pg_restore: creating TABLE "shipping.companies"
pg_restore: from TOC entry 679; 1259 32636 TABLE companies postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.companies OWNER TO postgres;

pg_restore: creating COMMENT "shipping.COLUMN companies.scm_jguid"
pg_restore: creating TABLE "shipping.ferry_pricelist"
pg_restore: from TOC entry 680; 1259 32641 TABLE ferry_pricelist postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.ferry_pricelist OWNER TO postgres;

pg_restore: creating COMMENT "shipping.COLUMN ferry_pricelist.shfp_jguid"
pg_restore: creating TABLE "shipping.ferry_types"
pg_restore: from TOC entry 681; 1259 32645 TABLE ferry_types postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.ferry_types OWNER TO postgres;

pg_restore: creating COMMENT "shipping.COLUMN ferry_types.shft_jguid"
pg_restore: creating TABLE "shipping.items_ferry_definitions"
pg_restore: from TOC entry 682; 1259 32648 TABLE items_ferry_definitions postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.items_ferry_definitions OWNER TO postgres;

pg_restore: creating COMMENT "shipping.COLUMN items_ferry_definitions.shfd_jguid"
pg_restore: creating TABLE "shipping.lines"
pg_restore: from TOC entry 683; 1259 32651 TABLE lines postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.lines OWNER TO postgres;

pg_restore: creating COMMENT "shipping.TABLE lines"
pg_restore: creating COMMENT "shipping.COLUMN lines.shln_jguid"
pg_restore: creating TABLE "shipping.lines_periods"
pg_restore: from TOC entry 684; 1259 32656 TABLE lines_periods postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.lines_periods OWNER TO postgres;

pg_restore: creating COMMENT "shipping.COLUMN lines_periods.shlp_jguid"
pg_restore: creating TABLE "shipping.lines_ports"
pg_restore: from TOC entry 685; 1259 32659 TABLE lines_ports postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.lines_ports OWNER TO postgres;

pg_restore: creating COMMENT "shipping.TABLE lines_ports"
pg_restore: creating TABLE "shipping.lines_routes"
pg_restore: from TOC entry 686; 1259 32662 TABLE lines_routes postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.lines_routes OWNER TO postgres;

pg_restore: creating COMMENT "shipping.TABLE lines_routes"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.line_id"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.route_id"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.from_port_id"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.to_port_id"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.line_code"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.line_des"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.insert_date"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.update_date"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.ins_id"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.upd_id"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.line_type"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.user_insert"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.user_update"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.local"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.visible"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.web"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.return_route_id"
pg_restore: creating COMMENT "shipping.COLUMN lines_routes.shlr_jguid"
pg_restore: creating TABLE "shipping.ports"
pg_restore: from TOC entry 687; 1259 32669 TABLE ports postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.ports OWNER TO postgres;

pg_restore: creating COMMENT "shipping.TABLE ports"
pg_restore: creating COMMENT "shipping.COLUMN ports.port_id"
pg_restore: creating COMMENT "shipping.COLUMN ports.name"
pg_restore: creating COMMENT "shipping.COLUMN ports.code"
pg_restore: creating COMMENT "shipping.COLUMN ports.country"
pg_restore: creating COMMENT "shipping.COLUMN ports.insert_date"
pg_restore: creating COMMENT "shipping.COLUMN ports.update_date"
pg_restore: creating COMMENT "shipping.COLUMN ports.ins_id"
pg_restore: creating COMMENT "shipping.COLUMN ports.upd_id"
pg_restore: creating COMMENT "shipping.COLUMN ports.user_insert"
pg_restore: creating COMMENT "shipping.COLUMN ports.user_update"
pg_restore: creating COMMENT "shipping.COLUMN ports.shpr_jguid"
pg_restore: creating TABLE "shipping.seasons"
pg_restore: from TOC entry 688; 1259 32672 TABLE seasons postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.seasons OWNER TO postgres;

pg_restore: creating COMMENT "shipping.COLUMN seasons.shsn_jguid"
pg_restore: creating TABLE "shipping.timetable"
pg_restore: from TOC entry 689; 1259 32675 TABLE timetable postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.timetable OWNER TO postgres;

pg_restore: creating COMMENT "shipping.COLUMN timetable.vessel_id"
pg_restore: creating COMMENT "shipping.COLUMN timetable.departure_day"
pg_restore: creating COMMENT "shipping.COLUMN timetable.departure_hours"
pg_restore: creating COMMENT "shipping.COLUMN timetable.departure_mins"
pg_restore: creating COMMENT "shipping.COLUMN timetable.period_id"
pg_restore: creating COMMENT "shipping.COLUMN timetable.doctor"
pg_restore: creating COMMENT "shipping.COLUMN timetable.shtm_jguid"
pg_restore: creating TABLE "shipping.timetable_places"
pg_restore: from TOC entry 690; 1259 32684 TABLE timetable_places postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.timetable_places OWNER TO postgres;

pg_restore: creating COMMENT "shipping.COLUMN timetable_places.shtp_jguid"
pg_restore: creating TABLE "shipping.timetable_prices"
pg_restore: from TOC entry 691; 1259 32688 TABLE timetable_prices postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE shipping.timetable_prices OWNER TO postgres;

pg_restore: creating TABLE "shipping.vessel_departments"
pg_restore: creating COMMENT "shipping.TABLE vessel_departments"
pg_restore: creating COMMENT "shipping.COLUMN vessel_departments.id"
pg_restore: creating COMMENT "shipping.COLUMN vessel_departments.description"
pg_restore: creating COMMENT "shipping.COLUMN vessel_departments.guid"
pg_restore: creating SEQUENCE "shipping.vessels_seq"
pg_restore: creating SEQUENCE "shipping.vessels_vessel_id_seq"
pg_restore: creating TABLE "social.messages"
pg_restore: from TOC entry 693; 1259 32696 TABLE messages postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE social.messages OWNER TO postgres;

pg_restore: creating SEQUENCE "social.messages_seq"
pg_restore: creating TABLE "social.msg_attachments"
pg_restore: from TOC entry 695; 1259 32705 TABLE msg_attachments postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE social.msg_attachments OWNER TO postgres;

pg_restore: creating TABLE "sportmedia.allenatori"
pg_restore: from TOC entry 696; 1259 32708 TABLE allenatori postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE sportmedia.allenatori OWNER TO postgres;

pg_restore: creating SEQUENCE "sportmedia.allenatori_seq"
pg_restore: from TOC entry 697; 1259 32711 SEQUENCE allenatori_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE sportmedia.allenatori_seq OWNER TO postgres;

pg_restore: creating TABLE "sportmedia.atleti"
pg_restore: from TOC entry 698; 1259 32713 TABLE atleti postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE sportmedia.atleti OWNER TO postgres;

pg_restore: creating SEQUENCE "swap.events_seq"
pg_restore: creating TABLE "swap.events_users"
pg_restore: creating TABLE "swap.items"
pg_restore: creating TABLE "swap.items_archived"
pg_restore: from TOC entry 702; 1259 32731 TABLE items_archived januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE swap.items_archived OWNER TO januaguest;

pg_restore: creating TABLE "swap.items_discovered"
pg_restore: creating TABLE "swap.items_dislikes"
pg_restore: creating COMMENT "swap.COLUMN items_dislikes.user_id"
pg_restore: creating TABLE "swap.items_images"
pg_restore: creating SEQUENCE "swap.items_images_seq"
pg_restore: creating TABLE "swap.items_likes"
pg_restore: creating COMMENT "swap.COLUMN items_likes.user_id"
pg_restore: creating TABLE "swap.items_likes_archived"
pg_restore: from TOC entry 708; 1259 32755 TABLE items_likes_archived januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE swap.items_likes_archived OWNER TO januaguest;

pg_restore: creating SEQUENCE "swap.items_seq"
pg_restore: creating SEQUENCE "swap.messages_seq"
pg_restore: creating TABLE "swap.notifications"
pg_restore: creating COMMENT "swap.COLUMN notifications.title"
pg_restore: creating COMMENT "swap.COLUMN notifications.nread"
pg_restore: creating TABLE "swap.notifications_profiles"
pg_restore: from TOC entry 712; 1259 32770 TABLE notifications_profiles januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE swap.notifications_profiles OWNER TO januaguest;

pg_restore: creating SEQUENCE "swap.notifications_seq"
pg_restore: creating TABLE "swap.notifications_types"
pg_restore: from TOC entry 714; 1259 32775 TABLE notifications_types januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE swap.notifications_types OWNER TO januaguest;

pg_restore: creating TABLE "swap.profiles"
pg_restore: creating COMMENT "swap.COLUMN profiles.followingyou"
pg_restore: creating TABLE "swap.swaps"
pg_restore: creating TABLE "swap.swaps_messages"
pg_restore: from TOC entry 717; 1259 32799 TABLE swaps_messages januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE swap.swaps_messages OWNER TO januaguest;

pg_restore: creating SEQUENCE "swap.swaps_seq"
pg_restore: from TOC entry 718; 1259 32805 SEQUENCE swaps_seq januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE swap.swaps_seq OWNER TO januaguest;

pg_restore: creating TABLE "swap.swaps_status"
pg_restore: from TOC entry 719; 1259 32807 TABLE swaps_status januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE swap.swaps_status OWNER TO januaguest;

pg_restore: creating VIEW "swap.swaps_view"
pg_restore: from TOC entry 720; 1259 32810 VIEW swaps_view januaguest
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER TABLE swap.swaps_view OWNER TO januaguest;

pg_restore: creating TABLE "system.app_forms"
pg_restore: from TOC entry 721; 1259 32815 TABLE app_forms postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.app_forms OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN app_forms.form_url"
pg_restore: creating COMMENT "system.COLUMN app_forms.spfo_jguid"
pg_restore: creating TABLE "system.app_forms_objects"
pg_restore: creating COMMENT "system.COLUMN app_forms_objects.sppo_jguid"
pg_restore: creating TABLE "system.app_forms_objects_properties"
pg_restore: creating COMMENT "system.COLUMN app_forms_objects_properties.spop_jguid"
pg_restore: creating TABLE "system.app_forms_objects_translations"
pg_restore: creating COMMENT "system.COLUMN app_forms_objects_translations.spot_jguid"
pg_restore: creating SEQUENCE "system.app_forms_seq"
pg_restore: creating TABLE "system.app_forms_translations"
pg_restore: from TOC entry 726; 1259 32838 TABLE app_forms_translations postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.app_forms_translations OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN app_forms_translations.sppt_jguid"
pg_restore: creating TABLE "system.app_functions"
pg_restore: creating COMMENT "system.COLUMN app_functions.spaf_jguid"
pg_restore: creating TABLE "system.app_grids"
pg_restore: creating COMMENT "system.COLUMN app_grids.db_schema_id"
pg_restore: creating TABLE "system.app_licenses"
pg_restore: creating COMMENT "system.TABLE app_licenses"
pg_restore: creating COMMENT "system.COLUMN app_licenses.spal_jguid"
pg_restore: creating SEQUENCE "system.app_licenses_seq"
pg_restore: creating TABLE "system.app_member_forms"
pg_restore: creating COMMENT "system.COLUMN app_member_forms.spmf_jguid"
pg_restore: creating TABLE "system.app_messages"
pg_restore: creating COMMENT "system.COLUMN app_messages.sppm_jguid"
pg_restore: creating SEQUENCE "system.app_objects_seq"
pg_restore: creating SEQUENCE "system.app_properties_seq"
pg_restore: creating TABLE "system.applications"
pg_restore: from TOC entry 734; 1259 32866 TABLE applications postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.applications OWNER TO postgres;

pg_restore: creating COMMENT "system.TABLE applications"
pg_restore: creating COMMENT "system.COLUMN applications.sppl_jguid"
pg_restore: creating SEQUENCE "system.applications_seq"
pg_restore: creating COMMENT "system.SEQUENCE applications_seq"
pg_restore: creating TABLE "system.db_app_grp_param"
pg_restore: from TOC entry 736; 1259 32874 TABLE db_app_grp_param postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_app_grp_param OWNER TO postgres;

pg_restore: creating TABLE "system.db_app_schemas"
pg_restore: from TOC entry 737; 1259 32877 TABLE db_app_schemas postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_app_schemas OWNER TO postgres;

pg_restore: creating COMMENT "system.TABLE db_app_schemas"
pg_restore: creating COMMENT "system.COLUMN db_app_schemas.spps_jguid"
pg_restore: creating TABLE "system.db_applications_roles"
pg_restore: from TOC entry 738; 1259 32880 TABLE db_applications_roles postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_applications_roles OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN db_applications_roles.sppr_jguid"
pg_restore: creating TABLE "system.db_esr_sch_param"
pg_restore: from TOC entry 739; 1259 32883 TABLE db_esr_sch_param postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_esr_sch_param OWNER TO postgres;

pg_restore: creating TABLE "system.db_groups"
pg_restore: from TOC entry 740; 1259 32886 TABLE db_groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_groups OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN db_groups.sgrp_jguid"
pg_restore: creating TABLE "system.db_groups_schemas"
pg_restore: from TOC entry 741; 1259 32889 TABLE db_groups_schemas postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_groups_schemas OWNER TO postgres;

pg_restore: creating TABLE "system.db_grp_sch_param"
pg_restore: from TOC entry 742; 1259 32892 TABLE db_grp_sch_param postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_grp_sch_param OWNER TO postgres;

pg_restore: creating TABLE "system.db_packages_schemas"
pg_restore: from TOC entry 743; 1259 32895 TABLE db_packages_schemas postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_packages_schemas OWNER TO postgres;

pg_restore: creating COMMENT "system.TABLE db_packages_schemas"
pg_restore: creating COMMENT "system.COLUMN db_packages_schemas.spcs_jguid"
pg_restore: creating TABLE "system.db_roles"
pg_restore: from TOC entry 744; 1259 32898 TABLE db_roles postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_roles OWNER TO postgres;

pg_restore: creating COMMENT "system.TABLE db_roles"
pg_restore: creating COMMENT "system.COLUMN db_roles.srls_jguid"
pg_restore: creating TABLE "system.db_schema_params"
pg_restore: creating COMMENT "system.COLUMN db_schema_params.db_schema_id"
pg_restore: creating COMMENT "system.COLUMN db_schema_params.key"
pg_restore: creating COMMENT "system.COLUMN db_schema_params.param"
pg_restore: creating COMMENT "system.COLUMN db_schema_params.value"
pg_restore: creating COMMENT "system.COLUMN db_schema_params.has_translation"
pg_restore: creating COMMENT "system.COLUMN db_schema_params.sscp_jguid"
pg_restore: creating SEQUENCE "system.db_schema_seq"
pg_restore: creating COMMENT "system.SEQUENCE db_schema_seq"
pg_restore: creating TABLE "system.db_schemas"
pg_restore: from TOC entry 747; 1259 32910 TABLE db_schemas postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_schemas OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN db_schemas.personal"
pg_restore: creating COMMENT "system.COLUMN db_schemas.ssch_jguid"
pg_restore: creating TABLE "system.db_schemas_roles"
pg_restore: from TOC entry 748; 1259 32917 TABLE db_schemas_roles postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_schemas_roles OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN db_schemas_roles.sscr_jguid"
pg_restore: creating SEQUENCE "system.db_sessions_seq"
pg_restore: creating COMMENT "system.SEQUENCE db_sessions_seq"
pg_restore: creating TABLE "system.db_user_groups"
pg_restore: from TOC entry 750; 1259 32922 TABLE db_user_groups postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_user_groups OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN db_user_groups.susg_jguid"
pg_restore: creating TABLE "system.db_user_schema_params"
pg_restore: creating COMMENT "system.COLUMN db_user_schema_params.db_schema_id"
pg_restore: creating COMMENT "system.COLUMN db_user_schema_params.key"
pg_restore: creating COMMENT "system.COLUMN db_user_schema_params.param"
pg_restore: creating COMMENT "system.COLUMN db_user_schema_params.value"
pg_restore: creating COMMENT "system.COLUMN db_user_schema_params.has_translation"
pg_restore: creating COMMENT "system.COLUMN db_user_schema_params.jguid"
pg_restore: creating TABLE "system.db_users_payments"
pg_restore: creating COMMENT "system.COLUMN db_users_payments.surp_jguid"
pg_restore: creating TABLE "system.db_users_roles"
pg_restore: from TOC entry 752; 1259 32928 TABLE db_users_roles postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_users_roles OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN db_users_roles.srr_jguid"
pg_restore: creating TABLE "system.db_users_schemas"
pg_restore: from TOC entry 753; 1259 32931 TABLE db_users_schemas postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_users_schemas OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN db_users_schemas.suss_jguid"
pg_restore: creating TABLE "system.db_users_schemas_apps"
pg_restore: from TOC entry 754; 1259 32934 TABLE db_users_schemas_apps postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_users_schemas_apps OWNER TO postgres;

pg_restore: creating COMMENT "system.TABLE db_users_schemas_apps"
pg_restore: creating COMMENT "system.COLUMN db_users_schemas_apps.sura_jguid"
pg_restore: creating TABLE "system.db_users_schemas_roles"
pg_restore: from TOC entry 755; 1259 32937 TABLE db_users_schemas_roles postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.db_users_schemas_roles OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN db_users_schemas_roles.suro_jguid"
pg_restore: creating SEQUENCE "system.db_users_seq"
pg_restore: creating COMMENT "system.SEQUENCE db_users_seq"
pg_restore: creating TABLE "system.financial_years"
pg_restore: from TOC entry 757; 1259 32942 TABLE financial_years postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.financial_years OWNER TO postgres;

pg_restore: creating TABLE "system.form_models"
pg_restore: from TOC entry 758; 1259 32945 TABLE form_models postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.form_models OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN form_models.sfrm_jguid"
pg_restore: creating TABLE "system.form_objects_trans"
pg_restore: from TOC entry 759; 1259 32948 TABLE form_objects_trans postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.form_objects_trans OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN form_objects_trans.sfrt_jguid"
pg_restore: creating TABLE "system.packages"
pg_restore: from TOC entry 760; 1259 32954 TABLE packages postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.packages OWNER TO postgres;

pg_restore: creating COMMENT "system.TABLE packages"
pg_restore: creating COMMENT "system.COLUMN packages.spck_jguid"
pg_restore: creating TABLE "system.packages_applications"
pg_restore: from TOC entry 761; 1259 32958 TABLE packages_applications postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.packages_applications OWNER TO postgres;

pg_restore: creating COMMENT "system.TABLE packages_applications"
pg_restore: creating COMMENT "system.COLUMN packages_applications.spca_jguid"
pg_restore: creating SEQUENCE "system.packages_seq"
pg_restore: creating TABLE "system.schemalog"
pg_restore: creating TABLE "system.sys_params"
pg_restore: creating COMMENT "system.COLUMN sys_params.key"
pg_restore: creating COMMENT "system.COLUMN sys_params.param"
pg_restore: creating COMMENT "system.COLUMN sys_params.value"
pg_restore: creating COMMENT "system.COLUMN sys_params.has_translation"
pg_restore: creating COMMENT "system.COLUMN sys_params.sssp_jguid"
pg_restore: creating TABLE "system.sys_roles"
pg_restore: from TOC entry 765; 1259 32976 TABLE sys_roles postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.sys_roles OWNER TO postgres;

pg_restore: creating COMMENT "system.COLUMN sys_roles.sssr_jguid"
pg_restore: creating SEQUENCE "system.sys_roles_seq"
pg_restore: from TOC entry 766; 1259 32982 SEQUENCE sys_roles_seq postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE system.sys_roles_seq OWNER TO postgres;

pg_restore: creating TABLE "system.syslog"
pg_restore: creating TABLE "system.temp_session"
pg_restore: creating COMMENT "system.TABLE temp_session"
pg_restore: creating TABLE "system.tmp_grids"
pg_restore: creating TABLE "temp.tmp_grids"
pg_restore: creating TABLE "uni.courses"
pg_restore: creating SEQUENCE "uni.courses_seq"
pg_restore: creating TABLE "uni.departments"
pg_restore: creating COMMENT "uni.COLUMN departments.udpr_jguid"
pg_restore: creating SEQUENCE "uni.departments_seq"
pg_restore: creating TABLE "uni.faculties"
pg_restore: creating COMMENT "uni.COLUMN faculties.ufcl_jguid"
pg_restore: creating SEQUENCE "uni.faculties_seq"
pg_restore: creating TABLE "uni.modules"
pg_restore: creating COMMENT "uni.COLUMN modules.umdl_jguid"
pg_restore: creating TABLE "uni.modules_courses"
pg_restore: creating TABLE "uni.professors"
pg_restore: creating TABLE "uni.students"
pg_restore: from TOC entry 778; 1259 33032 TABLE students postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "postgres" non esiste
Command was: ALTER TABLE uni.students OWNER TO postgres;

pg_restore: creating COMMENT "uni.COLUMN students.anagraph_id"
pg_restore: creating TABLE "uni.universities"
pg_restore: creating COMMENT "uni.COLUMN universities.unvr_jguid"
pg_restore: creating SEQUENCE "uni.universities_seq"
pg_restore: creating TABLE "workflow.attachments"
pg_restore: creating COMMENT "workflow.COLUMN attachments.filename"
pg_restore: creating COMMENT "workflow.COLUMN attachments.description"
pg_restore: creating COMMENT "workflow.COLUMN attachments.context"
pg_restore: creating COMMENT "workflow.COLUMN attachments.extension"
pg_restore: creating TABLE "workflow.levels"
pg_restore: creating COMMENT "workflow.TABLE levels"
pg_restore: creating COMMENT "workflow.COLUMN levels.id"
pg_restore: creating SEQUENCE "workflow.workflows_seq"
pg_restore: creating DEFAULT "public.AO_187CCC_SIDEBAR_LINK ID"
pg_restore: creating DEFAULT "public.AO_21D670_WHITELIST_RULES ID"
pg_restore: creating DEFAULT "public.AO_26DB7F_ENTITIES_TO_ROOMS ID"
pg_restore: creating DEFAULT "public.AO_26DB7F_ENTITIES_TO_ROOM_CFG ID"
pg_restore: creating DEFAULT "public.AO_38321B_CUSTOM_CONTENT_LINK ID"
pg_restore: creating DEFAULT "public.AO_42E351_HEALTH_CHECK_ENTITY ID"
pg_restore: creating DEFAULT "public.AO_54C900_CONTENT_BLUEPRINT_AO ID"
pg_restore: creating DEFAULT "public.AO_54C900_C_TEMPLATE_REF ID"
pg_restore: creating DEFAULT "public.AO_54C900_SPACE_BLUEPRINT_AO ID"
pg_restore: creating DEFAULT "public.AO_5F3884_FEATURE_DISCOVERY ID"
pg_restore: creating DEFAULT "public.AO_5FB9D7_AOHIP_CHAT_LINK ID"
pg_restore: creating DEFAULT "public.AO_5FB9D7_AOHIP_CHAT_USER ID"
pg_restore: creating DEFAULT "public.AO_6384AB_DISCOVERED ID"
pg_restore: creating DEFAULT "public.AO_6384AB_FEATURE_METADATA_AO ID"
pg_restore: creating DEFAULT "public.AO_7CDE43_EVENT ID"
pg_restore: creating DEFAULT "public.AO_7CDE43_FILTER_PARAM ID"
pg_restore: creating DEFAULT "public.AO_7CDE43_NOTIFICATION ID"
pg_restore: creating DEFAULT "public.AO_7CDE43_NOTIFICATION_SCHEME ID"
pg_restore: creating DEFAULT "public.AO_7CDE43_RECIPIENT ID"
pg_restore: creating DEFAULT "public.AO_7CDE43_SERVER_CONFIG ID"
pg_restore: creating DEFAULT "public.AO_7CDE43_SERVER_PARAM ID"
pg_restore: creating DEFAULT "public.AO_88263F_HEALTH_CHECK_STATUS ID"
pg_restore: creating DEFAULT "public.AO_88263F_PROPERTIES ID"
pg_restore: creating DEFAULT "public.AO_88263F_READ_NOTIFICATIONS ID"
pg_restore: creating DEFAULT "public.AO_88BB94_BATCH_NOTIFICATION ID"
pg_restore: creating DEFAULT "public.AO_92296B_AORECENTLY_VIEWED ID"
pg_restore: creating DEFAULT "public.AO_9412A1_AONOTIFICATION ID"
pg_restore: creating DEFAULT "public.AO_9412A1_AOTASK ID"
pg_restore: creating DEFAULT "public.AO_9412A1_AOUSER ID"
pg_restore: creating DEFAULT "public.AO_9412A1_USER_APP_LINK ID"
pg_restore: creating DEFAULT "public.AO_A0B856_WEB_HOOK_LISTENER_AO ID"
pg_restore: creating DEFAULT "public.AO_BAF3AA_AOINLINE_TASK GLOBAL_ID"
pg_restore: creating DEFAULT "public.AO_DC98AE_AOHELP_TIP ID"
pg_restore: creating DEFAULT "public.crgrid_test id"
pg_restore: creating DEFAULT "public.dept deptno"
pg_restore: creating DEFAULT "public.emp empno"
pg_restore: creating DEFAULT "public.locations sampleid"
pg_restore: creating DEFAULT "public.pgdac_blob uid"
pg_restore: creating DEFAULT "public.pgdac_text uid"
pg_restore: processing data for table "accounting.ledger_accounts"
pg_restore: processing data for table "accounting.payment_terms"
pg_restore: processing data for table "accounting.pcash_accounting_books"
pg_restore: processing data for table "accounting.pcash_accounting_periods"
pg_restore: processing data for table "accounting.pcash_accounting_row"
pg_restore: processing data for table "accounting.pcash_accounting_rows_ledgers"
pg_restore: processing data for table "accounting.pcash_books_ledgers"
pg_restore: processing data for table "accounting.pcash_ledger_types"
pg_restore: processing data for table "accounting.pretty_cash_ledgers"
pg_restore: processing data for table "accounting.vat_codes"
pg_restore: processing data for table "ads.adwords_campaigns"
pg_restore: processing data for table "ads.adwords_locations"
pg_restore: processing data for table "ads.adwords_terms"
pg_restore: processing data for table "ads.banner_logs"
pg_restore: processing data for table "ads.banners"
pg_restore: processing data for table "ads.click_logs"
pg_restore: processing data for table "ads.domains"
pg_restore: processing data for table "ads.domains_locations"
pg_restore: processing data for table "ads.last_banner"
pg_restore: processing data for table "ads.publish_slots"
pg_restore: processing data for table "anagraph.an_locations"
pg_restore: processing data for table "anagraph.anag_categories"
pg_restore: processing data for table "anagraph.anagraphs"
pg_restore: processing data for table "anagraph.branches"
pg_restore: processing data for table "anagraph.categories"
pg_restore: processing data for table "anagraph.categories_translations"
pg_restore: processing data for table "anagraph.groups"
pg_restore: processing data for table "anagraph.identities"
pg_restore: processing data for table "analytics.group_users"
pg_restore: processing data for table "analytics.params"
pg_restore: processing data for table "analytics.queries"
pg_restore: processing data for table "analytics.queries_schemas"
pg_restore: processing data for table "analytics.query_groups"
pg_restore: processing data for table "books.authors"
pg_restore: processing data for table "books.definitions"
pg_restore: processing data for table "books.offers"
pg_restore: processing data for table "books.offers_views"
pg_restore: processing data for table "cloud.blob_files"
pg_restore: processing data for table "cloud.blob_files_old"
pg_restore: processing data for table "cloud.computers"
pg_restore: processing data for table "cloud.directories"
pg_restore: processing data for table "cloud.external_files"
pg_restore: processing data for table "cloud.external_locations"
pg_restore: processing data for table "cloud.filedirlist"
pg_restore: processing data for table "cloud.images"
pg_restore: processing data for table "cloud.text_files"
pg_restore: processing data for table "cms.app_languages"
pg_restore: processing data for table "cms.apps"
pg_restore: processing data for table "cms.arguments"
pg_restore: processing data for table "cms.arguments_groups"
pg_restore: processing data for table "cms.arguments_roles"
pg_restore: processing data for table "cms.articles"
pg_restore: processing data for table "cms.events"
pg_restore: processing data for table "cms.graphic_menu"
pg_restore: processing data for table "cms.graphic_menu_groups"
pg_restore: processing data for table "cms.graphic_menu_rows"
pg_restore: processing data for table "cms.main_arguments"
pg_restore: processing data for table "cms.menu"
pg_restore: processing data for table "cms.menu_items"
pg_restore: processing data for table "cms.menu_items_t"
pg_restore: processing data for table "cms.news"
pg_restore: processing data for table "cms.news_types"
pg_restore: processing data for table "cms.pages"
pg_restore: processing data for table "cms.pages_t"
pg_restore: processing data for table "cms.pages_types"
pg_restore: processing data for table "cms.rss_articles"
pg_restore: processing data for table "cms.rss_feeds"
pg_restore: processing data for table "cms.session_logs"
pg_restore: processing data for table "cms.sessions"
pg_restore: processing data for table "cms.specifications"
pg_restore: processing data for table "cms.sub_arguments"
pg_restore: processing data for table "cms.templates"
pg_restore: processing data for table "cms.templates_pages"
pg_restore: processing data for table "cms.themes"
pg_restore: processing data for table "cms.themes_pages"
pg_restore: processing data for table "cms.web_menus"
pg_restore: processing data for table "cms.web_sites"
pg_restore: processing data for table "cms.webitems_pictures"
pg_restore: processing data for table "crm.attachments"
pg_restore: processing data for table "crm.cform_taxonomies"
pg_restore: processing data for table "crm.contactforms"
pg_restore: processing data for table "crm.form_definitions"
pg_restore: processing data for table "crm.quote_form_models"
pg_restore: processing data for table "crm.quote_forms"
pg_restore: processing data for table "crm.quote_forms_rows"
pg_restore: processing data for table "crm.quote_frmmodels_prdserv"
pg_restore: processing data for table "crm.quote_productservices"
pg_restore: processing data for table "crm.subjects"
pg_restore: processing data for table "crm.subjects_details"
pg_restore: processing data for table "custom_tm_logistic.aerealtahouse"
pg_restore: processing data for table "custom_tm_logistic.aerealtamaster"
pg_restore: processing data for table "custom_tm_logistic.aereaprenotazioni"
pg_restore: processing data for table "custom_tm_logistic.aerearigheltahouse"
pg_restore: processing data for table "custom_tm_logistic.aerearigheltamaster"
pg_restore: processing data for table "custom_tm_logistic.aereavociother"
pg_restore: processing data for table "custom_tm_logistic.aereavociotherhouse"
pg_restore: processing data for table "custom_tm_logistic.agentiiata"
pg_restore: processing data for table "custom_tm_logistic.agenzie"
pg_restore: processing data for table "custom_tm_logistic.attivitapratica"
pg_restore: processing data for table "custom_tm_logistic.azienda"
pg_restore: processing data for table "custom_tm_logistic.banche"
pg_restore: processing data for table "custom_tm_logistic.clifo"
pg_restore: processing data for table "custom_tm_logistic.cntr_type"
pg_restore: processing data for table "custom_tm_logistic.cod_pagamento"
pg_restore: processing data for table "custom_tm_logistic.compagnie"
pg_restore: processing data for table "custom_tm_logistic.condizioni"
pg_restore: processing data for table "custom_tm_logistic.corpofatt"
pg_restore: processing data for table "custom_tm_logistic.corpofatt_campioni"
pg_restore: processing data for table "custom_tm_logistic.corrieri"
pg_restore: processing data for table "custom_tm_logistic.costi"
pg_restore: processing data for table "custom_tm_logistic.costi_log"
pg_restore: processing data for table "custom_tm_logistic.costipredefiniti"
pg_restore: processing data for table "custom_tm_logistic.datimerce"
pg_restore: processing data for table "custom_tm_logistic.datispedizione"
pg_restore: processing data for table "custom_tm_logistic.docarchiviatientrate"
pg_restore: processing data for table "custom_tm_logistic.documenti"
pg_restore: processing data for table "custom_tm_logistic.documentiarchiviati"
pg_restore: processing data for table "custom_tm_logistic.entrate"
pg_restore: processing data for table "custom_tm_logistic.entrate_righe"
pg_restore: processing data for table "custom_tm_logistic.fd"
pg_restore: processing data for table "custom_tm_logistic.fornitori"
pg_restore: processing data for table "custom_tm_logistic.fvocifatt"
pg_restore: processing data for table "custom_tm_logistic.imballi"
pg_restore: processing data for table "custom_tm_logistic.livelli"
pg_restore: processing data for table "custom_tm_logistic.localita"
pg_restore: processing data for table "custom_tm_logistic.magazzini"
pg_restore: processing data for table "custom_tm_logistic.marche"
pg_restore: processing data for table "custom_tm_logistic.merci"
pg_restore: processing data for table "custom_tm_logistic.naveagenzia"
pg_restore: processing data for table "custom_tm_logistic.navecompagnia"
pg_restore: processing data for table "custom_tm_logistic.navi"
pg_restore: processing data for table "custom_tm_logistic.porti"
pg_restore: processing data for table "custom_tm_logistic.pr_agentiiata"
pg_restore: processing data for table "custom_tm_logistic.pr_clifo"
pg_restore: processing data for table "custom_tm_logistic.pr_compagnie"
pg_restore: processing data for table "custom_tm_logistic.pr_tipodoc"
pg_restore: processing data for table "custom_tm_logistic.precorpofatt"
pg_restore: processing data for table "custom_tm_logistic.pretestafatt"
pg_restore: processing data for table "custom_tm_logistic.progressivi"
pg_restore: processing data for table "custom_tm_logistic.prospettiquotazioni"
pg_restore: processing data for table "custom_tm_logistic.ricavi"
pg_restore: processing data for table "custom_tm_logistic.tabiva"
pg_restore: processing data for table "custom_tm_logistic.tblview_clifo"
pg_restore: processing data for table "custom_tm_logistic.testafatt"
pg_restore: processing data for table "custom_tm_logistic.testafatt_campioni"
pg_restore: processing data for table "custom_tm_logistic.testaft"
pg_restore: processing data for table "custom_tm_logistic.testatapratiche"
pg_restore: processing data for table "custom_tm_logistic.tidofatt"
pg_restore: processing data for table "custom_tm_logistic.tipi_documento"
pg_restore: processing data for table "custom_tm_logistic.tipicalcolo"
pg_restore: processing data for table "custom_tm_logistic.tipidichiarazioni"
pg_restore: processing data for table "custom_tm_logistic.tipipolizza"
pg_restore: processing data for table "custom_tm_logistic.tipiriga"
pg_restore: processing data for table "custom_tm_logistic.tipitariffe"
pg_restore: processing data for table "custom_tm_logistic.tipocntrs"
pg_restore: processing data for table "custom_tm_logistic.tipodoc"
pg_restore: processing data for table "custom_tm_logistic.tipodocarchiviati"
pg_restore: processing data for table "custom_tm_logistic.uffici"
pg_restore: processing data for table "custom_tm_logistic.unitamisura"
pg_restore: processing data for table "custom_tm_logistic.utenti"
pg_restore: processing data for table "custom_tm_logistic.valute"
pg_restore: processing data for table "custom_tm_logistic.vettori"
pg_restore: processing data for table "documents.attachments"
pg_restore: processing data for table "documents.heads"
pg_restore: processing data for table "documents.payment_schedule"
pg_restore: processing data for table "documents.rows"
pg_restore: processing data for table "documents.test"
pg_restore: processing data for table "documents.type_groups"
pg_restore: processing data for table "documents.types"
pg_restore: processing data for table "documents.vat_amounts"
pg_restore: processing data for table "football.arguments_championships"
pg_restore: processing data for table "football.ft_calendar"
pg_restore: processing data for table "football.ft_championships"
pg_restore: processing data for table "football.ft_club_seasons"
pg_restore: processing data for table "football.ft_clubs"
pg_restore: processing data for table "football.ft_event_types"
pg_restore: processing data for table "football.ft_field_types"
pg_restore: processing data for table "football.ft_fields"
pg_restore: processing data for table "football.ft_league_groups"
pg_restore: processing data for table "football.ft_leagues"
pg_restore: processing data for table "football.ft_match_days"
pg_restore: processing data for table "football.ft_match_events"
pg_restore: processing data for table "football.ft_match_players"
pg_restore: processing data for table "football.ft_player_career"
pg_restore: processing data for table "football.ft_players"
pg_restore: processing data for table "football.ft_ranking_table"
pg_restore: processing data for table "football.ft_roles"
pg_restore: processing data for table "football.ft_seasons"
pg_restore: processing data for table "football.ft_teams"
pg_restore: processing data for table "football.ft_teams_championships"
pg_restore: processing data for table "football.ft_teams_history"
pg_restore: processing data for table "football.ft_teams_players"
pg_restore: processing data for table "football.ft_teams_trainers"
pg_restore: processing data for table "football.ft_trainers"
pg_restore: processing data for table "football.ft_trainers_career"
pg_restore: processing data for table "football.json_calendar"
pg_restore: processing data for table "football.tmpranking"
pg_restore: processing data for table "gis.osm_categories"
pg_restore: processing data for table "gis.osm_places"
pg_restore: processing data for table "health.an_pharmacies_sectors"
pg_restore: processing data for table "health.an_pharmacies_services"
pg_restore: processing data for table "health.an_pharmacies_timetable"
pg_restore: processing data for table "health.an_pharmacies_website"
pg_restore: processing data for table "health.anagraph_wards"
pg_restore: processing data for table "health.anagraph_wards_items"
pg_restore: processing data for table "health.anagraph_wards_services"
pg_restore: processing data for table "health.anagraph_wards_services_history"
pg_restore: processing data for table "health.associations"
pg_restore: processing data for table "health.bookings"
pg_restore: processing data for table "health.bookings_rows"
pg_restore: processing data for table "health.branch_specialities"
pg_restore: processing data for table "health.branches"
pg_restore: processing data for table "health.disciplines"
pg_restore: processing data for table "health.disciplines_services"
pg_restore: processing data for table "health.health_profile"
pg_restore: processing data for table "health.instruments"
pg_restore: processing data for table "health.medical_councils"
pg_restore: processing data for table "health.notifications"
pg_restore: processing data for table "health.notifications_groups"
pg_restore: processing data for table "health.notifications_types"
pg_restore: processing data for table "health.organization_types"
pg_restore: processing data for table "health.organizations"
pg_restore: processing data for table "health.organizations_branches"
pg_restore: processing data for table "health.pharmacy_sections"
pg_restore: processing data for table "health.pharmacy_services"
pg_restore: processing data for table "health.pharmacy_timetable"
pg_restore: processing data for table "health.profile_groups"
pg_restore: processing data for table "health.search_index"
pg_restore: processing data for table "health.search_keys"
pg_restore: processing data for table "health.search_keys_text"
pg_restore: processing data for table "health.search_services"
pg_restore: processing data for table "health.searches"
pg_restore: processing data for table "health.searches_rows"
pg_restore: processing data for table "health.specialities"
pg_restore: processing data for table "health.specialities_groups"
pg_restore: processing data for table "health.sub_specialities"
pg_restore: processing data for table "items.branddimensions"
pg_restore: processing data for table "items.brands"
pg_restore: processing data for table "items.brnd_dmn_sizeshapes"
pg_restore: processing data for table "items.definitions"
pg_restore: processing data for table "items.dimensions"
pg_restore: processing data for table "items.discounts"
pg_restore: processing data for table "items.families"
pg_restore: processing data for table "items.grids"
pg_restore: processing data for table "items.groups"
pg_restore: processing data for table "items.hazmat"
pg_restore: processing data for table "items.items_dimensions"
pg_restore: processing data for table "items.package_types"
pg_restore: processing data for table "items.pricelists"
pg_restore: processing data for table "items.pricelists_items"
pg_restore: processing data for table "items.seasons"
pg_restore: processing data for table "items.type_groups"
pg_restore: processing data for table "items.types"
pg_restore: processing data for table "items.web_items"
pg_restore: processing data for table "jpublic.buildings"
pg_restore: processing data for table "jpublic.contiguous_regions"
pg_restore: processing data for table "jpublic.countries"
pg_restore: processing data for table "jpublic.countries_trans"
pg_restore: processing data for table "jpublic.country_currencies"
pg_restore: processing data for table "jpublic.cultures"
pg_restore: processing data for table "jpublic.currencies"
pg_restore: processing data for table "jpublic.currencies_trans"
pg_restore: processing data for table "jpublic.dimension_models"
pg_restore: processing data for table "jpublic.district_trans"
pg_restore: processing data for table "jpublic.districts"
pg_restore: processing data for table "jpublic.gender"
pg_restore: processing data for table "jpublic.lang_translations"
pg_restore: processing data for table "jpublic.languages"
pg_restore: processing data for table "jpublic.location_types"
pg_restore: processing data for table "jpublic.locations"
pg_restore: processing data for table "jpublic.mail_attach"
pg_restore: processing data for table "jpublic.measure_units"
pg_restore: processing data for table "jpublic.regions"
pg_restore: processing data for table "jpublic.regions_trans"
pg_restore: processing data for table "jpublic.social_networks"
pg_restore: processing data for table "jpublic.town_areas"
pg_restore: processing data for table "jpublic.towns"
pg_restore: processing data for table "jpublic.vat_id_codes"
pg_restore: processing data for table "locale.it_it_health_prescription"
pg_restore: processing data for table "locale.it_it_townscountries_codes"
pg_restore: processing data for table "logistic.awb"
pg_restore: processing data for table "logistic.awb_codes"
pg_restore: processing data for table "logistic.awb_rows"
pg_restore: processing data for table "logistic.awb_surcharges"
pg_restore: processing data for table "logistic.conditions"
pg_restore: processing data for table "logistic.container_types"
pg_restore: processing data for table "logistic.locations"
pg_restore: processing data for table "logistic.shipment_rows"
pg_restore: processing data for table "logistic.shipments"
pg_restore: processing data for table "logistic.type_of_goods"
pg_restore: processing data for table "maillist.campaign_members"
pg_restore: processing data for table "maillist.campaigns"
pg_restore: processing data for table "maillist.clicks"
pg_restore: processing data for table "maillist.list_members"
pg_restore: processing data for table "maillist.mailing_list"
pg_restore: processing data for table "maillist.opens"
pg_restore: processing data for table "maillist.sender"
pg_restore: processing data for table "maillist.sender_attachments"
pg_restore: processing data for table "maillist.subset_members"
pg_restore: processing data for table "maillist.subsets"
pg_restore: processing data for table "planner.activities"
pg_restore: processing data for table "planner.activities_groups"
pg_restore: processing data for table "planner.timetable"
pg_restore: processing data for table "public.AO_187CCC_SIDEBAR_LINK"
pg_restore: processing data for table "public.AO_21D670_WHITELIST_RULES"
pg_restore: processing data for table "public.AO_26DB7F_ENTITIES_TO_ROOMS"
pg_restore: processing data for table "public.AO_26DB7F_ENTITIES_TO_ROOM_CFG"
pg_restore: processing data for table "public.AO_38321B_CUSTOM_CONTENT_LINK"
pg_restore: processing data for table "public.AO_42E351_HEALTH_CHECK_ENTITY"
pg_restore: processing data for table "public.AO_54C900_CONTENT_BLUEPRINT_AO"
pg_restore: processing data for table "public.AO_54C900_C_TEMPLATE_REF"
pg_restore: processing data for table "public.AO_54C900_SPACE_BLUEPRINT_AO"
pg_restore: processing data for table "public.AO_5F3884_FEATURE_DISCOVERY"
pg_restore: processing data for table "public.AO_5FB9D7_AOHIP_CHAT_LINK"
pg_restore: processing data for table "public.AO_5FB9D7_AOHIP_CHAT_USER"
pg_restore: processing data for table "public.AO_6384AB_DISCOVERED"
pg_restore: processing data for table "public.AO_6384AB_FEATURE_METADATA_AO"
pg_restore: processing data for table "public.AO_7CDE43_EVENT"
pg_restore: processing data for table "public.AO_7CDE43_FILTER_PARAM"
pg_restore: processing data for table "public.AO_7CDE43_NOTIFICATION"
pg_restore: processing data for table "public.AO_7CDE43_NOTIFICATION_SCHEME"
pg_restore: processing data for table "public.AO_7CDE43_RECIPIENT"
pg_restore: processing data for table "public.AO_7CDE43_SERVER_CONFIG"
pg_restore: processing data for table "public.AO_7CDE43_SERVER_PARAM"
pg_restore: processing data for table "public.AO_88263F_HEALTH_CHECK_STATUS"
pg_restore: processing data for table "public.AO_88263F_PROPERTIES"
pg_restore: processing data for table "public.AO_88263F_READ_NOTIFICATIONS"
pg_restore: processing data for table "public.AO_88BB94_BATCH_NOTIFICATION"
pg_restore: processing data for table "public.AO_92296B_AORECENTLY_VIEWED"
pg_restore: processing data for table "public.AO_9412A1_AONOTIFICATION"
pg_restore: processing data for table "public.AO_9412A1_AOREGISTRATION"
pg_restore: processing data for table "public.AO_9412A1_AOTASK"
pg_restore: processing data for table "public.AO_9412A1_AOUSER"
pg_restore: processing data for table "public.AO_9412A1_USER_APP_LINK"
pg_restore: processing data for table "public.AO_A0B856_WEB_HOOK_LISTENER_AO"
pg_restore: processing data for table "public.AO_BAF3AA_AOINLINE_TASK"
pg_restore: processing data for table "public.AO_DC98AE_AOHELP_TIP"
pg_restore: processing data for table "public.CIRCOSCRIZIONI"
pg_restore: processing data for table "public.MUNICIPI"
pg_restore: processing data for table "public.PRESTAZ_2002"
pg_restore: processing data for table "public.STRUTTURE_PRESTAZIONI"
pg_restore: processing data for table "public.asili"
pg_restore: processing data for table "public.attachmentdata"
pg_restore: processing data for table "public.audit_affected_object"
pg_restore: processing data for table "public.audit_changed_value"
pg_restore: processing data for table "public.auditrecord"
pg_restore: processing data for table "public.bandana"
pg_restore: processing data for table "public.bodycontent"
pg_restore: processing data for table "public.character_entity"
pg_restore: processing data for table "public.clustersafety"
pg_restore: processing data for table "public.confancestors"
pg_restore: processing data for table "public.confversion"
pg_restore: processing data for table "public.content"
pg_restore: processing data for table "public.content_label"
pg_restore: processing data for table "public.content_perm"
pg_restore: processing data for table "public.content_perm_set"
pg_restore: processing data for table "public.content_relation"
pg_restore: processing data for table "public.contentproperties"
pg_restore: processing data for table "public.costipredefiniti"
pg_restore: processing data for table "public.crgrid_test"
pg_restore: processing data for table "public.cwd_app_dir_group_mapping"
pg_restore: processing data for table "public.cwd_app_dir_mapping"
pg_restore: processing data for table "public.cwd_app_dir_operation"
pg_restore: processing data for table "public.cwd_application"
pg_restore: processing data for table "public.cwd_application_address"
pg_restore: processing data for table "public.cwd_application_attribute"
pg_restore: processing data for table "public.cwd_directory"
pg_restore: processing data for table "public.cwd_directory_attribute"
pg_restore: processing data for table "public.cwd_directory_operation"
pg_restore: processing data for table "public.cwd_group"
pg_restore: processing data for table "public.cwd_group_attribute"
pg_restore: processing data for table "public.cwd_membership"
pg_restore: processing data for table "public.cwd_user"
pg_restore: processing data for table "public.cwd_user_attribute"
pg_restore: processing data for table "public.cwd_user_credential_record"
pg_restore: processing data for table "public.decorator"
pg_restore: processing data for table "public.dept"
pg_restore: processing data for table "public.emp"
pg_restore: processing data for table "public.external_entities"
pg_restore: processing data for table "public.external_members"
pg_restore: processing data for table "public.extrnlnks"
pg_restore: processing data for table "public.follow_connections"
pg_restore: processing data for table "public.ft_clubs_backup"
pg_restore: processing data for table "public.ft_teams_championship_not_match"
pg_restore: processing data for table "public.groups"
pg_restore: processing data for table "public.hazmat"
pg_restore: processing data for table "public.hibernate_unique_key"
pg_restore: processing data for table "public.imagedetails"
pg_restore: processing data for table "public.indexqueueentries"
pg_restore: processing data for table "public.items_archived"
pg_restore: processing data for table "public.items_likes_archived"
pg_restore: processing data for table "public.journalentry"
pg_restore: processing data for table "public.keystore"
pg_restore: processing data for table "public.label"
pg_restore: processing data for table "public.likes"
pg_restore: processing data for table "public.links"
pg_restore: processing data for table "public.local_members"
pg_restore: processing data for table "public.locations"
pg_restore: processing data for table "public.logininfo"
pg_restore: processing data for table "public.mail.campaign_members"
pg_restore: processing data for table "public.mail.campaigns"
pg_restore: processing data for table "public.notifications"
pg_restore: processing data for table "public.os_group"
pg_restore: processing data for table "public.os_propertyentry"
pg_restore: processing data for table "public.os_user"
pg_restore: processing data for table "public.os_user_group"
pg_restore: processing data for table "public.pagetemplates"
pg_restore: processing data for table "public.pgdac_blob"
pg_restore: processing data for table "public.pgdac_loaded"
pg_restore: processing data for table "public.pgdac_text"
pg_restore: processing data for table "public.plugindata"
pg_restore: processing data for table "public.queries_params"
pg_restore: processing data for table "public.query_grids"
pg_restore: processing data for table "public.remembermetoken"
pg_restore: processing data for table "public.scheduler_clustered_jobs"
pg_restore: processing data for table "public.scheduler_run_details"
pg_restore: processing data for table "public.search_services"
pg_restore: processing data for table "public.spacepermissions"
pg_restore: processing data for table "public.spaces"
pg_restore: processing data for table "public.spatial_ref_sys"
pg_restore: processing data for table "public.squadre"
pg_restore: processing data for table "public.stagioni"
pg_restore: processing data for table "public.stat_queries"
pg_restore: processing data for table "public.storia_squadre"
pg_restore: processing data for table "public.storico_incontri"
pg_restore: processing data for table "public.t_carriera_giocatore"
pg_restore: processing data for table "public.tabellini_partite"
pg_restore: processing data for table "public.trackbacklinks"
pg_restore: processing data for table "public.trustedapp"
pg_restore: processing data for table "public.trustedapprestriction"
pg_restore: processing data for table "public.user_mapping"
pg_restore: processing data for table "public.user_relation"
pg_restore: processing data for table "public.usercontent_relation"
pg_restore: processing data for table "public.users"
pg_restore: processing data for table "public.v_item_id"
pg_restore: processing data for table "public.vtest"
pg_restore: processing data for table "re.buildings"
pg_restore: processing data for table "re.properties"
pg_restore: processing data for table "re.properties_galleries"
pg_restore: processing data for table "re.property_types"
pg_restore: processing data for table "re.rooms"
pg_restore: processing data for table "re.rooms_offers"
pg_restore: processing data for table "re.rooms_tenants"
pg_restore: processing data for table "repository.entities"
pg_restore: processing data for table "repository.fields"
pg_restore: processing data for table "repository.fieldtypes"
pg_restore: processing data for table "repository.fieldtypes_groups"
pg_restore: processing data for table "shipping.companies"
pg_restore: processing data for table "shipping.ferry_pricelist"
pg_restore: processing data for table "shipping.ferry_types"
pg_restore: processing data for table "shipping.items_ferry_definitions"
pg_restore: processing data for table "shipping.lines"
pg_restore: processing data for table "shipping.lines_periods"
pg_restore: processing data for table "shipping.lines_ports"
pg_restore: processing data for table "shipping.lines_routes"
pg_restore: processing data for table "shipping.ports"
pg_restore: processing data for table "shipping.seasons"
pg_restore: processing data for table "shipping.timetable"
pg_restore: processing data for table "shipping.timetable_places"
pg_restore: processing data for table "shipping.timetable_prices"
pg_restore: processing data for table "shipping.vessel_departments"
pg_restore: processing data for table "shipping.vessels"
pg_restore: processing data for table "social.messages"
pg_restore: processing data for table "social.msg_attachments"
pg_restore: processing data for table "sportmedia.allenatori"
pg_restore: processing data for table "sportmedia.atleti"
pg_restore: processing data for table "swap.events"
pg_restore: processing data for table "swap.events_users"
pg_restore: processing data for table "swap.followers"
pg_restore: processing data for table "swap.items"
pg_restore: processing data for table "swap.items_archived"
pg_restore: processing data for table "swap.items_discovered"
pg_restore: processing data for table "swap.items_dislikes"
pg_restore: processing data for table "swap.items_images"
pg_restore: processing data for table "swap.items_likes"
pg_restore: processing data for table "swap.items_likes_archived"
pg_restore: processing data for table "swap.notifications"
pg_restore: processing data for table "swap.notifications_profiles"
pg_restore: processing data for table "swap.notifications_types"
pg_restore: processing data for table "swap.profiles"
pg_restore: processing data for table "swap.swaps"
pg_restore: processing data for table "swap.swaps_messages"
pg_restore: processing data for table "swap.swaps_status"
pg_restore: processing data for table "system.app_forms"
pg_restore: processing data for table "system.app_forms_objects"
pg_restore: processing data for table "system.app_forms_objects_properties"
pg_restore: processing data for table "system.app_forms_objects_translations"
pg_restore: processing data for table "system.app_forms_translations"
pg_restore: processing data for table "system.app_functions"
pg_restore: processing data for table "system.app_grids"
pg_restore: processing data for table "system.app_licenses"
pg_restore: processing data for table "system.app_member_forms"
pg_restore: processing data for table "system.app_messages"
pg_restore: processing data for table "system.applications"
pg_restore: processing data for table "system.db_app_grp_param"
pg_restore: processing data for table "system.db_app_schemas"
pg_restore: processing data for table "system.db_applications_roles"
pg_restore: processing data for table "system.db_esr_sch_param"
pg_restore: processing data for table "system.db_groups"
pg_restore: processing data for table "system.db_groups_schemas"
pg_restore: processing data for table "system.db_grp_sch_param"
pg_restore: processing data for table "system.db_packages_schemas"
pg_restore: processing data for table "system.db_roles"
pg_restore: processing data for table "system.db_schema_params"
pg_restore: processing data for table "system.db_schemas"
pg_restore: processing data for table "system.db_schemas_roles"
pg_restore: processing data for table "system.db_user_groups"
pg_restore: processing data for table "system.db_user_schema_params"
pg_restore: processing data for table "system.db_user_sessions"
pg_restore: processing data for table "system.db_users"
pg_restore: processing data for table "system.db_users_payments"
pg_restore: processing data for table "system.db_users_profiles"
pg_restore: processing data for table "system.db_users_roles"
pg_restore: processing data for table "system.db_users_schemas"
pg_restore: processing data for table "system.db_users_schemas_apps"
pg_restore: processing data for table "system.db_users_schemas_roles"
pg_restore: processing data for table "system.financial_years"
pg_restore: processing data for table "system.form_models"
pg_restore: processing data for table "system.form_objects_trans"
pg_restore: processing data for table "system.packages"
pg_restore: processing data for table "system.packages_applications"
pg_restore: processing data for table "system.schemalog"
pg_restore: processing data for table "system.sys_params"
pg_restore: processing data for table "system.sys_roles"
pg_restore: processing data for table "system.syslog"
pg_restore: processing data for table "system.temp_session"
pg_restore: processing data for table "system.tmp_grids"
pg_restore: processing data for table "temp.tmp_grids"
pg_restore: processing data for table "topology.topology"
pg_restore: processing data for table "topology.layer"
pg_restore: processing data for table "uni.courses"
pg_restore: processing data for table "uni.departments"
pg_restore: processing data for table "uni.faculties"
pg_restore: processing data for table "uni.modules"
pg_restore: processing data for table "uni.modules_courses"
pg_restore: processing data for table "uni.professors"
pg_restore: processing data for table "uni.students"
pg_restore: processing data for table "uni.universities"
pg_restore: processing data for table "workflow.attachments"
pg_restore: processing data for table "workflow.levels"
pg_restore: processing data for table "workflow.types"
pg_restore: processing data for table "workflow.workflows"
pg_restore: executing SEQUENCE SET accounts_seq
pg_restore: executing SEQUENCE SET vat_seq
pg_restore: executing SEQUENCE SET banner_logs_seq
pg_restore: executing SEQUENCE SET banners_seq
pg_restore: executing SEQUENCE SET click_logs_seq
pg_restore: executing SEQUENCE SET domains_seq
pg_restore: executing SEQUENCE SET an_anagraph_seq
pg_restore: executing SEQUENCE SET categories_seq
pg_restore: executing SEQUENCE SET group_seq
pg_restore: executing SEQUENCE SET queries_seq
pg_restore: executing SEQUENCE SET query_groups_seq
pg_restore: executing SEQUENCE SET book_defs_seq
pg_restore: executing SEQUENCE SET cloud_computers_seq
pg_restore: executing SEQUENCE SET cloud_directories_seq
pg_restore: executing SEQUENCE SET cloud_images_blob_id_seq
pg_restore: executing SEQUENCE SET cloud_images_seq
pg_restore: executing SEQUENCE SET cloud_text_files_seq
pg_restore: executing SEQUENCE SET file_seq
pg_restore: executing SEQUENCE SET images_seq
pg_restore: executing SEQUENCE SET apps_seq
pg_restore: executing SEQUENCE SET arguments_seq
pg_restore: executing SEQUENCE SET articles_seq
pg_restore: executing SEQUENCE SET events_seq
pg_restore: executing SEQUENCE SET graphic_menu_groups_seq
pg_restore: executing SEQUENCE SET graphic_menu_rows_seq
pg_restore: executing SEQUENCE SET graphic_menus_seq
pg_restore: executing SEQUENCE SET main_arguments_seq
pg_restore: executing SEQUENCE SET menu_seq
pg_restore: executing SEQUENCE SET news_seq
pg_restore: executing SEQUENCE SET rssarticles_seq
pg_restore: executing SEQUENCE SET rssfeed_seq
pg_restore: executing SEQUENCE SET sessions_seq
pg_restore: executing SEQUENCE SET sub_arguments_seq
pg_restore: executing SEQUENCE SET templates_seq
pg_restore: executing SEQUENCE SET themes_seq
pg_restore: executing SEQUENCE SET web_sites_seq
pg_restore: executing SEQUENCE SET documents_seq
pg_restore: executing SEQUENCE SET rows_seq
pg_restore: executing SEQUENCE SET types_seq
pg_restore: executing SEQUENCE SET ft_calendar_seq
pg_restore: executing SEQUENCE SET ft_clubs_seq
pg_restore: executing SEQUENCE SET ft_league_groups_seq
pg_restore: executing SEQUENCE SET ft_leagues_seq
pg_restore: executing SEQUENCE SET ft_matchevents_seq
pg_restore: executing SEQUENCE SET ft_player_career_seq
pg_restore: executing SEQUENCE SET ft_ranking_seq
pg_restore: executing SEQUENCE SET ft_teams_seq
pg_restore: executing SEQUENCE SET anagraph_wards_services_seq
pg_restore: executing SEQUENCE SET associations_seq
pg_restore: executing SEQUENCE SET booking_seq
pg_restore: executing SEQUENCE SET branch_specialities_seq
pg_restore: executing SEQUENCE SET branches_seq
pg_restore: executing SEQUENCE SET councils_seq
pg_restore: executing SEQUENCE SET notifications_seq
pg_restore: executing SEQUENCE SET organizations_seq
pg_restore: executing SEQUENCE SET searches_seq
pg_restore: executing SEQUENCE SET sections_id
pg_restore: executing SEQUENCE SET services_id
pg_restore: executing SEQUENCE SET specialities_seq
pg_restore: executing SEQUENCE SET subspecialities_seq
pg_restore: executing SEQUENCE SET default_seq
pg_restore: executing SEQUENCE SET dimensions_seq
pg_restore: executing SEQUENCE SET families_seq
pg_restore: executing SEQUENCE SET items_seq
pg_restore: executing SEQUENCE SET currencies_seq
pg_restore: executing SEQUENCE SET districts_seq
pg_restore: executing SEQUENCE SET iso_countries_seq
pg_restore: executing SEQUENCE SET iso_districts_seq
pg_restore: executing SEQUENCE SET iso_regions_seq
pg_restore: executing SEQUENCE SET languages_seq
pg_restore: executing SEQUENCE SET munits_seq
pg_restore: executing SEQUENCE SET towns_seq
pg_restore: executing SEQUENCE SET awb_rows_seq
pg_restore: executing SEQUENCE SET awb_seq
pg_restore: executing SEQUENCE SET locations_seq
pg_restore: executing SEQUENCE SET pickup_orders_seq
pg_restore: executing SEQUENCE SET attachments_seq
pg_restore: executing SEQUENCE SET mailing_list_seq
pg_restore: executing SEQUENCE SET AO_187CCC_SIDEBAR_LINK_ID_seq
pg_restore: executing SEQUENCE SET AO_21D670_WHITELIST_RULES_ID_seq
pg_restore: executing SEQUENCE SET AO_26DB7F_ENTITIES_TO_ROOMS_ID_seq
pg_restore: executing SEQUENCE SET AO_26DB7F_ENTITIES_TO_ROOM_CFG_ID_seq
pg_restore: executing SEQUENCE SET AO_38321B_CUSTOM_CONTENT_LINK_ID_seq
pg_restore: executing SEQUENCE SET AO_42E351_HEALTH_CHECK_ENTITY_ID_seq
pg_restore: executing SEQUENCE SET AO_54C900_CONTENT_BLUEPRINT_AO_ID_seq
pg_restore: executing SEQUENCE SET AO_54C900_C_TEMPLATE_REF_ID_seq
pg_restore: executing SEQUENCE SET AO_54C900_SPACE_BLUEPRINT_AO_ID_seq
pg_restore: executing SEQUENCE SET AO_5F3884_FEATURE_DISCOVERY_ID_seq
pg_restore: executing SEQUENCE SET AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq
pg_restore: executing SEQUENCE SET AO_5FB9D7_AOHIP_CHAT_USER_ID_seq
pg_restore: executing SEQUENCE SET AO_6384AB_DISCOVERED_ID_seq
pg_restore: executing SEQUENCE SET AO_6384AB_FEATURE_METADATA_AO_ID_seq
pg_restore: executing SEQUENCE SET AO_7CDE43_EVENT_ID_seq
pg_restore: executing SEQUENCE SET AO_7CDE43_FILTER_PARAM_ID_seq
pg_restore: executing SEQUENCE SET AO_7CDE43_NOTIFICATION_ID_seq
pg_restore: executing SEQUENCE SET AO_7CDE43_NOTIFICATION_SCHEME_ID_seq
pg_restore: executing SEQUENCE SET AO_7CDE43_RECIPIENT_ID_seq
pg_restore: executing SEQUENCE SET AO_7CDE43_SERVER_CONFIG_ID_seq
pg_restore: executing SEQUENCE SET AO_7CDE43_SERVER_PARAM_ID_seq
pg_restore: executing SEQUENCE SET AO_88263F_HEALTH_CHECK_STATUS_ID_seq
pg_restore: executing SEQUENCE SET AO_88263F_PROPERTIES_ID_seq
pg_restore: executing SEQUENCE SET AO_88263F_READ_NOTIFICATIONS_ID_seq
pg_restore: executing SEQUENCE SET AO_88BB94_BATCH_NOTIFICATION_ID_seq
pg_restore: executing SEQUENCE SET AO_92296B_AORECENTLY_VIEWED_ID_seq
pg_restore: executing SEQUENCE SET AO_9412A1_AONOTIFICATION_ID_seq
pg_restore: executing SEQUENCE SET AO_9412A1_AOTASK_ID_seq
pg_restore: executing SEQUENCE SET AO_9412A1_AOUSER_ID_seq
pg_restore: executing SEQUENCE SET AO_9412A1_USER_APP_LINK_ID_seq
pg_restore: executing SEQUENCE SET AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq
pg_restore: executing SEQUENCE SET AO_BAF3AA_AOINLINE_TASK_GLOBAL_ID_seq
pg_restore: executing SEQUENCE SET AO_DC98AE_AOHELP_TIP_ID_seq
pg_restore: executing SEQUENCE SET crgrid_test_id_seq
pg_restore: executing SEQUENCE SET dept_deptno_seq
pg_restore: executing SEQUENCE SET emp_empno_seq
pg_restore: executing SEQUENCE SET locations_sampleid_seq
pg_restore: executing SEQUENCE SET pgdac_blob_uid_seq
pg_restore: executing SEQUENCE SET pgdac_text_uid_seq
pg_restore: executing SEQUENCE SET seq_journal_entry_id
pg_restore: executing SEQUENCE SET vessels_seq
pg_restore: executing SEQUENCE SET vessels_vessel_id_seq
pg_restore: executing SEQUENCE SET messages_seq
pg_restore: executing SEQUENCE SET allenatori_seq
pg_restore: executing SEQUENCE SET events_seq
pg_restore: executing SEQUENCE SET items_images_seq
pg_restore: executing SEQUENCE SET items_seq
pg_restore: executing SEQUENCE SET messages_seq
pg_restore: executing SEQUENCE SET notifications_seq
pg_restore: executing SEQUENCE SET swaps_seq
pg_restore: executing SEQUENCE SET app_forms_seq
pg_restore: executing SEQUENCE SET app_licenses_seq
pg_restore: executing SEQUENCE SET app_objects_seq
pg_restore: executing SEQUENCE SET app_properties_seq
pg_restore: executing SEQUENCE SET applications_seq
pg_restore: executing SEQUENCE SET db_schema_seq
pg_restore: executing SEQUENCE SET db_sessions_seq
pg_restore: executing SEQUENCE SET db_users_seq
pg_restore: executing SEQUENCE SET packages_seq
pg_restore: executing SEQUENCE SET sys_roles_seq
pg_restore: executing SEQUENCE SET courses_seq
pg_restore: executing SEQUENCE SET departments_seq
pg_restore: executing SEQUENCE SET faculties_seq
pg_restore: executing SEQUENCE SET universities_seq
pg_restore: executing SEQUENCE SET workflows_seq
pg_restore: creating CONSTRAINT "accounting.payment_terms payment_terms_pkey"
pg_restore: creating CONSTRAINT "accounting.ledger_accounts pk_pcash_account_guid"
pg_restore: creating CONSTRAINT "accounting.pcash_accounting_books pk_pcash_accounting_books_guid"
pg_restore: creating CONSTRAINT "accounting.pcash_accounting_periods pk_pcash_accounting_periods"
pg_restore: creating CONSTRAINT "accounting.pcash_accounting_row pk_pcash_accounting_row_guid"
pg_restore: creating CONSTRAINT "accounting.pcash_accounting_rows_ledgers pk_pcash_accounting_rows_ledgers_ledger_guid"
pg_restore: creating CONSTRAINT "accounting.pcash_books_ledgers pk_pcash_books_ledgers_ledger_guid"
pg_restore: creating CONSTRAINT "accounting.pcash_ledger_types pk_pcash_ledger_types_guid"
pg_restore: creating CONSTRAINT "accounting.pretty_cash_ledgers pk_pretty_cash_ledger_guid"
pg_restore: creating CONSTRAINT "accounting.vat_codes vat_codes_pk"
pg_restore: creating CONSTRAINT "accounting.vat_codes vat_codes_schema_uk"
pg_restore: creating CONSTRAINT "ads.banners abnn_jguid_uk"
pg_restore: creating CONSTRAINT "ads.domains admn_jguid_uk"
pg_restore: creating CONSTRAINT "ads.adwords_campaigns adwords_campaigns_pkey"
pg_restore: creating CONSTRAINT "ads.adwords_locations adwords_locations_pkey"
pg_restore: creating CONSTRAINT "ads.adwords_terms adwords_terms_pk"
pg_restore: creating CONSTRAINT "ads.last_banner alst_jguid_uk"
pg_restore: creating CONSTRAINT "ads.publish_slots apbl_jguid_uk"
pg_restore: creating CONSTRAINT "ads.banners banners_images_uk"
pg_restore: creating CONSTRAINT "ads.banners banners_pk"
pg_restore: creating CONSTRAINT "ads.domains domains_pk"
pg_restore: creating CONSTRAINT "ads.last_banner last_banner_pk"
pg_restore: creating CONSTRAINT "ads.publish_slots slots_pk"
pg_restore: creating CONSTRAINT "anagraph.branches abrn_jguid_uk"
pg_restore: creating CONSTRAINT "anagraph.identities adnt_jguid_uk"
pg_restore: creating CONSTRAINT "anagraph.identities an_anag_gr"
pg_restore: creating CONSTRAINT "anagraph.groups an_groups_pk"
pg_restore: creating COMMENT "anagraph.CONSTRAINT an_groups_pk ON groups"
pg_restore: creating CONSTRAINT "anagraph.anag_categories anag_categories_pkey"
pg_restore: creating CONSTRAINT "anagraph.anagraphs anagraph"
pg_restore: creating CONSTRAINT "anagraph.anagraphs anagraphs_jguid_uk"
pg_restore: creating CONSTRAINT "anagraph.groups angr_jguid_uk"
pg_restore: creating CONSTRAINT "anagraph.branches ansett"
pg_restore: creating CONSTRAINT "anagraph.categories categories_pk"
pg_restore: creating CONSTRAINT "anagraph.categories_translations categories_translations_pkey"
pg_restore: creating CONSTRAINT "anagraph.an_locations pk_an_locations_id"
pg_restore: creating CONSTRAINT "analytics.params pk_params_name"
pg_restore: creating COMMENT "analytics.CONSTRAINT pk_params_name ON params"
pg_restore: creating CONSTRAINT "analytics.queries queries_pk"
pg_restore: creating CONSTRAINT "analytics.queries_schemas queries_schema_uk"
pg_restore: creating CONSTRAINT "analytics.queries_schemas queries_schemas_pk"
pg_restore: creating CONSTRAINT "analytics.query_groups query_groups_pk"
pg_restore: creating CONSTRAINT "books.authors authors_pk"
pg_restore: creating CONSTRAINT "books.definitions book_defs_ISBN10_uk"
pg_restore: creating CONSTRAINT "books.definitions book_defs_pk"
pg_restore: creating CONSTRAINT "books.definitions books_defs_isbn13_uk"
pg_restore: creating CONSTRAINT "books.offers pk_books_offers"
pg_restore: creating CONSTRAINT "cloud.blob_files blob_files_uuid_uk"
pg_restore: creating CONSTRAINT "cloud.blob_files_old blob_jguid_uk"
pg_restore: creating CONSTRAINT "cloud.blob_files_old blob_pk"
pg_restore: creating CONSTRAINT "cloud.blob_files_old cblb_jguid_uk"
pg_restore: creating CONSTRAINT "cloud.computers ccmp_jguid_uk"
pg_restore: creating CONSTRAINT "cloud.directories cdrc_jguid_uk"
pg_restore: creating CONSTRAINT "cloud.filedirlist cfld_jguid_uk"
pg_restore: creating CONSTRAINT "cloud.images cimg_jguid_uk"
pg_restore: creating CONSTRAINT "cloud.blob_files cloud_blob_files_pk"
pg_restore: creating CONSTRAINT "cloud.filedirlist cloud_filedirlist_pk"
pg_restore: creating CONSTRAINT "cloud.text_files ctxt_jguid_uk"
pg_restore: creating CONSTRAINT "cloud.external_files cxtf_jguid_uk"
pg_restore: creating CONSTRAINT "cloud.external_locations cxtr_jguid_uk"
pg_restore: creating CONSTRAINT "cloud.computers idx_cloud_computers"
pg_restore: creating CONSTRAINT "cloud.computers pk_cloud_computers"
pg_restore: creating CONSTRAINT "cloud.directories pk_cloud_directories"
pg_restore: creating CONSTRAINT "cloud.external_files pk_external_files"
pg_restore: creating CONSTRAINT "cloud.external_locations pk_external_locations"
pg_restore: creating CONSTRAINT "cloud.images pk_images"
pg_restore: creating CONSTRAINT "cloud.text_files text_files_pk"
pg_restore: creating CONSTRAINT "cloud.computers uk_computers_keys"
pg_restore: creating CONSTRAINT "cms.apps apps_pk"
pg_restore: creating CONSTRAINT "cms.arguments arguments_pk"
pg_restore: creating CONSTRAINT "cms.arguments carg_jguid_uk"
pg_restore: creating CONSTRAINT "cms.graphic_menu_groups cgrg_jguid_uk"
pg_restore: creating CONSTRAINT "cms.graphic_menu cgrm_jguid_uk"
pg_restore: creating CONSTRAINT "cms.graphic_menu_rows cgrp_jguid_uk"
pg_restore: creating CONSTRAINT "cms.main_arguments cmar_jguid_uk"
pg_restore: creating CONSTRAINT "cms.menu cmn_jguid_uk"
pg_restore: creating CONSTRAINT "cms.menu_items cmni_jguid_uk"
pg_restore: creating CONSTRAINT "cms.menu_items_t cmnt_jguid_uk"
pg_restore: creating CONSTRAINT "cms.pages cpgp_jguid_uk"
pg_restore: creating CONSTRAINT "cms.pages_types cpgs_jguid_uk"
pg_restore: creating CONSTRAINT "cms.pages_t cpgt_jguid_uk"
pg_restore: creating CONSTRAINT "cms.apps cpps_jguid_uk"
pg_restore: creating CONSTRAINT "cms.arguments_groups crgm_jguid_uk"
pg_restore: creating CONSTRAINT "cms.arguments_roles crgr_jguid_uk"
pg_restore: creating CONSTRAINT "cms.rss_articles crsa_jguid_uk"
pg_restore: creating CONSTRAINT "cms.rss_feeds crsf_jguid_uk"
pg_restore: creating CONSTRAINT "cms.articles crtc_jguid_uk"
pg_restore: creating CONSTRAINT "cms.sub_arguments csbr_jguid_uk"
pg_restore: creating CONSTRAINT "cms.specifications cspc_jguid_uk"
pg_restore: creating CONSTRAINT "cms.sessions csss_jguid_uk"
pg_restore: creating CONSTRAINT "cms.themes_pages cthm_jguid_uk"
pg_restore: creating CONSTRAINT "cms.themes ctht_jguid_uk"
pg_restore: creating CONSTRAINT "cms.templates_pages ctmp_jguid_uk"
pg_restore: creating CONSTRAINT "cms.templates ctmt_jguid_uk"
pg_restore: creating CONSTRAINT "cms.web_sites cwbs_jguid_uk"
pg_restore: creating CONSTRAINT "cms.webitems_pictures cwbt_jguid_uk"
pg_restore: creating CONSTRAINT "cms.events events_pkey"
pg_restore: creating CONSTRAINT "cms.graphic_menu_groups graphic_menu_groups_pk"
pg_restore: creating CONSTRAINT "cms.graphic_menu graphic_menu_pk"
pg_restore: creating CONSTRAINT "cms.graphic_menu_rows graphic_menu_rows_pk"
pg_restore: creating CONSTRAINT "cms.arguments_roles main_arg_roles_pk"
pg_restore: creating CONSTRAINT "cms.main_arguments mainargs_pk"
pg_restore: creating CONSTRAINT "cms.menu_items menu_items_pk"
pg_restore: creating CONSTRAINT "cms.menu_items_t menu_items_t_pk"
pg_restore: creating CONSTRAINT "cms.menu menu_pk"
pg_restore: creating CONSTRAINT "cms.news news_pkey"
pg_restore: creating CONSTRAINT "cms.news_types news_types_pkey"
pg_restore: creating CONSTRAINT "cms.pages_types page_type_pk"
pg_restore: creating CONSTRAINT "cms.pages pages_pk"
pg_restore: creating CONSTRAINT "cms.pages_t pages_pk_0"
pg_restore: creating CONSTRAINT "cms.menu pk_menu"
pg_restore: creating CONSTRAINT "cms.pages pk_pages"
pg_restore: creating CONSTRAINT "cms.specifications pk_specifications"
pg_restore: creating CONSTRAINT "cms.rss_articles rss_articles_pk"
pg_restore: creating CONSTRAINT "cms.rss_feeds rss_feeds_pk"
pg_restore: creating CONSTRAINT "cms.sessions sessions_pk"
pg_restore: creating CONSTRAINT "cms.sub_arguments sub_arguments_pk"
pg_restore: creating CONSTRAINT "cms.templates_pages template_pages_pk"
pg_restore: creating CONSTRAINT "cms.templates templates_pk"
pg_restore: creating CONSTRAINT "cms.themes_pages themes_pages_pk"
pg_restore: creating CONSTRAINT "cms.themes themes_pk"
pg_restore: creating CONSTRAINT "cms.arguments_groups web_arguments_groups_pk"
pg_restore: creating CONSTRAINT "cms.articles web_articles_pk"
pg_restore: creating CONSTRAINT "cms.web_sites web_sites_pk"
pg_restore: creating CONSTRAINT "cms.web_sites web_sites_uk"
pg_restore: creating CONSTRAINT "cms.webitems_pictures webitems_pictures_pk"
pg_restore: creating CONSTRAINT "crm.attachments attachments_pk"
pg_restore: creating CONSTRAINT "crm.cform_taxonomies cform_taxonomies_pk"
pg_restore: creating CONSTRAINT "crm.contactforms contactform_pk"
pg_restore: creating CONSTRAINT "crm.form_definitions form_definition_pk"
pg_restore: creating CONSTRAINT "crm.quote_form_models form_models_pk"
pg_restore: creating CONSTRAINT "crm.quote_forms_rows pk_quote_forms_rows"
pg_restore: creating CONSTRAINT "crm.quote_forms quote_forms_pk"
pg_restore: creating CONSTRAINT "crm.quote_frmmodels_prdserv quote_frmmod_pdserv_pk"
pg_restore: creating CONSTRAINT "crm.quote_productservices quote_prodservices_pk"
pg_restore: creating CONSTRAINT "crm.subjects_details subjects_details_pk"
pg_restore: creating CONSTRAINT "crm.subjects subjects_pk"
pg_restore: creating CONSTRAINT "custom_tm_logistic.aerealtamaster annoprotocollo"
pg_restore: creating CONSTRAINT "custom_tm_logistic.cod_pagamento cod_pagamento_pkey"
pg_restore: creating CONSTRAINT "custom_tm_logistic.corpofatt corpofatt_uid_uk"
pg_restore: creating CONSTRAINT "custom_tm_logistic.datimerce datimerce_pk"
pg_restore: creating CONSTRAINT "custom_tm_logistic.docarchiviatientrate docarchiviatientrate_pk"
pg_restore: creating CONSTRAINT "custom_tm_logistic.entrate entrate_jguid_uk"
pg_restore: creating CONSTRAINT "custom_tm_logistic.entrate entrate_pkey"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipi_documento ix_descizionedocumento"
pg_restore: creating CONSTRAINT "custom_tm_logistic.documenti ix_descrizione"
pg_restore: creating CONSTRAINT "custom_tm_logistic.imballi ix_desimballi"
pg_restore: creating CONSTRAINT "custom_tm_logistic.uffici ix_desufficio"
pg_restore: creating CONSTRAINT "custom_tm_logistic.fd ix_fd"
pg_restore: creating CONSTRAINT "custom_tm_logistic.marche ix_marche"
pg_restore: creating CONSTRAINT "custom_tm_logistic.testafatt_campioni ix_testafatt_campioni"
pg_restore: creating CONSTRAINT "custom_tm_logistic.magazzini magazzini_descrizione_uk"
pg_restore: creating CONSTRAINT "custom_tm_logistic.magazzini magazzini_pk"
pg_restore: creating CONSTRAINT "custom_tm_logistic.aerealtahouse pk_aerealtahouse"
pg_restore: creating CONSTRAINT "custom_tm_logistic.aerealtamaster pk_aerealtamaster"
pg_restore: creating CONSTRAINT "custom_tm_logistic.aerearigheltahouse pk_aerearigheltahouse"
pg_restore: creating CONSTRAINT "custom_tm_logistic.aerearigheltamaster pk_aerearigheltamaster"
pg_restore: creating CONSTRAINT "custom_tm_logistic.aereavociother pk_aereavociother"
pg_restore: creating CONSTRAINT "custom_tm_logistic.aereavociotherhouse pk_aereavociotherhouse"
pg_restore: creating CONSTRAINT "custom_tm_logistic.agentiiata pk_agentiiata"
pg_restore: creating CONSTRAINT "custom_tm_logistic.attivitapratica pk_attivitapratica"
pg_restore: creating CONSTRAINT "custom_tm_logistic.azienda pk_azienda"
pg_restore: creating CONSTRAINT "custom_tm_logistic.banche pk_banche"
pg_restore: creating CONSTRAINT "custom_tm_logistic.testatapratiche pk_cartella"
pg_restore: creating CONSTRAINT "custom_tm_logistic.clifo pk_clifo"
pg_restore: creating CONSTRAINT "custom_tm_logistic.cntr_type pk_cntr_type"
pg_restore: creating CONSTRAINT "custom_tm_logistic.compagnie pk_compagnie"
pg_restore: creating CONSTRAINT "custom_tm_logistic.condizioni pk_condizioni"
pg_restore: creating CONSTRAINT "custom_tm_logistic.corpofatt_campioni pk_corpofatt_campioni"
pg_restore: creating CONSTRAINT "custom_tm_logistic.corpofatt pk_corpofattold"
pg_restore: creating CONSTRAINT "custom_tm_logistic.costi pk_costi"
pg_restore: creating CONSTRAINT "custom_tm_logistic.costi_log pk_costi_log"
pg_restore: creating CONSTRAINT "custom_tm_logistic.datispedizione pk_datispedizione"
pg_restore: creating CONSTRAINT "custom_tm_logistic.documenti pk_documenti"
pg_restore: creating CONSTRAINT "custom_tm_logistic.documentiarchiviati pk_documentiarchiviati"
pg_restore: creating CONSTRAINT "custom_tm_logistic.entrate_righe pk_entrate_r"
pg_restore: creating CONSTRAINT "custom_tm_logistic.fd pk_fd"
pg_restore: creating CONSTRAINT "custom_tm_logistic.fornitori pk_fornitori"
pg_restore: creating CONSTRAINT "custom_tm_logistic.imballi pk_imballi"
pg_restore: creating CONSTRAINT "custom_tm_logistic.livelli pk_livelli"
pg_restore: creating CONSTRAINT "custom_tm_logistic.localita pk_localita"
pg_restore: creating CONSTRAINT "custom_tm_logistic.marche pk_marche"
pg_restore: creating CONSTRAINT "custom_tm_logistic.merci pk_merci"
pg_restore: creating CONSTRAINT "custom_tm_logistic.naveagenzia pk_naveagenzia"
pg_restore: creating CONSTRAINT "custom_tm_logistic.navecompagnia pk_navecompagnia"
pg_restore: creating CONSTRAINT "custom_tm_logistic.navi pk_navi"
pg_restore: creating CONSTRAINT "custom_tm_logistic.porti pk_porti_1"
pg_restore: creating CONSTRAINT "custom_tm_logistic.pr_clifo pk_pr_clifo"
pg_restore: creating CONSTRAINT "custom_tm_logistic.pr_compagnie pk_pr_compagnie"
pg_restore: creating CONSTRAINT "custom_tm_logistic.pr_tipodoc pk_pr_tipodoc"
pg_restore: creating CONSTRAINT "custom_tm_logistic.precorpofatt pk_precorpofatt"
pg_restore: creating CONSTRAINT "custom_tm_logistic.pretestafatt pk_pretestafatt"
pg_restore: creating CONSTRAINT "custom_tm_logistic.progressivi pk_progressivi"
pg_restore: creating CONSTRAINT "custom_tm_logistic.prospettiquotazioni pk_prospettiquotazioni"
pg_restore: creating CONSTRAINT "custom_tm_logistic.ricavi pk_ricavi"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tabiva pk_tabiva"
pg_restore: creating CONSTRAINT "custom_tm_logistic.testafatt_campioni pk_testafatt_campioni"
pg_restore: creating CONSTRAINT "custom_tm_logistic.testafatt pk_testafattold"
pg_restore: creating CONSTRAINT "custom_tm_logistic.testaft pk_testaft"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tidofatt pk_tidofatt"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipi_documento pk_tipi_documenti"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipicalcolo pk_tipicalcolo"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipidichiarazioni pk_tipidichiarazioni"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipipolizza pk_tipipolizza"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipiriga pk_tipiriga"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipitariffe pk_tipitariffe"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipocntrs pk_tipocntrs"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipodoc pk_tipodoc"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tipodocarchiviati pk_tipodocarchiviati"
pg_restore: creating CONSTRAINT "custom_tm_logistic.uffici pk_uffici"
pg_restore: creating CONSTRAINT "custom_tm_logistic.unitamisura pk_unitamisura"
pg_restore: creating CONSTRAINT "custom_tm_logistic.utenti pk_utenti"
pg_restore: creating CONSTRAINT "custom_tm_logistic.valute pk_valute"
pg_restore: creating CONSTRAINT "custom_tm_logistic.vettori pk_vettori"
pg_restore: creating CONSTRAINT "custom_tm_logistic.tblview_clifo pk_view_clifo"
pg_restore: creating CONSTRAINT "custom_tm_logistic.agenzie sqlpropk_custom_tm_logisticagenzie"
pg_restore: creating CONSTRAINT "custom_tm_logistic.corrieri sqlpropk_custom_tm_logisticcorrieri"
pg_restore: creating CONSTRAINT "custom_tm_logistic.costipredefiniti sqlpropk_custom_tm_logisticcostipredefiniti"
pg_restore: creating CONSTRAINT "custom_tm_logistic.fvocifatt sqlpropk_custom_tm_logisticfvocifatt"
pg_restore: creating CONSTRAINT "custom_tm_logistic.pr_agentiiata sqlpropk_custom_tm_logisticpr_agentiiata"
pg_restore: creating CONSTRAINT "custom_tm_logistic.testatapratiche testatapratiche_jguid_uk"
pg_restore: creating CONSTRAINT "custom_tm_logistic.aerearigheltahouse uid_aerearigheltahouse"
pg_restore: creating CONSTRAINT "custom_tm_logistic.merci uk_merci"
pg_restore: creating CONSTRAINT "documents.attachments attachments_pk"
pg_restore: creating CONSTRAINT "documents.attachments attachments_uk"
pg_restore: creating CONSTRAINT "documents.heads doc_heads_uid_uk"
pg_restore: creating CONSTRAINT "documents.rows doc_rows_uid_uk"
pg_restore: creating CONSTRAINT "documents.rows document_rows_pk"
pg_restore: creating CONSTRAINT "documents.type_groups document_types_groups_pkey"
pg_restore: creating CONSTRAINT "documents.types document_types_pk"
pg_restore: creating CONSTRAINT "documents.heads documents_pkey"
pg_restore: creating CONSTRAINT "documents.payment_schedule payment_schedule_pk"
pg_restore: creating CONSTRAINT "documents.payment_schedule payment_schedule_uk"
pg_restore: creating CONSTRAINT "documents.test test_pkey"
pg_restore: creating CONSTRAINT "documents.vat_amounts vat_amounts_pk"
pg_restore: creating CONSTRAINT "documents.vat_amounts vat_amounts_uk"
pg_restore: creating CONSTRAINT "football.arguments_championships championships_arguments_pk"
pg_restore: creating CONSTRAINT "football.ft_championships fchm_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_clubs fclb_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_calendar fcld_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_club_seasons fcls_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_fields ffld_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_league_groups flgp_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_leagues flgs_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_match_days fmtd_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_match_events fmth_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_match_players fmtp_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_player_career fplc_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_ranking_table frkt_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_roles frls_jguid_uk"
pg_restore: creating CONSTRAINT "football.json_calendar fsnc_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_seasons fssn_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_calendar ft_calendar_home_uk"
pg_restore: creating CONSTRAINT "football.ft_calendar ft_calendar_visitor_uk"
pg_restore: creating CONSTRAINT "football.ft_calendar ft_calendars_pk"
pg_restore: creating CONSTRAINT "football.ft_championships ft_championships_pk"
pg_restore: creating CONSTRAINT "football.ft_club_seasons ft_club_seasons_pk"
pg_restore: creating CONSTRAINT "football.ft_clubs ft_clubs_pk"
pg_restore: creating CONSTRAINT "football.ft_event_types ft_events_pk"
pg_restore: creating CONSTRAINT "football.ft_field_types ft_field_types_pk"
pg_restore: creating CONSTRAINT "football.ft_fields ft_fields_pkey"
pg_restore: creating CONSTRAINT "football.ft_league_groups ft_league_group_codes_uk"
pg_restore: creating CONSTRAINT "football.ft_league_groups ft_league_groups_pk"
pg_restore: creating CONSTRAINT "football.ft_leagues ft_leagues_name_uk"
pg_restore: creating CONSTRAINT "football.ft_leagues ft_leagues_pk"
pg_restore: creating CONSTRAINT "football.ft_match_events ft_match_events_pk"
pg_restore: creating CONSTRAINT "football.ft_match_players ft_match_players_pk"
pg_restore: creating CONSTRAINT "football.ft_player_career ft_player_career_pk"
pg_restore: creating CONSTRAINT "football.ft_players ft_players_pk"
pg_restore: creating CONSTRAINT "football.ft_ranking_table ft_ranking_table_pk"
pg_restore: creating CONSTRAINT "football.ft_ranking_table ft_ranking_table_uk"
pg_restore: creating CONSTRAINT "football.ft_roles ft_roles_pk"
pg_restore: creating CONSTRAINT "football.ft_seasons ft_seasons_pk"
pg_restore: creating COMMENT "football.CONSTRAINT ft_seasons_pk ON ft_seasons"
pg_restore: creating CONSTRAINT "football.ft_teams_players ft_team_players_pk"
pg_restore: creating CONSTRAINT "football.ft_teams_championships ft_teams_champ_pk"
pg_restore: creating CONSTRAINT "football.ft_teams_history ft_teams_history_pk"
pg_restore: creating CONSTRAINT "football.ft_teams ft_teams_pk"
pg_restore: creating CONSTRAINT "football.ft_teams_trainers ft_teams_trainers_pk"
pg_restore: creating CONSTRAINT "football.ft_trainers_career ft_trainers_career_pk"
pg_restore: creating CONSTRAINT "football.ft_trainers ft_trainers_pk"
pg_restore: creating CONSTRAINT "football.ft_teams_championships ftmc_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_teams_history ftmh_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_teams_players ftmp_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_teams ftms_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_teams_trainers ftmt_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_field_types ftps_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_trainers_career ftrc_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_trainers ftrn_jguid_uk"
pg_restore: creating CONSTRAINT "football.ft_event_types fvnt_jguid_uk"
pg_restore: creating CONSTRAINT "football.json_calendar json_calendar_pk"
pg_restore: creating CONSTRAINT "football.ft_match_days matc_days_pk"
pg_restore: creating CONSTRAINT "football.ft_players pplr_jguid_uk"
pg_restore: creating CONSTRAINT "gis.osm_categories osm_categories_pk"
pg_restore: creating CONSTRAINT "gis.osm_categories osm_categories_uk"
pg_restore: creating CONSTRAINT "gis.osm_places osm_places_pkey"
pg_restore: creating CONSTRAINT "health.an_pharmacies_sectors an_pharmacies_sectors_pk"
pg_restore: creating CONSTRAINT "health.an_pharmacies_services an_pharmacies_services_pk"
pg_restore: creating CONSTRAINT "health.an_pharmacies_website an_pharmacies_websites_pk"
pg_restore: creating CONSTRAINT "health.anagraph_wards_items an_wards_items_pk"
pg_restore: creating CONSTRAINT "health.anagraph_wards anagraph_wards_pk"
pg_restore: creating CONSTRAINT "health.anagraph_wards_services anagraph_wards_services_pk"
pg_restore: creating CONSTRAINT "health.anagraph_wards_services anagraph_wards_services_uk"
pg_restore: creating CONSTRAINT "health.associations associations_pk"
pg_restore: creating CONSTRAINT "health.bookings_rows bookings_rows_pk"
pg_restore: creating CONSTRAINT "health.medical_councils councils_pk"
pg_restore: creating CONSTRAINT "health.disciplines disciplines_names_uk"
pg_restore: creating CONSTRAINT "health.disciplines disciplines_pk"
pg_restore: creating CONSTRAINT "health.disciplines_services disciplines_services_pk"
pg_restore: creating CONSTRAINT "health.bookings health_bookings_pk"
pg_restore: creating CONSTRAINT "health.search_keys_text health_keys_text_pk"
pg_restore: creating CONSTRAINT "health.search_keys_text health_keys_uk"
pg_restore: creating CONSTRAINT "health.notifications health_notifications_pk"
pg_restore: creating CONSTRAINT "health.notifications_types healthnotification_types_pk"
pg_restore: creating CONSTRAINT "health.health_profile idx_health_profile_pk"
pg_restore: creating CONSTRAINT "health.instruments instruments_pk"
pg_restore: creating CONSTRAINT "health.notifications_groups notification_groups_pk"
pg_restore: creating CONSTRAINT "health.organization_types organization_types_pk"
pg_restore: creating CONSTRAINT "health.organizations organizations_pk"
pg_restore: creating CONSTRAINT "health.pharmacy_sections pharmacy_sections_pk"
pg_restore: creating CONSTRAINT "health.pharmacy_services pharmacy_services_pk"
pg_restore: creating CONSTRAINT "health.pharmacy_services pharmacy_services_uk"
pg_restore: creating CONSTRAINT "health.pharmacy_timetable pharmacy_timetable_pk"
pg_restore: creating CONSTRAINT "health.branch_specialities pk_branch_specialities"
pg_restore: creating CONSTRAINT "health.branches pk_branches"
pg_restore: creating CONSTRAINT "health.sub_specialities pk_discipline_specialities"
pg_restore: creating CONSTRAINT "health.specialities pk_disciplines"
pg_restore: creating CONSTRAINT "health.organizations_branches pk_organizations_branches"
pg_restore: creating CONSTRAINT "health.profile_groups pk_profile_groups"
pg_restore: creating CONSTRAINT "health.search_index search_index_pk"
pg_restore: creating CONSTRAINT "health.search_index search_index_uk"
pg_restore: creating CONSTRAINT "health.search_keys search_keys_pk"
pg_restore: creating CONSTRAINT "health.search_keys search_keys_uk"
pg_restore: creating CONSTRAINT "health.search_services search_services_pk"
pg_restore: creating CONSTRAINT "health.search_services search_services_uk"
pg_restore: creating CONSTRAINT "health.searches searches_pk"
pg_restore: creating CONSTRAINT "health.searches_rows searches_rows_pk"
pg_restore: creating CONSTRAINT "health.specialities_groups specialities_groups_pk"
pg_restore: creating CONSTRAINT "health.profile_groups uk_profile_groups"
pg_restore: creating CONSTRAINT "items.brands brands_pk"
pg_restore: creating CONSTRAINT "items.brnd_dmn_sizeshapes brnd_dmn_sizeshapes_pk"
pg_restore: creating CONSTRAINT "items.definitions definitions_pk"
pg_restore: creating CONSTRAINT "items.dimensions dimensions_pk"
pg_restore: creating CONSTRAINT "items.discounts discounts_pk"
pg_restore: creating CONSTRAINT "items.package_types document_types_groups_pkey"
pg_restore: creating CONSTRAINT "items.families families_pk"
pg_restore: creating CONSTRAINT "items.pricelists_items idx_pricelists_items"
pg_restore: creating CONSTRAINT "items.groups it_groups_pk"
pg_restore: creating CONSTRAINT "items.pricelists it_pricelists_pk"
pg_restore: creating CONSTRAINT "items.definitions items_code_family_uk"
pg_restore: creating CONSTRAINT "items.items_dimensions items_dimensions_pk"
pg_restore: creating CONSTRAINT "items.groups itgr_jguid_uk"
pg_restore: creating CONSTRAINT "items.branddimensions pk_branddimensions"
pg_restore: creating CONSTRAINT "items.package_types pkgtypes_uk"
pg_restore: creating CONSTRAINT "items.pricelists_items pricelists_pk"
pg_restore: creating CONSTRAINT "items.seasons seasons_pk"
pg_restore: creating CONSTRAINT "items.grids tmp_grids_pk"
pg_restore: creating CONSTRAINT "items.type_groups type_groups_pk"
pg_restore: creating CONSTRAINT "items.type_groups type_groups_uk"
pg_restore: creating CONSTRAINT "items.types types_pk"
pg_restore: creating CONSTRAINT "items.types types_uk"
pg_restore: creating CONSTRAINT "items.web_items web_items_pk"
pg_restore: creating CONSTRAINT "jpublic.buildings buildings_pk"
pg_restore: creating CONSTRAINT "jpublic.country_currencies countries_currencies_pk"
pg_restore: creating CONSTRAINT "jpublic.countries countries_iso2_uk"
pg_restore: creating CONSTRAINT "jpublic.countries countries_iso_uk"
pg_restore: creating CONSTRAINT "jpublic.countries countries_pk"
pg_restore: creating CONSTRAINT "jpublic.countries_trans countries_trans_pk"
pg_restore: creating CONSTRAINT "jpublic.cultures cultures_uk"
pg_restore: creating CONSTRAINT "jpublic.currencies currencies_pk"
pg_restore: creating CONSTRAINT "jpublic.currencies_trans currencies_trans_pk"
pg_restore: creating CONSTRAINT "jpublic.currencies currencies_uk"
pg_restore: creating CONSTRAINT "jpublic.districts districts_pk"
pg_restore: creating CONSTRAINT "jpublic.gender gender_pk"
pg_restore: creating CONSTRAINT "jpublic.cultures iso_cultures_pkey"
pg_restore: creating CONSTRAINT "jpublic.languages iso_languages_pkey"
pg_restore: creating CONSTRAINT "jpublic.regions iso_regions_pk"
pg_restore: creating CONSTRAINT "jpublic.languages languages_uk"
pg_restore: creating CONSTRAINT "jpublic.measure_units measure_units_pk"
pg_restore: creating CONSTRAINT "jpublic.contiguous_regions pk_contiguous_regions"
pg_restore: creating CONSTRAINT "jpublic.dimension_models pk_dimensions"
pg_restore: creating CONSTRAINT "jpublic.lang_translations pk_lang_translations"
pg_restore: creating CONSTRAINT "jpublic.vat_id_codes pk_vat_id_codes_guid"
pg_restore: creating CONSTRAINT "jpublic.locations places_pk"
pg_restore: creating CONSTRAINT "jpublic.location_types road_types_pk"
pg_restore: creating CONSTRAINT "jpublic.social_networks socialnetwork_pk"
pg_restore: creating CONSTRAINT "jpublic.social_networks socialnetwork_uk"
pg_restore: creating CONSTRAINT "jpublic.town_areas town_areas_pk"
pg_restore: creating CONSTRAINT "jpublic.towns towns_pk"
pg_restore: creating CONSTRAINT "locale.it_it_health_prescription it_it_health_prescription_pk"
pg_restore: creating CONSTRAINT "locale.it_it_townscountries_codes it_it_townscountries_codes_uk"
pg_restore: creating CONSTRAINT "logistic.awb awb_house_pkey"
pg_restore: creating CONSTRAINT "logistic.awb awb_jguid_uk"
pg_restore: creating CONSTRAINT "logistic.awb_surcharges awb_surcharges_pk"
pg_restore: creating CONSTRAINT "logistic.awb awb_year_number_uk"
pg_restore: creating CONSTRAINT "logistic.container_types container_types_pk"
pg_restore: creating CONSTRAINT "logistic.container_types container_types_uk"
pg_restore: creating CONSTRAINT "logistic.locations location_code_uk"
pg_restore: creating CONSTRAINT "logistic.locations locations_pkey"
pg_restore: creating CONSTRAINT "logistic.shipments pickup orders_pd"
pg_restore: creating CONSTRAINT "logistic.shipments pickup orders_uid"
pg_restore: creating CONSTRAINT "logistic.awb_codes pk_awb_codes"
pg_restore: creating CONSTRAINT "logistic.awb_rows pk_awb_rows"
pg_restore: creating CONSTRAINT "logistic.conditions pk_conditions_id"
pg_restore: creating CONSTRAINT "logistic.type_of_goods type_of_goods_des_uk"
pg_restore: creating CONSTRAINT "logistic.type_of_goods type_of_goods_pk"
pg_restore: creating CONSTRAINT "logistic.type_of_goods type_of_goods_uk"
pg_restore: creating CONSTRAINT "logistic.awb_rows uid_awb_rows"
pg_restore: creating CONSTRAINT "logistic.awb_codes uk_awb_codes_jguid"
pg_restore: creating CONSTRAINT "logistic.awb_rows uk_awb_rows"
pg_restore: creating CONSTRAINT "maillist.sender_attachments attachments_pk"
pg_restore: creating CONSTRAINT "maillist.campaign_members campaign_members_pk"
pg_restore: creating CONSTRAINT "maillist.campaigns mail_campaigns_pk"
pg_restore: creating CONSTRAINT "maillist.clicks mail_clicks_pk"
pg_restore: creating CONSTRAINT "maillist.list_members mail_list_members_pk"
pg_restore: creating CONSTRAINT "maillist.subsets mail_list_subset_pk"
pg_restore: creating CONSTRAINT "maillist.opens mail_opens_pk"
pg_restore: creating CONSTRAINT "maillist.sender mail_send_pk"
pg_restore: creating CONSTRAINT "maillist.mailing_list mailing_list_pk"
pg_restore: creating CONSTRAINT "maillist.subset_members primarykey3"
pg_restore: creating CONSTRAINT "planner.activities_groups activities_groups_pk"
pg_restore: creating CONSTRAINT "planner.activities categories_pk"
pg_restore: creating CONSTRAINT "planner.timetable timetable_pkey"
pg_restore: creating CONSTRAINT "public.AO_187CCC_SIDEBAR_LINK AO_187CCC_SIDEBAR_LINK_pkey"
pg_restore: creating CONSTRAINT "public.AO_21D670_WHITELIST_RULES AO_21D670_WHITELIST_RULES_pkey"
pg_restore: creating CONSTRAINT "public.AO_26DB7F_ENTITIES_TO_ROOMS AO_26DB7F_ENTITIES_TO_ROOMS_pkey"
pg_restore: creating CONSTRAINT "public.AO_26DB7F_ENTITIES_TO_ROOM_CFG AO_26DB7F_ENTITIES_TO_ROOM_CFG_pkey"
pg_restore: creating CONSTRAINT "public.AO_38321B_CUSTOM_CONTENT_LINK AO_38321B_CUSTOM_CONTENT_LINK_pkey"
pg_restore: creating CONSTRAINT "public.AO_42E351_HEALTH_CHECK_ENTITY AO_42E351_HEALTH_CHECK_ENTITY_pkey"
pg_restore: creating CONSTRAINT "public.AO_54C900_CONTENT_BLUEPRINT_AO AO_54C900_CONTENT_BLUEPRINT_AO_pkey"
pg_restore: creating CONSTRAINT "public.AO_54C900_C_TEMPLATE_REF AO_54C900_C_TEMPLATE_REF_pkey"
pg_restore: creating CONSTRAINT "public.AO_54C900_SPACE_BLUEPRINT_AO AO_54C900_SPACE_BLUEPRINT_AO_pkey"
pg_restore: creating CONSTRAINT "public.AO_5F3884_FEATURE_DISCOVERY AO_5F3884_FEATURE_DISCOVERY_pkey"
pg_restore: creating CONSTRAINT "public.AO_5FB9D7_AOHIP_CHAT_LINK AO_5FB9D7_AOHIP_CHAT_LINK_pkey"
pg_restore: creating CONSTRAINT "public.AO_5FB9D7_AOHIP_CHAT_USER AO_5FB9D7_AOHIP_CHAT_USER_pkey"
pg_restore: creating CONSTRAINT "public.AO_6384AB_DISCOVERED AO_6384AB_DISCOVERED_pkey"
pg_restore: creating CONSTRAINT "public.AO_6384AB_FEATURE_METADATA_AO AO_6384AB_FEATURE_METADATA_AO_pkey"
pg_restore: creating CONSTRAINT "public.AO_7CDE43_EVENT AO_7CDE43_EVENT_pkey"
pg_restore: creating CONSTRAINT "public.AO_7CDE43_FILTER_PARAM AO_7CDE43_FILTER_PARAM_pkey"
pg_restore: creating CONSTRAINT "public.AO_7CDE43_NOTIFICATION_SCHEME AO_7CDE43_NOTIFICATION_SCHEME_pkey"
pg_restore: creating CONSTRAINT "public.AO_7CDE43_NOTIFICATION AO_7CDE43_NOTIFICATION_pkey"
pg_restore: creating CONSTRAINT "public.AO_7CDE43_RECIPIENT AO_7CDE43_RECIPIENT_pkey"
pg_restore: creating CONSTRAINT "public.AO_7CDE43_SERVER_CONFIG AO_7CDE43_SERVER_CONFIG_pkey"
pg_restore: creating CONSTRAINT "public.AO_7CDE43_SERVER_PARAM AO_7CDE43_SERVER_PARAM_pkey"
pg_restore: creating CONSTRAINT "public.AO_88263F_HEALTH_CHECK_STATUS AO_88263F_HEALTH_CHECK_STATUS_pkey"
pg_restore: creating CONSTRAINT "public.AO_88263F_PROPERTIES AO_88263F_PROPERTIES_pkey"
pg_restore: creating CONSTRAINT "public.AO_88263F_READ_NOTIFICATIONS AO_88263F_READ_NOTIFICATIONS_pkey"
pg_restore: creating CONSTRAINT "public.AO_88BB94_BATCH_NOTIFICATION AO_88BB94_BATCH_NOTIFICATION_pkey"
pg_restore: creating CONSTRAINT "public.AO_92296B_AORECENTLY_VIEWED AO_92296B_AORECENTLY_VIEWED_pkey"
pg_restore: creating CONSTRAINT "public.AO_9412A1_AONOTIFICATION AO_9412A1_AONOTIFICATION_pkey"
pg_restore: creating CONSTRAINT "public.AO_9412A1_AOREGISTRATION AO_9412A1_AOREGISTRATION_pkey"
pg_restore: creating CONSTRAINT "public.AO_9412A1_AOTASK AO_9412A1_AOTASK_pkey"
pg_restore: creating CONSTRAINT "public.AO_9412A1_AOUSER AO_9412A1_AOUSER_pkey"
pg_restore: creating CONSTRAINT "public.AO_9412A1_USER_APP_LINK AO_9412A1_USER_APP_LINK_pkey"
pg_restore: creating CONSTRAINT "public.AO_A0B856_WEB_HOOK_LISTENER_AO AO_A0B856_WEB_HOOK_LISTENER_AO_pkey"
pg_restore: creating CONSTRAINT "public.AO_BAF3AA_AOINLINE_TASK AO_BAF3AA_AOINLINE_TASK_pkey"
pg_restore: creating CONSTRAINT "public.AO_DC98AE_AOHELP_TIP AO_DC98AE_AOHELP_TIP_pkey"
pg_restore: creating CONSTRAINT "public.asili asili_pk"
pg_restore: creating CONSTRAINT "public.attachmentdata attachmentdata_attachmentid_key"
pg_restore: creating CONSTRAINT "public.attachmentdata attachmentdata_pkey"
pg_restore: creating CONSTRAINT "public.audit_affected_object audit_affected_object_pkey"
pg_restore: creating CONSTRAINT "public.audit_changed_value audit_changed_value_pkey"
pg_restore: creating CONSTRAINT "public.auditrecord auditrecord_pkey"
pg_restore: creating CONSTRAINT "public.bandana bandana_pkey"
pg_restore: creating CONSTRAINT "public.bandana bandana_unique_key"
pg_restore: creating CONSTRAINT "public.bodycontent bodycontent_pkey"
pg_restore: creating CONSTRAINT "public.content_relation c2c_relation_unique"
pg_restore: creating CONSTRAINT "public.mail.campaign_members campaign_members_pk"
pg_restore: creating CONSTRAINT "public.character_entity character_entity_ch_key"
pg_restore: creating CONSTRAINT "public.character_entity character_entity_pkey"
pg_restore: creating CONSTRAINT "public.clustersafety clustersafety_pkey"
pg_restore: creating CONSTRAINT "public.confancestors confancestors_pkey"
pg_restore: creating CONSTRAINT "public.confversion confversion_buildnumber_key"
pg_restore: creating CONSTRAINT "public.confversion confversion_pkey"
pg_restore: creating CONSTRAINT "public.content_label content_label_pkey"
pg_restore: creating CONSTRAINT "public.content_perm content_perm_pkey"
pg_restore: creating CONSTRAINT "public.content_perm_set content_perm_set_pkey"
pg_restore: creating CONSTRAINT "public.content content_pkey"
pg_restore: creating CONSTRAINT "public.content_relation content_relation_pkey"
pg_restore: creating CONSTRAINT "public.contentproperties contentproperties_pkey"
pg_restore: creating CONSTRAINT "public.content_perm cp_unique_group"
pg_restore: creating CONSTRAINT "public.content_perm cp_unique_user"
pg_restore: creating CONSTRAINT "public.content_perm_set cps_unique_type"
pg_restore: creating CONSTRAINT "public.crgrid_test crgrid_test_pkey"
pg_restore: creating CONSTRAINT "public.cwd_app_dir_group_mapping cwd_app_dir_group_mapping_pkey"
pg_restore: creating CONSTRAINT "public.cwd_app_dir_mapping cwd_app_dir_mapping_pkey"
pg_restore: creating CONSTRAINT "public.cwd_app_dir_operation cwd_app_dir_operation_pkey"
pg_restore: creating CONSTRAINT "public.cwd_application_address cwd_application_address_pkey"
pg_restore: creating CONSTRAINT "public.cwd_application_attribute cwd_application_attribute_pkey"
pg_restore: creating CONSTRAINT "public.cwd_application cwd_application_lower_application_name_key"
pg_restore: creating CONSTRAINT "public.cwd_application cwd_application_pkey"
pg_restore: creating CONSTRAINT "public.cwd_directory_attribute cwd_directory_attribute_pkey"
pg_restore: creating CONSTRAINT "public.cwd_directory cwd_directory_lower_directory_name_key"
pg_restore: creating CONSTRAINT "public.cwd_directory_operation cwd_directory_operation_pkey"
pg_restore: creating CONSTRAINT "public.cwd_directory cwd_directory_pkey"
pg_restore: creating CONSTRAINT "public.cwd_group_attribute cwd_group_attribute_pkey"
pg_restore: creating CONSTRAINT "public.cwd_group cwd_group_name_dir_id"
pg_restore: creating CONSTRAINT "public.cwd_group cwd_group_pkey"
pg_restore: creating CONSTRAINT "public.cwd_membership cwd_membership_pkey"
pg_restore: creating CONSTRAINT "public.cwd_membership cwd_unique_group_membership"
pg_restore: creating CONSTRAINT "public.cwd_group_attribute cwd_unique_grp_attr"
pg_restore: creating CONSTRAINT "public.cwd_membership cwd_unique_user_membership"
pg_restore: creating CONSTRAINT "public.cwd_user_attribute cwd_unique_usr_attr"
pg_restore: creating CONSTRAINT "public.cwd_user_attribute cwd_user_attribute_pkey"
pg_restore: creating CONSTRAINT "public.cwd_user_credential_record cwd_user_credential_record_pkey"
pg_restore: creating CONSTRAINT "public.cwd_user cwd_user_name_dir_id"
pg_restore: creating CONSTRAINT "public.cwd_user cwd_user_pkey"
pg_restore: creating CONSTRAINT "public.decorator decorator_pkey"
pg_restore: creating CONSTRAINT "public.dept dept_pkey"
pg_restore: creating CONSTRAINT "public.STRUTTURE_PRESTAZIONI discipline_prestazioni_uk"
pg_restore: creating CONSTRAINT "public.emp emp_pkey"
pg_restore: creating CONSTRAINT "public.external_entities external_entities_pkey"
pg_restore: creating CONSTRAINT "public.external_members external_members_pkey"
pg_restore: creating CONSTRAINT "public.extrnlnks extrnlnks_pkey"
pg_restore: creating CONSTRAINT "public.follow_connections follow_connections_pkey"
pg_restore: creating CONSTRAINT "public.groups groups_groupname_key"
pg_restore: creating CONSTRAINT "public.groups groups_pkey"
pg_restore: creating CONSTRAINT "public.imagedetails imagedetails_pkey"
pg_restore: creating CONSTRAINT "public.indexqueueentries indexqueueentries_pkey"
pg_restore: creating CONSTRAINT "public.journalentry journalentry_pkey"
pg_restore: creating CONSTRAINT "public.keystore keystore_pkey"
pg_restore: creating CONSTRAINT "public.label label_pkey"
pg_restore: creating CONSTRAINT "public.likes likes_pkey"
pg_restore: creating CONSTRAINT "public.links links_pkey"
pg_restore: creating CONSTRAINT "public.local_members local_members_pkey"
pg_restore: creating CONSTRAINT "public.locations locations_pkey"
pg_restore: creating CONSTRAINT "public.logininfo logininfo_pkey"
pg_restore: creating CONSTRAINT "public.logininfo logininfo_username_key"
pg_restore: creating CONSTRAINT "public.mail.campaigns mail_campaigns_pk"
pg_restore: creating CONSTRAINT "public.notifications notifications_pkey"
pg_restore: creating CONSTRAINT "public.os_group os_group_groupname_key"
pg_restore: creating CONSTRAINT "public.os_group os_group_pkey"
pg_restore: creating CONSTRAINT "public.os_propertyentry os_propertyentry_pkey"
pg_restore: creating CONSTRAINT "public.os_user_group os_user_group_pkey"
pg_restore: creating CONSTRAINT "public.os_user os_user_pkey"
pg_restore: creating CONSTRAINT "public.os_user os_user_username_key"
pg_restore: creating CONSTRAINT "public.pagetemplates pagetemplates_pkey"
pg_restore: creating CONSTRAINT "public.pgdac_blob pgdac_blob_pkey"
pg_restore: creating CONSTRAINT "public.pgdac_text pgdac_text_pkey"
pg_restore: creating CONSTRAINT "public.plugindata plugindata_filename_key"
pg_restore: creating CONSTRAINT "public.plugindata plugindata_pkey"
pg_restore: creating CONSTRAINT "public.plugindata plugindata_pluginkey_key"
pg_restore: creating CONSTRAINT "public.PRESTAZ_2002 prestaz_2002_pk"
pg_restore: creating CONSTRAINT "public.queries_params qryparms_pk"
pg_restore: creating CONSTRAINT "public.remembermetoken remembermetoken_pkey"
pg_restore: creating CONSTRAINT "public.scheduler_clustered_jobs scheduler_clustered_jobs_job_id_key"
pg_restore: creating CONSTRAINT "public.scheduler_clustered_jobs scheduler_clustered_jobs_pkey"
pg_restore: creating CONSTRAINT "public.scheduler_run_details scheduler_run_details_pkey"
pg_restore: creating CONSTRAINT "public.spacepermissions spacepermissions_pkey"
pg_restore: creating CONSTRAINT "public.spaces spaces_pkey"
pg_restore: creating CONSTRAINT "public.spaces spaces_spacekey_key"
pg_restore: creating CONSTRAINT "public.trackbacklinks trackbacklinks_pkey"
pg_restore: creating CONSTRAINT "public.trustedapp trustedapp_name_key"
pg_restore: creating CONSTRAINT "public.trustedapp trustedapp_pkey"
pg_restore: creating CONSTRAINT "public.trustedapp trustedapp_public_key_id_key"
pg_restore: creating CONSTRAINT "public.trustedapprestriction trustedapprestriction_pkey"
pg_restore: creating CONSTRAINT "public.usercontent_relation u2c_relation_unique"
pg_restore: creating CONSTRAINT "public.user_relation u2u_relation_unique"
pg_restore: creating CONSTRAINT "public.AO_9412A1_AOUSER u_ao_9412a1_aouser_username"
pg_restore: creating CONSTRAINT "public.user_mapping unq_lwr_username"
pg_restore: creating CONSTRAINT "public.user_mapping user_mapping_pkey"
pg_restore: creating CONSTRAINT "public.user_relation user_relation_pkey"
pg_restore: creating CONSTRAINT "public.usercontent_relation usercontent_relation_pkey"
pg_restore: creating CONSTRAINT "public.users users_name_key"
pg_restore: creating CONSTRAINT "public.users users_pkey"
pg_restore: creating CONSTRAINT "re.buildings pk_buildings"
pg_restore: creating CONSTRAINT "re.properties pk_properties"
pg_restore: creating CONSTRAINT "re.properties_galleries pk_properties_galleries"
pg_restore: creating CONSTRAINT "re.property_types pk_property_types"
pg_restore: creating CONSTRAINT "re.rooms pk_rooms"
pg_restore: creating CONSTRAINT "re.rooms_offers pk_rooms_offers"
pg_restore: creating CONSTRAINT "re.rooms_tenants pk_rooms_tenants"
pg_restore: creating CONSTRAINT "repository.entities entities_pk"
pg_restore: creating CONSTRAINT "repository.entities entities_uk"
pg_restore: creating CONSTRAINT "repository.fields field_entities_uk"
pg_restore: creating CONSTRAINT "repository.fields fields_pkey"
pg_restore: creating CONSTRAINT "repository.fieldtypes_groups fieldtypes_groups_pk"
pg_restore: creating CONSTRAINT "repository.fieldtypes_groups fieldtypes_groups_uk"
pg_restore: creating CONSTRAINT "repository.fieldtypes fieldtypes_id_uk"
pg_restore: creating CONSTRAINT "repository.fieldtypes fieldtypes_name_uk"
pg_restore: creating CONSTRAINT "repository.fieldtypes fieldtypes_pk"
pg_restore: creating CONSTRAINT "shipping.companies companies_pk"
pg_restore: creating CONSTRAINT "shipping.companies companies_uk"
pg_restore: creating CONSTRAINT "shipping.ferry_pricelist ferry_pricelist_pk"
pg_restore: creating CONSTRAINT "shipping.items_ferry_definitions items_ferry_definitions_pk"
pg_restore: creating CONSTRAINT "shipping.lines_routes lines_i_from_port_id"
pg_restore: creating CONSTRAINT "shipping.lines_routes lines_i_to_port_id"
pg_restore: creating CONSTRAINT "shipping.lines lines_pk"
pg_restore: creating CONSTRAINT "shipping.ferry_types pk_ferry_types"
pg_restore: creating CONSTRAINT "shipping.lines_ports pk_lines_ports"
pg_restore: creating CONSTRAINT "shipping.lines_periods pk_periods"
pg_restore: creating CONSTRAINT "shipping.seasons pk_seasons"
pg_restore: creating CONSTRAINT "shipping.timetable pk_timetable"
pg_restore: creating CONSTRAINT "shipping.vessel_departments pk_vessel_departments_id"
pg_restore: creating CONSTRAINT "shipping.ports ports_pk"
pg_restore: creating CONSTRAINT "shipping.companies scm_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.items_ferry_definitions shfd_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.ferry_pricelist shfp_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.ferry_types shft_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.lines_routes shlinroutes_pk"
pg_restore: creating CONSTRAINT "shipping.lines_routes shlinroutes_uk"
pg_restore: creating CONSTRAINT "shipping.lines shln_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.lines_periods shlp_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.lines_routes shlr_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.ports shpr_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.seasons shsn_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.timetable shtm_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.timetable_places shtp_jguid_uk"
pg_restore: creating CONSTRAINT "shipping.timetable_places timetable_places_pk"
pg_restore: creating CONSTRAINT "shipping.vessels vessels_codes_uk"
pg_restore: creating CONSTRAINT "shipping.vessels vessels_pk"
pg_restore: creating CONSTRAINT "social.messages messages_pk"
pg_restore: creating CONSTRAINT "social.msg_attachments msg_attachments_pk"
pg_restore: creating CONSTRAINT "swap.events_users events_participants_pk"
pg_restore: creating CONSTRAINT "swap.events events_pk"
pg_restore: creating CONSTRAINT "swap.followers followers_pk"
pg_restore: creating CONSTRAINT "swap.items_discovered items_discovered_pk"
pg_restore: creating CONSTRAINT "swap.items_dislikes items_dislikes_pk"
pg_restore: creating CONSTRAINT "swap.items_images items_images_pk"
pg_restore: creating CONSTRAINT "swap.items_likes items_likes_pk"
pg_restore: creating CONSTRAINT "swap.items items_pk"
pg_restore: creating CONSTRAINT "swap.notifications_types notification_types_pk"
pg_restore: creating CONSTRAINT "swap.notifications notifications_pk"
pg_restore: creating CONSTRAINT "swap.notifications_profiles notifications_profiles_pk"
pg_restore: creating CONSTRAINT "swap.profiles profiles_pk"
pg_restore: creating CONSTRAINT "swap.swaps_status swap_status_pk"
pg_restore: creating CONSTRAINT "swap.swaps swaps_items_uk"
pg_restore: creating CONSTRAINT "swap.swaps_messages swaps_messages_pk"
pg_restore: creating CONSTRAINT "swap.swaps swaps_pk"
pg_restore: creating CONSTRAINT "system.packages ap_app_packages_pkey"
pg_restore: creating CONSTRAINT "system.applications ap_applications_pkey"
pg_restore: creating CONSTRAINT "system.packages_applications ap_packages_applications_pkey"
pg_restore: creating CONSTRAINT "system.applications apapp_application_name_uk"
pg_restore: creating CONSTRAINT "system.packages apapp_package_name_uk"
pg_restore: creating CONSTRAINT "system.app_forms_objects_translations app_form_propertiestrans_pk"
pg_restore: creating CONSTRAINT "system.app_forms_objects_properties app_formproperties_pk"
pg_restore: creating CONSTRAINT "system.app_forms app_forms_pk"
pg_restore: creating CONSTRAINT "system.app_forms_translations app_forms_translations_pk"
pg_restore: creating CONSTRAINT "system.app_forms app_forms_uk"
pg_restore: creating CONSTRAINT "system.app_functions app_functions_index01"
pg_restore: creating CONSTRAINT "system.app_functions app_functions_pkey"
pg_restore: creating CONSTRAINT "system.app_licenses app_licenses_pk"
pg_restore: creating CONSTRAINT "system.app_member_forms app_member_forms_pkey"
pg_restore: creating CONSTRAINT "system.app_messages app_messages_codes_ndx"
pg_restore: creating CONSTRAINT "system.app_messages app_messages_pkey"
pg_restore: creating CONSTRAINT "system.app_forms_objects app_objects_pk"
pg_restore: creating CONSTRAINT "system.db_app_schemas apsch_ap_key_uk"
pg_restore: creating CONSTRAINT "system.db_app_schemas apsch_ap_secret_uk"
pg_restore: creating CONSTRAINT "system.db_app_schemas db_app_schemas_pkey"
pg_restore: creating CONSTRAINT "system.db_groups db_groups_pk"
pg_restore: creating CONSTRAINT "system.db_packages_schemas db_packages_schemas_pkey"
pg_restore: creating CONSTRAINT "system.db_schema_params db_schema_params_pk"
pg_restore: creating CONSTRAINT "system.db_schemas db_schemas_pkey"
pg_restore: creating CONSTRAINT "system.db_user_groups db_user_groups_pk"
pg_restore: creating CONSTRAINT "system.db_user_schema_params db_user_schema_params_pk"
pg_restore: creating CONSTRAINT "system.db_user_sessions db_user_sessions_pk"
pg_restore: creating COMMENT "system.CONSTRAINT db_user_sessions_pk ON db_user_sessions"
pg_restore: creating CONSTRAINT "system.db_users_payments db_users_payments_pk"
pg_restore: creating CONSTRAINT "system.db_users db_users_pkey"
pg_restore: creating CONSTRAINT "system.db_users_profiles db_users_profiles_pk"
pg_restore: creating CONSTRAINT "system.db_users_schemas_apps db_users_schemas_apps_pkey"
pg_restore: creating CONSTRAINT "system.db_users_schemas db_users_schemas_pkey"
pg_restore: creating CONSTRAINT "system.db_users dbusr_email_uk"
pg_restore: creating CONSTRAINT "system.db_users dbusr_username_uk"
pg_restore: creating CONSTRAINT "system.db_users_roles idx_db_users_roles"
pg_restore: creating CONSTRAINT "system.db_applications_roles pk_applications_roles"
pg_restore: creating CONSTRAINT "system.db_app_grp_param pk_db_app_grp_param"
pg_restore: creating CONSTRAINT "system.db_app_schemas pk_db_app_schemas"
pg_restore: creating CONSTRAINT "system.db_packages_schemas pk_db_packages_schemas"
pg_restore: creating CONSTRAINT "system.db_packages_schemas pk_db_packages_schemas_0"
pg_restore: creating CONSTRAINT "system.db_roles pk_db_roles"
pg_restore: creating CONSTRAINT "system.db_schemas_roles pk_db_schemas_roles"
pg_restore: creating CONSTRAINT "system.db_schemas_roles pk_db_schemas_roles_0"
pg_restore: creating CONSTRAINT "system.db_schemas_roles pk_db_schemas_roles_1"
pg_restore: creating CONSTRAINT "system.db_schemas_roles pk_db_schemas_roles_2"
pg_restore: creating CONSTRAINT "system.db_schemas_roles pk_db_schemas_roles_3"
pg_restore: creating CONSTRAINT "system.db_users_roles pk_db_users_roles"
pg_restore: creating CONSTRAINT "system.db_users_schemas_apps pk_db_users_schemas_apps"
pg_restore: creating CONSTRAINT "system.db_users_schemas_roles pk_db_users_schemas_roles"
pg_restore: creating CONSTRAINT "system.form_models pk_form_definitions"
pg_restore: creating CONSTRAINT "system.form_objects_trans pk_form_objects_trans"
pg_restore: creating CONSTRAINT "system.packages pk_packages"
pg_restore: creating CONSTRAINT "system.sys_roles pk_roles"
pg_restore: creating CONSTRAINT "system.form_models sfrm_jguid_uk"
pg_restore: creating CONSTRAINT "system.form_objects_trans sfrt_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_groups sgrp_jguid_uk"
pg_restore: creating CONSTRAINT "system.app_functions spaf_jguid_uk"
pg_restore: creating CONSTRAINT "system.app_licenses spal_jguid_uk"
pg_restore: creating CONSTRAINT "system.packages_applications spca_jguid_uk"
pg_restore: creating CONSTRAINT "system.packages spck_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_packages_schemas spcs_jguid_uk"
pg_restore: creating CONSTRAINT "system.app_forms spfo_jguid_uk"
pg_restore: creating CONSTRAINT "system.app_member_forms spmf_jguid_uk"
pg_restore: creating CONSTRAINT "system.app_forms_objects_properties spop_jguid_uk"
pg_restore: creating CONSTRAINT "system.app_forms_objects_translations spot_jguid_uk"
pg_restore: creating CONSTRAINT "system.applications sppl_jguid_uk"
pg_restore: creating CONSTRAINT "system.app_messages sppm_jguid_uk"
pg_restore: creating CONSTRAINT "system.app_forms_objects sppo_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_applications_roles sppr_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_app_schemas spps_jguid_uk"
pg_restore: creating CONSTRAINT "system.app_forms_translations sppt_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_roles srls_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_users_roles srr_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_schemas ssch_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_schema_params sscp_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_schemas_roles sscr_jguid_uk"
pg_restore: creating CONSTRAINT "system.sys_params sssp_jguid_uk"
pg_restore: creating CONSTRAINT "system.sys_roles sssr_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_user_schema_params ssup_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_users_profiles supr_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_users_schemas_apps sura_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_users_schemas_roles suro_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_users_payments surp_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_user_sessions surs_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_users suse_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_user_groups susg_jguid_uk"
pg_restore: creating CONSTRAINT "system.db_users_schemas suss_jguid_uk"
pg_restore: creating CONSTRAINT "system.sys_params sysparams_pk"
pg_restore: creating CONSTRAINT "temp.tmp_grids tmp_grids_pk"
pg_restore: creating CONSTRAINT "uni.departments departments_pk"
pg_restore: creating CONSTRAINT "uni.faculties faculties_pk"
pg_restore: creating CONSTRAINT "uni.modules modules_pk"
pg_restore: creating CONSTRAINT "uni.courses pk_courses"
pg_restore: creating CONSTRAINT "uni.departments udpr_jguid_uk"
pg_restore: creating CONSTRAINT "uni.faculties ufcl_jguid_uk"
pg_restore: creating CONSTRAINT "uni.modules umdl_jguid_uk"
pg_restore: creating CONSTRAINT "uni.universities universities_pk"
pg_restore: creating CONSTRAINT "uni.universities unvr_jguid_uk"
pg_restore: creating CONSTRAINT "workflow.attachments attachments_pk"
pg_restore: creating CONSTRAINT "workflow.attachments attachments_uk"
pg_restore: creating CONSTRAINT "workflow.levels pk_levels_id"
pg_restore: creating CONSTRAINT "workflow.types pk_types_id"
pg_restore: creating CONSTRAINT "workflow.types uk_types_guid"
pg_restore: creating CONSTRAINT "workflow.levels unq_levels_description"
pg_restore: creating CONSTRAINT "workflow.workflows unq_workflows_jguid"
pg_restore: creating CONSTRAINT "workflow.workflows workflow_code_uk"
pg_restore: creating CONSTRAINT "workflow.workflows workflows_pk"
pg_restore: creating INDEX "accounting.code_schema_udx"
pg_restore: creating INDEX "ads.ads_domains_schemas_fk_ndx"
pg_restore: creating INDEX "ads.banner_images_ndx"
pg_restore: creating INDEX "anagraph.anag_categories_categories_ndx"
pg_restore: creating INDEX "anagraph.anagraph_code_ndx"
pg_restore: creating INDEX "anagraph.anagraph_main_category_ndx"
pg_restore: creating INDEX "anagraph.anagraph_search_index_uk_ndx"
pg_restore: creating INDEX "anagraph.anagraphs_dbschema_ndx"
pg_restore: creating INDEX "anagraph.categories_master_ndx"
pg_restore: creating INDEX "anagraph.fk_identities_anagraphs_ndx"
pg_restore: creating INDEX "anagraph.fki_an_anagraphs_groups_fk"
pg_restore: creating INDEX "anagraph.idx_an_branches"
pg_restore: creating INDEX "anagraph.idx_an_identities"
pg_restore: creating INDEX "books.fki_book_defs_language_fk"
pg_restore: creating INDEX "books.idx_book_defs"
pg_restore: creating INDEX "books.idx_books_offers"
pg_restore: creating INDEX "books.idx_books_offers_0"
pg_restore: creating INDEX "books.idx_books_offers_1"
pg_restore: creating INDEX "books.idx_books_offers_2"
pg_restore: creating INDEX "books.idx_books_offers_3"
pg_restore: creating INDEX "books.idx_books_offers_views"
pg_restore: creating INDEX "books.idx_books_offers_views_0"
pg_restore: creating INDEX "cloud.blob_files_schemas_ndx"
pg_restore: creating INDEX "cloud.blob_files_users_ndx"
pg_restore: creating INDEX "cloud.fki_db_extfiles_dbusers_fk"
pg_restore: creating INDEX "cloud.idx_cloud_directories"
pg_restore: creating INDEX "cloud.idx_computers"
pg_restore: creating INDEX "cloud.idx_external_files"
pg_restore: creating INDEX "cloud.idx_external_files_0"
pg_restore: creating INDEX "cloud.idx_filedirlist_0"
pg_restore: creating INDEX "cloud.idx_filedirlist_1"
pg_restore: creating INDEX "cloud.idx_images"
pg_restore: creating INDEX "cloud.idx_images_0"
pg_restore: creating INDEX "cloud.isresource_ndx"
pg_restore: creating INDEX "cms.fki_articles_languages_fk"
pg_restore: creating INDEX "cms.fki_articles_main_arguments_fk"
pg_restore: creating INDEX "cms.fki_templates_websites_fk"
pg_restore: creating INDEX "cms.idx_app_iso_languages"
pg_restore: creating INDEX "cms.idx_app_languages"
pg_restore: creating INDEX "cms.idx_apps"
pg_restore: creating INDEX "cms.idx_arguments_groups"
pg_restore: creating INDEX "cms.idx_arguments_roles"
pg_restore: creating INDEX "cms.idx_arguments_roles_0"
pg_restore: creating INDEX "cms.idx_arguments_roles_1"
pg_restore: creating INDEX "cms.idx_articles"
pg_restore: creating INDEX "cms.idx_articles_0"
pg_restore: creating INDEX "cms.idx_menu"
pg_restore: creating INDEX "cms.idx_menu_items"
pg_restore: creating INDEX "cms.idx_menu_items_t"
pg_restore: creating INDEX "cms.idx_menu_items_t_0"
pg_restore: creating INDEX "cms.idx_pages"
pg_restore: creating INDEX "cms.idx_pages_0"
pg_restore: creating INDEX "cms.idx_pages_t"
pg_restore: creating INDEX "cms.idx_specifications"
pg_restore: creating INDEX "cms.idx_sub_arguments"
pg_restore: creating INDEX "cms.idx_webitems_pictures"
pg_restore: creating INDEX "cms.news_type_id_ndx"
pg_restore: creating INDEX "cms.rss_articles_feed_ndx"
pg_restore: creating INDEX "cms.rss_articles_feeds_fk_ndx"
pg_restore: creating INDEX "cms.rss_feed_country_fk_ndx"
pg_restore: creating INDEX "cms.rss_feeds_language_fk_ndx"
pg_restore: creating INDEX "cms.rssfeeds_dbschema_id_ndx"
pg_restore: creating INDEX "crm.idx_attachments"
pg_restore: creating INDEX "crm.idx_cform_taxonomies"
pg_restore: creating INDEX "crm.idx_quote_forms"
pg_restore: creating INDEX "crm.idx_quote_forms_rows"
pg_restore: creating INDEX "crm.idx_quote_forms_rows_0"
pg_restore: creating INDEX "crm.idx_quote_frmmodels_prdserv"
pg_restore: creating INDEX "crm.idx_quote_frmmodels_prdserv_0"
pg_restore: creating INDEX "crm.idx_subjects"
pg_restore: creating INDEX "crm.idx_subjects_details"
pg_restore: creating INDEX "custom_tm_logistic.corpofatt_testafatt_fk_ndx"
pg_restore: creating INDEX "custom_tm_logistic.corpofatt_tipocalcolo_ndx"
pg_restore: creating INDEX "custom_tm_logistic.corrieri_uid_udx"
pg_restore: creating INDEX "custom_tm_logistic.costipredefiniti_uid_uk"
pg_restore: creating INDEX "custom_tm_logistic.datimerce_uid_uk"
pg_restore: creating INDEX "custom_tm_logistic.fvocifatt_uid_uk"
pg_restore: creating INDEX "custom_tm_logistic.ix_cntr_type"
pg_restore: creating INDEX "custom_tm_logistic.ix_compagnie"
pg_restore: creating INDEX "custom_tm_logistic.ix_navi"
pg_restore: creating INDEX "custom_tm_logistic.ix_porti"
pg_restore: creating INDEX "custom_tm_logistic.ix_ragionesoc"
pg_restore: creating INDEX "custom_tm_logistic.mawb"
pg_restore: creating INDEX "custom_tm_logistic.picku_orders_jguid_uk"
pg_restore: creating INDEX "documents.doc_rows_schema_ndx"
pg_restore: creating INDEX "documents.fki_doc_types_schemas_fk"
pg_restore: creating INDEX "documents.fki_fk_vat_amounts_heads"
pg_restore: creating INDEX "documents.fki_payment_schedule_documents_fk"
pg_restore: creating INDEX "documents.idx_payment_schedule_payment_id"
pg_restore: creating INDEX "football.fki_ft_campionships_leagues_fk"
pg_restore: creating INDEX "football.fki_ft_player_career_cloud_image_fk"
pg_restore: creating INDEX "football.fki_ft_teams_clubs_fk"
pg_restore: creating INDEX "football.ft_calendar_home_team_id_ndx"
pg_restore: creating INDEX "football.ft_calendar_match_id_ndx"
pg_restore: creating INDEX "football.ft_calendar_season_league_cluster"
pg_restore: creating INDEX "football.ft_match_events_matches_fk_ndx"
pg_restore: creating INDEX "football.ft_match_events_player_ndx"
pg_restore: creating INDEX "football.ft_match_players_match_id_fk_ndx"
pg_restore: creating INDEX "football.ft_match_players_player_team_ndx"
pg_restore: creating INDEX "football.ft_match_players_team_id_ndx"
pg_restore: creating INDEX "football.ft_playercareer_playerid_ndx"
pg_restore: creating INDEX "football.ft_playercareer_season_ndx"
pg_restore: creating INDEX "football.ft_teamchamp_ft_teams_fk"
pg_restore: creating INDEX "football.ft_teams_championships_season_fk"
pg_restore: creating INDEX "football.idx_ft_calendar"
pg_restore: creating INDEX "football.idx_ft_match_days"
pg_restore: creating INDEX "football.idx_ft_players"
pg_restore: creating INDEX "football.league_name_ndx"
pg_restore: creating INDEX "football.mv_players_champioships_uk"
pg_restore: creating INDEX "health.anagraph_wards_search_ndx"
pg_restore: creating INDEX "health.anagraph_wards_services_items_ndx"
pg_restore: creating INDEX "health.anagraph_wards_services_tsv_idx"
pg_restore: creating INDEX "health.bookings_booking64_uk"
pg_restore: creating INDEX "health.bookings_db_users_id_fk_ndx"
pg_restore: creating INDEX "health.discipline_names_uk_ndx"
pg_restore: creating INDEX "health.fki_anagraph_wards_disciplines_fk"
pg_restore: creating INDEX "health.fki_associations_towns_fk"
pg_restore: creating INDEX "health.fki_health_profile_specialities"
pg_restore: creating INDEX "health.fki_search_services_items_fk"
pg_restore: creating INDEX "health.healthnotification_message_ndx"
pg_restore: creating INDEX "health.idx_associations"
pg_restore: creating INDEX "health.idx_associations_0"
pg_restore: creating INDEX "health.idx_discipline_specialities"
pg_restore: creating INDEX "health.idx_fk_branch_specialities_branches"
pg_restore: creating INDEX "health.idx_health_profile"
pg_restore: creating INDEX "health.idx_health_profile_0"
pg_restore: creating INDEX "health.idx_health_profile_1"
pg_restore: creating INDEX "health.idx_health_profile_2"
pg_restore: creating INDEX "health.idx_health_profile_3"
pg_restore: creating INDEX "health.idx_health_profile_4"
pg_restore: creating INDEX "health.idx_medical_councils"
pg_restore: creating INDEX "health.idx_medical_councils_0"
pg_restore: creating INDEX "health.idx_organizations"
pg_restore: creating INDEX "health.idx_organizations_0"
pg_restore: creating INDEX "health.idx_organizations_1"
pg_restore: creating INDEX "health.idx_organizations_2"
pg_restore: creating INDEX "health.idx_organizations_branches"
pg_restore: creating INDEX "health.idx_organizations_branches_0"
pg_restore: creating INDEX "health.idx_pk_branch_specialities"
pg_restore: creating INDEX "health.keymaster_id_ndx"
pg_restore: creating INDEX "health.keymaster_leveltext_ndx"
pg_restore: creating INDEX "health.lowerprestazione_ndx"
pg_restore: creating INDEX "health.master_id_ndx"
pg_restore: creating INDEX "health.notification_badge_ndx"
pg_restore: creating INDEX "health.pharmacy_services_ndx"
pg_restore: creating INDEX "health.search_services_indexed_ndx"
pg_restore: creating INDEX "health.search_services_key_id_ndx"
pg_restore: creating INDEX "health.search_services_tsv_idx"
pg_restore: creating INDEX "health.serch_index_udx"
pg_restore: creating INDEX "health.stringsearch_dx"
pg_restore: creating INDEX "items.db_masterfamlies_fk_ndx"
pg_restore: creating INDEX "items.db_schema_ndx"
pg_restore: creating INDEX "items.idx_brnd_dmn_sizeshapes"
pg_restore: creating INDEX "items.idx_dimensions"
pg_restore: creating INDEX "items.idx_pricelists_items_0"
pg_restore: creating INDEX "items.idx_pricelists_items_1"
pg_restore: creating INDEX "items.idx_web_items"
pg_restore: creating INDEX "jpublic.fki_cultures_currencies"
pg_restore: creating INDEX "jpublic.fki_towns_districts_fk"
pg_restore: creating INDEX "jpublic.idx_countries_trans"
pg_restore: creating INDEX "jpublic.idx_countries_trans_0"
pg_restore: creating INDEX "jpublic.idx_country_currencies"
pg_restore: creating INDEX "jpublic.idx_country_currencies_0"
pg_restore: creating INDEX "jpublic.idx_cultures"
pg_restore: creating INDEX "jpublic.idx_cultures_0"
pg_restore: creating INDEX "jpublic.idx_currencies_trans"
pg_restore: creating INDEX "jpublic.idx_currencies_trans_0"
pg_restore: creating INDEX "jpublic.idx_district_trans"
pg_restore: creating INDEX "jpublic.idx_district_trans_0"
pg_restore: creating INDEX "jpublic.idx_districts"
pg_restore: creating INDEX "jpublic.idx_lang_translations"
pg_restore: creating INDEX "jpublic.idx_lang_translations_0"
pg_restore: creating INDEX "jpublic.idx_regions_trans"
pg_restore: creating INDEX "jpublic.idx_regions_trans_0"
pg_restore: creating INDEX "jpublic.regions_countries_ndx"
pg_restore: creating INDEX "jpublic.regions_pk_ndx"
pg_restore: creating INDEX "jpublic.town_area_name_ndx"
pg_restore: creating INDEX "locale.fki_it_health_prescription_booking_id"
pg_restore: creating INDEX "logistic.ix_container_types"
pg_restore: creating INDEX "logistic.pickup_orders_jguid_uk"
pg_restore: creating INDEX "logistic.pickup_orders_workflows_uid_fk_ndx"
pg_restore: creating INDEX "maillist.mail_attach_mail_fk_i"
pg_restore: creating INDEX "maillist.mail_send_owner"
pg_restore: creating INDEX "public.a_author_key_idx"
pg_restore: creating INDEX "public.a_category_idx"
pg_restore: creating INDEX "public.a_date_idx"
pg_restore: creating INDEX "public.a_objects_parent_index"
pg_restore: creating INDEX "public.a_values_parent_index"
pg_restore: creating INDEX "public.attch_idver_idx"
pg_restore: creating INDEX "public.band_cont_key_idx"
pg_restore: creating INDEX "public.band_context_idx"
pg_restore: creating INDEX "public.body_content_idx"
pg_restore: creating INDEX "public.c_ancestorid_idx"
pg_restore: creating INDEX "public.c_contentproperties_idx"
pg_restore: creating INDEX "public.c_contenttype_idx"
pg_restore: creating INDEX "public.c_creator_idx"
pg_restore: creating INDEX "public.c_draftpageid_idx"
pg_restore: creating INDEX "public.c_drafttype_idx"
pg_restore: creating INDEX "public.c_extentityid_idx"
pg_restore: creating INDEX "public.c_groupdid_idx"
pg_restore: creating INDEX "public.c_lastmodifier_idx"
pg_restore: creating INDEX "public.c_ltitle_idx"
pg_restore: creating INDEX "public.c_messageid_idx"
pg_restore: creating INDEX "public.c_pageid_idx"
pg_restore: creating INDEX "public.c_parentccid_idx"
pg_restore: creating INDEX "public.c_parentcommid_idx"
pg_restore: creating INDEX "public.c_parentid_idx"
pg_restore: creating INDEX "public.c_prevver_idx"
pg_restore: creating INDEX "public.c_si_ct_pv_cs_cd_idx"
pg_restore: creating INDEX "public.c_spaceid_idx"
pg_restore: creating INDEX "public.c_status_idx"
pg_restore: creating INDEX "public.c_title_idx"
pg_restore: creating INDEX "public.c_trustedappid_idx"
pg_restore: creating INDEX "public.c_userid_idx"
pg_restore: creating INDEX "public.c_username_idx"
pg_restore: creating INDEX "public.cl_contentid_idx"
pg_restore: creating INDEX "public.cl_labelable_idx"
pg_restore: creating INDEX "public.cl_labelid_idx"
pg_restore: creating INDEX "public.cl_lastmoddate_idx"
pg_restore: creating INDEX "public.cl_owner_idx"
pg_restore: creating INDEX "public.cl_pagetemplateid_idx"
pg_restore: creating INDEX "public.cn_followee_idx"
pg_restore: creating INDEX "public.cn_follower_idx"
pg_restore: creating INDEX "public.content_prop_date_idx"
pg_restore: creating INDEX "public.content_prop_long_idx"
pg_restore: creating INDEX "public.content_prop_name_idx"
pg_restore: creating INDEX "public.content_prop_str_idx"
pg_restore: creating INDEX "public.cp_creator_idx"
pg_restore: creating INDEX "public.cp_gn_idx"
pg_restore: creating INDEX "public.cp_lastmodifier_idx"
pg_restore: creating INDEX "public.cp_os_idx"
pg_restore: creating INDEX "public.cp_un_idx"
pg_restore: creating INDEX "public.cps_content_idx"
pg_restore: creating INDEX "public.cps_permtype_idx"
pg_restore: creating INDEX "public.dec_key_idx"
pg_restore: creating INDEX "public.dec_name_idx"
pg_restore: creating INDEX "public.el_contentid_idx"
pg_restore: creating INDEX "public.el_creator_idx"
pg_restore: creating INDEX "public.el_lastmodifier_idx"
pg_restore: creating INDEX "public.ext_ent_name"
pg_restore: creating INDEX "public.idx_app_active"
pg_restore: creating INDEX "public.idx_app_dir_app"
pg_restore: creating INDEX "public.idx_app_dir_dir"
pg_restore: creating INDEX "public.idx_app_dir_group_app"
pg_restore: creating INDEX "public.idx_app_dir_group_group_dir"
pg_restore: creating INDEX "public.idx_app_dir_group_mapping"
pg_restore: creating INDEX "public.idx_app_type"
pg_restore: creating INDEX "public.idx_dir_active"
pg_restore: creating INDEX "public.idx_dir_l_impl_class"
pg_restore: creating INDEX "public.idx_dir_type"
pg_restore: creating INDEX "public.idx_group_active"
pg_restore: creating INDEX "public.idx_group_attr_dir_name_lval"
pg_restore: creating INDEX "public.idx_group_attr_group_id"
pg_restore: creating INDEX "public.idx_group_dir_id"
pg_restore: creating INDEX "public.idx_mem_dir_child"
pg_restore: creating INDEX "public.idx_mem_dir_child_user"
pg_restore: creating INDEX "public.idx_mem_dir_parent"
pg_restore: creating INDEX "public.idx_mem_dir_parent_child"
pg_restore: creating INDEX "public.idx_user_active"
pg_restore: creating INDEX "public.idx_user_attr_dir_name_lval"
pg_restore: creating INDEX "public.idx_user_attr_user_id"
pg_restore: creating INDEX "public.idx_user_cred_record_user_id"
pg_restore: creating INDEX "public.idx_user_external_id"
pg_restore: creating INDEX "public.idx_user_lower_display_name"
pg_restore: creating INDEX "public.idx_user_lower_email_address"
pg_restore: creating INDEX "public.idx_user_lower_first_name"
pg_restore: creating INDEX "public.idx_user_lower_last_name"
pg_restore: creating INDEX "public.idx_user_name_dir_id"
pg_restore: creating INDEX "public.index_ao_26db7f_ent1247500752"
pg_restore: creating INDEX "public.index_ao_26db7f_ent1609287474"
pg_restore: creating INDEX "public.index_ao_26db7f_ent831223480"
pg_restore: creating INDEX "public.index_ao_26db7f_ent940053222"
pg_restore: creating INDEX "public.index_ao_38321b_cus1828044926"
pg_restore: creating INDEX "public.index_ao_54c900_c_t667820477"
pg_restore: creating INDEX "public.index_ao_54c900_c_t757546442"
pg_restore: creating INDEX "public.index_ao_54c900_c_t852152353"
pg_restore: creating INDEX "public.index_ao_54c900_spa357134289"
pg_restore: creating INDEX "public.index_ao_5fb9d7_aoh1981563178"
pg_restore: creating INDEX "public.index_ao_5fb9d7_aoh49772492"
pg_restore: creating INDEX "public.index_ao_7cde43_eve1433596955"
pg_restore: creating INDEX "public.index_ao_7cde43_fil1140550715"
pg_restore: creating INDEX "public.index_ao_7cde43_not7362182"
pg_restore: creating INDEX "public.index_ao_7cde43_rec1271577318"
pg_restore: creating INDEX "public.index_ao_7cde43_ser828034299"
pg_restore: creating INDEX "public.index_ao_92296b_aor1216492770"
pg_restore: creating INDEX "public.index_ao_92296b_aor1615591099"
pg_restore: creating INDEX "public.index_ao_92296b_aor205355936"
pg_restore: creating INDEX "public.index_ao_92296b_aor426054036"
pg_restore: creating INDEX "public.index_ao_92296b_aor818798913"
pg_restore: creating INDEX "public.index_ao_9412a1_aon1547032463"
pg_restore: creating INDEX "public.index_ao_9412a1_aon648423710"
pg_restore: creating INDEX "public.index_ao_9412a1_aon849931648"
pg_restore: creating INDEX "public.index_ao_9412a1_aot1465568358"
pg_restore: creating INDEX "public.index_ao_9412a1_aotask_user"
pg_restore: creating INDEX "public.index_ao_9412a1_use1222319987"
pg_restore: creating INDEX "public.index_ao_9412a1_use643533071"
pg_restore: creating INDEX "public.index_ao_baf3aa_aoi1066945234"
pg_restore: creating INDEX "public.index_ao_baf3aa_aoi1143751131"
pg_restore: creating INDEX "public.index_ao_baf3aa_aoi1389674752"
pg_restore: creating INDEX "public.index_ao_baf3aa_aoi1395974671"
pg_restore: creating INDEX "public.index_ao_baf3aa_aoi1978441610"
pg_restore: creating INDEX "public.index_ao_baf3aa_aoi866493194"
pg_restore: creating INDEX "public.index_ao_dc98ae_aoh1533992358"
pg_restore: creating INDEX "public.index_ao_dc98ae_aoh411805038"
pg_restore: creating INDEX "public.j_creationdate_idx"
pg_restore: creating INDEX "public.j_j_name_idx"
pg_restore: creating INDEX "public.job_id_idx"
pg_restore: creating INDEX "public.job_runner_key_idx"
pg_restore: creating INDEX "public.l_contentid_idx"
pg_restore: creating INDEX "public.l_destpgtitle_idx"
pg_restore: creating INDEX "public.l_destspacekey_idx"
pg_restore: creating INDEX "public.l_ldestpgtitle_idx"
pg_restore: creating INDEX "public.l_ldestspacekey_idx"
pg_restore: creating INDEX "public.l_name_idx"
pg_restore: creating INDEX "public.l_namespace_idx"
pg_restore: creating INDEX "public.l_owner_idx"
pg_restore: creating INDEX "public.like_cdate_idx"
pg_restore: creating INDEX "public.like_cid_idx"
pg_restore: creating INDEX "public.like_username_idx"
pg_restore: creating INDEX "public.links_creator_idx"
pg_restore: creating INDEX "public.links_lastmodifier_idx"
pg_restore: creating INDEX "public.n_contentid_idx"
pg_restore: creating INDEX "public.n_creator_idx"
pg_restore: creating INDEX "public.n_labelid_idx"
pg_restore: creating INDEX "public.n_lastmodifier_idx"
pg_restore: creating INDEX "public.n_spaceid_idx"
pg_restore: creating INDEX "public.n_username_idx"
pg_restore: creating INDEX "public.next_run_time_idx"
pg_restore: creating INDEX "public.ospe_entityid_idx"
pg_restore: creating INDEX "public.pt_creator_idx"
pg_restore: creating INDEX "public.pt_lastmodifier_idx"
pg_restore: creating INDEX "public.pt_prevver_idx"
pg_restore: creating INDEX "public.pt_spaceid_idx"
pg_restore: creating INDEX "public.r_c2c_creator_idx"
pg_restore: creating INDEX "public.r_c2c_lastmodifier_idx"
pg_restore: creating INDEX "public.r_u2c_creator_idx"
pg_restore: creating INDEX "public.r_u2c_lastmodifier_idx"
pg_restore: creating INDEX "public.r_u2u_creator_idx"
pg_restore: creating INDEX "public.r_u2u_lastmodifier_idx"
pg_restore: creating INDEX "public.relation_c2c_cdate_idx"
pg_restore: creating INDEX "public.relation_c2c_relationname_idx"
pg_restore: creating INDEX "public.relation_c2c_sourcecontent_idx"
pg_restore: creating INDEX "public.relation_c2c_sourcetype_idx"
pg_restore: creating INDEX "public.relation_c2c_targetcontent_idx"
pg_restore: creating INDEX "public.relation_c2c_targettype_idx"
pg_restore: creating INDEX "public.relation_u2c_cdate_idx"
pg_restore: creating INDEX "public.relation_u2c_relationname_idx"
pg_restore: creating INDEX "public.relation_u2c_sourceuser_idx"
pg_restore: creating INDEX "public.relation_u2c_targetcontent_idx"
pg_restore: creating INDEX "public.relation_u2c_targettype_idx"
pg_restore: creating INDEX "public.relation_u2u_cdate_idx"
pg_restore: creating INDEX "public.relation_u2u_relationname_idx"
pg_restore: creating INDEX "public.relation_u2u_sourceuser_idx"
pg_restore: creating INDEX "public.relation_u2u_targetuser_idx"
pg_restore: creating INDEX "public.rmt_username_idx"
pg_restore: creating INDEX "public.s_creationdate_idx"
pg_restore: creating INDEX "public.s_creator_idx"
pg_restore: creating INDEX "public.s_homepage_idx"
pg_restore: creating INDEX "public.s_lastmodifier_idx"
pg_restore: creating INDEX "public.s_lspacekey_idx"
pg_restore: creating INDEX "public.s_spacedescid_idx"
pg_restore: creating INDEX "public.s_spacestatus_idx"
pg_restore: creating INDEX "public.sp_comp_idx"
pg_restore: creating INDEX "public.sp_creator_idx"
pg_restore: creating INDEX "public.sp_lastmodifier_idx"
pg_restore: creating INDEX "public.sp_permtype_idx"
pg_restore: creating INDEX "public.sp_pgname_idx"
pg_restore: creating INDEX "public.sp_puname_idx"
pg_restore: creating INDEX "public.sp_spaceid_idx"
pg_restore: creating INDEX "public.start_time_idx"
pg_restore: creating INDEX "public.strutture_prestazioni_uk"
pg_restore: creating INDEX "public.tbl_contentid_idx"
pg_restore: creating INDEX "public.tbl_creator_idx"
pg_restore: creating INDEX "public.tbl_lastmodifier_idx"
pg_restore: creating INDEX "re.idx_buildings"
pg_restore: creating INDEX "re.idx_buildings_0"
pg_restore: creating INDEX "re.idx_properties"
pg_restore: creating INDEX "re.idx_properties_0"
pg_restore: creating INDEX "re.idx_properties_1"
pg_restore: creating INDEX "re.idx_properties_2"
pg_restore: creating INDEX "re.idx_properties_galleries"
pg_restore: creating INDEX "re.idx_properties_galleries_0"
pg_restore: creating INDEX "re.idx_rooms"
pg_restore: creating INDEX "re.idx_rooms_0"
pg_restore: creating INDEX "re.idx_rooms_offers"
pg_restore: creating INDEX "re.idx_rooms_offers_0"
pg_restore: creating INDEX "re.idx_rooms_tenants"
pg_restore: creating INDEX "re.idx_rooms_tenants_0"
pg_restore: creating INDEX "repository.fki_fields_entities_fk"
pg_restore: creating INDEX "repository.fki_fieldtypes_groups_fk"
pg_restore: creating INDEX "shipping.idx_ferry_pricelist"
pg_restore: creating INDEX "shipping.idx_ferry_pricelist_0"
pg_restore: creating INDEX "shipping.idx_ferry_pricelist_1"
pg_restore: creating INDEX "shipping.idx_items_ferry_definitions"
pg_restore: creating INDEX "shipping.idx_lines_ports"
pg_restore: creating INDEX "shipping.idx_lines_routes"
pg_restore: creating INDEX "shipping.idx_periods"
pg_restore: creating INDEX "shipping.idx_periods_0"
pg_restore: creating INDEX "shipping.idx_timetable"
pg_restore: creating INDEX "shipping.idx_timetable_0"
pg_restore: creating INDEX "shipping.idx_timetable_1"
pg_restore: creating INDEX "shipping.idx_timetable_places"
pg_restore: creating INDEX "shipping.idx_timetable_places_0"
pg_restore: creating INDEX "shipping.idx_timetable_prices"
pg_restore: creating INDEX "shipping.idx_timetable_prices_0"
pg_restore: creating INDEX "shipping.line_code_uk"
pg_restore: creating INDEX "shipping.lines_portsidate_ndx"
pg_restore: creating INDEX "shipping.linesidate_ndx"
pg_restore: creating INDEX "shipping.portsidate_ndx"
pg_restore: creating INDEX "shipping.time_vess_fk_i"
pg_restore: creating INDEX "shipping.timetable_year"
pg_restore: creating INDEX "shipping.timetableidate_ndx"
pg_restore: creating INDEX "shipping.vessels_code_ndx"
pg_restore: creating INDEX "shipping.vesselsidate_ndx"
pg_restore: creating INDEX "social.idx_messages"
pg_restore: creating INDEX "social.idx_messages_0"
pg_restore: creating INDEX "social.idx_msg_attachments"
pg_restore: creating INDEX "social.idx_msg_attachments_0"
pg_restore: creating INDEX "swap.db_followers_follower_fk_ndx"
pg_restore: creating INDEX "swap.db_followers_pk_ndx"
pg_restore: creating INDEX "swap.db_followers_users_fk_ndx"
pg_restore: creating INDEX "swap.fki_events_creator_fk"
pg_restore: creating INDEX "swap.fki_notification_swap_item_fk"
pg_restore: creating INDEX "swap.fki_notification_user_fk"
pg_restore: creating INDEX "swap.fki_notification_user_item_fk"
pg_restore: creating INDEX "swap.fki_profile_fk"
pg_restore: creating INDEX "swap.fki_swap_status_fk"
pg_restore: creating INDEX "swap.fki_swaps_messages_swaps_fk"
pg_restore: creating INDEX "swap.items_owners_fk_ndx"
pg_restore: creating INDEX "swap.items_pk_ndx"
pg_restore: creating INDEX "swap.notification_feed_ndx"
pg_restore: creating INDEX "swap.notification_types_fk_ndx"
pg_restore: creating INDEX "swap.notifications_pk_desc_ndx"
pg_restore: creating INDEX "swap.swap_user_fk_hash_ndx"
pg_restore: creating INDEX "swap.swaps_from_item_fk_hash_ndx"
pg_restore: creating INDEX "swap.swaps_pk_desc_ndx"
pg_restore: creating INDEX "swap.swaps_user_fk_ndx"
pg_restore: creating INDEX "system.ap_package_name_uk"
pg_restore: creating INDEX "system.db_schema_url_ndx"
pg_restore: creating INDEX "system.db_schemas_key_ndx"
pg_restore: creating INDEX "system.db_user_sessions_key"
pg_restore: creating INDEX "system.db_users_schemas_roles_u"
pg_restore: creating INDEX "system.dbusr_mail_uk_ndx"
pg_restore: creating INDEX "system.dbusr_username_uk_ndx"
pg_restore: creating INDEX "system.fki_app_form_objects_forms_fk"
pg_restore: creating INDEX "system.fki_app_form_trans_forms_fk"
pg_restore: creating INDEX "system.fki_app_formobjectsproperties_objects_fk"
pg_restore: creating INDEX "system.fki_app_from_trans_languages_fk"
pg_restore: creating INDEX "system.fki_app_objects_owners_fk"
pg_restore: creating INDEX "system.fki_dbusrschemas_dbusers_fk"
pg_restore: creating INDEX "system.idx_ap_packages_applications"
pg_restore: creating INDEX "system.idx_app_forms_0"
pg_restore: creating INDEX "system.idx_db_app_grp_param"
pg_restore: creating INDEX "system.idx_db_app_schemas"
pg_restore: creating INDEX "system.idx_db_applications_roles"
pg_restore: creating INDEX "system.idx_db_applications_roles_0"
pg_restore: creating INDEX "system.idx_db_packages_schemas"
pg_restore: creating INDEX "system.idx_db_schemas_roles"
pg_restore: creating INDEX "system.idx_db_user_groups"
pg_restore: creating INDEX "system.idx_db_user_groups_0"
pg_restore: creating INDEX "system.idx_db_user_sessions"
pg_restore: creating INDEX "system.idx_db_user_sessions_0"
pg_restore: creating INDEX "system.idx_db_user_sessions_1"
pg_restore: creating INDEX "system.idx_db_users_profiles"
pg_restore: creating INDEX "system.idx_db_users_profiles_0"
pg_restore: creating INDEX "system.idx_db_users_profiles_1"
pg_restore: creating INDEX "system.idx_db_users_profiles_2"
pg_restore: creating INDEX "system.idx_db_users_roles_0"
pg_restore: creating INDEX "system.idx_db_users_schemas"
pg_restore: creating INDEX "system.idx_db_users_schemas_apps"
pg_restore: creating INDEX "system.idx_db_users_schemas_apps_0"
pg_restore: creating INDEX "system.idx_db_users_schemas_roles"
pg_restore: creating INDEX "system.idx_db_users_schemas_roles_0"
pg_restore: creating INDEX "system.idx_db_users_schemas_roles_1"
pg_restore: creating INDEX "system.idx_db_users_schemas_roles_2"
pg_restore: creating INDEX "system.idx_form_models"
pg_restore: creating INDEX "system.idx_packages_applications"
pg_restore: creating INDEX "system.searc_name_ndx"
pg_restore: creating INDEX "system.syslgdate"
pg_restore: creating INDEX "uni.fki_departments_faculties_fk"
pg_restore: creating INDEX "uni.fki_faculties_universities_fk"
pg_restore: creating INDEX "uni.fki_students_faculties"
pg_restore: creating INDEX "uni.fki_students_universities"
pg_restore: creating INDEX "uni.fki_students_users"
pg_restore: creating INDEX "uni.idx_faculties"
pg_restore: creating INDEX "uni.idx_modules"
pg_restore: creating INDEX "uni.idx_modules_0"
pg_restore: creating INDEX "uni.idx_modules_courses"
pg_restore: creating INDEX "uni.idx_modules_courses_0"
pg_restore: creating INDEX "uni.idx_universities"
pg_restore: creating INDEX "uni.idx_universities_0"
pg_restore: creating INDEX "uni.idx_universities_1"
pg_restore: creating INDEX "uni.idx_universities_2"
pg_restore: creating INDEX "workflow.idx_workflows_type_id"
pg_restore: creating INDEX "workflow.workflows_jguid_uk"
pg_restore: creating RULE "swap.followers _followernoequal"
pg_restore: creating TRIGGER "ads.banners abnn_bi_trg"
pg_restore: creating TRIGGER "ads.domains admn_bi_trg"
pg_restore: creating TRIGGER "ads.last_banner alst_bi_trg"
pg_restore: creating TRIGGER "ads.publish_slots apbl_bi_trg"
pg_restore: creating TRIGGER "anagraph.branches abrn_bi_trg"
pg_restore: creating TRIGGER "anagraph.identities adnt_bi_trg"
pg_restore: creating TRIGGER "anagraph.anagraphs an_anagraph_bi_trg"
pg_restore: creating TRIGGER "anagraph.anagraphs anag_bi_trg"
pg_restore: creating TRIGGER "anagraph.anagraphs anagraphs_identities_aiu_trg"
pg_restore: creating TRIGGER "anagraph.groups angr_bi_trg"
pg_restore: creating TRIGGER "anagraph.categories categories_id_bi_trg"
pg_restore: creating TRIGGER "anagraph.groups group_new_id"
pg_restore: creating TRIGGER "anagraph.identities identities_bi_trg"
pg_restore: creating TRIGGER "analytics.queries queries_id_bi_trg"
pg_restore: creating TRIGGER "analytics.query_groups query_groups_id_bi_trg"
pg_restore: creating TRIGGER "books.definitions book_defs_biu_id_trg"
pg_restore: creating TRIGGER "cloud.blob_files blob_files_bi_id_trg"
pg_restore: creating TRIGGER "cloud.blob_files_old blob_files_bi_id_trg"
pg_restore: creating TRIGGER "cloud.blob_files cblb_bi_trg"
pg_restore: creating TRIGGER "cloud.blob_files_old cblb_bi_trg"
pg_restore: creating TRIGGER "cloud.computers ccmp_bi_trg"
pg_restore: creating TRIGGER "cloud.directories cdrc_bi_trg"
pg_restore: creating TRIGGER "cloud.filedirlist cfld_bi_trg"
pg_restore: creating TRIGGER "cloud.images cimg_bi_trg"
pg_restore: creating TRIGGER "cloud.text_files ctxt_bi_trg"
pg_restore: creating TRIGGER "cloud.external_files cxtf_bi_trg"
pg_restore: creating TRIGGER "cloud.external_locations cxtr_bi_trg"
pg_restore: creating TRIGGER "cloud.external_files external_files_bi_id_trg"
pg_restore: creating TRIGGER "cms.arguments arguments_id_bi_trg"
pg_restore: creating TRIGGER "cms.arguments carg_bi_trg"
pg_restore: creating TRIGGER "cms.graphic_menu_groups cgrg_bi_trg"
pg_restore: creating TRIGGER "cms.graphic_menu cgrm_bi_trg"
pg_restore: creating TRIGGER "cms.graphic_menu_rows cgrp_bi_trg"
pg_restore: creating TRIGGER "cms.main_arguments cmar_bi_trg"
pg_restore: creating TRIGGER "cms.menu cmn_bi_trg"
pg_restore: creating TRIGGER "cms.menu_items cmni_bi_trg"
pg_restore: creating TRIGGER "cms.menu_items_t cmnt_bi_trg"
pg_restore: creating TRIGGER "cms.pages cpgp_bi_trg"
pg_restore: creating TRIGGER "cms.pages_types cpgs_bi_trg"
pg_restore: creating TRIGGER "cms.pages_t cpgt_bi_trg"
pg_restore: creating TRIGGER "cms.apps cpps_bi_trg"
pg_restore: creating TRIGGER "cms.arguments_groups crgm_bi_trg"
pg_restore: creating TRIGGER "cms.arguments_roles crgr_bi_trg"
pg_restore: creating TRIGGER "cms.rss_articles crsa_bi_trg"
pg_restore: creating TRIGGER "cms.rss_feeds crsf_bi_trg"
pg_restore: creating TRIGGER "cms.articles crtc_bi_trg"
pg_restore: creating TRIGGER "cms.sub_arguments csbr_bi_trg"
pg_restore: creating TRIGGER "cms.specifications cspc_bi_trg"
pg_restore: creating TRIGGER "cms.sessions csss_bi_trg"
pg_restore: creating TRIGGER "cms.themes_pages cthm_bi_trg"
pg_restore: creating TRIGGER "cms.themes ctht_bi_trg"
pg_restore: creating TRIGGER "cms.templates_pages ctmp_bi_trg"
pg_restore: creating TRIGGER "cms.templates ctmt_bi_trg"
pg_restore: creating TRIGGER "cms.web_sites cwbs_bi_trg"
pg_restore: creating TRIGGER "cms.webitems_pictures cwbt_bi_trg"
pg_restore: creating TRIGGER "cms.events events_id_bi_trg"
pg_restore: creating TRIGGER "cms.graphic_menu graphic_menu_id_bi_trg"
pg_restore: creating TRIGGER "cms.graphic_menu_rows graphic_menu_rows_id_bi_trg"
pg_restore: creating TRIGGER "cms.news news_id_bi_trg"
pg_restore: creating TRIGGER "cms.rss_feeds rss_feeds_bi_rtg"
pg_restore: creating TRIGGER "cms.sub_arguments sub_arguments_id_bi_trg"
pg_restore: creating TRIGGER "cms.web_sites web_sites_id_bi_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.clifo clifo_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.marche clifo_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.cntr_type cntr_type_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.documenti documenti_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.entrate entrate_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.fd fd_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.imballi imballi_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.merci imballi_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.magazzini magazzini_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.tipi_documento tipi_documento_jguid_trg"
pg_restore: creating TRIGGER "custom_tm_logistic.uffici uffici_jguid_trg"
pg_restore: creating TRIGGER "documents.types doctype_bi_trg"
pg_restore: creating TRIGGER "documents.types doctype_guid_bi_trg"
pg_restore: creating TRIGGER "documents.type_groups doctypegrp_bi_trg"
pg_restore: creating TRIGGER "documents.type_groups doctypegrp_guid_bi_trg"
pg_restore: creating TRIGGER "documents.heads documents_bi_id_trg"
pg_restore: creating TRIGGER "documents.type_groups pkgtypes_guid_bi_trg"
pg_restore: creating TRIGGER "documents.rows rows_bi_id_trg"
pg_restore: creating TRIGGER "football.ft_championships fchm_bi_trg"
pg_restore: creating TRIGGER "football.ft_clubs fclb_bi_trg"
pg_restore: creating TRIGGER "football.ft_calendar fcld_bi_trg"
pg_restore: creating TRIGGER "football.ft_club_seasons fcls_bi_trg"
pg_restore: creating TRIGGER "football.ft_fields ffld_bi_trg"
pg_restore: creating TRIGGER "football.ft_league_groups flgp_bi_trg"
pg_restore: creating TRIGGER "football.ft_leagues flgs_bi_trg"
pg_restore: creating TRIGGER "football.ft_match_days fmtd_bi_trg"
pg_restore: creating TRIGGER "football.ft_match_events fmth_bi_trg"
pg_restore: creating TRIGGER "football.ft_match_players fmtp_bi_trg"
pg_restore: creating TRIGGER "football.ft_player_career fplc_bi_trg"
pg_restore: creating TRIGGER "football.ft_ranking_table frkt_bi_trg"
pg_restore: creating TRIGGER "football.ft_roles frls_bi_trg"
pg_restore: creating TRIGGER "football.json_calendar fsnc_bi_trg"
pg_restore: creating TRIGGER "football.ft_seasons fssn_bi_trg"
pg_restore: creating TRIGGER "football.ft_calendar ft_calendar_bi_trg"
pg_restore: creating TRIGGER "football.ft_player_career ft_player_career_id_trg"
pg_restore: creating TRIGGER "football.ft_ranking_table ft_rankings_id_bi_trg"
pg_restore: creating TRIGGER "football.ft_teams_championships ftmc_bi_trg"
pg_restore: creating TRIGGER "football.ft_teams_history ftmh_bi_trg"
pg_restore: creating TRIGGER "football.ft_teams_players ftmp_bi_trg"
pg_restore: creating TRIGGER "football.ft_teams ftms_bi_trg"
pg_restore: creating TRIGGER "football.ft_teams_trainers ftmt_bi_trg"
pg_restore: creating TRIGGER "football.ft_field_types ftps_bi_trg"
pg_restore: creating TRIGGER "football.ft_trainers_career ftrc_bi_trg"
pg_restore: creating TRIGGER "football.ft_trainers ftrn_bi_trg"
pg_restore: creating TRIGGER "football.ft_event_types fvnt_bi_trg"
pg_restore: creating TRIGGER "football.ft_players pplr_bi_trg"
pg_restore: creating TRIGGER "health.anagraph_wards_services anagraph_wards_services_id_bi_trg"
pg_restore: creating TRIGGER "health.associations associations_id_bi_trg"
pg_restore: creating TRIGGER "health.bookings booking_id_bi_trg"
pg_restore: creating TRIGGER "health.bookings_rows booking_rows_biu_trg"
pg_restore: creating COMMENT "health.TRIGGER booking_rows_biu_trg ON bookings_rows"
pg_restore: creating TRIGGER "health.bookings_rows booking_rows_insert_date_trg"
pg_restore: creating TRIGGER "health.bookings_rows booking_rows_update_date_biu_trg"
pg_restore: creating TRIGGER "health.branches branche_before_insert_trg"
pg_restore: creating TRIGGER "health.medical_councils council_id_trg"
pg_restore: creating TRIGGER "health.notifications notifications_id_bi"
pg_restore: creating TRIGGER "health.organizations organization_id_trg"
pg_restore: creating TRIGGER "health.search_services search_services_bi_trg"
pg_restore: creating TRIGGER "health.searches searches_insert_date_bi_trg"
pg_restore: creating TRIGGER "health.searches searches_update_date_bi_trg"
pg_restore: creating TRIGGER "health.specialities speciality_id_bi_trg"
pg_restore: creating TRIGGER "health.sub_specialities subspeciality_id_bi_trg"
pg_restore: creating TRIGGER "items.brands brands_id_bi_trg"
pg_restore: creating TRIGGER "items.definitions definitions_insert_date_bi_trg"
pg_restore: creating TRIGGER "items.definitions definitions_item_id_bi_trg"
pg_restore: creating TRIGGER "items.dimensions dimension_id_bi_trg"
pg_restore: creating TRIGGER "items.families families_id_bi_trg"
pg_restore: creating TRIGGER "items.package_types pkgtypes_bi_trg"
pg_restore: creating TRIGGER "jpublic.countries countries_before_insert_trg"
pg_restore: creating TRIGGER "jpublic.countries countries_guid_trg"
pg_restore: creating TRIGGER "jpublic.districts districts_id_trg"
pg_restore: creating TRIGGER "jpublic.regions regions_id_trg"
pg_restore: creating TRIGGER "jpublic.towns towns_id_ins_trg"
pg_restore: creating TRIGGER "logistic.awb awb_biu_trg"
pg_restore: creating TRIGGER "logistic.awb_rows awb_rows_biu_trg"
pg_restore: creating TRIGGER "logistic.container_types container_types_biu_trg"
pg_restore: creating TRIGGER "logistic.container_types container_types_jguid_trg"
pg_restore: creating TRIGGER "logistic.locations locations_biu_trg"
pg_restore: creating TRIGGER "logistic.shipments pickup_orders_biu_trg"
pg_restore: creating TRIGGER "maillist.sender_attachments attachments_bi_trg"
pg_restore: creating TRIGGER "maillist.mailing_list mailing_list_trg"
pg_restore: creating TRIGGER "maillist.sender ms_send_bi_trg"
pg_restore: creating TRIGGER "shipping.companies scm_bi_trg"
pg_restore: creating TRIGGER "shipping.items_ferry_definitions shfd_bi_trg"
pg_restore: creating TRIGGER "shipping.ferry_pricelist shfp_bi_trg"
pg_restore: creating TRIGGER "shipping.ferry_types shft_bi_trg"
pg_restore: creating TRIGGER "shipping.lines shln_bi_trg"
pg_restore: creating TRIGGER "shipping.lines_periods shlp_bi_trg"
pg_restore: creating TRIGGER "shipping.lines_routes shlr_bi_trg"
pg_restore: creating TRIGGER "shipping.ports shpr_bi_trg"
pg_restore: creating TRIGGER "shipping.seasons shsn_bi_trg"
pg_restore: creating TRIGGER "shipping.timetable shtm_bi_trg"
pg_restore: creating TRIGGER "shipping.timetable_places shtp_bi_trg"
pg_restore: creating TRIGGER "swap.events events_insert_date_bi_trg"
pg_restore: creating TRIGGER "swap.events events_new_id_bi_trg"
pg_restore: creating TRIGGER "swap.followers followers_ad_trg"
pg_restore: creating TRIGGER "swap.followers followers_ai_trg"
pg_restore: creating TRIGGER "swap.items items_delete_bd_trg"
pg_restore: creating TRIGGER "swap.items_images items_images_new_id_bi_trg"
pg_restore: creating TRIGGER "swap.items items_insert_date_bi_trg"
pg_restore: creating TRIGGER "swap.items_likes items_likes_ai_trg"
pg_restore: creating TRIGGER "swap.items items_new_id_bi_trg"
pg_restore: creating TRIGGER "swap.notifications notifications_count_ai_trg"
pg_restore: creating TRIGGER "swap.notifications notifications_delete_ad_trg"
pg_restore: creating TRIGGER "swap.notifications notifications_new_id_bi_trg"
pg_restore: creating TRIGGER "swap.notifications notifications_update_bu_trg"
pg_restore: creating TRIGGER "swap.swaps swaps_new_bi_trg"
pg_restore: creating TRIGGER "swap.swaps swaps_status_bu_trg"
pg_restore: creating TRIGGER "system.db_users check_country_trg"
pg_restore: creating TRIGGER "system.db_users check_insert_date_trg"
pg_restore: creating TRIGGER "system.db_user_sessions db_user_sessions_insert_date_bi_trg"
pg_restore: creating TRIGGER "system.db_users db_user_update_trg"
pg_restore: creating TRIGGER "system.db_users db_users_after_insert_trg"
pg_restore: creating TRIGGER "system.db_users db_users_bi_trg"
pg_restore: creating TRIGGER "system.db_users_profiles db_users_profile_users_biu_trg"
pg_restore: creating TRIGGER "system.db_users_profiles db_users_profiles_biu_trg"
pg_restore: creating TRIGGER "system.app_forms form_dates_biu"
pg_restore: creating TRIGGER "system.app_forms form_id_bi_trg"
pg_restore: creating TRIGGER "system.packages packages_before_insert_trg"
pg_restore: creating TRIGGER "system.form_models sfrm_bi_trg"
pg_restore: creating TRIGGER "system.form_objects_trans sfrt_bi_trg"
pg_restore: creating TRIGGER "system.db_groups sgrp_bi_trg"
pg_restore: creating TRIGGER "system.app_functions spaf_bi_trg"
pg_restore: creating TRIGGER "system.app_licenses spal_bi_trg"
pg_restore: creating TRIGGER "system.packages_applications spca_bi_trg"
pg_restore: creating TRIGGER "system.packages spck_bi_trg"
pg_restore: creating TRIGGER "system.db_packages_schemas spcs_bi_trg"
pg_restore: creating TRIGGER "system.app_forms spfo_bi_trg"
pg_restore: creating TRIGGER "system.app_member_forms spmf_bi_trg"
pg_restore: creating TRIGGER "system.app_forms_objects_properties spop_bi_trg"
pg_restore: creating TRIGGER "system.app_forms_objects_translations spot_bi_trg"
pg_restore: creating TRIGGER "system.applications sppl_bi_trg"
pg_restore: creating TRIGGER "system.app_messages sppm_bi_trg"
pg_restore: creating TRIGGER "system.app_forms_objects sppo_bi_trg"
pg_restore: creating TRIGGER "system.db_applications_roles sppr_bi_trg"
pg_restore: creating TRIGGER "system.db_app_schemas spps_bi_trg"
pg_restore: creating TRIGGER "system.app_forms_translations sppt_bi_trg"
pg_restore: creating TRIGGER "system.db_roles srls_bi_trg"
pg_restore: creating TRIGGER "system.db_users_roles srr_bi_trg"
pg_restore: creating TRIGGER "system.db_schemas ssch_bi_trg"
pg_restore: creating TRIGGER "system.db_schema_params sscp_bi_trg"
pg_restore: creating TRIGGER "system.db_schemas_roles sscr_bi_trg"
pg_restore: creating TRIGGER "system.sys_params sssp_bi_trg"
pg_restore: creating TRIGGER "system.sys_roles sssr_bi_trg"
pg_restore: creating TRIGGER "system.db_users_profiles supr_bi_trg"
pg_restore: creating TRIGGER "system.db_users_schemas_apps sura_bi_trg"
pg_restore: creating TRIGGER "system.db_users_schemas_roles suro_bi_trg"
pg_restore: creating TRIGGER "system.db_users_payments surp_bi_trg"
pg_restore: creating TRIGGER "system.db_user_sessions surs_bi_trg"
pg_restore: creating TRIGGER "system.db_users suse_bi_trg"
pg_restore: creating TRIGGER "system.db_user_groups susg_bi_trg"
pg_restore: creating TRIGGER "system.db_users_schemas suss_bi_trg"
pg_restore: creating TRIGGER "system.db_users swap_profiles_ai_trg"
pg_restore: creating TRIGGER "uni.departments udpr_bi_trg"
pg_restore: creating TRIGGER "uni.faculties ufcl_bi_trg"
pg_restore: creating TRIGGER "uni.modules umdl_bi_trg"
pg_restore: creating TRIGGER "uni.universities universities_bi_trg"
pg_restore: creating TRIGGER "uni.universities unvr_bi_trg"
pg_restore: creating TRIGGER "workflow.workflows workflow_biu_trg"
pg_restore: creating FK CONSTRAINT "accounting.payment_terms fk_payment_installment_master_terms"
pg_restore: creating FK CONSTRAINT "accounting.ledger_accounts fk_pcash_account_pcash_account"
pg_restore: creating FK CONSTRAINT "accounting.pcash_accounting_row fk_pcash_accounting_row"
pg_restore: creating FK CONSTRAINT "accounting.pcash_accounting_row fk_pcash_accounting_row_pcash_account"
pg_restore: creating FK CONSTRAINT "accounting.pcash_accounting_rows_ledgers fk_pcash_accounting_rows_ledgers_pcash_accounting_row"
pg_restore: creating FK CONSTRAINT "accounting.pcash_accounting_rows_ledgers fk_pcash_accounting_rows_ledgers_pretty_cash_ledger"
pg_restore: creating FK CONSTRAINT "accounting.pcash_accounting_row fk_pcash_accounting_rows_periods"
pg_restore: creating FK CONSTRAINT "accounting.pcash_books_ledgers fk_pcash_books_ledgers_pcash_accounting_books"
pg_restore: creating FK CONSTRAINT "accounting.pcash_books_ledgers fk_pcash_books_ledgers_pretty_cash_ledger"
pg_restore: creating FK CONSTRAINT "accounting.pretty_cash_ledgers fk_pretty_cash_ledgers"
pg_restore: creating FK CONSTRAINT "accounting.pretty_cash_ledgers fk_pretty_cash_ledgers_pcash_ledger_types"
pg_restore: creating FK CONSTRAINT "ads.domains ads_domains_schemas_fk"
pg_restore: creating FK CONSTRAINT "ads.domains domains_schemas_fk"
pg_restore: creating FK CONSTRAINT "anagraph.anag_categories an_anagraph_categories_fk"
pg_restore: creating FK CONSTRAINT "anagraph.anag_categories an_categories_anagraph_fk"
pg_restore: creating FK CONSTRAINT "anagraph.categories an_categories_osm_categories_fk"
pg_restore: creating FK CONSTRAINT "anagraph.identities an_identities_anagraphs_fk"
pg_restore: creating FK CONSTRAINT "anagraph.categories_translations category_t_categories_fk"
pg_restore: creating FK CONSTRAINT "anagraph.branches fk_an_branches"
pg_restore: creating FK CONSTRAINT "anagraph.identities fk_an_identities_0"
pg_restore: creating FK CONSTRAINT "anagraph.an_locations fk_an_locations_anagraphs"
pg_restore: creating FK CONSTRAINT "anagraph.an_locations fk_an_locations_osm_places"
pg_restore: creating FK CONSTRAINT "anagraph.anagraphs fk_anagraphs_groups"
pg_restore: creating FK CONSTRAINT "anagraph.anagraphs fk_anagraphs_vessels"
pg_restore: creating COMMENT "anagraph.CONSTRAINT fk_anagraphs_vessels ON anagraphs"
pg_restore: creating FK CONSTRAINT "analytics.group_users fk_group_users_query_groups"
pg_restore: creating FK CONSTRAINT "analytics.params fk_params_queries"
pg_restore: creating FK CONSTRAINT "analytics.queries fk_queries_queries"
pg_restore: creating FK CONSTRAINT "analytics.queries fk_queries_query_groups"
pg_restore: creating FK CONSTRAINT "analytics.queries_schemas queries_schemas_db_schema_fk"
pg_restore: creating FK CONSTRAINT "books.definitions book_defs_language_fk"
pg_restore: creating FK CONSTRAINT "books.definitions fk_book_defs_blobs_fk"
pg_restore: creating FK CONSTRAINT "books.offers fk_books_offers_defs"
pg_restore: creating FK CONSTRAINT "books.offers fk_books_offers_images_fk"
pg_restore: creating FK CONSTRAINT "books.offers fk_books_offers_schemas"
pg_restore: creating FK CONSTRAINT "books.offers fk_books_offers_universities"
pg_restore: creating FK CONSTRAINT "books.offers fk_books_offers_users"
pg_restore: creating FK CONSTRAINT "books.offers_views fk_books_offers_views"
pg_restore: creating FK CONSTRAINT "books.offers_views fk_books_offers_views_users"
pg_restore: creating FK CONSTRAINT "cloud.external_files db_extfiles_dbusers_fk"
pg_restore: creating FK CONSTRAINT "cloud.blob_files_old fk_blob_files_users"
pg_restore: creating FK CONSTRAINT "cloud.blob_files fk_blob_files_users"
pg_restore: creating FK CONSTRAINT "cloud.directories fk_cloud_directories"
pg_restore: creating FK CONSTRAINT "cloud.computers fk_computers_owners"
pg_restore: creating FK CONSTRAINT "cloud.external_files fk_external_files_blob"
pg_restore: creating FK CONSTRAINT "cloud.external_files fk_external_files_locations"
pg_restore: creating FK CONSTRAINT "cloud.filedirlist fk_filedirlist"
pg_restore: creating FK CONSTRAINT "cloud.filedirlist fk_filedirlist_directories"
pg_restore: creating FK CONSTRAINT "cloud.images fk_images_owners"
pg_restore: creating FK CONSTRAINT "cms.arguments_roles argroles_mainargs_fk"
pg_restore: creating FK CONSTRAINT "cms.arguments arguments_main_fk"
pg_restore: creating FK CONSTRAINT "cms.articles articles_languages_fk"
pg_restore: creating FK CONSTRAINT "cms.articles articles_main_arguments_fk"
pg_restore: creating FK CONSTRAINT "cms.app_languages fk_app_iso_languages"
pg_restore: creating FK CONSTRAINT "cms.app_languages fk_app_languages"
pg_restore: creating FK CONSTRAINT "cms.apps fk_apps_languages"
pg_restore: creating FK CONSTRAINT "cms.arguments_groups fk_arguments_groups"
pg_restore: creating FK CONSTRAINT "cms.arguments_roles fk_arguments_roles"
pg_restore: creating FK CONSTRAINT "cms.arguments_roles fk_arguments_roles_db_schemas"
pg_restore: creating FK CONSTRAINT "cms.articles fk_articles_users"
pg_restore: creating FK CONSTRAINT "cms.menu fk_menu_apps"
pg_restore: creating FK CONSTRAINT "cms.menu_items fk_menu_items"
pg_restore: creating FK CONSTRAINT "cms.menu_items_t fk_menu_items_t"
pg_restore: creating FK CONSTRAINT "cms.menu_items_t fk_menu_items_t_lang"
pg_restore: creating FK CONSTRAINT "cms.pages fk_pages"
pg_restore: creating FK CONSTRAINT "cms.pages fk_pages_menu"
pg_restore: creating FK CONSTRAINT "cms.pages fk_pages_menus"
pg_restore: creating FK CONSTRAINT "cms.pages_t fk_pages_t"
pg_restore: creating FK CONSTRAINT "cms.pages_t fk_pages_t_lang"
pg_restore: creating FK CONSTRAINT "cms.pages_types fk_pages_types"
pg_restore: creating FK CONSTRAINT "cms.specifications fk_specifications"
pg_restore: creating FK CONSTRAINT "cms.webitems_pictures fk_webitems_pictures"
pg_restore: creating FK CONSTRAINT "cms.graphic_menu_groups graphics_menu_groups_fk"
pg_restore: creating FK CONSTRAINT "cms.news news_types_fk"
pg_restore: creating FK CONSTRAINT "cms.rss_feeds rss_feeds_countries_fk"
pg_restore: creating FK CONSTRAINT "cms.rss_feeds rss_feeds_language_fk"
pg_restore: creating FK CONSTRAINT "cms.session_logs session_logs_essions_fk"
pg_restore: creating FK CONSTRAINT "cms.sub_arguments sub_arguments_arguments_fk"
pg_restore: creating FK CONSTRAINT "cms.templates templates_db_schemas_fk"
pg_restore: creating FK CONSTRAINT "cms.templates templates_websites_fk"
pg_restore: creating FK CONSTRAINT "cms.webitems_pictures webitems_pictures"
pg_restore: creating FK CONSTRAINT "crm.contactforms contactformsbj_fk"
pg_restore: creating FK CONSTRAINT "crm.subjects_details crbsubj_crmsbdetail_fk"
pg_restore: creating FK CONSTRAINT "crm.attachments crmform_crmattach_fk"
pg_restore: creating FK CONSTRAINT "crm.contactforms crmsbdetail_crmcontact"
pg_restore: creating FK CONSTRAINT "crm.attachments fk_attachments"
pg_restore: creating FK CONSTRAINT "crm.cform_taxonomies fk_cform_taxonomies"
pg_restore: creating FK CONSTRAINT "crm.quote_forms fk_quote_forms_mails"
pg_restore: creating FK CONSTRAINT "crm.quote_forms_rows fk_quote_forms_rows"
pg_restore: creating FK CONSTRAINT "crm.quote_forms_rows fk_quote_forms_rows_0"
pg_restore: creating FK CONSTRAINT "crm.quote_frmmodels_prdserv fk_quote_frmmodels_prdserv"
pg_restore: creating FK CONSTRAINT "crm.quote_frmmodels_prdserv fk_quote_frmmodels_prdserv_0"
pg_restore: creating FK CONSTRAINT "crm.subjects fk_subjects"
pg_restore: creating FK CONSTRAINT "crm.subjects_details fk_subjects_details"
pg_restore: creating FK CONSTRAINT "crm.subjects fk_subjects_forms"
pg_restore: creating FK CONSTRAINT "crm.quote_forms quote_forms_models_fk"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.corpofatt corpofatt_testafatt_fk"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate fk_entrate_clifo"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate fk_entrate_clifo1"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate fk_entrate_clifo2"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate fk_entrate_clifo3"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate fk_entrate_documenti"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate fk_entrate_fd"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate fk_entrate_magazzini"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate_righe fk_entrate_righe_cntr_type"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate_righe fk_entrate_righe_entrate"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate_righe fk_entrate_righe_imballi"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate_righe fk_entrate_righe_marche"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate_righe fk_entrate_righe_merci"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate_righe fk_entrate_righe_tipi_documento"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate fk_entrate_tipi_documento"
pg_restore: creating FK CONSTRAINT "custom_tm_logistic.entrate fk_entrate_uffici"
pg_restore: creating FK CONSTRAINT "documents.rows do crows_items_fk"
pg_restore: creating COMMENT "documents.CONSTRAINT "do crows_items_fk" ON rows"
pg_restore: creating FK CONSTRAINT "documents.types doc_types_schemas_fk"
pg_restore: creating FK CONSTRAINT "documents.heads docheads_carriers_fk"
pg_restore: creating FK CONSTRAINT "documents.rows docrows_docheads_fk"
pg_restore: creating COMMENT "documents.CONSTRAINT docrows_docheads_fk ON rows"
pg_restore: creating FK CONSTRAINT "documents.rows docrows_itemsdefinitions_fk"
pg_restore: creating FK CONSTRAINT "documents.rows docrows_itemtypes_fk"
pg_restore: creating FK CONSTRAINT "documents.types document_types_groups_fk"
pg_restore: creating FK CONSTRAINT "documents.attachments fk_attachments_heads"
pg_restore: creating FK CONSTRAINT "documents.heads fk_docheads_payment_terms"
pg_restore: creating COMMENT "documents.CONSTRAINT fk_docheads_payment_terms ON heads"
pg_restore: creating FK CONSTRAINT "documents.heads fk_documents_anagraphs"
pg_restore: creating FK CONSTRAINT "documents.heads fk_documents_carrier"
pg_restore: creating FK CONSTRAINT "documents.heads fk_documents_office"
pg_restore: creating FK CONSTRAINT "documents.heads fk_documents_warehouses"
pg_restore: creating FK CONSTRAINT "documents.heads fk_heads_types"
pg_restore: creating FK CONSTRAINT "documents.rows fk_rows_doc_origin"
pg_restore: creating COMMENT "documents.CONSTRAINT fk_rows_doc_origin ON rows"
pg_restore: creating FK CONSTRAINT "documents.rows fk_rows_vat_codes"
pg_restore: creating FK CONSTRAINT "documents.vat_amounts fk_vat_amounts_heads"
pg_restore: creating FK CONSTRAINT "documents.vat_amounts fk_vat_amounts_vat_codes"
pg_restore: creating FK CONSTRAINT "documents.heads heads_anagraph_fk"
pg_restore: creating COMMENT "documents.CONSTRAINT heads_anagraph_fk ON heads"
pg_restore: creating FK CONSTRAINT "documents.heads heads_workflows_fk"
pg_restore: creating FK CONSTRAINT "football.arguments_championships arguments_championships_fk"
pg_restore: creating FK CONSTRAINT "football.arguments_championships arguments_championships_leagues_fk"
pg_restore: creating FK CONSTRAINT "football.arguments_championships arguments_championships_seasons_fk"
pg_restore: creating FK CONSTRAINT "football.ft_calendar fk_ft_calendar"
pg_restore: creating FK CONSTRAINT "football.ft_match_days fk_ft_match_days"
pg_restore: creating FK CONSTRAINT "football.ft_players fk_ft_players"
pg_restore: creating FK CONSTRAINT "football.ft_calendar ft_calendars_champ_fk"
pg_restore: creating FK CONSTRAINT "football.ft_championships ft_campionships_leagues_fk"
pg_restore: creating FK CONSTRAINT "football.ft_championships ft_championships_seasons_fk"
pg_restore: creating FK CONSTRAINT "football.ft_club_seasons ft_club_seasons_clubs_fk"
pg_restore: creating FK CONSTRAINT "football.ft_club_seasons ft_club_seasons_seasons_fk"
pg_restore: creating FK CONSTRAINT "football.ft_match_events ft_matchevent_calendar_fk"
pg_restore: creating FK CONSTRAINT "football.ft_match_events ft_matchevent_player_fk"
pg_restore: creating FK CONSTRAINT "football.ft_match_events ft_matchevent_team_fk"
pg_restore: creating FK CONSTRAINT "football.ft_match_players ft_matchplayers_match_fk"
pg_restore: creating FK CONSTRAINT "football.ft_teams_players ft_players_teams_fk"
pg_restore: creating FK CONSTRAINT "football.ft_teams_players ft_playerteam_players_fk"
pg_restore: creating FK CONSTRAINT "football.ft_teams_players ft_playerteam_season_id"
pg_restore: creating FK CONSTRAINT "football.ft_trainers_career ft_rainercareer_season_id"
pg_restore: creating FK CONSTRAINT "football.ft_trainers_career ft_rainercareer_teams_fk"
pg_restore: creating FK CONSTRAINT "football.ft_ranking_table ft_ranking_league_fk"
pg_restore: creating FK CONSTRAINT "football.ft_ranking_table ft_ranking_season_fk"
pg_restore: creating FK CONSTRAINT "football.ft_ranking_table ft_ranking_team_fk"
pg_restore: creating FK CONSTRAINT "football.ft_teams_championships ft_teamchamp_champ_fk"
pg_restore: creating FK CONSTRAINT "football.ft_teams_championships ft_teams_championships_teams_fk"
pg_restore: creating COMMENT "football.CONSTRAINT ft_teams_championships_teams_fk ON ft_teams_championships"
pg_restore: creating FK CONSTRAINT "football.ft_teams ft_teams_clubs_fk"
pg_restore: creating FK CONSTRAINT "football.ft_trainers_career ft_trainercareer_trainers_fk"
pg_restore: creating FK CONSTRAINT "football.ft_teams_trainers ft_trainers_teams_fk"
pg_restore: creating FK CONSTRAINT "football.ft_teams_trainers ft_trainerteam_season_id"
pg_restore: creating FK CONSTRAINT "football.ft_teams_trainers ft_trainerteam_trainers_fk"
pg_restore: creating FK CONSTRAINT "health.an_pharmacies_sectors an_pharamacysectors_anagraph_fk"
pg_restore: creating FK CONSTRAINT "health.an_pharmacies_services an_pharmaservices_anagraph_fk"
pg_restore: creating FK CONSTRAINT "health.anagraph_wards_items an_wards_items_wards_fk"
pg_restore: creating FK CONSTRAINT "health.anagraph_wards anagraph_wards_anagraph_fk"
pg_restore: creating FK CONSTRAINT "health.anagraph_wards anagraph_wards_disciplines_fk"
pg_restore: creating FK CONSTRAINT "health.anagraph_wards_services anagraph_wards_services_anagraph_id_fkey"
pg_restore: creating FK CONSTRAINT "health.associations associations_countries_fk"
pg_restore: creating FK CONSTRAINT "health.associations associations_towns_fk"
pg_restore: creating FK CONSTRAINT "health.bookings_rows bookings_rows_bookings_fk"
pg_restore: creating FK CONSTRAINT "health.medical_councils councils_countries_fk"
pg_restore: creating FK CONSTRAINT "health.disciplines disciplines_branches_fk"
pg_restore: creating FK CONSTRAINT "health.associations fk_associations"
pg_restore: creating FK CONSTRAINT "health.associations fk_associations_countries"
pg_restore: creating FK CONSTRAINT "health.branch_specialities fk_branch_specialities"
pg_restore: creating FK CONSTRAINT "health.branch_specialities fk_branch_specialities_specialities"
pg_restore: creating FK CONSTRAINT "health.organizations_branches fk_branches_organizations"
pg_restore: creating FK CONSTRAINT "health.sub_specialities fk_discipline_specialities"
pg_restore: creating FK CONSTRAINT "health.health_profile fk_health_profile"
pg_restore: creating FK CONSTRAINT "health.health_profile fk_health_profile_association"
pg_restore: creating FK CONSTRAINT "health.health_profile fk_health_profile_council"
pg_restore: creating FK CONSTRAINT "health.health_profile fk_health_profile_groups_fk"
pg_restore: creating FK CONSTRAINT "health.health_profile fk_health_profile_organization"
pg_restore: creating FK CONSTRAINT "health.health_profile fk_health_profile_specialities"
pg_restore: creating FK CONSTRAINT "health.health_profile fk_health_profile_town"
pg_restore: creating FK CONSTRAINT "health.medical_councils fk_medical_councils_countries"
pg_restore: creating FK CONSTRAINT "health.medical_councils fk_medical_councils_districts"
pg_restore: creating FK CONSTRAINT "health.notifications fk_notifications_notifications_types"
pg_restore: creating FK CONSTRAINT "health.organizations_branches fk_organizations_branches"
pg_restore: creating FK CONSTRAINT "health.organizations fk_organizations_countries"
pg_restore: creating FK CONSTRAINT "health.organizations fk_organizations_districts"
pg_restore: creating FK CONSTRAINT "health.organizations fk_organizations_regions"
pg_restore: creating FK CONSTRAINT "health.organizations fk_organizations_towns"
pg_restore: creating FK CONSTRAINT "health.instruments instruments_disciplines_fk"
pg_restore: creating FK CONSTRAINT "health.notifications notifications_schemas_fk"
pg_restore: creating FK CONSTRAINT "health.notifications notifications_users_fk"
pg_restore: creating FK CONSTRAINT "health.organizations organization_country_fk"
pg_restore: creating FK CONSTRAINT "health.organizations organization_regions_fk"
pg_restore: creating FK CONSTRAINT "health.search_keys_text search_keys_text_master_fk_i"
pg_restore: creating FK CONSTRAINT "health.search_services search_services_items_fk"
pg_restore: creating FK CONSTRAINT "health.specialities_groups specialities_groups_countries_fk"
pg_restore: creating FK CONSTRAINT "items.definitions brand_definitions_fk"
pg_restore: creating FK CONSTRAINT "items.brnd_dmn_sizeshapes brnddimn_sizeshapes"
pg_restore: creating FK CONSTRAINT "items.definitions definitions_fams_fk"
pg_restore: creating FK CONSTRAINT "items.definitions definitions_munits_fk"
pg_restore: creating FK CONSTRAINT "items.items_dimensions dimensions_items_fk"
pg_restore: creating FK CONSTRAINT "items.brnd_dmn_sizeshapes fk_brnd_dmn_sizeshapes"
pg_restore: creating FK CONSTRAINT "items.dimensions fk_dimensions_models"
pg_restore: creating FK CONSTRAINT "items.pricelists_items fk_items_pricelists"
pg_restore: creating FK CONSTRAINT "items.pricelists_items fk_pricelists_items"
pg_restore: creating FK CONSTRAINT "items.pricelists_items fk_pricelists_items_anagraphs"
pg_restore: creating FK CONSTRAINT "items.web_items fk_web_items_pricelists"
pg_restore: creating FK CONSTRAINT "items.branddimensions it_branddimensions_brands_fk"
pg_restore: creating FK CONSTRAINT "items.branddimensions itdimension_brands_fk"
pg_restore: creating FK CONSTRAINT "items.pricelists_items item_pricelists_defs_fk"
pg_restore: creating FK CONSTRAINT "items.families items_fams_fk"
pg_restore: creating FK CONSTRAINT "items.items_dimensions ititemdimension_fk"
pg_restore: creating FK CONSTRAINT "items.pricelists pricelists_seasons_fk"
pg_restore: creating FK CONSTRAINT "items.definitions typeref_item_definitions_fk"
pg_restore: creating FK CONSTRAINT "items.definitions types_definitions_fk"
pg_restore: creating FK CONSTRAINT "items.types types_type_groups_fk"
pg_restore: creating FK CONSTRAINT "items.web_items webitems_pricelists_fk"
pg_restore: creating FK CONSTRAINT "jpublic.buildings buildings_towns_areas_fk"
pg_restore: creating FK CONSTRAINT "jpublic.buildings buildings_towns_fk"
pg_restore: creating FK CONSTRAINT "jpublic.districts districts_regions_fk"
pg_restore: creating FK CONSTRAINT "jpublic.contiguous_regions fk_contiguous_regions"
pg_restore: creating FK CONSTRAINT "jpublic.countries_trans fk_countries_langs"
pg_restore: creating FK CONSTRAINT "jpublic.country_currencies fk_country_currencies"
pg_restore: creating FK CONSTRAINT "jpublic.cultures fk_cultures_countries"
pg_restore: creating FK CONSTRAINT "jpublic.cultures fk_cultures_currencies"
pg_restore: creating FK CONSTRAINT "jpublic.cultures fk_cultures_languages"
pg_restore: creating FK CONSTRAINT "jpublic.country_currencies fk_currencies_countries"
pg_restore: creating FK CONSTRAINT "jpublic.currencies_trans fk_currencies_trans"
pg_restore: creating FK CONSTRAINT "jpublic.district_trans fk_district_trans"
pg_restore: creating FK CONSTRAINT "jpublic.district_trans fk_district_trans_lang"
pg_restore: creating FK CONSTRAINT "jpublic.currencies_trans fk_lang_currencies"
pg_restore: creating FK CONSTRAINT "jpublic.lang_translations fk_lang_translations_mainlangs"
pg_restore: creating FK CONSTRAINT "jpublic.lang_translations fk_lang_translations_translang"
pg_restore: creating FK CONSTRAINT "jpublic.regions fk_regions_countries"
pg_restore: creating FK CONSTRAINT "jpublic.regions_trans fk_regions_trans"
pg_restore: creating FK CONSTRAINT "jpublic.regions_trans fk_regions_trans_lang"
pg_restore: creating FK CONSTRAINT "jpublic.countries_trans lang_countries_fk"
pg_restore: creating FK CONSTRAINT "jpublic.location_types roadtypes_fk"
pg_restore: creating FK CONSTRAINT "jpublic.town_areas townareas_towns_fk"
pg_restore: creating FK CONSTRAINT "jpublic.towns towns_districts_fk"
pg_restore: creating FK CONSTRAINT "locale.it_it_health_prescription it_health_prescription_booking_id"
pg_restore: creating FK CONSTRAINT "logistic.awb awb_pickup_orders_fk"
pg_restore: creating FK CONSTRAINT "logistic.awb_surcharges awb_surcharges_awbs_fk"
pg_restore: creating FK CONSTRAINT "logistic.awb fk_awb_offices"
pg_restore: creating FK CONSTRAINT "logistic.awb_rows fk_awb_rows_awb"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_airport_locations"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_anag_carriers"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_anag_customers"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_anag_shippers"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_anag_warehouses"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_locations"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_locations_airport"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_locations_pod"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_locations_pol"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_offices_anagraphs"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_workflows"
pg_restore: creating COMMENT "logistic.CONSTRAINT fk_pickup_orders_workflows ON shipments"
pg_restore: creating FK CONSTRAINT "logistic.shipments fk_pickup_orders_workflows_uid"
pg_restore: creating FK CONSTRAINT "logistic.shipment_rows fk_shipment_rows_shipments"
pg_restore: creating FK CONSTRAINT "maillist.sender_attachments fk_attachments"
pg_restore: creating FK CONSTRAINT "public.emp emp_deptno_fkey"
pg_restore: creating FK CONSTRAINT "public.likes fk4514b9c8dd41734"
pg_restore: creating FK CONSTRAINT "public.links fk45157998dd41734"
pg_restore: creating FK CONSTRAINT "public.cwd_app_dir_mapping fk52050e2fb347aa6a"
pg_restore: creating FK CONSTRAINT "public.notifications fk594acc827072aef"
pg_restore: creating FK CONSTRAINT "public.notifications fk594acc8b2dc6081"
pg_restore: creating FK CONSTRAINT "public.content fk6382c05917d4a070"
pg_restore: creating FK CONSTRAINT "public.content fk6382c05974b18345"
pg_restore: creating FK CONSTRAINT "public.content fk6382c0598c38fbea"
pg_restore: creating FK CONSTRAINT "public.content fk6382c059b2dc6081"
pg_restore: creating FK CONSTRAINT "public.content fk6382c059b97e9230"
pg_restore: creating FK CONSTRAINT "public.content fk6382c059e5b1125"
pg_restore: creating FK CONSTRAINT "public.local_members fk6b8fb445117d5fda"
pg_restore: creating FK CONSTRAINT "public.local_members fk6b8fb445ce2b3226"
pg_restore: creating FK CONSTRAINT "public.cwd_user_credential_record fk76f874f73aee0f"
pg_restore: creating FK CONSTRAINT "public.content_relation fk841caf22351d64c3"
pg_restore: creating FK CONSTRAINT "public.content_relation fk841caf22db772979"
pg_restore: creating FK CONSTRAINT "public.spaces fk9228242d11b7bfee"
pg_restore: creating FK CONSTRAINT "public.spaces fk9228242d2c72d3d2"
pg_restore: creating FK CONSTRAINT "public.os_user_group fk932472461e2e76db"
pg_restore: creating FK CONSTRAINT "public.os_user_group fk93247246f73aee0f"
pg_restore: creating FK CONSTRAINT "public.confancestors fk9494e23c37e35a2e"
pg_restore: creating FK CONSTRAINT "public.confancestors fk9494e23cc45e94dc"
pg_restore: creating FK CONSTRAINT "public.extrnlnks fk97c10fe78dd41734"
pg_restore: creating FK CONSTRAINT "public.contentproperties fk984c5e4c8dd41734"
pg_restore: creating FK CONSTRAINT "public.attachmentdata fk9dc3e34d34a4917e"
pg_restore: creating FK CONSTRAINT "public.audit_affected_object fk_affected_object_record"
pg_restore: creating FK CONSTRAINT "public.AO_54C900_C_TEMPLATE_REF fk_ao_54c900_c_template_ref_cb_index_parentid"
pg_restore: creating FK CONSTRAINT "public.AO_54C900_C_TEMPLATE_REF fk_ao_54c900_c_template_ref_cb_parentid"
pg_restore: creating FK CONSTRAINT "public.AO_54C900_C_TEMPLATE_REF fk_ao_54c900_c_template_ref_parent_id"
pg_restore: creating FK CONSTRAINT "public.AO_54C900_SPACE_BLUEPRINT_AO fk_ao_54c900_space_blueprint_ao_home_page_id"
pg_restore: creating FK CONSTRAINT "public.AO_5FB9D7_AOHIP_CHAT_USER fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id"
pg_restore: creating FK CONSTRAINT "public.AO_7CDE43_EVENT fk_ao_7cde43_event_notification_id"
pg_restore: creating FK CONSTRAINT "public.AO_7CDE43_FILTER_PARAM fk_ao_7cde43_filter_param_notification_id"
pg_restore: creating FK CONSTRAINT "public.AO_7CDE43_NOTIFICATION fk_ao_7cde43_notification_notification_scheme_id"
pg_restore: creating FK CONSTRAINT "public.AO_7CDE43_RECIPIENT fk_ao_7cde43_recipient_notification_id"
pg_restore: creating FK CONSTRAINT "public.AO_7CDE43_SERVER_PARAM fk_ao_7cde43_server_param_server_config_id"
pg_restore: creating FK CONSTRAINT "public.AO_9412A1_USER_APP_LINK fk_ao_9412a1_user_app_link_user_id"
pg_restore: creating FK CONSTRAINT "public.cwd_app_dir_mapping fk_app_dir_dir"
pg_restore: creating FK CONSTRAINT "public.cwd_app_dir_group_mapping fk_app_dir_group_app"
pg_restore: creating FK CONSTRAINT "public.cwd_app_dir_group_mapping fk_app_dir_group_dir"
pg_restore: creating FK CONSTRAINT "public.cwd_app_dir_group_mapping fk_app_dir_group_mapping"
pg_restore: creating FK CONSTRAINT "public.cwd_app_dir_operation fk_app_dir_mapping"
pg_restore: creating FK CONSTRAINT "public.cwd_application_address fk_application_address"
pg_restore: creating FK CONSTRAINT "public.cwd_application_attribute fk_application_attribute"
pg_restore: creating FK CONSTRAINT "public.content_relation fk_c2crelation_creator"
pg_restore: creating FK CONSTRAINT "public.content_relation fk_c2crelation_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.audit_changed_value fk_changed_value_record"
pg_restore: creating FK CONSTRAINT "public.cwd_membership fk_child_grp"
pg_restore: creating FK CONSTRAINT "public.cwd_membership fk_child_user"
pg_restore: creating FK CONSTRAINT "public.content fk_content_creator"
pg_restore: creating FK CONSTRAINT "public.content_label fk_content_label_owner"
pg_restore: creating FK CONSTRAINT "public.content fk_content_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.content_perm fk_content_perm_creator"
pg_restore: creating FK CONSTRAINT "public.content_perm fk_content_perm_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.content_perm fk_content_perm_username"
pg_restore: creating FK CONSTRAINT "public.content fk_content_username"
pg_restore: creating FK CONSTRAINT "public.cwd_directory_attribute fk_directory_attribute"
pg_restore: creating FK CONSTRAINT "public.cwd_group fk_directory_id"
pg_restore: creating FK CONSTRAINT "public.cwd_directory_operation fk_directory_operation"
pg_restore: creating FK CONSTRAINT "public.extrnlnks fk_extrnlnks_creator"
pg_restore: creating FK CONSTRAINT "public.extrnlnks fk_extrnlnks_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.follow_connections fk_follow_connections_followee"
pg_restore: creating FK CONSTRAINT "public.follow_connections fk_follow_connections_follower"
pg_restore: creating FK CONSTRAINT "public.cwd_group_attribute fk_group_attr_dir_id"
pg_restore: creating FK CONSTRAINT "public.cwd_group_attribute fk_group_attr_id_group_id"
pg_restore: creating FK CONSTRAINT "public.label fk_label_owner"
pg_restore: creating FK CONSTRAINT "public.likes fk_likes_username"
pg_restore: creating FK CONSTRAINT "public.links fk_links_creator"
pg_restore: creating FK CONSTRAINT "public.links fk_links_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.logininfo fk_logininfo_username"
pg_restore: creating FK CONSTRAINT "public.notifications fk_notifications_content"
pg_restore: creating FK CONSTRAINT "public.notifications fk_notifications_creator"
pg_restore: creating FK CONSTRAINT "public.notifications fk_notifications_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.notifications fk_notifications_username"
pg_restore: creating FK CONSTRAINT "public.pagetemplates fk_pagetemplates_creator"
pg_restore: creating FK CONSTRAINT "public.pagetemplates fk_pagetemplates_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.cwd_membership fk_parent_grp"
pg_restore: creating FK CONSTRAINT "public.usercontent_relation fk_relation_u2cuser"
pg_restore: creating FK CONSTRAINT "public.user_relation fk_relation_u2ususer"
pg_restore: creating FK CONSTRAINT "public.user_relation fk_relation_u2utuser"
pg_restore: creating FK CONSTRAINT "public.spacepermissions fk_spacepermissions_creator"
pg_restore: creating FK CONSTRAINT "public.spacepermissions fk_spacepermissions_lastmodifi"
pg_restore: creating FK CONSTRAINT "public.spacepermissions fk_spacepermissions_permuserna"
pg_restore: creating FK CONSTRAINT "public.spaces fk_spaces_creator"
pg_restore: creating FK CONSTRAINT "public.spaces fk_spaces_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.trackbacklinks fk_trackbacklinks_creator"
pg_restore: creating FK CONSTRAINT "public.trackbacklinks fk_trackbacklinks_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.usercontent_relation fk_u2crelation_creator"
pg_restore: creating FK CONSTRAINT "public.usercontent_relation fk_u2crelation_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.user_relation fk_u2urelation_creator"
pg_restore: creating FK CONSTRAINT "public.user_relation fk_u2urelation_lastmodifier"
pg_restore: creating FK CONSTRAINT "public.cwd_user_attribute fk_user_attr_dir_id"
pg_restore: creating FK CONSTRAINT "public.cwd_user_attribute fk_user_attribute_id_user_id"
pg_restore: creating FK CONSTRAINT "public.cwd_user fk_user_dir_id"
pg_restore: creating FK CONSTRAINT "public.imagedetails fka768048734a4917e"
pg_restore: creating FK CONSTRAINT "public.bodycontent fka898d4778dd41734"
pg_restore: creating FK CONSTRAINT "public.pagetemplates fkbc7ce96a17d4a070"
pg_restore: creating FK CONSTRAINT "public.pagetemplates fkbc7ce96ab2dc6081"
pg_restore: creating FK CONSTRAINT "public.content_perm fkbd74b31676e33274"
pg_restore: creating FK CONSTRAINT "public.content_perm_set fkbf45a7992caf22c1"
pg_restore: creating FK CONSTRAINT "public.spacepermissions fkd33f23beb2dc6081"
pg_restore: creating FK CONSTRAINT "public.external_members fkd8c8d8a5117d5fda"
pg_restore: creating FK CONSTRAINT "public.external_members fkd8c8d8a5f25e5d5f"
pg_restore: creating FK CONSTRAINT "public.trustedapp fkddb119ca9c85adb1"
pg_restore: creating FK CONSTRAINT "public.trustedapprestriction fke8496ba235d1d865"
pg_restore: creating FK CONSTRAINT "public.usercontent_relation fkecd19ced351d64c3"
pg_restore: creating FK CONSTRAINT "public.content_label fkf0e7436e27072aef"
pg_restore: creating FK CONSTRAINT "public.content_label fkf0e7436e8dd41734"
pg_restore: creating FK CONSTRAINT "public.content_label fkf0e7436ed32042e4"
pg_restore: creating FK CONSTRAINT "public.trackbacklinks fkf6977a478dd41734"
pg_restore: creating FK CONSTRAINT "re.buildings fk_buildings_town_areas"
pg_restore: creating FK CONSTRAINT "re.buildings fk_buildings_towns"
pg_restore: creating FK CONSTRAINT "re.properties fk_properties"
pg_restore: creating FK CONSTRAINT "re.properties fk_properties_blobs"
pg_restore: creating FK CONSTRAINT "re.properties fk_properties_buildings"
pg_restore: creating FK CONSTRAINT "re.properties_galleries fk_properties_galleries"
pg_restore: creating FK CONSTRAINT "re.properties_galleries fk_properties_galleries_images"
pg_restore: creating FK CONSTRAINT "re.properties fk_properties_owners"
pg_restore: creating FK CONSTRAINT "re.rooms fk_rooms_blobs"
pg_restore: creating FK CONSTRAINT "re.rooms_offers fk_rooms_offers"
pg_restore: creating FK CONSTRAINT "re.rooms_offers fk_rooms_offers_advertisers"
pg_restore: creating FK CONSTRAINT "re.rooms fk_rooms_properties"
pg_restore: creating FK CONSTRAINT "re.rooms_tenants fk_rooms_tenants"
pg_restore: creating FK CONSTRAINT "re.rooms_tenants fk_rooms_tenants_users"
pg_restore: creating FK CONSTRAINT "repository.fields fields_entities_fk"
pg_restore: creating FK CONSTRAINT "repository.fieldtypes fieldtypes_groups_fk"
pg_restore: creating FK CONSTRAINT "shipping.ferry_pricelist fk_ferry_pricelist"
pg_restore: creating FK CONSTRAINT "shipping.ferry_pricelist fk_ferry_pricelist_lines"
pg_restore: creating FK CONSTRAINT "shipping.ferry_pricelist fk_ferry_pricelist_periods"
pg_restore: creating FK CONSTRAINT "shipping.items_ferry_definitions fk_items_ferry_definitions_types"
pg_restore: creating FK CONSTRAINT "shipping.lines_ports fk_lines_ports"
pg_restore: creating FK CONSTRAINT "shipping.lines_ports fk_lines_ports_ports"
pg_restore: creating FK CONSTRAINT "shipping.lines_routes fk_lines_routes"
pg_restore: creating FK CONSTRAINT "shipping.lines_periods fk_periods_lines"
pg_restore: creating FK CONSTRAINT "shipping.lines_periods fk_periods_seasons"
pg_restore: creating FK CONSTRAINT "shipping.ports fk_ports"
pg_restore: creating FK CONSTRAINT "shipping.ports fk_ports_0"
pg_restore: creating FK CONSTRAINT "shipping.ports fk_ports_lines"
pg_restore: creating FK CONSTRAINT "shipping.timetable fk_timetable"
pg_restore: creating FK CONSTRAINT "shipping.timetable fk_timetable_companies"
pg_restore: creating FK CONSTRAINT "shipping.timetable_places fk_timetable_places"
pg_restore: creating FK CONSTRAINT "shipping.timetable_places fk_timetable_places_types"
pg_restore: creating FK CONSTRAINT "shipping.timetable_prices fk_timetable_prices"
pg_restore: creating FK CONSTRAINT "shipping.timetable_prices fk_timetable_prices_0"
pg_restore: creating FK CONSTRAINT "shipping.timetable fk_timetable_seasons"
pg_restore: creating FK CONSTRAINT "shipping.timetable fk_timetable_vessels"
pg_restore: creating FK CONSTRAINT "shipping.lines line_mainport_fk"
pg_restore: creating FK CONSTRAINT "shipping.lines line_termport_fk"
pg_restore: creating FK CONSTRAINT "social.messages fk_messages"
pg_restore: creating FK CONSTRAINT "social.messages fk_messages_to"
pg_restore: creating FK CONSTRAINT "social.msg_attachments fk_msg_attachments_files"
pg_restore: creating FK CONSTRAINT "social.msg_attachments fk_msg_attachments_msg"
pg_restore: creating FK CONSTRAINT "swap.events events_creator_fk"
pg_restore: creating FK CONSTRAINT "swap.events_users events_participants_events_fk"
pg_restore: creating FK CONSTRAINT "swap.events_users events_participants_users_fk"
pg_restore: creating FK CONSTRAINT "swap.followers followers_users_fk"
pg_restore: creating FK CONSTRAINT "swap.items_discovered items_discovered_items_fk"
pg_restore: creating FK CONSTRAINT "swap.items_discovered items_discovered_users_fk"
pg_restore: creating FK CONSTRAINT "swap.items_images items_images_items_fk"
pg_restore: creating FK CONSTRAINT "swap.items items_owners_fk"
pg_restore: creating FK CONSTRAINT "swap.notifications notification_swap_item_fk"
pg_restore: creating FK CONSTRAINT "swap.notifications notification_user_fk"
pg_restore: creating FK CONSTRAINT "swap.notifications notification_user_item_fk"
pg_restore: creating FK CONSTRAINT "swap.notifications_profiles notifications_profiles_types_fk"
pg_restore: creating FK CONSTRAINT "swap.notifications_profiles notifications_profiles_users_fk"
pg_restore: creating FK CONSTRAINT "swap.profiles profile_fk"
pg_restore: creating FK CONSTRAINT "swap.swaps swap_from_items_fk"
pg_restore: creating FK CONSTRAINT "swap.swaps swap_status_fk"
pg_restore: creating FK CONSTRAINT "swap.swaps_messages swaps_messages_swaps_fk"
pg_restore: creating FK CONSTRAINT "system.app_forms_objects app_form_objects_forms_fk"
pg_restore: creating FK CONSTRAINT "system.app_forms_translations app_form_trans_forms_fk"
pg_restore: creating FK CONSTRAINT "system.app_forms_objects_properties app_formobjectsproperties_objects_fk"
pg_restore: creating FK CONSTRAINT "system.app_forms_objects_translations app_forms_translation_properties_fk"
pg_restore: creating FK CONSTRAINT "system.app_forms_translations app_from_trans_languages_fk"
pg_restore: creating FK CONSTRAINT "system.app_licenses app_licenes_apps_fk"
pg_restore: creating FK CONSTRAINT "system.app_member_forms app_member_forms_fk"
pg_restore: creating FK CONSTRAINT "system.app_member_forms app_members_applications_fk"
pg_restore: creating FK CONSTRAINT "system.app_messages app_messages_apps"
pg_restore: creating FK CONSTRAINT "system.app_forms_objects app_objects_owners_fk"
pg_restore: creating FK CONSTRAINT "system.db_user_schema_params db_user_schema_params_db_schema_fk"
pg_restore: creating FK CONSTRAINT "system.db_users_payments db_users_payments_schemas_fk"
pg_restore: creating FK CONSTRAINT "system.db_users_payments db_users_payments_users_fk"
pg_restore: creating FK CONSTRAINT "system.db_users dbusr_sysroles_fk"
pg_restore: creating COMMENT "system.CONSTRAINT dbusr_sysroles_fk ON db_users"
pg_restore: creating FK CONSTRAINT "system.db_users_schemas dbusrschemas_dbusers_fk"
pg_restore: creating FK CONSTRAINT "system.packages_applications fk_ap_packages_applications"
pg_restore: creating FK CONSTRAINT "system.app_forms fk_app_forms_models"
pg_restore: creating FK CONSTRAINT "system.db_app_grp_param fk_db_app_grp_param"
pg_restore: creating FK CONSTRAINT "system.db_app_schemas fk_db_app_schemas"
pg_restore: creating FK CONSTRAINT "system.db_applications_roles fk_db_applications_roles"
pg_restore: creating FK CONSTRAINT "system.db_applications_roles fk_db_applications_roles_0"
pg_restore: creating FK CONSTRAINT "system.db_groups fk_db_groups"
pg_restore: creating FK CONSTRAINT "system.db_packages_schemas fk_db_packages_schemas"
pg_restore: creating FK CONSTRAINT "system.db_applications_roles fk_db_roles_applications"
pg_restore: creating FK CONSTRAINT "system.db_users_schemas_roles fk_db_roles_schemas_users"
pg_restore: creating FK CONSTRAINT "system.db_users_roles fk_db_roles_users"
pg_restore: creating FK CONSTRAINT "system.db_app_schemas fk_db_schemas_apps"
pg_restore: creating FK CONSTRAINT "system.db_schemas_roles fk_db_schemas_roles"
pg_restore: creating FK CONSTRAINT "system.db_schemas_roles fk_db_schemas_roles_0"
pg_restore: creating FK CONSTRAINT "system.db_schemas_roles fk_db_schemas_roles_1"
pg_restore: creating FK CONSTRAINT "system.db_schemas_roles fk_db_schemas_roles_2"
pg_restore: creating FK CONSTRAINT "system.db_schemas_roles fk_db_schemas_roles_3"
pg_restore: creating FK CONSTRAINT "system.db_user_groups fk_db_user_groups"
pg_restore: creating FK CONSTRAINT "system.db_user_groups fk_db_user_groups_0"
pg_restore: creating FK CONSTRAINT "system.db_user_sessions fk_db_user_sessions"
pg_restore: creating FK CONSTRAINT "system.db_user_sessions fk_db_user_sessions_db_users"
pg_restore: creating FK CONSTRAINT "system.db_user_sessions fk_db_user_sessions_lang"
pg_restore: creating FK CONSTRAINT "system.db_users_profiles fk_db_users_profiles_districts"
pg_restore: creating FK CONSTRAINT "system.db_users_profiles fk_db_users_profiles_gender"
pg_restore: creating FK CONSTRAINT "system.db_users_profiles fk_db_users_profiles_regions"
pg_restore: creating FK CONSTRAINT "system.db_users_profiles fk_db_users_profiles_towns"
pg_restore: creating FK CONSTRAINT "system.db_users_roles fk_db_users_roles"
pg_restore: creating FK CONSTRAINT "system.db_users_roles fk_db_users_roles_0"
pg_restore: creating FK CONSTRAINT "system.db_users_schemas fk_db_users_schemas"
pg_restore: creating FK CONSTRAINT "system.db_users_schemas_apps fk_db_users_schemas_apps"
pg_restore: creating FK CONSTRAINT "system.db_users_schemas_apps fk_db_users_schemas_apps_0"
pg_restore: creating FK CONSTRAINT "system.db_users_schemas_apps fk_db_users_schemas_apps_1"
pg_restore: creating FK CONSTRAINT "system.db_users_schemas_roles fk_db_users_schemas_roles"
pg_restore: creating FK CONSTRAINT "system.db_users_schemas_roles fk_db_users_schemas_roles_0"
pg_restore: creating FK CONSTRAINT "system.db_users_profiles fk_dbprofiles_users"
pg_restore: creating FK CONSTRAINT "system.form_models fk_form_models_parents"
pg_restore: creating FK CONSTRAINT "system.packages_applications fk_packages_applications"
pg_restore: creating FK CONSTRAINT "system.db_schema_params foreign_key01"
pg_restore: creating FK CONSTRAINT "system.db_users_profiles user_profiles_countries_fk"
pg_restore: creating FK CONSTRAINT "uni.departments departments_faculties_fk"
pg_restore: creating FK CONSTRAINT "uni.faculties faculties_universities_fk"
pg_restore: creating FK CONSTRAINT "uni.faculties fk_faculties_towns"
pg_restore: creating FK CONSTRAINT "uni.modules fk_modules"
pg_restore: creating FK CONSTRAINT "uni.modules_courses fk_modules_courses"
pg_restore: creating FK CONSTRAINT "uni.modules fk_modules_towns"
pg_restore: creating FK CONSTRAINT "uni.students fk_students_faculties"
pg_restore: creating FK CONSTRAINT "uni.students fk_students_universities"
pg_restore: creating FK CONSTRAINT "uni.students fk_students_users"
pg_restore: creating FK CONSTRAINT "uni.universities fk_universities"
pg_restore: creating FK CONSTRAINT "uni.universities fk_universities_0"
pg_restore: creating FK CONSTRAINT "uni.universities fk_universities_1"
pg_restore: creating FK CONSTRAINT "uni.universities fk_universities_images"
pg_restore: creating FK CONSTRAINT "workflow.attachments fk_attachments_works"
pg_restore: creating FK CONSTRAINT "workflow.workflows fk_workflows_levels"
pg_restore: creating FK CONSTRAINT "workflow.workflows fk_workflows_types"
pg_restore: creating ACL "crm.TABLE contactforms"
pg_restore: from TOC entry 13596; 0 0 ACL TABLE contactforms postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE crm.contactforms TO januaguest;


pg_restore: creating ACL "crm.TABLE form_definitions"
pg_restore: from TOC entry 13597; 0 0 ACL TABLE form_definitions postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE crm.form_definitions TO januaguest;


pg_restore: creating ACL "crm.TABLE quote_form_models"
pg_restore: from TOC entry 13608; 0 0 ACL TABLE quote_form_models postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT ON TABLE crm.quote_form_models TO januaguest;


pg_restore: creating ACL "crm.TABLE quote_forms"
pg_restore: from TOC entry 13620; 0 0 ACL TABLE quote_forms postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT ON TABLE crm.quote_forms TO januaguest;


pg_restore: creating ACL "crm.TABLE quote_frmmodels_prdserv"
pg_restore: from TOC entry 13621; 0 0 ACL TABLE quote_frmmodels_prdserv postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT ON TABLE crm.quote_frmmodels_prdserv TO januaguest;


pg_restore: creating ACL "crm.TABLE quote_productservices"
pg_restore: from TOC entry 13623; 0 0 ACL TABLE quote_productservices postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT ON TABLE crm.quote_productservices TO januaguest;


pg_restore: creating ACL "crm.TABLE subjects"
pg_restore: from TOC entry 13624; 0 0 ACL TABLE subjects postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE crm.subjects TO januaguest;


pg_restore: creating ACL "crm.TABLE subjects_details"
pg_restore: from TOC entry 13625; 0 0 ACL TABLE subjects_details postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE crm.subjects_details TO januaguest;


pg_restore: creating ACL "locale.TABLE it_it_health_prescription"
pg_restore: from TOC entry 13852; 0 0 ACL TABLE it_it_health_prescription ergo
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE locale.it_it_health_prescription TO januaguest;


pg_restore: creating ACL "locale.TABLE it_it_townscountries_codes"
pg_restore: from TOC entry 13854; 0 0 ACL TABLE it_it_townscountries_codes ergo
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE locale.it_it_townscountries_codes TO januaguest;


pg_restore: creating ACL "shipping.TABLE companies"
pg_restore: from TOC entry 13920; 0 0 ACL TABLE companies postgres
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: GRANT SELECT ON TABLE shipping.companies TO januaguest;


pg_restore: creating DEFAULT ACL "locale.DEFAULT PRIVILEGES FOR TABLES"
pg_restore: from TOC entry 7115; 826 39166 DEFAULT ACL DEFAULT PRIVILEGES FOR TABLES ergo
pg_restore: error: could not execute query: ERRORE:  il ruolo "januaguest" non esiste
Command was: ALTER DEFAULT PRIVILEGES FOR ROLE ergo IN SCHEMA locale REVOKE ALL ON TABLES  FROM ergo;
ALTER DEFAULT PRIVILEGES FOR ROLE ergo IN SCHEMA locale GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES  TO januaguest;


pg_restore: creating MATERIALIZED VIEW DATA "football.mv_match_descriptions"
pg_restore: creating MATERIALIZED VIEW DATA "football.mv_players_championships"
pg_restore: warning: errors ignored on restore: 388