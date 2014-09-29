#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


CREATE TABLE comptes(
        cpt_id         int (11) Auto_increment  NOT NULL ,
        cpt_ban        Bool NOT NULL ,
        cpt_pseudo     Varchar (25) NOT NULL ,
        cpt_email      Varchar (255) NOT NULL ,
        cpt_date_naiss Datetime NOT NULL ,
        cpt_sexe       Bool ,
        cpt_mdp        Varchar (255) NOT NULL ,
        perso_id       Int NOT NULL ,
        niv_id         Int NOT NULL ,
        obj_id         Int NOT NULL ,
        cptt_id        Int NOT NULL ,
        PRIMARY KEY (cpt_id )
)ENGINE=InnoDB;


CREATE TABLE personnages(
        perso_id     int (11) Auto_increment  NOT NULL ,
        perso_nom    Varchar (255) NOT NULL ,
        perso_prenom Varchar (255) NOT NULL ,
        perso_descr  Text ,
        perso_block  Bool NOT NULL ,
        PRIMARY KEY (perso_id )
)ENGINE=InnoDB;


CREATE TABLE tech_perso(
        techp_id    int (11) Auto_increment  NOT NULL ,
        techp_nom   Varchar (25) NOT NULL ,
        techp_descr Text ,
        techp_block Bool NOT NULL ,
        perso_id    Int NOT NULL ,
        techt_id    Int NOT NULL ,
        PRIMARY KEY (techp_id )
)ENGINE=InnoDB;


CREATE TABLE tech_types(
        techt_id    int (11) Auto_increment  NOT NULL ,
        techt_nom   Varchar (25) NOT NULL ,
        techt_block Bool NOT NULL ,
        PRIMARY KEY (techt_id )
)ENGINE=InnoDB;


CREATE TABLE perso_avatars(
        persoa_id    int (11) Auto_increment  NOT NULL ,
        persoa_nom   Varchar (255) NOT NULL ,
        persoa_file  Varchar (255) NOT NULL ,
        persoa_block Bool NOT NULL ,
        perso_id     Int NOT NULL ,
        PRIMARY KEY (persoa_id )
)ENGINE=InnoDB;


CREATE TABLE niveaux(
        niv_id     int (11) Auto_increment  NOT NULL ,
        niv_numero Int NOT NULL ,
        niv_block  Bool NOT NULL ,
        PRIMARY KEY (niv_id )
)ENGINE=InnoDB;


CREATE TABLE lieux(
        lieu_id    int (11) Auto_increment  NOT NULL ,
        lieu_nom   Varchar (255) NOT NULL ,
        lieu_block Bool NOT NULL ,
        niv_id     Int NOT NULL ,
        ile_id     Int NOT NULL ,
        lieut_id   Int NOT NULL ,
        PRIMARY KEY (lieu_id )
)ENGINE=InnoDB;


CREATE TABLE iles(
        ile_id    int (11) Auto_increment  NOT NULL ,
        ile_nom   Varchar (255) NOT NULL ,
        ile_block Bool NOT NULL ,
        PRIMARY KEY (ile_id )
)ENGINE=InnoDB;


CREATE TABLE lieux_types(
        lieut_id    int (11) Auto_increment  NOT NULL ,
        lieut_nom   Varchar (255) NOT NULL ,
        lieut_block Bool NOT NULL ,
        PRIMARY KEY (lieut_id )
)ENGINE=InnoDB;


CREATE TABLE lieux_qcm(
        lieuq_id       int (11) Auto_increment  NOT NULL ,
        lieuq_question Text NOT NULL ,
        lieuq_rep1     Text NOT NULL ,
        lieuq_rep2     Text NOT NULL ,
        lieuq_rep3     Text NOT NULL ,
        lieuq_rep4     Text NOT NULL ,
        lieu_id        Int ,
        PRIMARY KEY (lieuq_id )
)ENGINE=InnoDB;


CREATE TABLE ennemis(
        enn_id     int (11) Auto_increment  NOT NULL ,
        enn_nom    Varchar (25) NOT NULL ,
        enn_prenom Varchar (25) ,
        enn_file   Varchar (255) NOT NULL ,
        PRIMARY KEY (enn_id )
)ENGINE=InnoDB;


CREATE TABLE techniques_ennemis(
        teche_id    int (11) Auto_increment  NOT NULL ,
        teche_nom   Varchar (255) NOT NULL ,
        teche_descr Text ,
        techt_id    Int NOT NULL ,
        enn_id      Int NOT NULL ,
        PRIMARY KEY (teche_id )
)ENGINE=InnoDB;


CREATE TABLE coffres(
        coffre_id  int (11) Auto_increment  NOT NULL ,
        coffret_id Int NOT NULL ,
        PRIMARY KEY (coffre_id )
)ENGINE=InnoDB;


CREATE TABLE coffres_types(
        coffret_id     int (11) Auto_increment  NOT NULL ,
        coffret_nom    Varchar (25) NOT NULL ,
        coffret_taille Int NOT NULL ,
        coffret_file   Varchar (255) NOT NULL ,
        coffret_block  Bool NOT NULL ,
        PRIMARY KEY (coffret_id )
)ENGINE=InnoDB;


CREATE TABLE objets(
        obj_id    int (11) Auto_increment  NOT NULL ,
        obj_nom   Varchar (255) NOT NULL ,
        obj_file  Varchar (255) NOT NULL ,
        obj_block Bool NOT NULL ,
        objt_id   Int NOT NULL ,
        PRIMARY KEY (obj_id )
)ENGINE=InnoDB;


CREATE TABLE objets_types(
        objt_id    int (11) Auto_increment  NOT NULL ,
        objt_nom   Varchar (25) NOT NULL ,
        objt_block Bool NOT NULL ,
        PRIMARY KEY (objt_id )
)ENGINE=InnoDB;


CREATE TABLE sacs(
        sac_id  int (11) Auto_increment  NOT NULL ,
        sact_id Int NOT NULL ,
        PRIMARY KEY (sac_id )
)ENGINE=InnoDB;


CREATE TABLE sacs_types(
        sact_id     int (11) Auto_increment  NOT NULL ,
        sact_nom    Varchar (25) NOT NULL ,
        sact_taille Int NOT NULL ,
        sact_file   Varchar (255) NOT NULL ,
        sact_block  Bool NOT NULL ,
        PRIMARY KEY (sact_id )
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


CREATE TABLE familiers(
        fami_id    int (11) Auto_increment  NOT NULL ,
        fami_nom   Varchar (25) NOT NULL ,
        fami_file  Varchar (255) NOT NULL ,
        fami_block Bool NOT NULL ,
        famit_id   Int NOT NULL ,
        PRIMARY KEY (fami_id )
)ENGINE=InnoDB;


CREATE TABLE familiers_types(
        famit_id    int (11) Auto_increment  NOT NULL ,
        famit_nom   Varchar (25) NOT NULL ,
        famit_block Bool NOT NULL ,
        PRIMARY KEY (famit_id )
)ENGINE=InnoDB;


CREATE TABLE equipages(
        equi_id     int (11) Auto_increment  NOT NULL ,
        equi_nom    Varchar (25) NOT NULL ,
        equi_argent Int NOT NULL ,
        equi_page   Text ,
        equi_file   Varchar (255) NOT NULL ,
        equit_id    Int NOT NULL ,
        equib_id    Int NOT NULL ,
        PRIMARY KEY (equi_id )
)ENGINE=InnoDB;


CREATE TABLE equipages_grades(
        equig_id    int (11) Auto_increment  NOT NULL ,
        equig_nom   Varchar (25) NOT NULL ,
        equig_file  Varchar (255) NOT NULL ,
        equig_block Bool NOT NULL ,
        PRIMARY KEY (equig_id )
)ENGINE=InnoDB;


CREATE TABLE equipages_types(
        equit_id    int (11) Auto_increment  NOT NULL ,
        equit_nom   Varchar (25) NOT NULL ,
        equit_file  Varchar (255) NOT NULL ,
        equit_block Bool NOT NULL ,
        PRIMARY KEY (equit_id )
)ENGINE=InnoDB;


CREATE TABLE equipages_banques(
        equib_id int (11) Auto_increment  NOT NULL ,
        PRIMARY KEY (equib_id )
)ENGINE=InnoDB;


CREATE TABLE equipages_equipements(
        equie_id    int (11) Auto_increment  NOT NULL ,
        equie_nom   Varchar (25) NOT NULL ,
        equie_block Bool NOT NULL ,
        equiet_id   Int NOT NULL ,
        PRIMARY KEY (equie_id )
)ENGINE=InnoDB;


CREATE TABLE equipages_equipements_types(
        equiet_id    int (11) Auto_increment  NOT NULL ,
        equiet_nom   Varchar (25) NOT NULL ,
        equiet_block Bool NOT NULL ,
        PRIMARY KEY (equiet_id )
)ENGINE=InnoDB;


CREATE TABLE forums_topics(
        topic_id  int (11) Auto_increment  NOT NULL ,
        topic_nom Varchar (35) NOT NULL ,
        cate_id   Int NOT NULL ,
        PRIMARY KEY (topic_id )
)ENGINE=InnoDB;


CREATE TABLE forum_categories(
        cate_id    int (11) Auto_increment  NOT NULL ,
        cate_nom   Varchar (35) NOT NULL ,
        cate_descr Varchar (255) NOT NULL ,
        forum_id   Int NOT NULL ,
        PRIMARY KEY (cate_id )
)ENGINE=InnoDB;


CREATE TABLE forum_types(
        forum_id    int (11) Auto_increment  NOT NULL ,
        forum_nom   Varchar (25) NOT NULL ,
        forum_block Bool NOT NULL ,
        PRIMARY KEY (forum_id )
)ENGINE=InnoDB;


CREATE TABLE tchats(
        tchat_id  int (11) Auto_increment  NOT NULL ,
        tchat_nom Varchar (25) NOT NULL ,
        tchatt_id Int NOT NULL ,
        PRIMARY KEY (tchat_id )
)ENGINE=InnoDB;


CREATE TABLE tchats_types(
        tchatt_id    int (11) Auto_increment  NOT NULL ,
        tchatt_nom   Varchar (25) NOT NULL ,
        tchatt_descr Varchar (255) NOT NULL ,
        PRIMARY KEY (tchatt_id )
)ENGINE=InnoDB;


CREATE TABLE comptes_types(
        cptt_id    int (11) Auto_increment  NOT NULL ,
        cptt_nom   Varchar (25) NOT NULL ,
        cptt_block Bool ,
        PRIMARY KEY (cptt_id )
)ENGINE=InnoDB;


CREATE TABLE news(
        new_id      int (11) Auto_increment  NOT NULL ,
        new_date    Date NOT NULL ,
        new_titre   Varchar (255) NOT NULL ,
        new_message Text NOT NULL ,
        new_block   Bool NOT NULL ,
        cpt_id      Int NOT NULL ,
        PRIMARY KEY (new_id )
)ENGINE=InnoDB;


CREATE TABLE news_commentaires(
        news_id      int (11) Auto_increment  NOT NULL ,
        newc_date    Date NOT NULL ,
        newc_message Text NOT NULL ,
        newc_block   Bool NOT NULL ,
        cpt_id       Int NOT NULL ,
        new_id       Int NOT NULL ,
        PRIMARY KEY (news_id )
)ENGINE=InnoDB;


CREATE TABLE comptes_avatars(
        cpt_id    Int NOT NULL ,
        persoa_id Int NOT NULL ,
        PRIMARY KEY (cpt_id ,persoa_id )
)ENGINE=InnoDB;


CREATE TABLE lieux_ennemis(
        lieu_id Int NOT NULL ,
        enn_id  Int NOT NULL ,
        PRIMARY KEY (lieu_id ,enn_id )
)ENGINE=InnoDB;


CREATE TABLE coffres_comptes(
        cpt_id    Int NOT NULL ,
        coffre_id Int NOT NULL ,
        PRIMARY KEY (cpt_id ,coffre_id )
)ENGINE=InnoDB;


CREATE TABLE coffres_objets(
        coffre_id Int NOT NULL ,
        obj_id    Int NOT NULL ,
        PRIMARY KEY (coffre_id ,obj_id )
)ENGINE=InnoDB;


CREATE TABLE sacs_comptes(
        cpt_id Int NOT NULL ,
        sac_id Int NOT NULL ,
        PRIMARY KEY (cpt_id ,sac_id )
)ENGINE=InnoDB;


CREATE TABLE sacs_objets(
        sac_id Int NOT NULL ,
        obj_id Int NOT NULL ,
        PRIMARY KEY (sac_id ,obj_id )
)ENGINE=InnoDB;


CREATE TABLE cages_comptes(
        cpt_id  Int NOT NULL ,
        cage_id Int NOT NULL ,
        PRIMARY KEY (cpt_id ,cage_id )
)ENGINE=InnoDB;


CREATE TABLE cages_familiers(
        cage_id Int NOT NULL ,
        fami_id Int NOT NULL ,
        PRIMARY KEY (cage_id ,fami_id )
)ENGINE=InnoDB;


CREATE TABLE equipages_membres(
        equi_id  Int NOT NULL ,
        cpt_id   Int NOT NULL ,
        equig_id Int NOT NULL ,
        PRIMARY KEY (equi_id ,cpt_id ,equig_id )
)ENGINE=InnoDB;


CREATE TABLE equipages_banques_objets(
        equib_id Int NOT NULL ,
        obj_id   Int NOT NULL ,
        PRIMARY KEY (equib_id ,obj_id )
)ENGINE=InnoDB;


CREATE TABLE equipages_bateaux(
        equie_id Int NOT NULL ,
        equi_id  Int NOT NULL ,
        PRIMARY KEY (equie_id ,equi_id )
)ENGINE=InnoDB;


CREATE TABLE forums_topics_messages(
        message        Longtext NOT NULL ,
        message_valide Bool NOT NULL ,
        topic_id       Int NOT NULL ,
        cpt_id         Int NOT NULL ,
        PRIMARY KEY (topic_id ,cpt_id )
)ENGINE=InnoDB;


CREATE TABLE tchats_messages(
        message       Longtext NOT NULL ,
        message_block Bool NOT NULL ,
        tchat_id      Int NOT NULL ,
        cpt_id        Int NOT NULL ,
        PRIMARY KEY (tchat_id ,cpt_id )
)ENGINE=InnoDB;

ALTER TABLE comptes ADD CONSTRAINT FK_comptes_perso_id FOREIGN KEY (perso_id) REFERENCES personnages(perso_id);
ALTER TABLE comptes ADD CONSTRAINT FK_comptes_niv_id FOREIGN KEY (niv_id) REFERENCES niveaux(niv_id);
ALTER TABLE comptes ADD CONSTRAINT FK_comptes_obj_id FOREIGN KEY (obj_id) REFERENCES objets(obj_id);
ALTER TABLE comptes ADD CONSTRAINT FK_comptes_cptt_id FOREIGN KEY (cptt_id) REFERENCES comptes_types(cptt_id);
ALTER TABLE tech_perso ADD CONSTRAINT FK_tech_perso_perso_id FOREIGN KEY (perso_id) REFERENCES personnages(perso_id);
ALTER TABLE tech_perso ADD CONSTRAINT FK_tech_perso_techt_id FOREIGN KEY (techt_id) REFERENCES tech_types(techt_id);
ALTER TABLE perso_avatars ADD CONSTRAINT FK_perso_avatars_perso_id FOREIGN KEY (perso_id) REFERENCES personnages(perso_id);
ALTER TABLE lieux ADD CONSTRAINT FK_lieux_niv_id FOREIGN KEY (niv_id) REFERENCES niveaux(niv_id);
ALTER TABLE lieux ADD CONSTRAINT FK_lieux_ile_id FOREIGN KEY (ile_id) REFERENCES iles(ile_id);
ALTER TABLE lieux ADD CONSTRAINT FK_lieux_lieut_id FOREIGN KEY (lieut_id) REFERENCES lieux_types(lieut_id);
ALTER TABLE lieux_qcm ADD CONSTRAINT FK_lieux_qcm_lieu_id FOREIGN KEY (lieu_id) REFERENCES lieux(lieu_id);
ALTER TABLE techniques_ennemis ADD CONSTRAINT FK_techniques_ennemis_techt_id FOREIGN KEY (techt_id) REFERENCES tech_types(techt_id);
ALTER TABLE techniques_ennemis ADD CONSTRAINT FK_techniques_ennemis_enn_id FOREIGN KEY (enn_id) REFERENCES ennemis(enn_id);
ALTER TABLE coffres ADD CONSTRAINT FK_coffres_coffret_id FOREIGN KEY (coffret_id) REFERENCES coffres_types(coffret_id);
ALTER TABLE objets ADD CONSTRAINT FK_objets_objt_id FOREIGN KEY (objt_id) REFERENCES objets_types(objt_id);
ALTER TABLE sacs ADD CONSTRAINT FK_sacs_sact_id FOREIGN KEY (sact_id) REFERENCES sacs_types(sact_id);
ALTER TABLE cages ADD CONSTRAINT FK_cages_caget_id FOREIGN KEY (caget_id) REFERENCES cages_types(caget_id);
ALTER TABLE familiers ADD CONSTRAINT FK_familiers_famit_id FOREIGN KEY (famit_id) REFERENCES familiers_types(famit_id);
ALTER TABLE equipages ADD CONSTRAINT FK_equipages_equit_id FOREIGN KEY (equit_id) REFERENCES equipages_types(equit_id);
ALTER TABLE equipages ADD CONSTRAINT FK_equipages_equib_id FOREIGN KEY (equib_id) REFERENCES equipages_banques(equib_id);
ALTER TABLE equipages_equipements ADD CONSTRAINT FK_equipages_equipements_equiet_id FOREIGN KEY (equiet_id) REFERENCES equipages_equipements_types(equiet_id);
ALTER TABLE forums_topics ADD CONSTRAINT FK_forums_topics_cate_id FOREIGN KEY (cate_id) REFERENCES forum_categories(cate_id);
ALTER TABLE forum_categories ADD CONSTRAINT FK_forum_categories_forum_id FOREIGN KEY (forum_id) REFERENCES forum_types(forum_id);
ALTER TABLE tchats ADD CONSTRAINT FK_tchats_tchatt_id FOREIGN KEY (tchatt_id) REFERENCES tchats_types(tchatt_id);
ALTER TABLE news ADD CONSTRAINT FK_news_cpt_id FOREIGN KEY (cpt_id) REFERENCES comptes(cpt_id);
ALTER TABLE news_commentaires ADD CONSTRAINT FK_news_commentaires_cpt_id FOREIGN KEY (cpt_id) REFERENCES comptes(cpt_id);
ALTER TABLE news_commentaires ADD CONSTRAINT FK_news_commentaires_new_id FOREIGN KEY (new_id) REFERENCES news(new_id);
ALTER TABLE comptes_avatars ADD CONSTRAINT FK_comptes_avatars_cpt_id FOREIGN KEY (cpt_id) REFERENCES comptes(cpt_id);
ALTER TABLE comptes_avatars ADD CONSTRAINT FK_comptes_avatars_persoa_id FOREIGN KEY (persoa_id) REFERENCES perso_avatars(persoa_id);
ALTER TABLE lieux_ennemis ADD CONSTRAINT FK_lieux_ennemis_lieu_id FOREIGN KEY (lieu_id) REFERENCES lieux(lieu_id);
ALTER TABLE lieux_ennemis ADD CONSTRAINT FK_lieux_ennemis_enn_id FOREIGN KEY (enn_id) REFERENCES ennemis(enn_id);
ALTER TABLE coffres_comptes ADD CONSTRAINT FK_coffres_comptes_cpt_id FOREIGN KEY (cpt_id) REFERENCES comptes(cpt_id);
ALTER TABLE coffres_comptes ADD CONSTRAINT FK_coffres_comptes_coffre_id FOREIGN KEY (coffre_id) REFERENCES coffres(coffre_id);
ALTER TABLE coffres_objets ADD CONSTRAINT FK_coffres_objets_coffre_id FOREIGN KEY (coffre_id) REFERENCES coffres(coffre_id);
ALTER TABLE coffres_objets ADD CONSTRAINT FK_coffres_objets_obj_id FOREIGN KEY (obj_id) REFERENCES objets(obj_id);
ALTER TABLE sacs_comptes ADD CONSTRAINT FK_sacs_comptes_cpt_id FOREIGN KEY (cpt_id) REFERENCES comptes(cpt_id);
ALTER TABLE sacs_comptes ADD CONSTRAINT FK_sacs_comptes_sac_id FOREIGN KEY (sac_id) REFERENCES sacs(sac_id);
ALTER TABLE sacs_objets ADD CONSTRAINT FK_sacs_objets_sac_id FOREIGN KEY (sac_id) REFERENCES sacs(sac_id);
ALTER TABLE sacs_objets ADD CONSTRAINT FK_sacs_objets_obj_id FOREIGN KEY (obj_id) REFERENCES objets(obj_id);
ALTER TABLE cages_comptes ADD CONSTRAINT FK_cages_comptes_cpt_id FOREIGN KEY (cpt_id) REFERENCES comptes(cpt_id);
ALTER TABLE cages_comptes ADD CONSTRAINT FK_cages_comptes_cage_id FOREIGN KEY (cage_id) REFERENCES cages(cage_id);
ALTER TABLE cages_familiers ADD CONSTRAINT FK_cages_familiers_cage_id FOREIGN KEY (cage_id) REFERENCES cages(cage_id);
ALTER TABLE cages_familiers ADD CONSTRAINT FK_cages_familiers_fami_id FOREIGN KEY (fami_id) REFERENCES familiers(fami_id);
ALTER TABLE equipages_membres ADD CONSTRAINT FK_equipages_membres_equi_id FOREIGN KEY (equi_id) REFERENCES equipages(equi_id);
ALTER TABLE equipages_membres ADD CONSTRAINT FK_equipages_membres_cpt_id FOREIGN KEY (cpt_id) REFERENCES comptes(cpt_id);
ALTER TABLE equipages_membres ADD CONSTRAINT FK_equipages_membres_equig_id FOREIGN KEY (equig_id) REFERENCES equipages_grades(equig_id);
ALTER TABLE equipages_banques_objets ADD CONSTRAINT FK_equipages_banques_objets_equib_id FOREIGN KEY (equib_id) REFERENCES equipages_banques(equib_id);
ALTER TABLE equipages_banques_objets ADD CONSTRAINT FK_equipages_banques_objets_obj_id FOREIGN KEY (obj_id) REFERENCES objets(obj_id);
ALTER TABLE equipages_bateaux ADD CONSTRAINT FK_equipages_bateaux_equie_id FOREIGN KEY (equie_id) REFERENCES equipages_equipements(equie_id);
ALTER TABLE equipages_bateaux ADD CONSTRAINT FK_equipages_bateaux_equi_id FOREIGN KEY (equi_id) REFERENCES equipages(equi_id);
ALTER TABLE forums_topics_messages ADD CONSTRAINT FK_forums_topics_messages_topic_id FOREIGN KEY (topic_id) REFERENCES forums_topics(topic_id);
ALTER TABLE forums_topics_messages ADD CONSTRAINT FK_forums_topics_messages_cpt_id FOREIGN KEY (cpt_id) REFERENCES comptes(cpt_id);
ALTER TABLE tchats_messages ADD CONSTRAINT FK_tchats_messages_tchat_id FOREIGN KEY (tchat_id) REFERENCES tchats(tchat_id);
ALTER TABLE tchats_messages ADD CONSTRAINT FK_tchats_messages_cpt_id FOREIGN KEY (cpt_id) REFERENCES comptes(cpt_id);
