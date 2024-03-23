-- Define Database selaras
CREATE DATABASE IF NOT EXISTS selaras;
USE selaras;

-- Define Table User
CREATE TABLE IF NOT EXISTS `user` (
    u_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(20) UNIQUE,
    user_pass VARCHAR(15),
    user_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_deleted DATE
    status ENUM('active', 'inactive') DEFAULT 'active'
);

-- Define Table kegiatan
CREATE TABLE IF NOT EXISTS `kegiatan` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_user INT,
    jenis ENUM('m_karir', 'm_keluarga', 'm_kamu'),
    judul_kegiatan VARCHAR(100),
    desc_kegiatan TEXT,
    prioritas ENUM('tinggi', 'sedang', 'rendah'),
    tanggal DATE,
    FOREIGN KEY (id_user) REFERENCES `user`(u_id)
);

 -- Define Table anak
CREATE TABLE IF NOT EXISTS 'anak'(
    id_anak INT PRIMARY KEY AUTO_INCREMENT,
    id_keluarga INT,
    nama_anak VARCHAR(50), 
    FOREIGN KEY (id_keluarga) REFERENCES `user`(u_id)
);

-- Define Table alergi
CREATE TABLE IF NOT EXISTS 'alergi'(
    id_anak INT, 
    nama_alergi VARCHAR(50), 
    FOREIGN KEY (id_alergi) REFERENCES `anak`(alergi_id)
);


-- Define Table makanan
CREATE TABLE IF NOT EXISTS 'makanan'(
    id_anak INT,
    makanan_kesukaan VARCHAR(50),
    FOREIGN KEY (id_anak) REFERENCES `anak`(id_anak)
);

---------------------------------------------------------------------------------------------

-- Define Procedure Delete User
DELIMITER //

CREATE PROCEDURE delete_user(
    IN p_u_id INT
)
BEGIN
    UPDATE `user` 
    SET user_deleted = CURRENT_DATE(), status = 'inactive' 
    WHERE u_id = p_u_id;
END//

DELIMITER ;

-- Define Procedure Insert into User
DELIMITER //

CREATE PROCEDURE insert_user(
    IN p_username VARCHAR(20),
    IN p_user_pass VARCHAR(15)
)
BEGIN
    INSERT INTO `user` (username, user_pass) VALUES (p_username, p_user_pass);
END//

DELIMITER ;

-- Define Procedure Insert into tabel_kegiatan
DELIMITER //

CREATE PROCEDURE insert_tabel_kegiatan(
    IN p_id_user INT,
    IN p_jenis ENUM('m_karir', 'm_keluarga', 'm_kamu'),
    IN p_judul_kegiatan VARCHAR(100),
    IN p_desc_kegiatan TEXT,
    IN p_prioritas ENUM('tinggi', 'sedang', 'rendah'),
    IN p_tanggal DATE
)
BEGIN
    INSERT INTO kegiatan(id_user, jenis, judul_kegiatan, desc_kegiatan, prioritas, tanggal)
    VALUES (p_id_user, p_jenis, p_judul_kegiatan, p_desc_kegiatan, p_prioritas, p_tanggal);
END //

DELIMITER ;

-- Define Procedure Insert into anak
DELIMITER //

CREATE PROCEDURE insert_anak(
    IN p_id_keluarga INT,
    IN p_nama_anak VARCHAR(50)
)
BEGIN
    INSERT INTO anak(id_keluarga, nama_anak)
    VALUES (p_id_keluarga, p_nama_anak);
END //

DELIMITER ;

-- Define Procedure Insert into alergi
DELIMITER //

CREATE PROCEDURE insert_alergi(
    IN p_id_anak INT,
    IN p_nama_alergi VARCHAR(50)
)
BEGIN
    INSERT INTO alergi(id_anak, nama_alergi)
    VALUES (p_id_anak, p_nama_alergi);
END //

DELIMITER ;

 -- Define Procedure Insert into makanan
DELIMITER //

CREATE PROCEDURE insert_makanan(
    IN p_id_anak INT,
    IN p_makanan_kesukaan VARCHAR(50)
)
BEGIN
    INSERT INTO makanan (id_anak, makanan_kesukaan)
    VALUES (p_id_anak, p_makanan_kesukaan);
END //

DELIMITER ;