1. Backend Development (Node.js / Express)
Tujuan
Membangun server backend sederhana menggunakan Node.js dan Express yang dapat:
-menerima data dari form frontend
-menyimpan data dalam array
-mengembalikan data ketika diminta frontend

Tools yang Digunakan
Tools	Fungsi
Node.js	Runtime JavaScript
Express.js	Framework backend
VS Code	Editor coding
Postman	Testing API
Terminal / CMD	Menjalankan server

Langkah Pengerjaan
1. Install Node.js
Download dari
https://nodejs.org

Cek instalasi
node -v
npm -v

2. Membuat Folder Project
backend-server
Masuk ke folder
cd backend-server

3. Inisialisasi Node Project
npm init -y
Akan membuat file
package.json

4. Install Express
npm install express

5. Membuat File Server
Buat file
server.js

6. Coding Server Backend
const express = require('express');
const app = express();

app.use(express.json());
app.use(express.urlencoded({extended:true}));

// penyimpanan data sementara
let dataForm = [];

// endpoint menerima data form
app.post('/api/form', (req,res)=>{

    const data = {
        name : req.body.name,
        email : req.body.email,
        age : req.body.age
    }

    dataForm.push(data)

    res.json({
        message:"Data berhasil disimpan",
        data:data
    })

})

// endpoint mengambil data
app.get('/api/form',(req,res)=>{
    res.json(dataForm)
})
app.listen(3000,()=>{
    console.log("Server running on port 3000")
})

Penjelasan Program
Middleware
app.use(express.json())
Digunakan untuk membaca data JSON dari request.

Penyimpanan Data
let dataForm = []
Data disimpan dalam array sederhana di server.

Endpoint POST
POST /api/form
Digunakan untuk menerima data dari frontend.

Contoh data yang dikirim
{
"name":"Grace",
"email":"grace@gmail.com",
"age":22
}

Endpoint GET
GET /api/form
Digunakan untuk mengambil semua data yang sudah tersimpan.

Menjalankan Server
node server.js

Server berjalan di
http://localhost:3000

Testing API (Postman)
Kirim Data
POST
http://localhost:3000/api/form

Ambil Data
GET
http://localhost:3000/api/form
