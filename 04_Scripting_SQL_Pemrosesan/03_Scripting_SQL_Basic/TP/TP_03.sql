SQL> --NAMA : RADITA PUTRI NURAINI
SQL> --NIM : 103122400056
SQL> CREATE TABLE mahasiswa (
  2  id CHAR(5) PRIMARY KEY,
  3  nama VARCHAR2(50),
  4  tempat_lahir VARCHAR2(30),
  5  tanggal_lahir DATE,
  6  nomor_hp VARCHAR2(15),
  7  emailVARCHAR2(50),
  8  tinggi_badan NUMBER(3)
  9  berat_badan NUMBER(3)
 10  );
emailVARCHAR2(50),
             *
ERROR at line 7:
ORA-00902: invalid datatype 


SQL> CREATE TABLE mahasiswa (
  2  id CHAR(5) PRIMARY KEY,
  3  nama VARCHAR2(50),
  4  tempat_lahir VARCHAR2(30),
  5  tanggal_lahir DATE,
  6  nomor_hp VARCHAR2(15),
  7  email VARCHAR2(50),
  8  tinggi_badan NUMBER(3),
  9  berat_badan NUMBER(3)
 10  );

Table created.

SQL> INSERT INTO mahasiswa VALUES ('M0001','Andi Pratama','Jakarta', TO_DATE('12-05-2002','DD-MM-YYYY'),'081234567890','andi@gmail.com',170,65);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0002','Budi Santoso','Bandung', TO_DATE('21-08-2001','DD-MM-YYYY'),'082345678901','budi@gmail.com',168,60);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0003','Citra Lestari','Surabaya', TO_DATE('03-02-2003','DD-MM-YYYY'),'083456789012','citra@gmail.com',160,50);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0004','Dewi Anggraini','Yogyakarta', TO_DATE('15-11-2002','DD-MM-YYYY'),'084567890123','dewi@gmail.com',158,48);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0005','Eko Saputra','Semarang', TO_DATE('09-07-2001','DD-MM-YYYY'),'085678901234','eko@gmail.com',172,68);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0006','Fajar Nugroho','Solo', TO_DATE('28-03-2002','DD-MM-YYYY'),'086789012345','fajar@gmail.com',175,70);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0007','Gita Permata','Malang', TO_DATE('17-09-2003','DD-MM-YYYY'),'087890123456','gita@gmail.com',162,52);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0008','Hadi Wijaya','Denpasar', TO_DATE('05-12-2001','DD-MM-YYYY'),'088901234567','hadi@gmail.com',169,64);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0009','Intan Sari','Makassar', TO_DATE('10-04-2002','DD-MM-YYYY'),'089012345678','intan@gmail.com',155,47);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0010','Joko Susanto','Medan', TO_DATE('30-06-2001','DD-MM-YYYY'),'081223344556','joko@gmail.com',173,72);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0011','Kurnia Putri','Palembang', TO_DATE('19-01-2003','DD-MM-YYYY'),'082334455667','kurnia@gmail.com',159,49);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0012','Lukman Hakim','Padang', TO_DATE('23-10-2002','DD-MM-YYYY'),'083445566778','lukman@gmail.com',174,71);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0013','Maya Rahma','Balikpapan', TO_DATE('11-03-2001','DD-MM-YYYY'),'084556677889','maya@gmail.com',161,53);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0014','Nanda Prasetya','Pontianak', TO_DATE('07-08-2002','DD-MM-YYYY'),'085667788990','nanda@gmail.com',167,58);

1 row created.

SQL> INSERT INTO mahasiswa VALUES ('M0015','Oki Setiawan','Banjarmasin', TO_DATE('26-02-2003','DD-MM-YYYY'),'086778899001','oki@gmail.com',171,66);

1 row created.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SELECT * FROM mahasiswa;

ID    NAMA                                               TEMPAT_LAHIR                   TANGGAL_L NOMOR_HP        EMAIL                                              TINGGI_BADAN BERAT_BADAN           
----- -------------------------------------------------- ------------------------------ --------- --------------- -------------------------------------------------- ------------ -----------           
M0001 Andi Pratama                                       Jakarta                        12-MAY-02 081234567890    andi@gmail.com                                              170          65           
M0002 Budi Santoso                                       Bandung                        21-AUG-01 082345678901    budi@gmail.com                                              168          60           
M0003 Citra Lestari                                      Surabaya                       03-FEB-03 083456789012    citra@gmail.com                                             160          50           
M0004 Dewi Anggraini                                     Yogyakarta                     15-NOV-02 084567890123    dewi@gmail.com                                              158          48           
M0005 Eko Saputra                                        Semarang                       09-JUL-01 085678901234    eko@gmail.com                                               172          68           
M0006 Fajar Nugroho                                      Solo                           28-MAR-02 086789012345    fajar@gmail.com                                             175          70           
M0007 Gita Permata                                       Malang                         17-SEP-03 087890123456    gita@gmail.com                                              162          52           
M0008 Hadi Wijaya                                        Denpasar                       05-DEC-01 088901234567    hadi@gmail.com                                              169          64           
M0009 Intan Sari                                         Makassar                       10-APR-02 089012345678    intan@gmail.com                                             155          47           
M0010 Joko Susanto                                       Medan                          30-JUN-01 081223344556    joko@gmail.com                                              173          72           
M0011 Kurnia Putri                                       Palembang                      19-JAN-03 082334455667    kurnia@gmail.com                                            159          49           
M0012 Lukman Hakim                                       Padang                         23-OCT-02 083445566778    lukman@gmail.com                                            174          71           
M0013 Maya Rahma                                         Balikpapan                     11-MAR-01 084556677889    maya@gmail.com                                              161          53           
M0014 Nanda Prasetya                                     Pontianak                      07-AUG-02 085667788990    nanda@gmail.com                                             167          58           
M0015 Oki Setiawan                                       Banjarmasin                    26-FEB-03 086778899001    oki@gmail.com                                               171          66           

15 rows selected.

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 100
SQL> SELECT * FROM mahasiswa;

ID    NAMA                                               TEMPAT_LAHIR                   TANGGAL_L NOMOR_HP        EMAIL                                              TINGGI_BADAN BERAT_BADAN           
----- -------------------------------------------------- ------------------------------ --------- --------------- -------------------------------------------------- ------------ -----------           
M0001 Andi Pratama                                       Jakarta                        12-MAY-02 081234567890    andi@gmail.com                                              170          65           
M0002 Budi Santoso                                       Bandung                        21-AUG-01 082345678901    budi@gmail.com                                              168          60           
M0003 Citra Lestari                                      Surabaya                       03-FEB-03 083456789012    citra@gmail.com                                             160          50           
M0004 Dewi Anggraini                                     Yogyakarta                     15-NOV-02 084567890123    dewi@gmail.com                                              158          48           
M0005 Eko Saputra                                        Semarang                       09-JUL-01 085678901234    eko@gmail.com                                               172          68           
M0006 Fajar Nugroho                                      Solo                           28-MAR-02 086789012345    fajar@gmail.com                                             175          70           
M0007 Gita Permata                                       Malang                         17-SEP-03 087890123456    gita@gmail.com                                              162          52           
M0008 Hadi Wijaya                                        Denpasar                       05-DEC-01 088901234567    hadi@gmail.com                                              169          64           
M0009 Intan Sari                                         Makassar                       10-APR-02 089012345678    intan@gmail.com                                             155          47           
M0010 Joko Susanto                                       Medan                          30-JUN-01 081223344556    joko@gmail.com                                              173          72           
M0011 Kurnia Putri                                       Palembang                      19-JAN-03 082334455667    kurnia@gmail.com                                            159          49           
M0012 Lukman Hakim                                       Padang                         23-OCT-02 083445566778    lukman@gmail.com                                            174          71           
M0013 Maya Rahma                                         Balikpapan                     11-MAR-01 084556677889    maya@gmail.com                                              161          53           
M0014 Nanda Prasetya                                     Pontianak                      07-AUG-02 085667788990    nanda@gmail.com                                             167          58           
M0015 Oki Setiawan                                       Banjarmasin                    26-FEB-03 086778899001    oki@gmail.com                                               171          66           

15 rows selected.

SQL>  COLUMN id FORMAT A5
SQL> COLUMN nama FORMAT A20
SQL> COLUMN tempat_lahir FORMAT A15
SQL> COLUMN nomor_hp FORMAT A15
SQL> COLUMN email FORMAT A25
SQL> SELECT * FROM mahasiswa;

ID    NAMA                 TEMPAT_LAHIR    TANGGAL_L NOMOR_HP        EMAIL                     TINGGI_BADAN BERAT_BADAN                                                                                 
----- -------------------- --------------- --------- --------------- ------------------------- ------------ -----------                                                                                 
M0001 Andi Pratama         Jakarta         12-MAY-02 081234567890    andi@gmail.com                     170          65                                                                                 
M0002 Budi Santoso         Bandung         21-AUG-01 082345678901    budi@gmail.com                     168          60                                                                                 
M0003 Citra Lestari        Surabaya        03-FEB-03 083456789012    citra@gmail.com                    160          50                                                                                 
M0004 Dewi Anggraini       Yogyakarta      15-NOV-02 084567890123    dewi@gmail.com                     158          48                                                                                 
M0005 Eko Saputra          Semarang        09-JUL-01 085678901234    eko@gmail.com                      172          68                                                                                 
M0006 Fajar Nugroho        Solo            28-MAR-02 086789012345    fajar@gmail.com                    175          70                                                                                 
M0007 Gita Permata         Malang          17-SEP-03 087890123456    gita@gmail.com                     162          52                                                                                 
M0008 Hadi Wijaya          Denpasar        05-DEC-01 088901234567    hadi@gmail.com                     169          64                                                                                 
M0009 Intan Sari           Makassar        10-APR-02 089012345678    intan@gmail.com                    155          47                                                                                 
M0010 Joko Susanto         Medan           30-JUN-01 081223344556    joko@gmail.com                     173          72                                                                                 
M0011 Kurnia Putri         Palembang       19-JAN-03 082334455667    kurnia@gmail.com                   159          49                                                                                 
M0012 Lukman Hakim         Padang          23-OCT-02 083445566778    lukman@gmail.com                   174          71                                                                                 
M0013 Maya Rahma           Balikpapan      11-MAR-01 084556677889    maya@gmail.com                     161          53                                                                                 
M0014 Nanda Prasetya       Pontianak       07-AUG-02 085667788990    nanda@gmail.com                    167          58                                                                                 
M0015 Oki Setiawan         Banjarmasin     26-FEB-03 086778899001    oki@gmail.com                      171          66                                                                                 

15 rows selected.

SQL> SELECT nama,
  2  LOWER(nama) AS huruf_kecil,
  3  UPPER(nama) AS huruf_besar
  4  FROM mahasiswa;

NAMA                 HURUF_KECIL                                        HURUF_BESAR                                                                                                                     
-------------------- -------------------------------------------------- --------------------------------------------------                                                                              
Andi Pratama         andi pratama                                       ANDI PRATAMA                                                                                                                    
Budi Santoso         budi santoso                                       BUDI SANTOSO                                                                                                                    
Citra Lestari        citra lestari                                      CITRA LESTARI                                                                                                                   
Dewi Anggraini       dewi anggraini                                     DEWI ANGGRAINI                                                                                                                  
Eko Saputra          eko saputra                                        EKO SAPUTRA                                                                                                                     
Fajar Nugroho        fajar nugroho                                      FAJAR NUGROHO                                                                                                                   
Gita Permata         gita permata                                       GITA PERMATA                                                                                                                    
Hadi Wijaya          hadi wijaya                                        HADI WIJAYA                                                                                                                     
Intan Sari           intan sari                                         INTAN SARI                                                                                                                      
Joko Susanto         joko susanto                                       JOKO SUSANTO                                                                                                                    
Kurnia Putri         kurnia putri                                       KURNIA PUTRI                                                                                                                    
Lukman Hakim         lukman hakim                                       LUKMAN HAKIM                                                                                                                    
Maya Rahma           maya rahma                                         MAYA RAHMA                                                                                                                      
Nanda Prasetya       nanda prasetya                                     NANDA PRASETYA                                                                                                                  
Oki Setiawan         oki setiawan                                       OKI SETIAWAN                                                                                                                    

15 rows selected.

SQL> SELECT INITCAP(nama)
  2  FROM mahasiswa;

INITCAP(NAMA)                                                                                                                                                                                           
--------------------------------------------------                                                                                                                                                      
Andi Pratama                                                                                                                                                                                            
Budi Santoso                                                                                                                                                                                            
Citra Lestari                                                                                                                                                                                           
Dewi Anggraini                                                                                                                                                                                          
Eko Saputra                                                                                                                                                                                             
Fajar Nugroho                                                                                                                                                                                           
Gita Permata                                                                                                                                                                                            
Hadi Wijaya                                                                                                                                                                                             
Intan Sari                                                                                                                                                                                              
Joko Susanto                                                                                                                                                                                            
Kurnia Putri                                                                                                                                                                                            
Lukman Hakim                                                                                                                                                                                            
Maya Rahma                                                                                                                                                                                              
Nanda Prasetya                                                                                                                                                                                          
Oki Setiawan                                                                                                                                                                                            

15 rows selected.

SQL> SELECT CONCAT(nama,' Mahasiswa')
  2  FROM mahasiswa;

CONCAT(NAMA,'MAHASISWA')                                                                                                                                                                                
------------------------------------------------------------                                                                                                                                            
Andi Pratama Mahasiswa                                                                                                                                                                                  
Budi Santoso Mahasiswa                                                                                                                                                                                  
Citra Lestari Mahasiswa                                                                                                                                                                                 
Dewi Anggraini Mahasiswa                                                                                                                                                                                
Eko Saputra Mahasiswa                                                                                                                                                                                   
Fajar Nugroho Mahasiswa                                                                                                                                                                                 
Gita Permata Mahasiswa                                                                                                                                                                                  
Hadi Wijaya Mahasiswa                                                                                                                                                                                   
Intan Sari Mahasiswa                                                                                                                                                                                    
Joko Susanto Mahasiswa                                                                                                                                                                                  
Kurnia Putri Mahasiswa                                                                                                                                                                                  
Lukman Hakim Mahasiswa                                                                                                                                                                                  
Maya Rahma Mahasiswa                                                                                                                                                                                    
Nanda Prasetya Mahasiswa                                                                                                                                                                                
Oki Setiawan Mahasiswa                                                                                                                                                                                  

15 rows selected.

SQL> SELECT nama, LENGTH(nama) AS jumlah_huruf
  2  FROM mahasiswa;

NAMA                 JUMLAH_HURUF                                                                                                                                                                       
-------------------- ------------                                                                                                                                                                       
Andi Pratama                   12                                                                                                                                                                       
Budi Santoso                   12                                                                                                                                                                       
Citra Lestari                  13                                                                                                                                                                       
Dewi Anggraini                 14                                                                                                                                                                       
Eko Saputra                    11                                                                                                                                                                       
Fajar Nugroho                  13                                                                                                                                                                       
Gita Permata                   12                                                                                                                                                                       
Hadi Wijaya                    11                                                                                                                                                                       
Intan Sari                     10                                                                                                                                                                       
Joko Susanto                   12                                                                                                                                                                       
Kurnia Putri                   12                                                                                                                                                                       
Lukman Hakim                   12                                                                                                                                                                       
Maya Rahma                     10                                                                                                                                                                       
Nanda Prasetya                 14                                                                                                                                                                       
Oki Setiawan                   12                                                                                                                                                                       

15 rows selected.

SQL> SELECT nama, SUBSTR(nama,1,4)
  2  FROM mahasiswa;

NAMA                 SUBSTR(NAMA,1,4)                                                                                                                                                                   
-------------------- ----------------                                                                                                                                                                   
Andi Pratama         Andi                                                                                                                                                                               
Budi Santoso         Budi                                                                                                                                                                               
Citra Lestari        Citr                                                                                                                                                                               
Dewi Anggraini       Dewi                                                                                                                                                                               
Eko Saputra          Eko                                                                                                                                                                                
Fajar Nugroho        Faja                                                                                                                                                                               
Gita Permata         Gita                                                                                                                                                                               
Hadi Wijaya          Hadi                                                                                                                                                                               
Intan Sari           Inta                                                                                                                                                                               
Joko Susanto         Joko                                                                                                                                                                               
Kurnia Putri         Kurn                                                                                                                                                                               
Lukman Hakim         Lukm                                                                                                                                                                               
Maya Rahma           Maya                                                                                                                                                                               
Nanda Prasetya       Nand                                                                                                                                                                               
Oki Setiawan         Oki                                                                                                                                                                                

15 rows selected.

SQL> SELECT LPAD(nama,20,'*') FROM mahasiswa;

LPAD(NAMA,20,'*')                                                                                                                                                                                       
--------------------------------------------------------------------------------                                                                                                                        
********Andi Pratama                                                                                                                                                                                    
********Budi Santoso                                                                                                                                                                                    
*******Citra Lestari                                                                                                                                                                                    
******Dewi Anggraini                                                                                                                                                                                    
*********Eko Saputra                                                                                                                                                                                    
*******Fajar Nugroho                                                                                                                                                                                    
********Gita Permata                                                                                                                                                                                    
*********Hadi Wijaya                                                                                                                                                                                    
**********Intan Sari                                                                                                                                                                                    
********Joko Susanto                                                                                                                                                                                    
********Kurnia Putri                                                                                                                                                                                    
********Lukman Hakim                                                                                                                                                                                    
**********Maya Rahma                                                                                                                                                                                    
******Nanda Prasetya                                                                                                                                                                                    
********Oki Setiawan                                                                                                                                                                                    

15 rows selected.

SQL> SELECT RPAD(nama,20,'*') FROM mahasiswa;

RPAD(NAMA,20,'*')                                                                                                                                                                                       
--------------------------------------------------------------------------------                                                                                                                        
Andi Pratama********                                                                                                                                                                                    
Budi Santoso********                                                                                                                                                                                    
Citra Lestari*******                                                                                                                                                                                    
Dewi Anggraini******                                                                                                                                                                                    
Eko Saputra*********                                                                                                                                                                                    
Fajar Nugroho*******                                                                                                                                                                                    
Gita Permata********                                                                                                                                                                                    
Hadi Wijaya*********                                                                                                                                                                                    
Intan Sari**********                                                                                                                                                                                    
Joko Susanto********                                                                                                                                                                                    
Kurnia Putri********                                                                                                                                                                                    
Lukman Hakim********                                                                                                                                                                                    
Maya Rahma**********                                                                                                                                                                                    
Nanda Prasetya******                                                                                                                                                                                    
Oki Setiawan********                                                                                                                                                                                    

15 rows selected.

SQL> SELECT LTRIM('   DATABASE') FROM dual;

LTRIM('D                                                                                                                                                                                                
--------                                                                                                                                                                                                
DATABASE                                                                                                                                                                                                

SQL> SELECT RTRIM('DATABASE   ') FROM dual;

RTRIM('D                                                                                                                                                                                                
--------                                                                                                                                                                                                
DATABASE                                                                                                                                                                                                

SQL> SELECT RTRIM('DATABASE mahasiswa') FROM dual;

RTRIM('DATABASEMAH                                                                                                                                                                                      
------------------                                                                                                                                                                                      
DATABASE mahasiswa                                                                                                                                                                                      

SQL> SELECT nama, INSTR(nama,'a')
  2  FROM mahasiswa;

NAMA                 INSTR(NAMA,'A')                                                                                                                                                                    
-------------------- ---------------                                                                                                                                                                    
Andi Pratama                       8                                                                                                                                                                    
Budi Santoso                       7                                                                                                                                                                    
Citra Lestari                      5                                                                                                                                                                    
Dewi Anggraini                    11                                                                                                                                                                    
Eko Saputra                        6                                                                                                                                                                    
Fajar Nugroho                      2                                                                                                                                                                    
Gita Permata                       4                                                                                                                                                                    
Hadi Wijaya                        2                                                                                                                                                                    
Intan Sari                         4                                                                                                                                                                    
Joko Susanto                       9                                                                                                                                                                    
Kurnia Putri                       6                                                                                                                                                                    
Lukman Hakim                       5                                                                                                                                                                    
Maya Rahma                         2                                                                                                                                                                    
Nanda Prasetya                     2                                                                                                                                                                    
Oki Setiawan                       9                                                                                                                                                                    

15 rows selected.

SQL> SELECT REPLACE(nama,'a','@')
  2  FROM mahasiswa;

REPLACE(NAMA,'A','@')                                                                                                                                                                                   
--------------------------------------------------                                                                                                                                                      
Andi Pr@t@m@                                                                                                                                                                                            
Budi S@ntoso                                                                                                                                                                                            
Citr@ Lest@ri                                                                                                                                                                                           
Dewi Anggr@ini                                                                                                                                                                                          
Eko S@putr@                                                                                                                                                                                             
F@j@r Nugroho                                                                                                                                                                                           
Git@ Perm@t@                                                                                                                                                                                            
H@di Wij@y@                                                                                                                                                                                             
Int@n S@ri                                                                                                                                                                                              
Joko Sus@nto                                                                                                                                                                                            
Kurni@ Putri                                                                                                                                                                                            
Lukm@n H@kim                                                                                                                                                                                            
M@y@ R@hm@                                                                                                                                                                                              
N@nd@ Pr@sety@                                                                                                                                                                                          
Oki Seti@w@n                                                                                                                                                                                            

15 rows selected.

SQL> SELECT
  2  TO_CHAR(SYSDATE,'DD') AS hari,
  3  TO_CHAR(SYSDATE,'DY') AS nama_hari,
  4  TO_CHAR(SYSDATE,'MONTH') AS bulan,
  5  TO_CHAR(SYSDATE,'YYYY') AS tahun,
  6  TO_CHAR(SYSDATE,'RR') AS tahun_rr
  7  FROM dual;

HA NAMA_HARI    BULAN                                TAHU TA                                                                                                                                            
-- ------------ ------------------------------------ ---- --                                                                                                                                            
09 MON          MARCH                                2026 26                                                                                                                                            

SQL> SELECT LTRIM('email', '*') AS tanpa_kiri FROM mahasiswa;

TANPA                                                                                                                                                                                                   
-----                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   
email                                                                                                                                                                                                   

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(tanggal_lahir,'MM') AS bulan_angka,
  3  TO_CHAR(tanggal_lahir,'MON') AS bulan_singkat,
  4  TO_CHAR(tanggal_lahir,'MONTH') AS bulan_lengkap
  5  FROM mahasiswa;

NAMA                 BU BULAN_SINGKA BULAN_LENGKAP                                                                                                                                                      
-------------------- -- ------------ ------------------------------------                                                                                                                               
Andi Pratama         05 MAY          MAY                                                                                                                                                                
Budi Santoso         08 AUG          AUGUST                                                                                                                                                             
Citra Lestari        02 FEB          FEBRUARY                                                                                                                                                           
Dewi Anggraini       11 NOV          NOVEMBER                                                                                                                                                           
Eko Saputra          07 JUL          JULY                                                                                                                                                               
Fajar Nugroho        03 MAR          MARCH                                                                                                                                                              
Gita Permata         09 SEP          SEPTEMBER                                                                                                                                                          
Hadi Wijaya          12 DEC          DECEMBER                                                                                                                                                           
Intan Sari           04 APR          APRIL                                                                                                                                                              
Joko Susanto         06 JUN          JUNE                                                                                                                                                               
Kurnia Putri         01 JAN          JANUARY                                                                                                                                                            
Lukman Hakim         10 OCT          OCTOBER                                                                                                                                                            
Maya Rahma           03 MAR          MARCH                                                                                                                                                              
Nanda Prasetya       08 AUG          AUGUST                                                                                                                                                             
Oki Setiawan         02 FEB          FEBRUARY                                                                                                                                                           

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(tanggal_lahir,'DD') AS tanggal,
  3  TO_CHAR(tanggal_lahir,'DY') AS hari
  4  FROM mahasiswa;

NAMA                 TA HARI                                                                                                                                                                            
-------------------- -- ------------                                                                                                                                                                    
Andi Pratama         12 SUN                                                                                                                                                                             
Budi Santoso         21 TUE                                                                                                                                                                             
Citra Lestari        03 MON                                                                                                                                                                             
Dewi Anggraini       15 FRI                                                                                                                                                                             
Eko Saputra          09 MON                                                                                                                                                                             
Fajar Nugroho        28 THU                                                                                                                                                                             
Gita Permata         17 WED                                                                                                                                                                             
Hadi Wijaya          05 WED                                                                                                                                                                             
Intan Sari           10 WED                                                                                                                                                                             
Joko Susanto         30 SAT                                                                                                                                                                             
Kurnia Putri         19 SUN                                                                                                                                                                             
Lukman Hakim         23 WED                                                                                                                                                                             
Maya Rahma           11 SUN                                                                                                                                                                             
Nanda Prasetya       07 WED                                                                                                                                                                             
Oki Setiawan         26 WED                                                                                                                                                                             

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(tanggal_lahir,'YYYY') AS tahun_lengkap,
  3  TO_CHAR(tanggal_lahir,'YY') AS tahun_pendek,
  4  TO_CHAR(tanggal_lahir,'RR') AS tahun_rr
  5  FROM mahasiswa;

NAMA                 TAHU TA TA                                                                                                                                                                         
-------------------- ---- -- --                                                                                                                                                                         
Andi Pratama         2002 02 02                                                                                                                                                                         
Budi Santoso         2001 01 01                                                                                                                                                                         
Citra Lestari        2003 03 03                                                                                                                                                                         
Dewi Anggraini       2002 02 02                                                                                                                                                                         
Eko Saputra          2001 01 01                                                                                                                                                                         
Fajar Nugroho        2002 02 02                                                                                                                                                                         
Gita Permata         2003 03 03                                                                                                                                                                         
Hadi Wijaya          2001 01 01                                                                                                                                                                         
Intan Sari           2002 02 02                                                                                                                                                                         
Joko Susanto         2001 01 01                                                                                                                                                                         
Kurnia Putri         2003 03 03                                                                                                                                                                         
Lukman Hakim         2002 02 02                                                                                                                                                                         
Maya Rahma           2001 01 01                                                                                                                                                                         
Nanda Prasetya       2002 02 02                                                                                                                                                                         
Oki Setiawan         2003 03 03                                                                                                                                                                         

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(SYSDATE,'AM') AS am_pm,
  3  TO_CHAR(SYSDATE,'HH') AS jam_12,
  4  TO_CHAR(SYSDATE,'HH24') AS jam_24
  5  FROM mahasiswa;

NAMA                 AM JA JA                                                                                                                                                                           
-------------------- -- -- --                                                                                                                                                                           
Andi Pratama         AM 12 00                                                                                                                                                                           
Budi Santoso         AM 12 00                                                                                                                                                                           
Citra Lestari        AM 12 00                                                                                                                                                                           
Dewi Anggraini       AM 12 00                                                                                                                                                                           
Eko Saputra          AM 12 00                                                                                                                                                                           
Fajar Nugroho        AM 12 00                                                                                                                                                                           
Gita Permata         AM 12 00                                                                                                                                                                           
Hadi Wijaya          AM 12 00                                                                                                                                                                           
Intan Sari           AM 12 00                                                                                                                                                                           
Joko Susanto         AM 12 00                                                                                                                                                                           
Kurnia Putri         AM 12 00                                                                                                                                                                           
Lukman Hakim         AM 12 00                                                                                                                                                                           
Maya Rahma           AM 12 00                                                                                                                                                                           
Nanda Prasetya       AM 12 00                                                                                                                                                                           
Oki Setiawan         AM 12 00                                                                                                                                                                           

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(SYSDATE,'MI') AS menit,
  3    3  TO_CHAR(SYSDATE,'SS') AS detik
  4  TO_CHAR(SYSDATE,'MI') AS menit,
  5  FROM mahasiswa
  6  
SQL> SELECT nama,
  2  TO_CHAR(SYSDATE,'HH24') AS jam_24
  3  
SQL> SELECT nama,
  2  TO_CHAR(SYSDATE,'MI') AS menit,
  3  TO_CHAR(SYSDATE,'SS') AS detik
  4  FROM mahasiswa;

NAMA                 ME DE                                                                                                                                                                              
-------------------- -- --                                                                                                                                                                              
Andi Pratama         12 20                                                                                                                                                                              
Budi Santoso         12 20                                                                                                                                                                              
Citra Lestari        12 20                                                                                                                                                                              
Dewi Anggraini       12 20                                                                                                                                                                              
Eko Saputra          12 20                                                                                                                                                                              
Fajar Nugroho        12 20                                                                                                                                                                              
Gita Permata         12 20                                                                                                                                                                              
Hadi Wijaya          12 20                                                                                                                                                                              
Intan Sari           12 20                                                                                                                                                                              
Joko Susanto         12 20                                                                                                                                                                              
Kurnia Putri         12 20                                                                                                                                                                              
Lukman Hakim         12 20                                                                                                                                                                              
Maya Rahma           12 20                                                                                                                                                                              
Nanda Prasetya       12 20                                                                                                                                                                              
Oki Setiawan         12 20                                                                                                                                                                              

15 rows selected.

SQL> SELECT nama,
  2  tanggal_lahir,
  3  ADD_MONTHS(tanggal_lahir,6) AS tambah_6_bulan
  4  FROM mahasiswa;

NAMA                 TANGGAL_L TAMBAH_6_                                                                                                                                                                
-------------------- --------- ---------                                                                                                                                                                
Andi Pratama         12-MAY-02 12-NOV-02                                                                                                                                                                
Budi Santoso         21-AUG-01 21-FEB-02                                                                                                                                                                
Citra Lestari        03-FEB-03 03-AUG-03                                                                                                                                                                
Dewi Anggraini       15-NOV-02 15-MAY-03                                                                                                                                                                
Eko Saputra          09-JUL-01 09-JAN-02                                                                                                                                                                
Fajar Nugroho        28-MAR-02 28-SEP-02                                                                                                                                                                
Gita Permata         17-SEP-03 17-MAR-04                                                                                                                                                                
Hadi Wijaya          05-DEC-01 05-JUN-02                                                                                                                                                                
Intan Sari           10-APR-02 10-OCT-02                                                                                                                                                                
Joko Susanto         30-JUN-01 31-DEC-01                                                                                                                                                                
Kurnia Putri         19-JAN-03 19-JUL-03                                                                                                                                                                
Lukman Hakim         23-OCT-02 23-APR-03                                                                                                                                                                
Maya Rahma           11-MAR-01 11-SEP-01                                                                                                                                                                
Nanda Prasetya       07-AUG-02 07-FEB-03                                                                                                                                                                
Oki Setiawan         26-FEB-03 26-AUG-03                                                                                                                                                                

15 rows selected.

SQL> SELECT nama,
  2  SYSDATE AS tanggal_sekarang
  3  FROM mahasiswa;

NAMA                 TANGGAL_S                                                                                                                                                                          
-------------------- ---------                                                                                                                                                                          
Andi Pratama         09-MAR-26                                                                                                                                                                          
Budi Santoso         09-MAR-26                                                                                                                                                                          
Citra Lestari        09-MAR-26                                                                                                                                                                          
Dewi Anggraini       09-MAR-26                                                                                                                                                                          
Eko Saputra          09-MAR-26                                                                                                                                                                          
Fajar Nugroho        09-MAR-26                                                                                                                                                                          
Gita Permata         09-MAR-26                                                                                                                                                                          
Hadi Wijaya          09-MAR-26                                                                                                                                                                          
Intan Sari           09-MAR-26                                                                                                                                                                          
Joko Susanto         09-MAR-26                                                                                                                                                                          
Kurnia Putri         09-MAR-26                                                                                                                                                                          
Lukman Hakim         09-MAR-26                                                                                                                                                                          
Maya Rahma           09-MAR-26                                                                                                                                                                          
Nanda Prasetya       09-MAR-26                                                                                                                                                                          
Oki Setiawan         09-MAR-26                                                                                                                                                                          

15 rows selected.

SQL> SELECT nama,
  2  tanggal_lahir,
  3  LAST_DAY(tanggal_lahir) AS akhir_bulan
  4  FROM mahasiswa;

NAMA                 TANGGAL_L AKHIR_BUL                                                                                                                                                                
-------------------- --------- ---------                                                                                                                                                                
Andi Pratama         12-MAY-02 31-MAY-02                                                                                                                                                                
Budi Santoso         21-AUG-01 31-AUG-01                                                                                                                                                                
Citra Lestari        03-FEB-03 28-FEB-03                                                                                                                                                                
Dewi Anggraini       15-NOV-02 30-NOV-02                                                                                                                                                                
Eko Saputra          09-JUL-01 31-JUL-01                                                                                                                                                                
Fajar Nugroho        28-MAR-02 31-MAR-02                                                                                                                                                                
Gita Permata         17-SEP-03 30-SEP-03                                                                                                                                                                
Hadi Wijaya          05-DEC-01 31-DEC-01                                                                                                                                                                
Intan Sari           10-APR-02 30-APR-02                                                                                                                                                                
Joko Susanto         30-JUN-01 30-JUN-01                                                                                                                                                                
Kurnia Putri         19-JAN-03 31-JAN-03                                                                                                                                                                
Lukman Hakim         23-OCT-02 31-OCT-02                                                                                                                                                                
Maya Rahma           11-MAR-01 31-MAR-01                                                                                                                                                                
Nanda Prasetya       07-AUG-02 31-AUG-02                                                                                                                                                                
Oki Setiawan         26-FEB-03 28-FEB-03                                                                                                                                                                

15 rows selected.

SQL> SELECT nama,
  2  tanggal_lahir,
  3  NEXT_DAY(tanggal_lahir,'MONDAY') AS senin_berikutnya
  4  FROM mahasiswa;

NAMA                 TANGGAL_L SENIN_BER                                                                                                                                                                
-------------------- --------- ---------                                                                                                                                                                
Andi Pratama         12-MAY-02 13-MAY-02                                                                                                                                                                
Budi Santoso         21-AUG-01 27-AUG-01                                                                                                                                                                
Citra Lestari        03-FEB-03 10-FEB-03                                                                                                                                                                
Dewi Anggraini       15-NOV-02 18-NOV-02                                                                                                                                                                
Eko Saputra          09-JUL-01 16-JUL-01                                                                                                                                                                
Fajar Nugroho        28-MAR-02 01-APR-02                                                                                                                                                                
Gita Permata         17-SEP-03 22-SEP-03                                                                                                                                                                
Hadi Wijaya          05-DEC-01 10-DEC-01                                                                                                                                                                
Intan Sari           10-APR-02 15-APR-02                                                                                                                                                                
Joko Susanto         30-JUN-01 02-JUL-01                                                                                                                                                                
Kurnia Putri         19-JAN-03 20-JAN-03                                                                                                                                                                
Lukman Hakim         23-OCT-02 28-OCT-02                                                                                                                                                                
Maya Rahma           11-MAR-01 12-MAR-01                                                                                                                                                                
Nanda Prasetya       07-AUG-02 12-AUG-02                                                                                                                                                                
Oki Setiawan         26-FEB-03 03-MAR-03                                                                                                                                                                

15 rows selected.

SQL> SELECT nama,
  2  S
  3  );
)
*
ERROR at line 3:
ORA-00923: FROM keyword not found where expected 


SQL> SELECT nama,
  2  MONTHS_BETWEEN(SYSDATE,tanggal_lahir) AS selisih_bulan
  3  FROM mahasiswa;

NAMA                 SELISIH_BULAN                                                                                                                                                                      
-------------------- -------------                                                                                                                                                                      
Andi Pratama            285.903637                                                                                                                                                                      
Budi Santoso            294.613314                                                                                                                                                                      
Citra Lestari           277.193959                                                                                                                                                                      
Dewi Anggraini          279.806863                                                                                                                                                                      
Eko Saputra                    296                                                                                                                                                                      
Fajar Nugroho           287.387508                                                                                                                                                                      
Gita Permata            269.742347                                                                                                                                                                      
Hadi Wijaya             291.129443                                                                                                                                                                      
Intan Sari              286.968153                                                                                                                                                                      
Joko Susanto            296.322992                                                                                                                                                                      
Kurnia Putri             277.67783                                                                                                                                                                      
Lukman Hakim            280.548798                                                                                                                                                                      
Maya Rahma              299.935895                                                                                                                                                                      
Nanda Prasetya          283.064927                                                                                                                                                                      
Oki Setiawan            276.452024                                                                                                                                                                      

15 rows selected.

SQL> SELECT nama,
  2  ROUND(tanggal_lahir,'MONTH') AS round_bulan,
  3  ROUND(tanggal_lahir,'YEAR') AS round_tahun
  4  FROM mahasiswa;

NAMA                 ROUND_BUL ROUND_TAH                                                                                                                                                                
-------------------- --------- ---------                                                                                                                                                                
Andi Pratama         01-MAY-02 01-JAN-02                                                                                                                                                                
Budi Santoso         01-SEP-01 01-JAN-02                                                                                                                                                                
Citra Lestari        01-FEB-03 01-JAN-03                                                                                                                                                                
Dewi Anggraini       01-NOV-02 01-JAN-03                                                                                                                                                                
Eko Saputra          01-JUL-01 01-JAN-02                                                                                                                                                                
Fajar Nugroho        01-APR-02 01-JAN-02                                                                                                                                                                
Gita Permata         01-OCT-03 01-JAN-04                                                                                                                                                                
Hadi Wijaya          01-DEC-01 01-JAN-02                                                                                                                                                                
Intan Sari           01-APR-02 01-JAN-02                                                                                                                                                                
Joko Susanto         01-JUL-01 01-JAN-01                                                                                                                                                                
Kurnia Putri         01-FEB-03 01-JAN-03                                                                                                                                                                
Lukman Hakim         01-NOV-02 01-JAN-03                                                                                                                                                                
Maya Rahma           01-MAR-01 01-JAN-01                                                                                                                                                                
Nanda Prasetya       01-AUG-02 01-JAN-03                                                                                                                                                                
Oki Setiawan         01-MAR-03 01-JAN-03                                                                                                                                                                

15 rows selected.

SQL> SELECT nama,
  2  TO_NUMBER(id) AS id_angka
  3  FROM mahasiswa;
TO_NUMBER(id) AS id_angka
*
ERROR at line 2:
ORA-01722: invalid number 


SQL> SELECT nama,
  2  TO_NUMBER(id) AS id_angka
  3  FROM mahasiswa;
TO_NUMBER(id) AS id_angka
*
ERROR at line 2:
ORA-01722: invalid number 


SQL> SELECT nama,
  2  TO_NUMBER(SUBSTR(id,2)) AS id_angka
  3  FROM mahasiswa;

NAMA                   ID_ANGKA                                                                                                                                                                         
-------------------- ----------                                                                                                                                                                         
Andi Pratama                  1                                                                                                                                                                         
Budi Santoso                  2                                                                                                                                                                         
Citra Lestari                 3                                                                                                                                                                         
Dewi Anggraini                4                                                                                                                                                                         
Eko Saputra                   5                                                                                                                                                                         
Fajar Nugroho                 6                                                                                                                                                                         
Gita Permata                  7                                                                                                                                                                         
Hadi Wijaya                   8                                                                                                                                                                         
Intan Sari                    9                                                                                                                                                                         
Joko Susanto                 10                                                                                                                                                                         
Kurnia Putri                 11                                                                                                                                                                         
Lukman Hakim                 12                                                                                                                                                                         
Maya Rahma                   13                                                                                                                                                                         
Nanda Prasetya               14                                                                                                                                                                         
Oki Setiawan                 15                                                                                                                                                                         

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(tanggal_lahir,'DD-MM-YYYY') AS tanggal_lahir_format
  3  FROM mahasiswa;

NAMA                 TANGGAL_LA                                                                                                                                                                         
-------------------- ----------                                                                                                                                                                         
Andi Pratama         12-05-2002                                                                                                                                                                         
Budi Santoso         21-08-2001                                                                                                                                                                         
Citra Lestari        03-02-2003                                                                                                                                                                         
Dewi Anggraini       15-11-2002                                                                                                                                                                         
Eko Saputra          09-07-2001                                                                                                                                                                         
Fajar Nugroho        28-03-2002                                                                                                                                                                         
Gita Permata         17-09-2003                                                                                                                                                                         
Hadi Wijaya          05-12-2001                                                                                                                                                                         
Intan Sari           10-04-2002                                                                                                                                                                         
Joko Susanto         30-06-2001                                                                                                                                                                         
Kurnia Putri         19-01-2003                                                                                                                                                                         
Lukman Hakim         23-10-2002                                                                                                                                                                         
Maya Rahma           11-03-2001                                                                                                                                                                         
Nanda Prasetya       07-08-2002                                                                                                                                                                         
Oki Setiawan         26-02-2003                                                                                                                                                                         

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(tanggal_lahir,'DAY, DD MONTH YYYY') AS format_lengkap
  3  FROM mahasiswa;

NAMA                 FORMAT_LENGKAP                                                                                                                                                                     
-------------------- ----------------------------------------------------------------------------------                                                                                                 
Andi Pratama         SUNDAY   , 12 MAY       2002                                                                                                                                                       
Budi Santoso         TUESDAY  , 21 AUGUST    2001                                                                                                                                                       
Citra Lestari        MONDAY   , 03 FEBRUARY  2003                                                                                                                                                       
Dewi Anggraini       FRIDAY   , 15 NOVEMBER  2002                                                                                                                                                       
Eko Saputra          MONDAY   , 09 JULY      2001                                                                                                                                                       
Fajar Nugroho        THURSDAY , 28 MARCH     2002                                                                                                                                                       
Gita Permata         WEDNESDAY, 17 SEPTEMBER 2003                                                                                                                                                       
Hadi Wijaya          WEDNESDAY, 05 DECEMBER  2001                                                                                                                                                       
Intan Sari           WEDNESDAY, 10 APRIL     2002                                                                                                                                                       
Joko Susanto         SATURDAY , 30 JUNE      2001                                                                                                                                                       
Kurnia Putri         SUNDAY   , 19 JANUARY   2003                                                                                                                                                       
Lukman Hakim         WEDNESDAY, 23 OCTOBER   2002                                                                                                                                                       
Maya Rahma           SUNDAY   , 11 MARCH     2001                                                                                                                                                       
Nanda Prasetya       WEDNESDAY, 07 AUGUST    2002                                                                                                                                                       
Oki Setiawan         WEDNESDAY, 26 FEBRUARY  2003                                                                                                                                                       

15 rows selected.

SQL> SELECT nama,
  2  TO_CHAR(tinggi_badan) AS tinggi_char
  3  FROM mahasiswa;

NAMA                 TINGGI_CHAR                                                                                                                                                                        
-------------------- ----------------------------------------                                                                                                                                           
Andi Pratama         170                                                                                                                                                                                
Budi Santoso         168                                                                                                                                                                                
Citra Lestari        160                                                                                                                                                                                
Dewi Anggraini       158                                                                                                                                                                                
Eko Saputra          172                                                                                                                                                                                
Fajar Nugroho        175                                                                                                                                                                                
Gita Permata         162                                                                                                                                                                                
Hadi Wijaya          169                                                                                                                                                                                
Intan Sari           155                                                                                                                                                                                
Joko Susanto         173                                                                                                                                                                                
Kurnia Putri         159                                                                                                                                                                                
Lukman Hakim         174                                                                                                                                                                                
Maya Rahma           161                                                                                                                                                                                
Nanda Prasetya       167                                                                                                                                                                                
Oki Setiawan         171                                                                                                                                                                                

15 rows selected.

SQL> SELECT nama,
  2  TO_DATE('17-08-1945','DD-MM-YYYY') AS contoh_tanggal
  3  FROM mahasiswa;

NAMA                 CONTOH_TA                                                                                                                                                                          
-------------------- ---------                                                                                                                                                                          
Andi Pratama         17-AUG-45                                                                                                                                                                          
Budi Santoso         17-AUG-45                                                                                                                                                                          
Citra Lestari        17-AUG-45                                                                                                                                                                          
Dewi Anggraini       17-AUG-45                                                                                                                                                                          
Eko Saputra          17-AUG-45                                                                                                                                                                          
Fajar Nugroho        17-AUG-45                                                                                                                                                                          
Gita Permata         17-AUG-45                                                                                                                                                                          
Hadi Wijaya          17-AUG-45                                                                                                                                                                          
Intan Sari           17-AUG-45                                                                                                                                                                          
Joko Susanto         17-AUG-45                                                                                                                                                                          
Kurnia Putri         17-AUG-45                                                                                                                                                                          
Lukman Hakim         17-AUG-45                                                                                                                                                                          
Maya Rahma           17-AUG-45                                                                                                                                                                          
Nanda Prasetya       17-AUG-45                                                                                                                                                                          
Oki Setiawan         17-AUG-45                                                                                                                                                                          

15 rows selected.

SQL> SELECT nama,
  2  ABS(berat_badan - 70) AS selisih_berat
  3  FROM mahasiswa;

NAMA                 SELISIH_BERAT                                                                                                                                                                      
-------------------- -------------                                                                                                                                                                      
Andi Pratama                     5                                                                                                                                                                      
Budi Santoso                    10                                                                                                                                                                      
Citra Lestari                   20                                                                                                                                                                      
Dewi Anggraini                  22                                                                                                                                                                      
Eko Saputra                      2                                                                                                                                                                      
Fajar Nugroho                    0                                                                                                                                                                      
Gita Permata                    18                                                                                                                                                                      
Hadi Wijaya                      6                                                                                                                                                                      
Intan Sari                      23                                                                                                                                                                      
Joko Susanto                     2                                                                                                                                                                      
Kurnia Putri                    21                                                                                                                                                                      
Lukman Hakim                     1                                                                                                                                                                      
Maya Rahma                      17                                                                                                                                                                      
Nanda Prasetya                  12                                                                                                                                                                      
Oki Setiawan                     4                                                                                                                                                                      

15 rows selected.

SQL> SELECT nama,
  2  MOD(tinggi_badan,5) AS sisa_tinggi
  3  FROM mahasiswa;

NAMA                 SISA_TINGGI                                                                                                                                                                        
-------------------- -----------                                                                                                                                                                        
Andi Pratama                   0                                                                                                                                                                        
Budi Santoso                   3                                                                                                                                                                        
Citra Lestari                  0                                                                                                                                                                        
Dewi Anggraini                 3                                                                                                                                                                        
Eko Saputra                    2                                                                                                                                                                        
Fajar Nugroho                  0                                                                                                                                                                        
Gita Permata                   2                                                                                                                                                                        
Hadi Wijaya                    4                                                                                                                                                                        
Intan Sari                     0                                                                                                                                                                        
Joko Susanto                   3                                                                                                                                                                        
Kurnia Putri                   4                                                                                                                                                                        
Lukman Hakim                   4                                                                                                                                                                        
Maya Rahma                     1                                                                                                                                                                        
Nanda Prasetya                 2                                                                                                                                                                        
Oki Setiawan                   1                                                                                                                                                                        

15 rows selected.

SQL> SELECT nama,
  2  FLOOR(tinggi_badan/3) AS pembulatan_bawah
  3  FROM mahasiswa;

NAMA                 PEMBULATAN_BAWAH                                                                                                                                                                   
-------------------- ----------------                                                                                                                                                                   
Andi Pratama                       56                                                                                                                                                                   
Budi Santoso                       56                                                                                                                                                                   
Citra Lestari                      53                                                                                                                                                                   
Dewi Anggraini                     52                                                                                                                                                                   
Eko Saputra                        57                                                                                                                                                                   
Fajar Nugroho                      58                                                                                                                                                                   
Gita Permata                       54                                                                                                                                                                   
Hadi Wijaya                        56                                                                                                                                                                   
Intan Sari                         51                                                                                                                                                                   
Joko Susanto                       57                                                                                                                                                                   
Kurnia Putri                       53                                                                                                                                                                   
Lukman Hakim                       58                                                                                                                                                                   
Maya Rahma                         53                                                                                                                                                                   
Nanda Prasetya                     55                                                                                                                                                                   
Oki Setiawan                       57                                                                                                                                                                   

15 rows selected.

SQL> SELECT nama,
  2  POWER(tinggi_badan,2) AS tinggi_pangkat
  3  FROM mahasiswa;

NAMA                 TINGGI_PANGKAT                                                                                                                                                                     
-------------------- --------------                                                                                                                                                                     
Andi Pratama                  28900                                                                                                                                                                     
Budi Santoso                  28224                                                                                                                                                                     
Citra Lestari                 25600                                                                                                                                                                     
Dewi Anggraini                24964                                                                                                                                                                     
Eko Saputra                   29584                                                                                                                                                                     
Fajar Nugroho                 30625                                                                                                                                                                     
Gita Permata                  26244                                                                                                                                                                     
Hadi Wijaya                   28561                                                                                                                                                                     
Intan Sari                    24025                                                                                                                                                                     
Joko Susanto                  29929                                                                                                                                                                     
Kurnia Putri                  25281                                                                                                                                                                     
Lukman Hakim                  30276                                                                                                                                                                     
Maya Rahma                    25921                                                                                                                                                                     
Nanda Prasetya                27889                                                                                                                                                                     
Oki Setiawan                  29241                                                                                                                                                                     

15 rows selected.

SQL> SELECT nama,
  2  ROUND(tinggi_badan/3,2) AS pembulatan
  3  FROM mahasiswa;

NAMA                 PEMBULATAN                                                                                                                                                                         
-------------------- ----------                                                                                                                                                                         
Andi Pratama              56.67                                                                                                                                                                         
Budi Santoso                 56                                                                                                                                                                         
Citra Lestari             53.33                                                                                                                                                                         
Dewi Anggraini            52.67                                                                                                                                                                         
Eko Saputra               57.33                                                                                                                                                                         
Fajar Nugroho             58.33                                                                                                                                                                         
Gita Permata                 54                                                                                                                                                                         
Hadi Wijaya               56.33                                                                                                                                                                         
Intan Sari                51.67                                                                                                                                                                         
Joko Susanto              57.67                                                                                                                                                                         
Kurnia Putri                 53                                                                                                                                                                         
Lukman Hakim                 58                                                                                                                                                                         
Maya Rahma                53.67                                                                                                                                                                         
Nanda Prasetya            55.67                                                                                                                                                                         
Oki Setiawan                 57                                                                                                                                                                         

15 rows selected.

SQL> SELECT nama,
  2  CEIL(berat_badan/4) AS pembulatan_atas
  3  FROM mahasiswa;

NAMA                 PEMBULATAN_ATAS                                                                                                                                                                    
-------------------- ---------------                                                                                                                                                                    
Andi Pratama                      17                                                                                                                                                                    
Budi Santoso                      15                                                                                                                                                                    
Citra Lestari                     13                                                                                                                                                                    
Dewi Anggraini                    12                                                                                                                                                                    
Eko Saputra                       17                                                                                                                                                                    
Fajar Nugroho                     18                                                                                                                                                                    
Gita Permata                      13                                                                                                                                                                    
Hadi Wijaya                       16                                                                                                                                                                    
Intan Sari                        12                                                                                                                                                                    
Joko Susanto                      18                                                                                                                                                                    
Kurnia Putri                      13                                                                                                                                                                    
Lukman Hakim                      18                                                                                                                                                                    
Maya Rahma                        14                                                                                                                                                                    
Nanda Prasetya                    15                                                                                                                                                                    
Oki Setiawan                      17                                                                                                                                                                    

15 rows selected.

SQL> desc mahasiswa;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID                                                                                                                NOT NULL CHAR(5)
 NAMA                                                                                                                       VARCHAR2(50)
 TEMPAT_LAHIR                                                                                                               VARCHAR2(30)
 TANGGAL_LAHIR                                                                                                              DATE
 NOMOR_HP                                                                                                                   VARCHAR2(15)
 EMAIL                                                                                                                      VARCHAR2(50)
 TINGGI_BADAN                                                                                                               NUMBER(3)
 BERAT_BADAN                                                                                                                NUMBER(3)

SQL> SET LINESIZE 200;
SQL> desc mahasiswa;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID                                                                                                                NOT NULL CHAR(5)
 NAMA                                                                                                                       VARCHAR2(50)
 TEMPAT_LAHIR                                                                                                               VARCHAR2(30)
 TANGGAL_LAHIR                                                                                                              DATE
 NOMOR_HP                                                                                                                   VARCHAR2(15)
 EMAIL                                                                                                                      VARCHAR2(50)
 TINGGI_BADAN                                                                                                               NUMBER(3)
 BERAT_BADAN                                                                                                                NUMBER(3)

SQL> SET LINESIZE 200;
SQL> desc mahasiswa;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID                                                                                                                NOT NULL CHAR(5)
 NAMA                                                                                                                       VARCHAR2(50)
 TEMPAT_LAHIR                                                                                                               VARCHAR2(30)
 TANGGAL_LAHIR                                                                                                              DATE
 NOMOR_HP                                                                                                                   VARCHAR2(15)
 EMAIL                                                                                                                      VARCHAR2(50)
 TINGGI_BADAN                                                                                                               NUMBER(3)
 BERAT_BADAN                                                                                                                NUMBER(3)

SQL> SET LINESIZE 200
SQL> SET PAGESIZE 50
SQL> SET WRAP OFF
SQL> desc mahasiswa;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 ID                                                                                                                NOT NULL CHAR(5)
 NAMA                                                                                                                       VARCHAR2(50)
 TEMPAT_LAHIR                                                                                                               VARCHAR2(30)
 TANGGAL_LAHIR                                                                                                              DATE
 NOMOR_HP                                                                                                                   VARCHAR2(15)
 EMAIL                                                                                                                      VARCHAR2(50)
 TINGGI_BADAN                                                                                                               NUMBER(3)
 BERAT_BADAN                                                                                                                NUMBER(3)

SQL> SELECT * FROM mahasiswa;

ID    NAMA                 TEMPAT_LAHIR    TANGGAL_L NOMOR_HP        EMAIL                     TINGGI_BADAN BERAT_BADAN                                                                                 
----- -------------------- --------------- --------- --------------- ------------------------- ------------ -----------                                                                                 
M0001 Andi Pratama         Jakarta         12-MAY-02 081234567890    andi@gmail.com                     170          65                                                                                 
M0002 Budi Santoso         Bandung         21-AUG-01 082345678901    budi@gmail.com                     168          60                                                                                 
M0003 Citra Lestari        Surabaya        03-FEB-03 083456789012    citra@gmail.com                    160          50                                                                                 
M0004 Dewi Anggraini       Yogyakarta      15-NOV-02 084567890123    dewi@gmail.com                     158          48                                                                                 
M0005 Eko Saputra          Semarang        09-JUL-01 085678901234    eko@gmail.com                      172          68                                                                                 
M0006 Fajar Nugroho        Solo            28-MAR-02 086789012345    fajar@gmail.com                    175          70                                                                                 
M0007 Gita Permata         Malang          17-SEP-03 087890123456    gita@gmail.com                     162          52                                                                                 
M0008 Hadi Wijaya          Denpasar        05-DEC-01 088901234567    hadi@gmail.com                     169          64                                                                                 
M0009 Intan Sari           Makassar        10-APR-02 089012345678    intan@gmail.com                    155          47                                                                                 
M0010 Joko Susanto         Medan           30-JUN-01 081223344556    joko@gmail.com                     173          72                                                                                 
M0011 Kurnia Putri         Palembang       19-JAN-03 082334455667    kurnia@gmail.com                   159          49                                                                                 
M0012 Lukman Hakim         Padang          23-OCT-02 083445566778    lukman@gmail.com                   174          71                                                                                 
M0013 Maya Rahma           Balikpapan      11-MAR-01 084556677889    maya@gmail.com                     161          53                                                                                 
M0014 Nanda Prasetya       Pontianak       07-AUG-02 085667788990    nanda@gmail.com                    167          58                                                                                 
M0015 Oki Setiawan         Banjarmasin     26-FEB-03 086778899001    oki@gmail.com                      171          66                                                                                 

15 rows selected.

SQL> SPOOL OFF
