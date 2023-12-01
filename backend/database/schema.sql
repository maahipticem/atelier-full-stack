CREATE TABLE hopital(
  id INT PRIMARY key NOT NULL AUTO_INCREMENT,
  adresse VARCHAR(255)
);

INSERT INTO hopital( adresse)
VALUES ("Grey Sloan Memorial Hospital, 2 rue Memorial Hospital, 69007 Lyon,"),
("Mercy West Hospital"),
("Seattle Grace Hospital");

CREATE TABLE medecin (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    firstName VARCHAR(100) NOT NULL,
    specialite VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    urlToImage VARCHAR(450) NOT NULL,
    descriptif TEXT NULL,
    disponibilite DATE NOT NULL,
    hopital_id INT NOT NULL,
    Foreign Key (hopital_id) REFERENCES hopital(id)
);

INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Grey", "Meredith", "Generaliste", "Lyon", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPaPau6UYfIdJ2KnJtVCQ4Hc3cf8fxtO6UuQ&usqp=CAU",  "Le docteur Meredith Grey vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est médecin généraliste.", "2024-11-08", 1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Balley", "Miranda", "Generaliste", "Lyon", "https://upload.wikimedia.org/wikipedia/en/8/87/Dr._Miranda_Bailey.jpg", "Le docteur Miranda Balley vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est médecin généraliste. ", "2024-01-15",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Webber", "Richard", "généraliste", "Lyon", "https://upload.wikimedia.org/wikipedia/en/3/34/Dr._Richard_Webber.jpg", "Le docteur Richard Webber vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est médecin généraliste. ", "2024-01-10",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite,hopital_id)
VALUES ("Docteur Shepherd", "Derek", "neurologue", "Lyon",  "https://resize.elle.fr/portrait/var/plain_site/storage/images/loisirs/series/patrick-dempsey-de-retour-dans-grey-s-anatomy-les-acteurs-ont-tranche-3779008/90294988-1-fre-FR/Patrick-Dempsey-de-retour-dans-Grey-s-Anatomy-Les-acteurs-ont-tranche-!.jpg", "Le docteur Derek Shepherd vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies.", "2024-07-10",3);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite,hopital_id)
VALUES ("Docteur Shepherd", "Amelia", "neurologue", "Lyon", "https://www.refinery29.com/images/9550632.jpg?crop=2401%2C1262%2Cx0%2Cy269", "Le docteur Amelia Shepherd vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est spécialisée en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-09-26",3);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite,hopital_id)
VALUES ("Docteur Nelson", "Jim", "neurologue", "Lyon", "https://wearysloth.com/Gallery/2017/A/59205.jpg", "Le docteur Jim Nelson vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-04-13",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Karef", "Alex", "pediatre", "Lyon", "https://www.grazia.fr/wp-content/uploads/grazia/2020/11/grey-anatomy-voici-pourquoi-alex-karev-pouvait-pas-mourir.jpeg", "Le docteur Alex Karef vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en pédiatrie, il assure le bon developpement et la bonne santé des nourrissons, enfants et adolescents.", "2024-01-08",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Montgomery", "Addison", "pediatre", "Lyon", "https://tv-fanatic-res.cloudinary.com/iu/s--juJe_NYw--/t_full/cs_srgb,f_auto,fl_strip_profile.lossy,q_auto:420/v1634737321/attachment/addie-is-back.png", "Le docteur Addison Montgomery vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en pédiatrie, il assure le bon developpement et la bonne santé des nourrissons, enfants et adolescents.", "2024-08-19",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Robbins", "Arizona", "pediatre", "Lyon",  "https://saracapshaw.files.wordpress.com/2012/11/8-3805435027406775149.jpg", "Le docteur Arizona Robbins vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en pédiatrie, il assure le bon developpement et la bonne santé des nourrissons, enfants et adolescents.", "2024-04-01",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Deluca", "Carina", "gynecologue", "Lyon", "https://preview.redd.it/carina-deluca-appreciation-v0-jkc7h388wtba1.jpg?width=1600&format=pjpg&auto=webp&s=88bd44c2c09863b969efa416200ae948d72dffe6", "Le docteur Carina Deluca vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est spécialisée en gynécologie, elle assure le bon developpement et la bonne santé femmes enceintes et des foetus.", "2024-06-13",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Pierce", "Maggie", "cardiologie", "Lyon", "https://www.goldderby.com/wp-content/uploads/2022/09/Greys-Anatomy-Season-19-Kelly-McCreary.jpg?w=620", "Le docteur Maggie Pierce vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-05-13",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Yaung", "Cristina", "cardiologie", "Lyon", "https://diveng.rosselcdn.net/sites/default/files/dpistyles/ena_16_9_extra_big/node_2389/6864/public/thumbnails/image/abc_sandra_oh_greys_anatomy_thg-130814_16x9_992.jpg?itok=UvP5DZ1s1682372864",  "Le docteur Cristina Yaung vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-02-15",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Altman", "Teddy", "cardiologie", "Lyon", "https://people.com/thmb/oFdTHkHIMTeNq9STujbQYZqL6as=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(999x0:1001x2)/152952_6054_r1-2000-4b5a7ceb13be4346b315e70376c67add.jpg",  "Le docteur Teddy Altman vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-08-16",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("docteur Sloan", "Mark", "chirurgien plasticien et esthétique", "Lyon", "https://www.programme.tv/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2FTEL.2Enews.2F2018.2F01.2F11.2Fef5243a4-848e-44f2-afa6-cdb42ffe378b.2Ejpeg/660x370/quality/80/crop-from/top/grey-s-anatomy-perd-le-dr-sloane.jpg", "Le docteur Mark Sloan vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en chirurgie plastique et esthétique, il realise tout type de chirurgies réparatrices et esthetiques.", "2024-10-18",3);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Avry", "Jackson", "chirurgien plasticien et esthetique", "Lyon", "https://www.programme-tv.net/imgre/fit/~1~tel~2022~03~16~1af24771-69a0-45ba-a8a8-59a83eb37bce.jpeg/720x405/crop-from/top/quality/80/focus-point/722,244/5-infos-sur-jesse-williams-l-interpre-te-du-dr-jackson-avery-dans-grey-s-anatomy.jpg", "Le docteur Jackson Avry vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en chirurgie plastique et esthétique, il realise tout type de chirurgies réparatrices et esthetiques.", "2024-04-12",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Torres", "Callie", "orthopediste", "Lyon",  "https://img.20mn.fr/SeH-v02TSC65Pp-h-17Ijg/1200x768_callie-torres-interpretee-sara-ramrez-serie-grey-anatomy",  "Le docteur Atticus Linconn vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est spécialisé en orthopediste. Elle est capable de concevoir, de realiser et de poser des appareillages plantaires destinés à restituer le confortet le bien être du patient.", "2024-04-11",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Linconn", "Atticus", "orthopediste", "Lyon", "https://pm1.aminoapps.com/7967/bcc38ba2b9497b06f868b78a9f04799ae884b470r1-588-784v2_hq.jpg", "Le docteur Atticus Linconn vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en orthopediste. Il est capable de concevoir, de realiser et de poser des appareillages plantaires destinés à restituer le confortet le bien être du patient.", "2024-06-09",3);
