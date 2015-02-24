#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


CREATE TABLE users(
        user_id       int (11) Auto_increment  NOT NULL ,
        user_ban      Bool NOT NULL ,
        user_pseudo   Varchar (25) NOT NULL ,
        user_email    Varchar (255) NOT NULL ,
        user_birthday Datetime NOT NULL ,
        user_sexe     Bool ,
        user_password Varchar (255) NOT NULL ,
        perso_id      Int NOT NULL ,
        lev_id        Int NOT NULL ,
        obj_id        Int NOT NULL ,
        usert_id      Int NOT NULL ,
        PRIMARY KEY (user_id )
)ENGINE=InnoDB;


CREATE TABLE personnages(
        perso_id        int (11) Auto_increment  NOT NULL ,
        perso_name      Varchar (255) NOT NULL ,
        perso_firstname Varchar (255) NOT NULL ,
        perso_descr     Text ,
        perso_block     Bool NOT NULL ,
        PRIMARY KEY (perso_id )
)ENGINE=InnoDB;


CREATE TABLE tech_perso(
        techp_id    int (11) Auto_increment  NOT NULL ,
        techp_name  Varchar (25) NOT NULL ,
        techp_descr Text ,
        techp_block Bool NOT NULL ,
        perso_id    Int NOT NULL ,
        techt_id    Int NOT NULL ,
        PRIMARY KEY (techp_id )
)ENGINE=InnoDB;


CREATE TABLE tech_types(
        techt_id    int (11) Auto_increment  NOT NULL ,
        techt_name  Varchar (25) NOT NULL ,
        techt_block Bool NOT NULL ,
        PRIMARY KEY (techt_id )
)ENGINE=InnoDB;


CREATE TABLE perso_avatars(
        persoa_id    int (11) Auto_increment  NOT NULL ,
        persoa_name  Varchar (255) NOT NULL ,
        persoa_file  Varchar (255) NOT NULL ,
        persoa_block Bool NOT NULL ,
        perso_id     Int NOT NULL ,
        PRIMARY KEY (persoa_id )
)ENGINE=InnoDB;


CREATE TABLE levels(
        lev_id     int (11) Auto_increment  NOT NULL ,
        lev_number Int NOT NULL ,
        lev_block  Bool NOT NULL ,
        PRIMARY KEY (lev_id )
)ENGINE=InnoDB;


CREATE TABLE places(
        place_id    int (11) Auto_increment  NOT NULL ,
        place_name  Varchar (255) NOT NULL ,
        place_block Bool NOT NULL ,
        lev_id      Int NOT NULL ,
        island_id   Int NOT NULL ,
        placet_id   Int NOT NULL ,
        PRIMARY KEY (place_id )
)ENGINE=InnoDB;


CREATE TABLE islands(
        island_id    int (11) Auto_increment  NOT NULL ,
        island_nom   Varchar (255) NOT NULL ,
        island_block Bool NOT NULL ,
        PRIMARY KEY (island_id )
)ENGINE=InnoDB;


CREATE TABLE places_types(
        placet_id    int (11) Auto_increment  NOT NULL ,
        placet_name  Varchar (255) NOT NULL ,
        placet_block Bool NOT NULL ,
        PRIMARY KEY (placet_id )
)ENGINE=InnoDB;


CREATE TABLE places_quiz(
        placeq_id       int (11) Auto_increment  NOT NULL ,
        placeq_question Text NOT NULL ,
        placeq_ans1     Text NOT NULL ,
        placeq_ans2     Text NOT NULL ,
        placeq_ans3     Text NOT NULL ,
        placeq_ans4     Text NOT NULL ,
        place_id        Int ,
        PRIMARY KEY (placeq_id )
)ENGINE=InnoDB;


CREATE TABLE ennemies(
        enn_id        int (11) Auto_increment  NOT NULL ,
        enn_name      Varchar (25) NOT NULL ,
        enn_firstname Varchar (25) ,
        enn_file      Varchar (255) NOT NULL ,
        enn_block     Bool NOT NULL ,
        PRIMARY KEY (enn_id )
)ENGINE=InnoDB;


CREATE TABLE tech_ennemies(
        teche_id    int (11) Auto_increment  NOT NULL ,
        teche_nom   Varchar (255) NOT NULL ,
        teche_descr Text ,
        techt_id    Int NOT NULL ,
        enn_id      Int NOT NULL ,
        PRIMARY KEY (teche_id )
)ENGINE=InnoDB;


CREATE TABLE chests(
        chest_id  int (11) Auto_increment  NOT NULL ,
        chestt_id Int NOT NULL ,
        PRIMARY KEY (chest_id )
)ENGINE=InnoDB;


CREATE TABLE chests_types(
        chestt_id    int (11) Auto_increment  NOT NULL ,
        chestt_name  Varchar (25) NOT NULL ,
        chestt_size  Int NOT NULL ,
        chestt_file  Varchar (255) NOT NULL ,
        chestt_block Bool NOT NULL ,
        PRIMARY KEY (chestt_id )
)ENGINE=InnoDB;


CREATE TABLE objects(
        obj_id    int (11) Auto_increment  NOT NULL ,
        obj_name  Varchar (255) NOT NULL ,
        obj_file  Varchar (255) NOT NULL ,
        obj_block Bool NOT NULL ,
        objt_id   Int NOT NULL ,
        PRIMARY KEY (obj_id )
)ENGINE=InnoDB;


CREATE TABLE objects_types(
        objt_id    int (11) Auto_increment  NOT NULL ,
        objt_name  Varchar (25) NOT NULL ,
        objt_block Bool NOT NULL ,
        PRIMARY KEY (objt_id )
)ENGINE=InnoDB;


CREATE TABLE bags(
        bag_id  int (11) Auto_increment  NOT NULL ,
        bagt_id Int NOT NULL ,
        PRIMARY KEY (bag_id )
)ENGINE=InnoDB;


CREATE TABLE bags_types(
        bagt_id    int (11) Auto_increment  NOT NULL ,
        bagt_name  Varchar (25) NOT NULL ,
        bagt_size  Int NOT NULL ,
        bagt_file  Varchar (255) NOT NULL ,
        bagt_block Bool NOT NULL ,
        PRIMARY KEY (bagt_id )
)ENGINE=InnoDB;


CREATE TABLE cages(
        cage_id  int (11) Auto_increment  NOT NULL ,
        caget_id Int NOT NULL ,
        PRIMARY KEY (cage_id )
)ENGINE=InnoDB;


CREATE TABLE cages_types(
        caget_id    int (11) Auto_increment  NOT NULL ,
        caget_nom   Varchar (25) NOT NULL ,
        caget_file  Varchar (255) NOT NULL ,
        caget_block Bool NOT NULL ,
        PRIMARY KEY (caget_id )
)ENGINE=InnoDB;


CREATE TABLE pets(
        pet_id    int (11) Auto_increment  NOT NULL ,
        pet_name  Varchar (25) NOT NULL ,
        pet_file  Varchar (255) NOT NULL ,
        pet_block Bool NOT NULL ,
        pett_id   Int NOT NULL ,
        PRIMARY KEY (pet_id )
)ENGINE=InnoDB;


CREATE TABLE pets_types(
        pett_id    int (11) Auto_increment  NOT NULL ,
        pett_name  Varchar (25) NOT NULL ,
        pett_block Bool NOT NULL ,
        PRIMARY KEY (pett_id )
)ENGINE=InnoDB;


CREATE TABLE crews(
        crew_id    int (11) Auto_increment  NOT NULL ,
        crew_name  Varchar (25) NOT NULL ,
        crew_money Int NOT NULL ,
        crew_page  Text ,
        crew_file  Varchar (255) NOT NULL ,
        crewt_id   Int NOT NULL ,
        banks_id   Int NOT NULL ,
        PRIMARY KEY (crew_id )
)ENGINE=InnoDB;


CREATE TABLE crews_grades(
        crewg_id    int (11) Auto_increment  NOT NULL ,
        crewg_nom   Varchar (25) NOT NULL ,
        crewg_file  Varchar (255) NOT NULL ,
        crewg_block Bool NOT NULL ,
        PRIMARY KEY (crewg_id )
)ENGINE=InnoDB;


CREATE TABLE crews_types(
        crewt_id    int (11) Auto_increment  NOT NULL ,
        crewt_name  Varchar (25) NOT NULL ,
        crewt_file  Varchar (255) NOT NULL ,
        crewt_block Bool NOT NULL ,
        PRIMARY KEY (crewt_id )
)ENGINE=InnoDB;


CREATE TABLE crews_banks(
        banks_id int (11) Auto_increment  NOT NULL ,
        PRIMARY KEY (banks_id )
)ENGINE=InnoDB;


CREATE TABLE crews_equipments(
        crewe_id    int (11) Auto_increment  NOT NULL ,
        crewe_name  Varchar (25) NOT NULL ,
        crewe_block Bool NOT NULL ,
        crowet_id   Int NOT NULL ,
        PRIMARY KEY (crewe_id )
)ENGINE=InnoDB;


CREATE TABLE crews_equipments_types(
        crowet_id    int (11) Auto_increment  NOT NULL ,
        crowet_nom   Varchar (25) NOT NULL ,
        crowet_block Bool NOT NULL ,
        PRIMARY KEY (crowet_id )
)ENGINE=InnoDB;


CREATE TABLE forums_topics(
        topic_id   int (11) Auto_increment  NOT NULL ,
        topic_name Varchar (35) NOT NULL ,
        cate_id    Int NOT NULL ,
        PRIMARY KEY (topic_id )
)ENGINE=InnoDB;


CREATE TABLE forums_categories(
        cate_id    int (11) Auto_increment  NOT NULL ,
        cate_nom   Varchar (35) NOT NULL ,
        cate_descr Varchar (255) NOT NULL ,
        forum_id   Int NOT NULL ,
        PRIMARY KEY (cate_id )
)ENGINE=InnoDB;


CREATE TABLE forums_types(
        forum_id    int (11) Auto_increment  NOT NULL ,
        forum_name  Varchar (25) NOT NULL ,
        forum_block Bool NOT NULL ,
        PRIMARY KEY (forum_id )
)ENGINE=InnoDB;


CREATE TABLE tchats(
        tchat_id   int (11) Auto_increment  NOT NULL ,
        tchat_name Varchar (25) NOT NULL ,
        tchatt_id  Int NOT NULL ,
        PRIMARY KEY (tchat_id )
)ENGINE=InnoDB;


CREATE TABLE tchats_types(
        tchatt_id    int (11) Auto_increment  NOT NULL ,
        tchatt_name  Varchar (25) NOT NULL ,
        tchatt_descr Varchar (255) NOT NULL ,
        PRIMARY KEY (tchatt_id )
)ENGINE=InnoDB;


CREATE TABLE users_types(
        usert_id   int (11) Auto_increment  NOT NULL ,
        usert_name Varchar (25) NOT NULL ,
        usert_bloc Bool ,
        PRIMARY KEY (usert_id )
)ENGINE=InnoDB;


CREATE TABLE news(
        new_id      int (11) Auto_increment  NOT NULL ,
        new_date    Date NOT NULL ,
        new_titre   Varchar (255) NOT NULL ,
        new_message Text NOT NULL ,
        new_block   Bool NOT NULL ,
        user_id     Int NOT NULL ,
        PRIMARY KEY (new_id )
)ENGINE=InnoDB;


CREATE TABLE news_comments(
        news_id      int (11) Auto_increment  NOT NULL ,
        newc_date    Date NOT NULL ,
        newc_message Text NOT NULL ,
        newc_block   Bool NOT NULL ,
        user_id      Int NOT NULL ,
        new_id       Int NOT NULL ,
        PRIMARY KEY (news_id )
)ENGINE=InnoDB;


CREATE TABLE privates_messages(
        pmess_id      int (11) Auto_increment  NOT NULL ,
        pmess_content Text NOT NULL ,
        pmess_date    Date NOT NULL ,
        pmess_read    Bool NOT NULL ,
        pmess_delete  Bool NOT NULL ,
        user_id       Int NOT NULL ,
        user_id_users Int NOT NULL ,
        PRIMARY KEY (pmess_id )
)ENGINE=InnoDB;


CREATE TABLE users_avatars(
        user_id   Int NOT NULL ,
        persoa_id Int NOT NULL ,
        PRIMARY KEY (user_id ,persoa_id )
)ENGINE=InnoDB;


CREATE TABLE lieux_ennemis(
        place_id Int NOT NULL ,
        enn_id   Int NOT NULL ,
        PRIMARY KEY (place_id ,enn_id )
)ENGINE=InnoDB;


CREATE TABLE coffres_comptes(
        user_id  Int NOT NULL ,
        chest_id Int NOT NULL ,
        PRIMARY KEY (user_id ,chest_id )
)ENGINE=InnoDB;


CREATE TABLE chest_objects(
        chest_id Int NOT NULL ,
        obj_id   Int NOT NULL ,
        PRIMARY KEY (chest_id ,obj_id )
)ENGINE=InnoDB;


CREATE TABLE users_bag(
        user_id Int NOT NULL ,
        bag_id  Int NOT NULL ,
        PRIMARY KEY (user_id ,bag_id )
)ENGINE=InnoDB;


CREATE TABLE bags_objects(
        bag_id Int NOT NULL ,
        obj_id Int NOT NULL ,
        PRIMARY KEY (bag_id ,obj_id )
)ENGINE=InnoDB;


CREATE TABLE cages_users(
        user_id Int NOT NULL ,
        cage_id Int NOT NULL ,
        PRIMARY KEY (user_id ,cage_id )
)ENGINE=InnoDB;


CREATE TABLE cages_pets(
        cage_id Int NOT NULL ,
        pet_id  Int NOT NULL ,
        PRIMARY KEY (cage_id ,pet_id )
)ENGINE=InnoDB;


CREATE TABLE crews_users(
        crew_id  Int NOT NULL ,
        user_id  Int NOT NULL ,
        crewg_id Int NOT NULL ,
        PRIMARY KEY (crew_id ,user_id ,crewg_id )
)ENGINE=InnoDB;


CREATE TABLE crews_banks_objects(
        banks_id Int NOT NULL ,
        obj_id   Int NOT NULL ,
        PRIMARY KEY (banks_id ,obj_id )
)ENGINE=InnoDB;


CREATE TABLE crews_boats(
        crewe_id Int NOT NULL ,
        crew_id  Int NOT NULL ,
        PRIMARY KEY (crewe_id ,crew_id )
)ENGINE=InnoDB;


CREATE TABLE forums_topics_messages(
        message       Longtext NOT NULL ,
        message_block Bool NOT NULL ,
        topic_id      Int NOT NULL ,
        user_id       Int NOT NULL ,
        PRIMARY KEY (topic_id ,user_id )
)ENGINE=InnoDB;


CREATE TABLE tchats_messages(
        message       Longtext NOT NULL ,
        message_block Bool NOT NULL ,
        tchat_id      Int NOT NULL ,
        user_id       Int NOT NULL ,
        PRIMARY KEY (tchat_id ,user_id )
)ENGINE=InnoDB;

ALTER TABLE users ADD CONSTRAINT FK_users_perso_id FOREIGN KEY (perso_id) REFERENCES personnages(perso_id);
ALTER TABLE users ADD CONSTRAINT FK_users_lev_id FOREIGN KEY (lev_id) REFERENCES levels(lev_id);
ALTER TABLE users ADD CONSTRAINT FK_users_obj_id FOREIGN KEY (obj_id) REFERENCES objects(obj_id);
ALTER TABLE users ADD CONSTRAINT FK_users_usert_id FOREIGN KEY (usert_id) REFERENCES users_types(usert_id);
ALTER TABLE tech_perso ADD CONSTRAINT FK_tech_perso_perso_id FOREIGN KEY (perso_id) REFERENCES personnages(perso_id);
ALTER TABLE tech_perso ADD CONSTRAINT FK_tech_perso_techt_id FOREIGN KEY (techt_id) REFERENCES tech_types(techt_id);
ALTER TABLE perso_avatars ADD CONSTRAINT FK_perso_avatars_perso_id FOREIGN KEY (perso_id) REFERENCES personnages(perso_id);
ALTER TABLE places ADD CONSTRAINT FK_places_lev_id FOREIGN KEY (lev_id) REFERENCES levels(lev_id);
ALTER TABLE places ADD CONSTRAINT FK_places_island_id FOREIGN KEY (island_id) REFERENCES islands(island_id);
ALTER TABLE places ADD CONSTRAINT FK_places_placet_id FOREIGN KEY (placet_id) REFERENCES places_types(placet_id);
ALTER TABLE places_quiz ADD CONSTRAINT FK_places_quiz_place_id FOREIGN KEY (place_id) REFERENCES places(place_id);
ALTER TABLE tech_ennemies ADD CONSTRAINT FK_tech_ennemies_techt_id FOREIGN KEY (techt_id) REFERENCES tech_types(techt_id);
ALTER TABLE tech_ennemies ADD CONSTRAINT FK_tech_ennemies_enn_id FOREIGN KEY (enn_id) REFERENCES ennemies(enn_id);
ALTER TABLE chests ADD CONSTRAINT FK_chests_chestt_id FOREIGN KEY (chestt_id) REFERENCES chests_types(chestt_id);
ALTER TABLE objects ADD CONSTRAINT FK_objects_objt_id FOREIGN KEY (objt_id) REFERENCES objects_types(objt_id);
ALTER TABLE bags ADD CONSTRAINT FK_bags_bagt_id FOREIGN KEY (bagt_id) REFERENCES bags_types(bagt_id);
ALTER TABLE cages ADD CONSTRAINT FK_cages_caget_id FOREIGN KEY (caget_id) REFERENCES cages_types(caget_id);
ALTER TABLE pets ADD CONSTRAINT FK_pets_pett_id FOREIGN KEY (pett_id) REFERENCES pets_types(pett_id);
ALTER TABLE crews ADD CONSTRAINT FK_crews_crewt_id FOREIGN KEY (crewt_id) REFERENCES crews_types(crewt_id);
ALTER TABLE crews ADD CONSTRAINT FK_crews_banks_id FOREIGN KEY (banks_id) REFERENCES crews_banks(banks_id);
ALTER TABLE crews_equipments ADD CONSTRAINT FK_crews_equipments_crowet_id FOREIGN KEY (crowet_id) REFERENCES crews_equipments_types(crowet_id);
ALTER TABLE forums_topics ADD CONSTRAINT FK_forums_topics_cate_id FOREIGN KEY (cate_id) REFERENCES forums_categories(cate_id);
ALTER TABLE forums_categories ADD CONSTRAINT FK_forums_categories_forum_id FOREIGN KEY (forum_id) REFERENCES forums_types(forum_id);
ALTER TABLE tchats ADD CONSTRAINT FK_tchats_tchatt_id FOREIGN KEY (tchatt_id) REFERENCES tchats_types(tchatt_id);
ALTER TABLE news ADD CONSTRAINT FK_news_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE news_comments ADD CONSTRAINT FK_news_comments_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE news_comments ADD CONSTRAINT FK_news_comments_new_id FOREIGN KEY (new_id) REFERENCES news(new_id);
ALTER TABLE privates_messages ADD CONSTRAINT FK_privates_messages_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE privates_messages ADD CONSTRAINT FK_privates_messages_user_id_users FOREIGN KEY (user_id_users) REFERENCES users(user_id);
ALTER TABLE users_avatars ADD CONSTRAINT FK_users_avatars_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE users_avatars ADD CONSTRAINT FK_users_avatars_persoa_id FOREIGN KEY (persoa_id) REFERENCES perso_avatars(persoa_id);
ALTER TABLE lieux_ennemis ADD CONSTRAINT FK_lieux_ennemis_place_id FOREIGN KEY (place_id) REFERENCES places(place_id);
ALTER TABLE lieux_ennemis ADD CONSTRAINT FK_lieux_ennemis_enn_id FOREIGN KEY (enn_id) REFERENCES ennemies(enn_id);
ALTER TABLE coffres_comptes ADD CONSTRAINT FK_coffres_comptes_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE coffres_comptes ADD CONSTRAINT FK_coffres_comptes_chest_id FOREIGN KEY (chest_id) REFERENCES chests(chest_id);
ALTER TABLE chest_objects ADD CONSTRAINT FK_chest_objects_chest_id FOREIGN KEY (chest_id) REFERENCES chests(chest_id);
ALTER TABLE chest_objects ADD CONSTRAINT FK_chest_objects_obj_id FOREIGN KEY (obj_id) REFERENCES objects(obj_id);
ALTER TABLE users_bag ADD CONSTRAINT FK_users_bag_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE users_bag ADD CONSTRAINT FK_users_bag_bag_id FOREIGN KEY (bag_id) REFERENCES bags(bag_id);
ALTER TABLE bags_objects ADD CONSTRAINT FK_bags_objects_bag_id FOREIGN KEY (bag_id) REFERENCES bags(bag_id);
ALTER TABLE bags_objects ADD CONSTRAINT FK_bags_objects_obj_id FOREIGN KEY (obj_id) REFERENCES objects(obj_id);
ALTER TABLE cages_users ADD CONSTRAINT FK_cages_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE cages_users ADD CONSTRAINT FK_cages_users_cage_id FOREIGN KEY (cage_id) REFERENCES cages(cage_id);
ALTER TABLE cages_pets ADD CONSTRAINT FK_cages_pets_cage_id FOREIGN KEY (cage_id) REFERENCES cages(cage_id);
ALTER TABLE cages_pets ADD CONSTRAINT FK_cages_pets_pet_id FOREIGN KEY (pet_id) REFERENCES pets(pet_id);
ALTER TABLE crews_users ADD CONSTRAINT FK_crews_users_crew_id FOREIGN KEY (crew_id) REFERENCES crews(crew_id);
ALTER TABLE crews_users ADD CONSTRAINT FK_crews_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE crews_users ADD CONSTRAINT FK_crews_users_crewg_id FOREIGN KEY (crewg_id) REFERENCES crews_grades(crewg_id);
ALTER TABLE crews_banks_objects ADD CONSTRAINT FK_crews_banks_objects_banks_id FOREIGN KEY (banks_id) REFERENCES crews_banks(banks_id);
ALTER TABLE crews_banks_objects ADD CONSTRAINT FK_crews_banks_objects_obj_id FOREIGN KEY (obj_id) REFERENCES objects(obj_id);
ALTER TABLE crews_boats ADD CONSTRAINT FK_crews_boats_crewe_id FOREIGN KEY (crewe_id) REFERENCES crews_equipments(crewe_id);
ALTER TABLE crews_boats ADD CONSTRAINT FK_crews_boats_crew_id FOREIGN KEY (crew_id) REFERENCES crews(crew_id);
ALTER TABLE forums_topics_messages ADD CONSTRAINT FK_forums_topics_messages_topic_id FOREIGN KEY (topic_id) REFERENCES forums_topics(topic_id);
ALTER TABLE forums_topics_messages ADD CONSTRAINT FK_forums_topics_messages_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE tchats_messages ADD CONSTRAINT FK_tchats_messages_tchat_id FOREIGN KEY (tchat_id) REFERENCES tchats(tchat_id);
ALTER TABLE tchats_messages ADD CONSTRAINT FK_tchats_messages_user_id FOREIGN KEY (user_id) REFERENCES users(user_id);
