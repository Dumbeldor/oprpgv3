#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: users
#------------------------------------------------------------

CREATE TABLE users(
        id             int (11) Auto_increment  NOT NULL ,
        ban            Bool NOT NULL ,
        pseudo         Varchar (25) NOT NULL ,
        email          Varchar (255) NOT NULL ,
        birthday       Date NOT NULL ,
        sexe           Bool ,
        password       Varchar (255) NOT NULL ,
        is_kick        Bool NOT NULL ,
        id_personnages Int NOT NULL ,
        id_levels      Int NOT NULL ,
        id_objects     Int NOT NULL ,
        id_users_types Int NOT NULL ,
        id_users_ranks Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: personnages
#------------------------------------------------------------

CREATE TABLE personnages(
        id        int (11) Auto_increment  NOT NULL ,
        name      Varchar (255) NOT NULL ,
        firstname Varchar (255) NOT NULL ,
        descr     Text ,
        is_block  Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: tech_perso
#------------------------------------------------------------

CREATE TABLE tech_perso(
        id             int (11) Auto_increment  NOT NULL ,
        name           Varchar (25) NOT NULL ,
        descr          Text ,
        is_block       Bool NOT NULL ,
        id_personnages Int NOT NULL ,
        id_tech_types  Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: tech_types
#------------------------------------------------------------

CREATE TABLE tech_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: perso_avatars
#------------------------------------------------------------

CREATE TABLE perso_avatars(
        id             int (11) Auto_increment  NOT NULL ,
        name           Varchar (255) NOT NULL ,
        file           Varchar (255) NOT NULL ,
        is_block       Bool NOT NULL ,
        id_personnages Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: levels
#------------------------------------------------------------

CREATE TABLE levels(
        id       int (11) Auto_increment  NOT NULL ,
        number   Int NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: places
#------------------------------------------------------------

CREATE TABLE places(
        id              int (11) Auto_increment  NOT NULL ,
        name            Varchar (255) NOT NULL ,
        block           Bool NOT NULL ,
        id_levels       Int NOT NULL ,
        id_islands      Int NOT NULL ,
        id_places_types Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: islands
#------------------------------------------------------------

CREATE TABLE islands(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (255) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: places_types
#------------------------------------------------------------

CREATE TABLE places_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (255) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: places_quiz
#------------------------------------------------------------

CREATE TABLE places_quiz(
        id        int (11) Auto_increment  NOT NULL ,
        question  Text NOT NULL ,
        ans1      Text NOT NULL ,
        ans2      Text NOT NULL ,
        ans3      Text NOT NULL ,
        ans4      Text NOT NULL ,
        id_places Int ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ennemies
#------------------------------------------------------------

CREATE TABLE ennemies(
        id        int (11) Auto_increment  NOT NULL ,
        name      Varchar (25) NOT NULL ,
        firstname Varchar (25) ,
        file      Varchar (255) NOT NULL ,
        is_block  Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: tech_ennemies
#------------------------------------------------------------

CREATE TABLE tech_ennemies(
        id            int (11) Auto_increment  NOT NULL ,
        name          Varchar (255) NOT NULL ,
        descr         Text ,
        is_block      Bool NOT NULL ,
        id_tech_types Int NOT NULL ,
        id_ennemies   Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: chests
#------------------------------------------------------------

CREATE TABLE chests(
        id              int (11) Auto_increment  NOT NULL ,
        id_chests_types Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: chests_types
#------------------------------------------------------------

CREATE TABLE chests_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        size     Int NOT NULL ,
        file     Varchar (255) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: objects
#------------------------------------------------------------

CREATE TABLE objects(
        id               int (11) Auto_increment  NOT NULL ,
        name             Varchar (255) NOT NULL ,
        file             Varchar (255) NOT NULL ,
        is_block         Bool NOT NULL ,
        id_objects_types Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: objects_types
#------------------------------------------------------------

CREATE TABLE objects_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: bags
#------------------------------------------------------------

CREATE TABLE bags(
        id            int (11) Auto_increment  NOT NULL ,
        id_bags_types Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: bags_types
#------------------------------------------------------------

CREATE TABLE bags_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        size     Int NOT NULL ,
        file     Varchar (255) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: cages
#------------------------------------------------------------

CREATE TABLE cages(
        id             int (11) Auto_increment  NOT NULL ,
        id_cages_types Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: cages_types
#------------------------------------------------------------

CREATE TABLE cages_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        file     Varchar (255) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: pets
#------------------------------------------------------------

CREATE TABLE pets(
        id            int (11) Auto_increment  NOT NULL ,
        name          Varchar (25) NOT NULL ,
        file          Varchar (255) NOT NULL ,
        is_block      Bool NOT NULL ,
        id_pets_types Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: pets_types
#------------------------------------------------------------

CREATE TABLE pets_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: crews
#------------------------------------------------------------

CREATE TABLE crews(
        id             int (11) Auto_increment  NOT NULL ,
        name           Varchar (25) NOT NULL ,
        money          Int NOT NULL ,
        page           Text ,
        file           Varchar (255) NOT NULL ,
        date_time      Datetime NOT NULL ,
        is_block       Bool NOT NULL ,
        id_crews_types Int NOT NULL ,
        id_crews_banks Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: crews_grades
#------------------------------------------------------------

CREATE TABLE crews_grades(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        file     Varchar (255) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: crews_types
#------------------------------------------------------------

CREATE TABLE crews_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        file     Varchar (255) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: crews_banks
#------------------------------------------------------------

CREATE TABLE crews_banks(
        id int (11) Auto_increment  NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: crews_equipments
#------------------------------------------------------------

CREATE TABLE crews_equipments(
        id                        int (11) Auto_increment  NOT NULL ,
        name                      Varchar (25) NOT NULL ,
        is_block                  Bool NOT NULL ,
        id_crews_equipments_types Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: crews_equipments_types
#------------------------------------------------------------

CREATE TABLE crews_equipments_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: forums_topics
#------------------------------------------------------------

CREATE TABLE forums_topics(
        id                     int (11) Auto_increment  NOT NULL ,
        name                   Varchar (35) NOT NULL ,
        is_block               Bool NOT NULL ,
        id_forums_categories   Int NOT NULL ,
        id_forums_topics_types Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: forums_categories
#------------------------------------------------------------

CREATE TABLE forums_categories(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (35) NOT NULL ,
        descr    Varchar (255) NOT NULL ,
        types    Varchar (25) ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: tchats
#------------------------------------------------------------

CREATE TABLE tchats(
        id              int (11) Auto_increment  NOT NULL ,
        name            Varchar (25) NOT NULL ,
        is_block        Bool NOT NULL ,
        id_tchats_types Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: tchats_types
#------------------------------------------------------------

CREATE TABLE tchats_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        descr    Varchar (255) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: users_types
#------------------------------------------------------------

CREATE TABLE users_types(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        is_block Bool ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: news
#------------------------------------------------------------

CREATE TABLE news(
        id        int (11) Auto_increment  NOT NULL ,
        title     Varchar (255) NOT NULL ,
        date_time Date NOT NULL ,
        message   Text NOT NULL ,
        is_block  Bool NOT NULL ,
        id_users  Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: news_comments
#------------------------------------------------------------

CREATE TABLE news_comments(
        id        int (11) Auto_increment  NOT NULL ,
        date_time Date NOT NULL ,
        message   Text NOT NULL ,
        is_block  Bool NOT NULL ,
        id_users  Int NOT NULL ,
        id_news   Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: privates_messages
#------------------------------------------------------------

CREATE TABLE privates_messages(
        id         int (11) Auto_increment  NOT NULL ,
        content    Text NOT NULL ,
        date_time  Datetime NOT NULL ,
        is_read    Bool NOT NULL ,
        is_trash   Bool NOT NULL ,
        id_users   Int NOT NULL ,
        id_users_1 Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: tchats_messages
#------------------------------------------------------------

CREATE TABLE tchats_messages(
        id        int (11) Auto_increment  NOT NULL ,
        message   Longtext NOT NULL ,
        date_time Datetime NOT NULL ,
        is_block  Bool NOT NULL ,
        id_tchats Int NOT NULL ,
        id_users  Int NOT NULL ,
        PRIMARY KEY (id ,id_tchats ,id_users )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: forums_topics_messages
#------------------------------------------------------------

CREATE TABLE forums_topics_messages(
        id               int (11) Auto_increment  NOT NULL ,
        message          Longtext NOT NULL ,
        date_time        Datetime NOT NULL ,
        is_block         Bool NOT NULL ,
        id_forums_topics Int NOT NULL ,
        id_users         Int NOT NULL ,
        PRIMARY KEY (id ,id_forums_topics ,id_users )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: forums_topics_types
#------------------------------------------------------------

CREATE TABLE forums_topics_types(
        id   int (11) Auto_increment  NOT NULL ,
        name Varchar (25) NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: kick
#------------------------------------------------------------

CREATE TABLE kick(
        id        int (11) Auto_increment  NOT NULL ,
        cause     Varchar (25) NOT NULL ,
        zone      Varchar (25) NOT NULL ,
        date_time Datetime NOT NULL ,
        id_users  Int NOT NULL ,
        PRIMARY KEY (id ,id_users )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: users_ranks
#------------------------------------------------------------

CREATE TABLE users_ranks(
        id       int (11) Auto_increment  NOT NULL ,
        name     Varchar (25) NOT NULL ,
        is_block Bool NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: users_avatars
#------------------------------------------------------------

CREATE TABLE users_avatars(
        id               Int NOT NULL ,
        id_perso_avatars Int NOT NULL ,
        PRIMARY KEY (id ,id_perso_avatars )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: lieux_ennemis
#------------------------------------------------------------

CREATE TABLE lieux_ennemis(
        id          Int NOT NULL ,
        id_ennemies Int NOT NULL ,
        PRIMARY KEY (id ,id_ennemies )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: coffres_comptes
#------------------------------------------------------------

CREATE TABLE coffres_comptes(
        id        Int NOT NULL ,
        id_chests Int NOT NULL ,
        PRIMARY KEY (id ,id_chests )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: chests_objects
#------------------------------------------------------------

CREATE TABLE chests_objects(
        id         Int NOT NULL ,
        id_objects Int NOT NULL ,
        PRIMARY KEY (id ,id_objects )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: users_bag
#------------------------------------------------------------

CREATE TABLE users_bag(
        id      Int NOT NULL ,
        id_bags Int NOT NULL ,
        PRIMARY KEY (id ,id_bags )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: bags_objects
#------------------------------------------------------------

CREATE TABLE bags_objects(
        id         Int NOT NULL ,
        id_objects Int NOT NULL ,
        PRIMARY KEY (id ,id_objects )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: cages_users
#------------------------------------------------------------

CREATE TABLE cages_users(
        id       Int NOT NULL ,
        id_cages Int NOT NULL ,
        PRIMARY KEY (id ,id_cages )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: cages_pets
#------------------------------------------------------------

CREATE TABLE cages_pets(
        id      Int NOT NULL ,
        id_pets Int NOT NULL ,
        PRIMARY KEY (id ,id_pets )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: crews_users
#------------------------------------------------------------

CREATE TABLE crews_users(
        id              Int NOT NULL ,
        id_users        Int NOT NULL ,
        id_crews_grades Int NOT NULL ,
        PRIMARY KEY (id ,id_users ,id_crews_grades )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: crews_banks_objects
#------------------------------------------------------------

CREATE TABLE crews_banks_objects(
        id         Int NOT NULL ,
        id_objects Int NOT NULL ,
        PRIMARY KEY (id ,id_objects )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: crews_boats
#------------------------------------------------------------

CREATE TABLE crews_boats(
        id       Int NOT NULL ,
        id_crews Int NOT NULL ,
        PRIMARY KEY (id ,id_crews )
)ENGINE=InnoDB;

ALTER TABLE users ADD CONSTRAINT FK_users_id_personnages FOREIGN KEY (id_personnages) REFERENCES personnages(id);
ALTER TABLE users ADD CONSTRAINT FK_users_id_levels FOREIGN KEY (id_levels) REFERENCES levels(id);
ALTER TABLE users ADD CONSTRAINT FK_users_id_objects FOREIGN KEY (id_objects) REFERENCES objects(id);
ALTER TABLE users ADD CONSTRAINT FK_users_id_users_types FOREIGN KEY (id_users_types) REFERENCES users_types(id);
ALTER TABLE users ADD CONSTRAINT FK_users_id_users_ranks FOREIGN KEY (id_users_ranks) REFERENCES users_ranks(id);
ALTER TABLE tech_perso ADD CONSTRAINT FK_tech_perso_id_personnages FOREIGN KEY (id_personnages) REFERENCES personnages(id);
ALTER TABLE tech_perso ADD CONSTRAINT FK_tech_perso_id_tech_types FOREIGN KEY (id_tech_types) REFERENCES tech_types(id);
ALTER TABLE perso_avatars ADD CONSTRAINT FK_perso_avatars_id_personnages FOREIGN KEY (id_personnages) REFERENCES personnages(id);
ALTER TABLE places ADD CONSTRAINT FK_places_id_levels FOREIGN KEY (id_levels) REFERENCES levels(id);
ALTER TABLE places ADD CONSTRAINT FK_places_id_islands FOREIGN KEY (id_islands) REFERENCES islands(id);
ALTER TABLE places ADD CONSTRAINT FK_places_id_places_types FOREIGN KEY (id_places_types) REFERENCES places_types(id);
ALTER TABLE places_quiz ADD CONSTRAINT FK_places_quiz_id_places FOREIGN KEY (id_places) REFERENCES places(id);
ALTER TABLE tech_ennemies ADD CONSTRAINT FK_tech_ennemies_id_tech_types FOREIGN KEY (id_tech_types) REFERENCES tech_types(id);
ALTER TABLE tech_ennemies ADD CONSTRAINT FK_tech_ennemies_id_ennemies FOREIGN KEY (id_ennemies) REFERENCES ennemies(id);
ALTER TABLE chests ADD CONSTRAINT FK_chests_id_chests_types FOREIGN KEY (id_chests_types) REFERENCES chests_types(id);
ALTER TABLE objects ADD CONSTRAINT FK_objects_id_objects_types FOREIGN KEY (id_objects_types) REFERENCES objects_types(id);
ALTER TABLE bags ADD CONSTRAINT FK_bags_id_bags_types FOREIGN KEY (id_bags_types) REFERENCES bags_types(id);
ALTER TABLE cages ADD CONSTRAINT FK_cages_id_cages_types FOREIGN KEY (id_cages_types) REFERENCES cages_types(id);
ALTER TABLE pets ADD CONSTRAINT FK_pets_id_pets_types FOREIGN KEY (id_pets_types) REFERENCES pets_types(id);
ALTER TABLE crews ADD CONSTRAINT FK_crews_id_crews_types FOREIGN KEY (id_crews_types) REFERENCES crews_types(id);
ALTER TABLE crews ADD CONSTRAINT FK_crews_id_crews_banks FOREIGN KEY (id_crews_banks) REFERENCES crews_banks(id);
ALTER TABLE crews_equipments ADD CONSTRAINT FK_crews_equipments_id_crews_equipments_types FOREIGN KEY (id_crews_equipments_types) REFERENCES crews_equipments_types(id);
ALTER TABLE forums_topics ADD CONSTRAINT FK_forums_topics_id_forums_categories FOREIGN KEY (id_forums_categories) REFERENCES forums_categories(id);
ALTER TABLE forums_topics ADD CONSTRAINT FK_forums_topics_id_forums_topics_types FOREIGN KEY (id_forums_topics_types) REFERENCES forums_topics_types(id);
ALTER TABLE tchats ADD CONSTRAINT FK_tchats_id_tchats_types FOREIGN KEY (id_tchats_types) REFERENCES tchats_types(id);
ALTER TABLE news ADD CONSTRAINT FK_news_id_users FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE news_comments ADD CONSTRAINT FK_news_comments_id_users FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE news_comments ADD CONSTRAINT FK_news_comments_id_news FOREIGN KEY (id_news) REFERENCES news(id);
ALTER TABLE privates_messages ADD CONSTRAINT FK_privates_messages_id_users FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE privates_messages ADD CONSTRAINT FK_privates_messages_id_users_1 FOREIGN KEY (id_users_1) REFERENCES users(id);
ALTER TABLE tchats_messages ADD CONSTRAINT FK_tchats_messages_id_tchats FOREIGN KEY (id_tchats) REFERENCES tchats(id);
ALTER TABLE tchats_messages ADD CONSTRAINT FK_tchats_messages_id_users FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE forums_topics_messages ADD CONSTRAINT FK_forums_topics_messages_id_forums_topics FOREIGN KEY (id_forums_topics) REFERENCES forums_topics(id);
ALTER TABLE forums_topics_messages ADD CONSTRAINT FK_forums_topics_messages_id_users FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE kick ADD CONSTRAINT FK_kick_id_users FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE users_avatars ADD CONSTRAINT FK_users_avatars_id FOREIGN KEY (id) REFERENCES users(id);
ALTER TABLE users_avatars ADD CONSTRAINT FK_users_avatars_id_perso_avatars FOREIGN KEY (id_perso_avatars) REFERENCES perso_avatars(id);
ALTER TABLE lieux_ennemis ADD CONSTRAINT FK_lieux_ennemis_id FOREIGN KEY (id) REFERENCES places(id);
ALTER TABLE lieux_ennemis ADD CONSTRAINT FK_lieux_ennemis_id_ennemies FOREIGN KEY (id_ennemies) REFERENCES ennemies(id);
ALTER TABLE coffres_comptes ADD CONSTRAINT FK_coffres_comptes_id FOREIGN KEY (id) REFERENCES users(id);
ALTER TABLE coffres_comptes ADD CONSTRAINT FK_coffres_comptes_id_chests FOREIGN KEY (id_chests) REFERENCES chests(id);
ALTER TABLE chests_objects ADD CONSTRAINT FK_chests_objects_id FOREIGN KEY (id) REFERENCES chests(id);
ALTER TABLE chests_objects ADD CONSTRAINT FK_chests_objects_id_objects FOREIGN KEY (id_objects) REFERENCES objects(id);
ALTER TABLE users_bag ADD CONSTRAINT FK_users_bag_id FOREIGN KEY (id) REFERENCES users(id);
ALTER TABLE users_bag ADD CONSTRAINT FK_users_bag_id_bags FOREIGN KEY (id_bags) REFERENCES bags(id);
ALTER TABLE bags_objects ADD CONSTRAINT FK_bags_objects_id FOREIGN KEY (id) REFERENCES bags(id);
ALTER TABLE bags_objects ADD CONSTRAINT FK_bags_objects_id_objects FOREIGN KEY (id_objects) REFERENCES objects(id);
ALTER TABLE cages_users ADD CONSTRAINT FK_cages_users_id FOREIGN KEY (id) REFERENCES users(id);
ALTER TABLE cages_users ADD CONSTRAINT FK_cages_users_id_cages FOREIGN KEY (id_cages) REFERENCES cages(id);
ALTER TABLE cages_pets ADD CONSTRAINT FK_cages_pets_id FOREIGN KEY (id) REFERENCES cages(id);
ALTER TABLE cages_pets ADD CONSTRAINT FK_cages_pets_id_pets FOREIGN KEY (id_pets) REFERENCES pets(id);
ALTER TABLE crews_users ADD CONSTRAINT FK_crews_users_id FOREIGN KEY (id) REFERENCES crews(id);
ALTER TABLE crews_users ADD CONSTRAINT FK_crews_users_id_users FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE crews_users ADD CONSTRAINT FK_crews_users_id_crews_grades FOREIGN KEY (id_crews_grades) REFERENCES crews_grades(id);
ALTER TABLE crews_banks_objects ADD CONSTRAINT FK_crews_banks_objects_id FOREIGN KEY (id) REFERENCES crews_banks(id);
ALTER TABLE crews_banks_objects ADD CONSTRAINT FK_crews_banks_objects_id_objects FOREIGN KEY (id_objects) REFERENCES objects(id);
ALTER TABLE crews_boats ADD CONSTRAINT FK_crews_boats_id FOREIGN KEY (id) REFERENCES crews_equipments(id);
ALTER TABLE crews_boats ADD CONSTRAINT FK_crews_boats_id_crews FOREIGN KEY (id_crews) REFERENCES crews(id);