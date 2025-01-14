-- View: sports.clubs_view

-- DROP VIEW sports.clubs_view;

CREATE OR REPLACE VIEW sports.clubs_view
 AS
 SELECT c.id,
    c.club_name,
    c.foundation_date,
    c.president,
    c.stadium_id,
    c.town,
    c.vice_president,
    c.team_manager,
    c.athletic_manager,
    c.colors,
    c.website,
    c.remote_id,
    c.anagraph_id,
    c.club_image,
    c.db_schema_id,
    c.jguid,
    c.deleted,
    c.insert_date,
    c.update_date,
    c.user_insert,
    c.user_update,
	a.an_name,
	a.an_last_name,
	a.an_address,
	a.an_town,
	a.an_postal_code,
	a.an_state_province,
	a.an_email,
	a.an_iso_country_code,
	a.an_web,
	a.an_code,
	a.an_vat_numeric,
	a.an_cod_comune,
	a.an_cod_provincia,
	a.an_vat_id,
	a.an_personal_fiscal_code,
	a.an_phone,
	a.an_phone2,
	a.an_cellular,
	a.an_currency_id,
	a.an_main_group_id,
	a.main_category_id
   FROM sports.clubs c left join anagraph.anagraphs_view a on c.anagraph_id = a.anagraph_id
  WHERE c.db_schema_id = system.get_schema_id();

ALTER TABLE sports.clubs_view
    OWNER TO ergo;

