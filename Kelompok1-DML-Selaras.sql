-- Insert into user table
INSERT INTO `user` (`username`, `user_pass`) 
VALUES ('Revo', 'Revo1'),
       ('Darrel', 'Darrel2'),
       ('John', 'John3'),
	('Kamal', 'Kamal4');


-- Insert into kegiatan table
INSERT INTO `kegiatan` (`id_user`, `jenis`, `nama_kegiatan`, `desc_kegiatan`, `tanggal`, `prioritas`)
VALUES (1, 'm_karir', 'Presentasi Proyek', 'Presentasi hasil proyek kepada manajemen', '2024-03-20', 'tinggi'),
       (2, 'm_keluarga', 'Makan Malam Bersama', 'Makan malam bersama keluarga', '2024-03-21', 'sedang'),
       (3, 'm_kamu', 'Berkumpul dengan Teman', 'Berkumpul dengan teman-teman lama', '2024-03-22', 'rendah'),
       (4, 'm_karir', 'Rapat Proyek', 'Rapat proyek dengan tim', '2024-03-23', 'tinggi');
       (2, 'm_keluarga', 'Makan Malam Bersama', 'Makan malam bersama keluarga', '2024-03-21', 'sedang'),
       (3, 'm_kamu', 'Berkumpul dengan Teman', 'Berkumpul dengan teman-teman lama', '2024-03-22', 'tinggi');


-- call the procedure untuk insert into m_karier
CALL insert_nama_kegiatan_m_karier(1, 1, 'Mendapatkan Kenaikan Pangkat');
CALL insert_nama_kegiatan_m_karier(4, 4, 'Hadir Rapat Proyek');

-- call the procedure untuk insert into m_keluarga
CALL insert_kegiatan_m_keluarga(2, 2, 'James', 'Bubur Ayam', 'Resep Bubur Ayam yang Enak');
CALL insert_kegiatan_m_keluarga(2, 5, 'Lion', 'Nasi Goreng', 'Resep Nasi Goreng yang Enak');

-- call the procedure untuk insert into m_kamu
CALL insert_nama_kegiatan_m_kamu(3, 3, 'Berkumpul dengan Teman');
CALL insert_nama_kegiatan_m_kamu(3, 6, 'Belajar hal baru');



