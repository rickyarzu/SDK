--DROP FUNCTION workflow.sp_sel_workflows; 

CREATE OR REPLACE FUNCTION workflow.sp_sel_workflows ()
RETURNS refcursor
AS
$$
  DECLARE result_cursor REFCURSOR;
BEGIN
  OPEN result_cursor FOR SELECT 
    id,
    jguid,
    workdate,
    code,
    office_id,
    customer_id,
    year,
    type_id,
    deleted,
    db_schema_id,
    level_id
  FROM 
    workflow.workflows;
  RETURN result_cursor;
END;
$$
LANGUAGE 'plpgsql';

--DROP FUNCTION workflow.sp_upd_workflows; 

CREATE OR REPLACE FUNCTION workflow.sp_upd_workflows ( 
  IN p_id bigint,
  IN p_jguid uuid,
  IN p_workdate timestamp with time zone,
  IN p_code varchar(30),
  IN p_office_id integer,
  IN p_customer_id integer,
  IN p_year smallint,
  IN p_type_id smallint,
  IN p_deleted boolean,
  IN p_db_schema_id integer,
  IN p_level_id smallint  
)
RETURNS integer
AS
$$
DECLARE 
    v_count bigint; v_id bigint; v_jguid uuid;
BEGIN

  if p_jguid is not null and p_id is null then 
     -- select the number of actors from the actor table
   select 
      count(1), id
   into 
      v_count, v_id
   from 
      workflow.workflows where jguid = p_jguid 
   group by id;
   p_id := v_id;     
  end if; 

  UPDATE workflow.workflows SET
    jguid = p_jguid,
    workdate = p_workdate,
    code = p_code,
    office_id = p_office_id,
    customer_id = p_customer_id,
    year = p_year,
    type_id = p_type_id,
    deleted = p_deleted,
    db_schema_id = p_db_schema_id,
    level_id = p_level_id
  WHERE 
    (id = p_id) ;
END;
$$
LANGUAGE 'plpgsql';    
  
--DROP FUNCTION workflow.sp_del_workflows;   
  
CREATE OR REPLACE FUNCTION workflow.sp_del_workflows ( 
  IN p_id bigint  
)
RETURNS void
AS
$$
BEGIN
  UPDATE workflow.workflows SET deleted = TRUE
  WHERE 
    (id = p_id) ;
END;
$$
LANGUAGE 'plpgsql';