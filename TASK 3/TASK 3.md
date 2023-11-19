# TASK 3
## 1. Membuat Folder Kosong `dbt-task3`
![Alt text](image.png)

## 2. Menjalankan Docker Compose
![Alt text](image-1.png)


Pastikan Semua container berjalan

![Alt text](image-2.png)

## 3. Koneksikan Postgre 
Sesuaikan dengan konfigurasi di file docker compose untuk melakukan koneksi

![Alt text](image-3.png)

## 4. Setup VENV and Install DBT
![Alt text](image-4.png)

## 5. Create Requirement.txt
![Alt text](image-5.png)

## 6. Setup DBT Profile
![Alt text](image-6.png)

Lakukan Setup pada file `~/.dbt/profiles.yml`

![Alt text](image-7.png)

## 7. Setup DBT project
![Alt text](image-8.png)

## 8. Setup DBT Project configuration
Lakukan setup pada file `my_project/dbt_project.yml`

![Alt text](image-9.png)

## 9. Defining Source
Definisikan Sumber data dalam file `models/store/schema.yml` dan  untuk menjalankan test nantinya sehingga bisa mendapatkan kualitas data yang terbaik yang kita inginkan.

![Alt text](image-10.png)

## 10. Creating a Model
Selanjutnya kita perlu mendefinisikan skema model yang akan kita buat pada file `models/store_analytics/schema.yml` dan definisikan bentuk tabel dari model ini pada file `models/store_analytics/daily_sales.sql`

![Alt text](image-11.png)

## 11. Run and test your model
Sebelum kita menjalankan run dan test model, pastikan database source yang kita buat sudah ada isinya, jadi kita perlu menjalankan sql kode seperti pada file init.sql

**Sebelum diisi tampak table masih kosong**

![Alt text](image-12.png)

**After run query** based on init.sql file

![Alt text](image-13.png)

Kemudian masuk ke directory my_project dahulu, kemudian jalankan dbt run dan dbt test

**DBT RUN**

![Alt text](image-14.png)

**DBT TEST**

![Alt text](image-15.png)

## 12. Check the result
Pertama kita akan cek apakah skema baru yang telah kita definisikan terbentuk

![Alt text](image-16.png)

Kemudian cek isi tabel pada skema baru tersebut (public_analytics)

![Alt text](image-17.png)

## END