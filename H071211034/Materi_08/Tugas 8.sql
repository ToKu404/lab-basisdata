#Nomor 1
-- USE appseminar;
-- SELECT m.nama, p.nama AS 'nama prodi', m.nim AS 'NIM/NIP'
-- FROM ss_mahasiswa m
-- JOIN ss_prodi p
-- USING (id_prodi)
-- WHERE p.nama = 'ilmu komputer'
-- UNION 
-- SELECT d.nama, p.nama AS 'nama prodi', d.nip
-- FROM ss_dosen d
-- JOIN ss_prodi p
-- USING (id_prodi)
-- WHERE p.nama = 'ilmu komputer';

#nomor 2
-- USE appseminar;
-- SELECT nama, prodi,GROUP_CONCAT(STATUS ORDER BY nama SEPARATOR ',') AS 'Riwayat Status' FROM 
-- (SELECT DISTINCT d.nama, p.nama AS prodi, 'pembimbing utama'AS status
-- FROM ss_dosen d
-- JOIN ss_prodi p 
-- ON d.id_prodi = p.id_prodi
-- JOIN ss_pembimbing pb
-- ON pb.id_pembimbing_utama = d.id_dosen
-- UNION 
-- SELECT distinct d.nama, p.nama, 'pembimbing 1' AS status
-- FROM ss_dosen d
-- JOIN ss_prodi p 
-- ON d.id_prodi = p.id_prodi
-- JOIN ss_pembimbing pb
-- ON pb.id_pembimbing_pertama = d.id_dosen
-- UNION
-- SELECT distinct d.nama, p.nama, 'penguji 1' AS status
-- FROM ss_dosen d
-- JOIN ss_prodi p 
-- ON d.id_prodi = p.id_prodi
-- JOIN ss_penguji pj
-- ON pj.id_penguji_1 = d.id_dosen
-- UNION
-- SELECT distinct d.nama, p.nama, 'penguji 2' AS status
-- FROM ss_dosen d
-- JOIN ss_prodi p 
-- ON d.id_prodi = p.id_prodi
-- JOIN ss_penguji pj
-- ON pj.id_penguji_2 = d.id_dosen) a
-- GROUP BY nama, prodi
-- ORDER BY nama DESC;

#Nomor 3
-- USE classicmodels;

-- SELECT city FROM 
-- (SELECT o.city, e.firstName AS 'Name' FROM offices AS o
-- JOIN employees AS e
-- ON o.officeCode = e.officeCode
-- WHERE e.firstName LIKE 'L%'
-- UNION
-- SELECT city, customerName 
-- FROM customers
-- WHERE customerName LIKE 'L%') AS s
-- GROUP BY city
-- ORDER BY COUNT(city) DESC
-- LIMIT 1;