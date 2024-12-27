SELECT   
   distinct  
   p.family_name || ' ' || p.first_name || ' - ' 
   || public.nvl( to_char(p.birth_date, 'dd/mm/yy') , public.nvl(p.notes, 'n.d.') ) 
   || ' ' || p.role_name    
   as fullname
   , anagraph_id,  family_name , first_name, p.role, p.notes, p.id as player_id

  FROM 
    sports.team_players_view p
where 
public.nvl(p.role, 0) = r.role_id
and
p.club_id = :club_id
and
p.season_id = :season_id
and
(
 not exists (select 1 from  sports.teams_players z
  where  z.team_id = :team_id and z.season_id = :season_id and z.player_id = p.id)
 or :check_team = 'N'
)
order by family_name, first_name


CREATE INDEX STATINI_WANUMBER_NDX
ON STATINI (WANUMBER)

CREATE INDEX APPUNTAMENTO_DATA_NDX
ON STATINI (APPUNTAMENTO_DATA)