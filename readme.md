# powerdns-convert

Berikut adalah script bash untuk parsing named.conv dan zone file (domain.db) lalu di tambahkan ke PowerDNS MySQL

1. Bersihkan named.conf dari segala komentar dan domain PTR
2. Jalankan extract.sh
- input_file bisa disesuaikan dengan lokasi named.conf
- output_file bisa disesuaikan dengan lokasi dimana file hasil extract
3. Gunakan duplicate.sh untuk membersihkan record yang dobel
4. Jalankan generate.sh
- input_file bisa disesuaikan dengan lokasi dimana file hasil extract
- semua file .sql nya akan diletakkan di lokasi yang sama dengan lokasi generate.sh, harap berhati-hati!
- Zone file secara default ada di /var/named, sesuaikan dengan kebutuhan
5. Jalankan import.sh
- Sesuaikan semua konfig yang ada di import.sh sebelum menjalankan

Rekomendasi menjalankan extract.sh, generate.sh dan import.sh pada 1 folder khusus agar tidak berantakan.
Apabila muncul error, kemungkinan besar karena config atau path di file .sh tidak tepat.
