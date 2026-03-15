const express = require('express');
const cors = require('cors'); // Import package CORS
const app = express();
const PORT = 3000;

// Middleware CORS - Izinkan semua origin (untuk development)
app.use(cors());

// Middleware untuk membaca data JSON dari request
app.use(express.json());

// Middleware untuk membaca data form standar
app.use(express.urlencoded({ extended: true }));

// PENYIMPANAN DATA SEDERHANA (IN-MEMORY)
let dataPenyimpanan = [];

// ENDPOINT 1: Menerima Data (POST)
app.post('/api/form', (req, res) => {
    const dataBaru = req.body;
    dataPenyimpanan.push(dataBaru);
    console.log('Data diterima:', dataBaru);
    res.status(201).json({
        message: 'Data berhasil disimpan!',
        data: dataBaru
    });
});

// ENDPOINT 2: Mengambil Data (GET) 
app.get('/api/form', (req, res) => {
    res.json({
        count: dataPenyimpanan.length,
        data: dataPenyimpanan
    });
});

// Jalankan server
app.listen(PORT, () => {
    console.log(`Server berjalan di http://localhost:${PORT}`);
});