CREATE TABLE hopital(
  id INT PRIMARY key NOT NULL AUTO_INCREMENT,
  adresse VARCHAR(255)
);

INSERT INTO hopital( adresse)
VALUES ("Grey Sloan Memorial Hospital, 2 rue Memorial Hospital, 69007 Lyon,"),
("Mercy West Hospital"),
("Seattle Grace Hospital");

CREATE TABLE formulaire (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nom VARCHAR(12) NOT NULL,
  prenom VARCHAR(12) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(50) NOT NULL

);

INSERT INTO formulaire(nom, prenom, email, password) 
VALUES 
  ('Dupont', 'Pierre', 'dupontpierre@gmail.com',"Abcdefg8"),
  ('Dupres', 'Paul', 'duprespaul@gmail.com', "aBcdefg8");


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
    CONSTRAINT fk_medecins Foreign Key (hopital_id) REFERENCES hopital(id)
);

INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Grey", "Meredith", "Generaliste", "Lyon", "https://i.etsystatic.com/18496010/r/il/d56c7d/2029689091/il_570xN.2029689091_i2t7.jpg",  "Le docteur Meredith Grey vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est médecin généraliste.", "2024-11-08", 1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Balley", "Miranda", "Generaliste", "Lyon", "https://i.pinimg.com/1200x/a7/d1/20/a7d12053c77936bde7f9decc5a0863ae.jpg", "Le docteur Miranda Balley vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est médecin généraliste. ", "2024-01-15",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Webber", "Richard", "généraliste", "Lyon", "https://i.etsystatic.com/18496010/r/il/fd633c/1982775022/il_570xN.1982775022_jxi5.jpg", "Le docteur Richard Webber vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est médecin généraliste. ", "2024-01-10",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite,hopital_id)
VALUES ("Docteur Shepherd", "Derek", "neurologue", "Lyon",  "https://i.etsystatic.com/18496010/r/il/58c1cf/2029382817/il_570xN.2029382817_471m.jpg", "Le docteur Derek Shepherd vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies.", "2024-07-10",3);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite,hopital_id)
VALUES ("Docteur Shepherd", "Amelia", "neurologue", "Lyon", "https://i.etsystatic.com/18496010/r/il/654adf/2029365597/il_570xN.2029365597_d8ha.jpg", "Le docteur Amelia Shepherd vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est spécialisée en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-09-26",3);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite,hopital_id)
VALUES ("Docteur Grey", "Lexie", "neurologue", "Lyon", "https://i.pinimg.com/736x/eb/25/0d/eb250dc94353ac72627c13f34fbf9293.jpg", "Le docteur Jim Nelson vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-04-13",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Karef", "Jo", "pediatre", "Lyon", "https://i.etsystatic.com/18496010/r/il/056295/2044291365/il_570xN.2044291365_jq1v.jpg", "Le docteur Alex Karef vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en pédiatrie, il assure le bon developpement et la bonne santé des nourrissons, enfants et adolescents.", "2024-01-08",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Montgomery", "Addison", "pediatre", "Lyon", "https://i.pinimg.com/736x/60/4c/da/604cda7f1859f30d1e7826b5fd70549e.jpg", "Le docteur Addison Montgomery vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en pédiatrie, il assure le bon developpement et la bonne santé des nourrissons, enfants et adolescents.", "2024-08-19",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Robbins", "Arizona", "pediatre", "Lyon",  "https://i.etsystatic.com/18496010/r/il/cfe56e/1981808858/il_570xN.1981808858_is6s.jpg", "Le docteur Arizona Robbins vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en pédiatrie, il assure le bon developpement et la bonne santé des nourrissons, enfants et adolescents.", "2024-04-01",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Burke", "Warren", "cardiologie", "Lyon", "https://i.pinimg.com/736x/c1/64/f9/c164f9477ba56f1505d9a69e219bad08.jpg", "Le docteur Preston Burke Pierce vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-06-13",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Pierce", "Maggie", "cardiologie", "Lyon", "https://i.pinimg.com/736x/a1/3a/8a/a13a8a2a66a67e0b64cdb13e56d1ff8a.jpg", "Le docteur Maggie Pierce vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-05-13",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Deluca", "Andrew", "cardiologie", "Lyon", "https://i.pinimg.com/736x/f2/36/31/f23631458b83152e13a9ea3c14df3abc.jpg",  "Le docteur Andrew Deluca vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-02-15",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Stevens", "Izzie", "cardiologie", "Lyon", "https://i.pinimg.com/736x/d5/3e/5b/d53e5bfa87fd736a86f2a70d407847a2.jpg",  "Le docteur Izzie Stevens vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est se specialise en cardiologie adulte, et a une spécialisation supplémentaire en cardiologie interventionnelle pour la prise en charge des coronaropathies. ", "2024-08-16",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("docteur Sloan", "Mark", "chirurgien plasticien et esthétique", "Lyon", "https://i.pinimg.com/1200x/5e/b9/ac/5eb9ac189cd9ea77f10f372159bd561f.jpg", "Le docteur Mark Sloan vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en chirurgie plastique et esthétique, il realise tout type de chirurgies réparatrices et esthetiques.", "2024-10-18",3);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Avry", "Jackson", "chirurgien plasticien et esthetique", "Lyon", "https://i.etsystatic.com/18496010/r/il/25674d/2029675303/il_570xN.2029675303_7lee.jpg", "Le docteur Jackson Avry vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en chirurgie plastique et esthétique, il realise tout type de chirurgies réparatrices et esthetiques.", "2024-04-12",1);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Kepner", "April", "Traumatologue", "Lyon",  "https://i.etsystatic.com/18496010/r/il/5732c8/2044273075/il_570xN.2044273075_b6bu.jpg",  "Le docteur April Kepner vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Elle est spécialisé en traumatologie. Elle est capable de concevoir, de realiser et de poser des appareillages plantaires destinés à restituer le confortet le bien être du patient.", "2024-04-11",2);
INSERT INTO medecin (name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id)
VALUES ("Docteur Linconn", "Atticus", "orthopediste", "lyon","https://i.etsystatic.com/18496010/r/il/d61ecb/2029375377/il_570xN.2029375377_ibl8.jpg", "Le docteur Atticus Linconn vous acceuille tous les jours à l'hopital 'Grey Sloan Memorial Hospital' pour ses consultations. Il est spécialisé en orthopediste. Il est capable de concevoir, de realiser et de poser des appareillages plantaires destinés à restituer le confortet le bien être du patient.", "2024-06-09",3);




CREATE TABLE episodes(
 id INT PRIMARY key NOT NULL AUTO_INCREMENT,
  urlToVideo VARCHAR(255),
  hopital_id INT NOT NULL,
  CONSTRAINT fk_episodes Foreign Key (hopital_id) REFERENCES hopital(id)
);

INSERT INTO episodes (urlToVideo, hopital_id)
VALUES ('https://www.youtube.com/watch?v=P5NYPUX9GxY', 1)


