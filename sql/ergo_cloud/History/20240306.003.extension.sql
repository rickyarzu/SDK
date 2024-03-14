-- Extension: "uuid-ossp"

-- DROP EXTENSION "uuid-ossp";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp"
    SCHEMA public
    VERSION "1.1";
	
-- Extension: orafce

-- DROP EXTENSION orafce;

CREATE EXTENSION IF NOT EXISTS orafce
    SCHEMA public;
	
CREATE EXTENSION IF NOT EXISTS pg_prewarm
    SCHEMA public;	

CREATE EXTENSION IF NOT EXISTS plpythonu
    SCHEMA pg_catalog;	
	
CREATE EXTENSION IF NOT EXISTS quantile
    SCHEMA pg_catalog;	
	
-- Extension: postgis

-- DROP EXTENSION postgis;

CREATE EXTENSION IF NOT EXISTS postgis
    SCHEMA public;
	
CREATE EXTENSION IF NOT EXISTS plr
    SCHEMA public;
	
CREATE SCHEMA topology; 
	
CREATE EXTENSION IF NOT EXISTS postgis_topology
    SCHEMA topology;	
	
CREATE EXTENSION IF NOT EXISTS tsm_system_time
    SCHEMA public;
	