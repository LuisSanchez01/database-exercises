USE codeup_test_db;
DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
                           `id` int unsigned NOT NULL AUTO_INCREMENT,
                           `first_name` varchar(25) NOT NULL,
                           `album_id` int unsigned NOT NULL,
                           PRIMARY KEY (`id`),
                           KEY `album_id` (`album_id`),
                           CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `persons` VALUES (1,'Olivia',1),(2,'Santiago',2),(3,'Tareq',4),(4,'Anaya',5);


CREATE TABLE preferences (
    person_id INT UNSIGNED NOT NULL,
    album_id INT UNSIGNED NOT NULL,
    CONSTRAINT preferences_person_id_fk FOREIGN KEY (person_id) REFERENCES
  persons (id),
  CONSTRAINT  preferences_album_id_fk FOREIGN KEY (album_id) REFERENCES albums (id)
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 21), (1, 29), (2, 1), (2, 32), (2, 30), (3, 11), (3, 26), (3, 25);