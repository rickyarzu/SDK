--Function: workflow.sp_ins_workflows(bigint, uuid, timestamp with time zone, varchar, integer, integer, smallint, smallint, boolean, integer, smallint)

--DROP FUNCTION workflow.sp_ins_workflows(bigint, uuid, timestamp with time zone, varchar, integer, integer, smallint, smallint, boolean, integer, smallint);

CREATE OR REPLACE FUNCTION workflow.sp_ins_workflows
(
  IN  p_id            bigint,
  IN  p_jguid         uuid,
  IN  p_workdate      timestamp with time zone,
  IN  p_code          varchar,
  IN  p_office_id     integer,
  IN  p_customer_id   integer,
  IN  p_year          smallint,
  IN  p_type_id       smallint,
  IN  p_deleted       boolean,
  IN  p_db_schema_id  integer,
  IN  p_level_id      smallint                
)
RETURNS bigint AS
$$
DECLARE
  v_count bigint; v_id bigint; 
BEGIN
  v_count := 0; 

  if jguid is not null then 
  
   -- select the number of actors from the actor table
   select 
      count(1), min(id)
   into 
      v_count, v_id
   from 
      workflow.workflows where jguid = p_jguid; 

 
  end if; 


  if v_count > 0 then  -- begin if v_count
  
  v_id :=  
     workflow.sp_upd_workflows ( 
     p_id,
     p_jguid,
     p_workdate,
     p_code,
     p_office_id,
     p_customer_id,
     p_year,
     p_type_id,
     p_deleted,
     p_db_schema_id,
     p_level_id
     );
  
  else  -- if 0

    if p_jguid is null then
       p_jguid := '{' || public.uuid_generate_v1mc() || '}';
    end if;

    if p_deleted is null then
       p_deleted := false;
    end if;

    if p_db_schema_id is null then
       p_db_schema_id := 0;
    end if;
  
    if p_id IS null then
       p_id :=nextval ('workflow.workflows_seq');
    end if; 
    
    v_id := p_id; 

    INSERT INTO workflow.workflows (
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
      )
  VALUES (
    p_id,
    p_jguid,
    p_workdate,
    p_code,
    p_office_id,
    p_customer_id,
    p_year,
    p_type_id,
    p_deleted,
    p_db_schema_id,
    p_level_id
  );
 
  end if; 
  
  return v_id; 
  
END;
$$
LANGUAGE 'plpgsql';

ALTER FUNCTION workflow.sp_ins_workflows(bigint, uuid, timestamp with time zone, varchar, integer, integer, smallint, smallint, boolean, integer, smallint)
  OWNER TO ergo;