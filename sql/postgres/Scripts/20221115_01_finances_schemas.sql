CREATE SCHEMA IF NOT EXISTS  payables
    AUTHORIZATION ergo;

COMMENT ON SCHEMA payables
    IS 'payables schema';
	
CREATE SCHEMA IF NOT EXISTS  receivables
    AUTHORIZATION ergo;

COMMENT ON SCHEMA receivables
    IS 'receivable schema';
	
CREATE SCHEMA IF NOT EXISTS  finance
    AUTHORIZATION ergo;

COMMENT ON SCHEMA finance
    IS 'finance, cash accounts, credits and debits'
	
	
	
	