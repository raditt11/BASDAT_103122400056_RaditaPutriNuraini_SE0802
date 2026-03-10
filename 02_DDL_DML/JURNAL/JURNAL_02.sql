SQL> -- NAMA : RADITA PUTRI NURAINI
SQL> -- NIM : 103122400056
SQL> CREATE TABLE film (
  2  id_film CHAR(5),
  3  tahun NUMBER(4),
  4  
SQL> CREATE TABLE film (
  2  id_film CHAR(5) PRIMARY KEY,
  3  judul VARCHAR2 (50),
  4  sinopsis VARCHAR2 (200),
  5  tahun NUMBER(4),
  6  durasi NUMBER(3)
  7  );

Table created.

SQL> desc film;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL CHAR(5)
 JUDUL                                              VARCHAR2(50)
 SINOPSIS                                           VARCHAR2(200)
 TAHUN                                              NUMBER(4)
 DURASI                                             NUMBER(3)

SQL> CREATE TABLE theater (
  2  id_theater CHAR (5) PRIMARY KEY,
  3  harga NUMBER,
  4  kapasitas NUMBER,
  5  kelas VARCHAR2 (20)
  6  );

Table created.

SQL> desc theater;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_THEATER                                NOT NULL CHAR(5)
 HARGA                                              NUMBER
 KAPASITAS                                          NUMBER
 KELAS                                              VARCHAR2(20)

SQL> CREATE TABLE member (
  2  id_member CHAR(5) PRIMARY KEY,
  3  nama VARCHAR2(50),
  4  no_hp VARCHAR2(15),
  5  tgl_lahir DATE,
  6  email VARCHAR2(50)
  7  );

Table created.

SQL> desc member;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_MEMBER                                 NOT NULL CHAR(5)
 NAMA                                               VARCHAR2(50)
 NO_HP                                              VARCHAR2(15)
 TGL_LAHIR                                          DATE
 EMAIL                                              VARCHAR2(50)

SQL> CREATE TABLE jadwal (
  2  id_jadwal CHAR (5) PRIMARY KEY,
  3  id_film CHAR (5),
  4  id_theater CHAR (5),
  5  periode_start DATE,
  6  periode_end DATE,
  7  FOREIGN KEY (id_film) REFERENCES film(id_film),
  8  FOREIGN KEY (id_theater) REFERENCES theater(id_theater)
  9  );

Table created.

SQL> CRRATE TABLE transaksi (
SP2-0734: unknown command beginning "CRRATE TAB..." - rest of line ignored.
SQL> CREATE TABLE transaksi (
  2  kode_pemesanan CHAR (5) PRIMARY KEY,
  3  id_jadwal CHAR(5);
id_jadwal CHAR(5)
                *
ERROR at line 3:
ORA-00907: missing right parenthesis 


SQL> CREATE TABLE transaksi (
  2  kode_pemesanan CHAR(5) PRIMARY KEY,
  3  id_jadwal CHAR(5),
  4  id_member CHAR(5),
  5  status VARCHAR2(20),
  6  tanggal DATE,
  7  total_harga NUMBER,
  8  FOREIGN KEY (id_jadwal) REFERENCES jadwal(id_jadwal),
  9  FOREIGN KEY (id_member) REFERENCES member(id_member),
 10  );
)
*
ERROR at line 10:
ORA-00904: : invalid identifier 


SQL> CREATE TABLE transaksi (
  2  kode_pemesanan CHAR(5) PRIMARY KEY,
  3  id_jadwal CHAR(5);
id_jadwal CHAR(5)
                *
ERROR at line 3:
ORA-00907: missing right parenthesis 


SQL> CREATE TABLE transaksi (
  2  kode_pemesanan CHAR (5) PRIMARY KEY,
  3  id_jadwal CHAR(5),
  4  id_member CHAR(5),
  5  status VARCHAR2(20),
  6  tanggal DATE,
  7  total_harga NUMBER,
  8  FOREIGN KEY (id_jadwal) REFERENCES jadwal(id_jadwal),
  9  FOREIGN KEY (id_member) REFERENCES member(id_member)
 10  );

Table created.

SQL> INSERT INTO film (id_film, judul, sinopsis, tahun, durasi)
  2  VALUES ('01','totoro','totoro ghibli','2010',180);

1 row created.

SQL> INSERT INTO film (id_film, judul, sinopsis, tahun, durasi)
  2  VALUES ('02','UP','petualangan','2017',180);

1 row created.

SQL> INSERT INTO theater (id_theater, harga, kapasitas, kelas)
  2  VALUES ('01',50000,100,'Reguler');

1 row created.

SQL> INSERT INTO theater (id_theater, harga, kapasitas, kelas)
  2  VALUES ('02', 100000,100,'VIP');

1 row created.

SQL> INSERT INTO member (id_member, nama, no_hp, tgl_lahir, email)
  2  VALUES('01','anan','08123456789','12-DES-2012','anan@gmail.com');
VALUES('01','anan','08123456789','12-DES-2012','anan@gmail.com')
                                 *
ERROR at line 2:
ORA-01843: not a valid month 


SQL> INSERT INTO member (id_member, nama, no_hp, tgl_lahir, email)
  2  VALUES('01','anan','08123456789','12-DEC-2012','anan@gmail.com');

1 row created.

SQL> INSERT INTO member (id_member, nama, no_hp, tgl_lahir, email)
  2  VALUES('01','dita','08123456788','10-NOV-2010','ditaa@gmail.com');
INSERT INTO member (id_member, nama, no_hp, tgl_lahir, email)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008316) violated 


SQL> INSERT INTO member (id_member, nama, no_hp, tgl_lahir, email)
  2  VALUES('02','dita','08123456788','10-NOV-2010','ditaa@gmail.com');

1 row created.

SQL> INSERT INTO jadwal(id_jadwal, id_film, id_theater, periode_start, periode_end)
  2  VALUES ('01','01','01','01-MAY-2025','05-MAY-1015');

1 row created.

SQL> INSERT INTO jadwal(id_jadwal, id_film, id_theater, periode_start, periode_end)
  2  VALUES ('02','02','02','02-JUL-2025','07-JUL-2025');

1 row created.

SQL> INSERT INTO inventaris (id_inventaris, id_theater, nomor_kursi)
  2  VALUES ('01','01','Q1');
INSERT INTO inventaris (id_inventaris, id_theater, nomor_kursi)
            *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> DESC inventaris;
ERROR:
ORA-04043: object inventaris does not exist 


SQL> CREATE TABLE inventaris (
  2  id_inventaris CHAR(5) PRIMARY KEY,
  3  id_theater CHAR(5),
  4  nomor_kursi VARCHAR2(5),
  5  FOREIGN KEY (id_theater) REFERENCES theater(id_theater)
  6  );

Table created.

SQL> INSERT INTO inventaris (id_inventaris, id_theater, nomor_kursi)
  2  VALUES ('01','01','Q1');

1 row created.

SQL> INSERT INTO inventaris (id_inventaris, id_theater, nomor_kursi)
  2  VALUES ('02','02','Q2');

1 row created.

SQL> INSERT INTO transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga)
  2  VALUES ('01','01','01','LUNAS','12-MAY-2026',50000);

1 row created.

SQL> INSERT INTO transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga)
  2  VALUES ('02','02','02','PENDING','12-DEC-2026',100000);

1 row created.

SQL> UPDATE film
  2  SET durasi = 190
  3  WHERE id_film = 'Q001';

0 rows updated.

SQL> UPDATE film
  2  SET durasi = 190
  3  WHERE id_film = '01';

1 row updated.

SQL> UPDATE theater
  2  SET harga = 75000
  3  WHERE id_theater = '01';

1 row updated.

SQL> UPDATE member
  2  SET no_hp = '08555555555'
  3  WHERE id_member = '01';

1 row updated.

SQL> UPDATE transaksi
  2  SET no_status = 'LUNAS'
  3  WHERE kode_pemesanan = '01';
SET no_status = 'LUNAS'
    *
ERROR at line 2:
ORA-00904: "NO_STATUS": invalid identifier 


SQL> UPDATE transaksi
  2  SET status = 'LUNAS'
  3  WHERE kode_pemesanan = '01';

1 row updated.

SQL> UPDATE inventaris
  2  SET nomor_kursi = 'Y1'
  3  WHERE id_inventaris = '01';

1 row updated.

SQL> SELECT * FROM film;

ID_FI JUDUL                                                                     
----- --------------------------------------------------                        
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
01    totoro                                                                    
totoro ghibli                                                                   
      2010        190                                                           
                                                                                
02    UP                                                                        
petualangan                                                                     
      2017        180                                                           

ID_FI JUDUL                                                                     
----- --------------------------------------------------                        
SINOPSIS                                                                        
--------------------------------------------------------------------------------
     TAHUN     DURASI                                                           
---------- ----------                                                           
                                                                                

SQL> COLUMN id_film FORMAT A5
SQL> COLUMN judul FORMAT A20
SQL> COLUMN sinopsis FORMAT A30
SQL> COLUMN tahun FORMAT 9999
SQL> COLUMN durasi FORMAT 999
SQL> COLUMN id_film FORMAT A5
SQL> COLUMN judul FORMAT A20
SQL> SET LINESIZE 200
SQL> SELECT * FROM film
  2  
SQL> SELECT * FROM film;

ID_FI JUDUL                SINOPSIS                       TAHUN DURASI                                                                                                                                  
----- -------------------- ------------------------------ ----- ------                                                                                                                                  
01    totoro               totoro ghibli                   2010    190                                                                                                                                  
02    UP                   petualangan                     2017    180                                                                                                                                  

SQL> SELECT * FROM theater;

ID_TH      HARGA  KAPASITAS KELAS                                                                                                                                                                       
----- ---------- ---------- --------------------                                                                                                                                                        
01         75000        100 Reguler                                                                                                                                                                     
02        100000        100 VIP                                                                                                                                                                         

SQL> SELECT * FROM member;

ID_ME NAMA                                               NO_HP           TGL_LAHIR EMAIL                                                                                                                
----- -------------------------------------------------- --------------- --------- --------------------------------------------------                                                                   
01    anan                                               08555555555     12-DEC-12 anan@gmail.com                                                                                                       
02    dita                                               08123456788     10-NOV-10 ditaa@gmail.com                                                                                                      

SQL> SELECT * FROM transaksi;

KODE_ ID_JA ID_ME STATUS               TANGGAL   TOTAL_HARGA                                                                                                                                            
----- ----- ----- -------------------- --------- -----------                                                                                                                                            
01    01    01    LUNAS                12-MAY-26       50000                                                                                                                                            
02    02    02    PENDING              12-DEC-26      100000                                                                                                                                            

SQL> SELECT * FROM inventaris;

ID_IN ID_TH NOMOR                                                                                                                                                                                       
----- ----- -----                                                                                                                                                                                       
01    01    Y1                                                                                                                                                                                          
02    02    Q2                                                                                                                                                                                          

SQL> DELETE FROM inventaris
  2  WHERE id_inventaris = '02';

1 row deleted.

SQL> desc film;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_FILM                                                                                                           NOT NULL CHAR(5)
 JUDUL                                                                                                                      VARCHAR2(50)
 SINOPSIS                                                                                                                   VARCHAR2(200)
 TAHUN                                                                                                                      NUMBER(4)
 DURASI                                                                                                                     NUMBER(3)

SQL> SET LINESIZE 200
SQL> desc film;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_FILM                                                                                                           NOT NULL CHAR(5)
 JUDUL                                                                                                                      VARCHAR2(50)
 SINOPSIS                                                                                                                   VARCHAR2(200)
 TAHUN                                                                                                                      NUMBER(4)
 DURASI                                                                                                                     NUMBER(3)

SQL> SET LINESIZE 200
SQL> desc film;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_FILM                                                                                                           NOT NULL CHAR(5)
 JUDUL                                                                                                                      VARCHAR2(50)
 SINOPSIS                                                                                                                   VARCHAR2(200)
 TAHUN                                                                                                                      NUMBER(4)
 DURASI                                                                                                                     NUMBER(3)

SQL> SELECT * FROM film;

ID_FI JUDUL                SINOPSIS                       TAHUN DURASI                                                                                                                                  
----- -------------------- ------------------------------ ----- ------                                                                                                                                  
01    totoro               totoro ghibli                   2010    190                                                                                                                                  
02    UP                   petualangan                     2017    180                                                                                                                                  

SQL> SELECT * FROM transaksi;

KODE_ ID_JA ID_ME STATUS               TANGGAL   TOTAL_HARGA                                                                                                                                            
----- ----- ----- -------------------- --------- -----------                                                                                                                                            
01    01    01    LUNAS                12-MAY-26       50000                                                                                                                                            
02    02    02    PENDING              12-DEC-26      100000                                                                                                                                            

SQL> DELETE FROM transaksi
  2  WHERE id_member = '02';

1 row deleted.

SQL> SET LINESIZE 200
SQL> SELECT * FROM film;

ID_FI JUDUL                SINOPSIS                       TAHUN DURASI                                                                                                                                  
----- -------------------- ------------------------------ ----- ------                                                                                                                                  
01    totoro               totoro ghibli                   2010    190                                                                                                                                  
02    UP                   petualangan                     2017    180                                                                                                                                  

SQL> SELECT * FROM inventaris;

ID_IN ID_TH NOMOR                                                                                                                                                                                       
----- ----- -----                                                                                                                                                                                       
01    01    Y1                                                                                                                                                                                          

SQL> desc inventaris
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_INVENTARIS                                                                                                     NOT NULL CHAR(5)
 ID_THEATER                                                                                                                 CHAR(5)
 NOMOR_KURSI                                                                                                                VARCHAR2(5)

SQL> SET LINESIZE 200
SQL> desc inventaris
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_INVENTARIS                                                                                                     NOT NULL CHAR(5)
 ID_THEATER                                                                                                                 CHAR(5)
 NOMOR_KURSI                                                                                                                VARCHAR2(5)

SQL> COLUMN id_film FORMAT A6
SQL> COLUMN judul FORMAT A20
SQL> COLUMN sinopsis FORMAT A30
SQL> COLUMN tahun FORMAT 9999
SQL> COLUMN durasi FORMAT 999
SQL> SELECT * FROM film
  2  
SQL> SELECT * FROM film;

ID_FIL JUDUL                SINOPSIS                       TAHUN DURASI                                                                                                                                 
------ -------------------- ------------------------------ ----- ------                                                                                                                                 
01     totoro               totoro ghibli                   2010    190                                                                                                                                 
02     UP                   petualangan                     2017    180                                                                                                                                 

SQL> desc inventaris
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID_INVENTARIS                                                                                                     NOT NULL CHAR(5)
 ID_THEATER                                                                                                                 CHAR(5)
 NOMOR_KURSI                                                                                                                VARCHAR2(5)

SQL> SELECT * FROM transaksi;

KODE_ ID_JA ID_ME STATUS               TANGGAL   TOTAL_HARGA                                                                                                                                            
----- ----- ----- -------------------- --------- -----------                                                                                                                                            
01    01    01    LUNAS                12-MAY-26       50000                                                                                                                                            

SQL> SELECT * FROM jadwal;

ID_JA ID_FIL ID_TH PERIODE_S PERIODE_E                                                                                                                                                                  
----- ------ ----- --------- ---------                                                                                                                                                                  
01    01     01    01-MAY-25 05-MAY-15                                                                                                                                                                  
02    02     02    02-JUL-25 07-JUL-25                                                                                                                                                                  

SQL> SELECT * FROM theater;

ID_TH      HARGA  KAPASITAS KELAS                                                                                                                                                                       
----- ---------- ---------- --------------------                                                                                                                                                        
01         75000        100 Reguler                                                                                                                                                                     
02        100000        100 VIP                                                                                                                                                                         

SQL> SPOOL OFF
