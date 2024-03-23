-- Select from user table join  kegiatan table join m_karier table 
SELECT u.username, k.nama_kegiatan,k.desc_kegiatan,k.tanggal, m.goals
FROM `user` u
JOIN `kegiatan` k ON u.u_id = k.id_user
JOIN `m_karier` m ON k.id = m.id_goals;

-- Select from user table join  kegiatan table join m_keluarga table
SELECT u.username, k.nama_kegiatan,k.desc_kegiatan,k.tanggal, m.nama_anak, m.nama_makanan, m.resep
FROM `user` u
JOIN `kegiatan` k ON u.u_id = k.id_user
JOIN `m_keluarga` m ON k.id = m.id_keluarga;

-- Select from user table join  kegiatan table join m_kamu table
SELECT u.username, k.nama_kegiatan,k.desc_kegiatan,k.tanggal, m.nama_kegiatan
FROM `user` u
JOIN `kegiatan` k ON u.u_id = k.id_user
JOIN `m_kamu` m ON k.id = m.id_kamu;

-- Select from user table join  kegiatan table join m_karier table join m_keluarga table join m_kamu table
SELECT *
FROM `user` u
JOIN `kegiatan` k ON u.u_id = k.id_user
LEFT JOIN `m_karier` mk ON k.id = mk.id_goals
LEFT JOIN `m_keluarga` mkel ON k.id = mkel.id_keluarga
LEFT JOIN `m_kamu` mka ON k.id = mka.id_kamu;

-- Select from user table join  kegiatan table join m_karier table join m_keluarga table join m_kamu table
SELECT *
FROM `user` u
JOIN `kegiatan` k ON u.u_id = k.id_user
JOIN `m_karier` mk ON k.id = mk.id_goals
JOIN `m_keluarga` mkel ON k.id = mkel.id_keluarga
JOIN `m_kamu` mka ON k.id = mka.id_kamu;

-- Select from user table cross join  kegiatan table
SELECT *
FROM `user` u
CROSS JOIN `kegiatan` k;

-- Select from user table left join  kegiatan table
SELECT *
FROM `user` u
LEFT JOIN `kegiatan` k ON u.u_id = k.id_user;