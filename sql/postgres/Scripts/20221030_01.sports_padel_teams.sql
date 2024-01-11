SET SESSION "system.db_schema_id" = 39;
SET SESSION "sports.players_group_id" = 30;

INSERT INTO sports.team_players_view 
(team_id, season_id,  first_name, family_name, an_email  )
VALUES
(/* AREQUIPA */ 2, 2, 'Marco' , 'Bottero' , 'arequipa_2022@virgilio.it' );

/*
13,16,PADEL VIS CUNEO
*/

INSERT INTO sports.team_players_view 
(team_id, season_id,  first_name, family_name, an_email  )
VALUES
(/* AREQUIPA */ 3, 2, 'Andrea' , 'Martinengo' , '' ),
(/* AREQUIPA */ 3, 2, 'Paolo' , 'Martinengo' , '' ),
(/* AREQUIPA */ 3, 2, 'Andrea' , 'Dutto' , ''),

(/* AS. INTOMATICI */4, 2, 'Claudio', 'Robustelli' , 'claudiorobustelli@libero.it' ),
(/* AS. INTOMATICI */4, 2, 'Riccardo' , 'Comino' , '' ),
(/* AS. INTOMATICI */4, 2, 'Edoardo' , 'Giaccardi' , '' ),
(/* AS. INTOMATICI */4, 2, 'Alessandro' , 'Amato' , '' ),

(/* ATLETICO BANDEJA */5, 2, 'Carlo' , 'Maddalena' , 'madcarlo1976@libero.it' ),
(/* ATLETICO BANDEJA */5, 2, 'Lorenzo' , 'Di Giacomo' , '' ),
(/* ATLETICO BANDEJA */5, 2, 'Luca' , 'Zunino' , '' ),
(/* ATLETICO BANDEJA */5, 2, 'Augustin' , 'Antonio Reyna' , '' ),


(/* BAR PEANO */14, 2, 'Simone' , 'Peano' , 'simo.peano.ps@gmail.com' ),
(/* BAR PEANO */14, 2, 'Alberto' , 'Barale' , '' ),
(/* BAR PEANO */14, 2, 'Erik' , 'Giordanengo' , '' ),

(/* BIG MAC */11, 2, 'Stefano' , 'Cometto' , 'pojoblackandwhite@hotmail.it' ),
(/* BIG MAC */11, 2, 'Michele' , 'Cusimano' , '' ),
(/* BIG MAC */11, 2, 'Federico' , 'Malavolti', '' ),
(/* BIG MAC */11, 2, 'Daniele' , 'Cometto' , '' ),

(/* BUGIA NEN */20, 2, 'Luca' , 'Cacciatore' , 'luca.caccia88@gmail.com' ),
(/* BUGIA NEN */20, 2, 'Alberto' , 'Quaranta' , '' ),
(/* BUGIA NEN */20, 2, 'Danilo' , ' Grosso' , '' ),
(/* BUGIA NEN */20, 2, 'Andrea' , 'Bordin' , '' ),

(/* DODICICENTO */7, 2, 'Matteo 2' , 'Lingua' , 'mlingua@hotmail.it' ),
(/* DODICICENTO */7, 2, 'Lorenzo' , 'Massano' , '' ),
(/* DODICICENTO */7, 2, 'Marco' , 'Lingua' , '' ),
(/* DODICICENTO */7, 2, 'Andrea' , 'Perano' , '' ),

(/* FC PAMPERS */12, 2, 'Andrea' , 'Rubiano' , 'andrea.rubiano@gmail.com' ),
(/* FC PAMPERS */12, 2, 'Alfio' , 'Gianpapa' , '' ),
(/* FC PAMPERS */12, 2, 'Francesco' , 'Chiesa' , '' ),

(/* FESTE CON PADEL NEDVED */19, 2, 'Davide' , 'Bernardi' , 'davidebernardipersonale@gmail.com' ),
(/* FESTE CON PADEL NEDVED */19, 2, 'Matteo' , 'Parola' , '' ),
(/* FESTE CON PADEL NEDVED */19, 2, 'Lorenzo' , 'Bergese' , '' ),
(/* FESTE CON PADEL NEDVED */19, 2, 'Enrico' , 'Perla' , '' ),

(/* FISSOLOGRU PADEL TEAM */17, 2, 'Fulvio' , 'Giraudo' , 'fulvio.giraudo@fissologru.it' ),
(/* FISSOLOGRU PADEL TEAM */17, 2, 'Luca' , 'Menardo' , '' ),
(/* FISSOLOGRU PADEL TEAM */17, 2, 'Emanuele' , 'Cometto' , '' ),
(/* FISSOLOGRU PADEL TEAM */17, 2, 'Lorenzo' , 'Garnero' , '' ),

(/* GLI ULTIMI */10, 2, 'Matteo' , 'Lingua' , 'matteo.lingua94@gmail.com' ), 
(/* GLI ULTIMI */10, 2, 'Maurizio' , 'De Biasi' , '' ),
(/* GLI ULTIMI */10, 2, 'Giacomo' , 'Mattalia' , '' ),

(/* I RAGAZZI DELLA III B */16, 2, 'Alessandro' , 'Beltramo' , 'alessandro.beltramo@gmail.com' ),
(/* I RAGAZZI DELLA III B */16, 2, 'Stefano' , 'Beraudo' , '' ),
(/* I RAGAZZI DELLA III B */16, 2, 'Mattia' , 'Bruno' , '' ),

(/* LA MA.GI.CA */8, 2, 'Giovanni' , 'Madera' , 'giovanni.madera@gmail.com' ),
(/* LA MA.GI.CA */8, 2, 'Fabrizio' , 'Giordano' , '' ),
(/* LA MA.GI.CA */8, 2, ' Luca' , 'Cassarà' , '' ),

(/* LOS CHICHARITOS */9, 2, 'Alessandro' , 'Praia' , 'alexpraia@icloud.com' ),
(/* LOS CHICHARITOS */9, 2, 'Nicola' , 'Vigna' , '' ),
(/* LOS CHICHARITOS */9, 2, 'Davide' , 'Cavallo' , '' ),
(/* LOS CHICHARITOS */9, 2, 'Luca' , 'Floris' , '' ),

(/* LOS PICANTES */2, 2, 'Emmanuel' , 'Petenian' , 'petenian@gmail.com' ),
(/* LOS PICANTES */2, 2, 'Daniele' , 'Racca' , '' ),
(/* LOS PICANTES */2, 2, 'Mauricio' , 'Osimani' , '' ),
(/* LOS PICANTES */2, 2, 'Giovanni' , 'Pignata' , '' ),

(/* OFFICINA DEL PADEL TEAM */15, 2, 'Lorenzo' , 'Paoletti' , 'info@officinadelpadel.it' ),
(/* OFFICINA DEL PADEL TEAM */15, 2, 'Nicolas' , 'Pighin' , '' ),
(/* OFFICINA DEL PADEL TEAM */15, 2, ' J Pablo' , 'Barthelemy' , '' ),
(/* OFFICINA DEL PADEL TEAM */15, 2, 'Luca' , 'Manservigi' , '' ),

(/* PADEL SPORTING CUNEO */18, 2, 'Umberto' , 'Olivero' , 'umberto.olivero1996@gmail.com' ),
(/* PADEL SPORTING CUNEO */18, 2, 'Michele' , 'Cocito' , '' ),
(/* PADEL SPORTING CUNEO */18, 2, 'Lorenzo' , 'Sacco' , '' ),
(/* PADEL SPORTING CUNEO */18, 2, 'Filippo' , 'Olivero', '' ),

(/* PADEL VIS CUNEO */13, 2, 'Gianluca' , 'Viscusi' , 'padelviscuneo@gmail.com' ),
(/* PADEL VIS CUNEO */13, 2, 'Luigi' , 'Viscusi' , '' ),
(/* PADEL VIS CUNEO */13, 2, 'Tommaso' , 'Gosso' , '' ),
(/* PADEL VIS CUNEO */13, 2, 'Lorenzo Emilio' , 'Viscusi', '' ),

(/* SPADELLATORI BRUTTI */6,2, 'Daniele' , 'De Pascale' , 'daniele.depascale92@gmail.com' ),
(/* SPADELLATORI BRUTTI */6,2, 'Luca' , 'Giordano' , '' ),
(/* SPADELLATORI BRUTTI */6,2, 'Luca' , 'Piola' , '' ),
(/* SPADELLATORI BRUTTI */6,2, 'Andrea' , 'Nasi' , '' ),

(/* SUMA PADEL TOR */21, 2, 'Alessandro' , 'Allione' , 'alessandro.allione80@gmail.com' ),
(/* SUMA PADEL TOR */21, 2, 'Manuel' , 'Giordanengo' , '' ),
(/* SUMA PADEL TOR */21, 2, 'Manuele' , 'Cavallo' , '' ),
(/* SUMA PADEL TOR */21, 2, 'Vittorio' , 'Gallo' , '' );