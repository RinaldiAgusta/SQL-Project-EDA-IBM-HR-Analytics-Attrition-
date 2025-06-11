# SQL Project EDA - IBM HR Analytics Attrition

🧹 SQL Project: EDA - IBM HR Analytics (Attrition) Dataset  
💡 Sumber Dataset [IBM HR Analytics Employee Attrition & Performance (Kaggle)](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)

📝 Deskripsi  
Proyek ini fokus pada analisis eksplorasi data (EDA) menggunakan SQL terhadap dataset HR Analytics dari IBM. Dataset ini berisi data karyawan perusahaan (usia, gaji, departemen, job role, kepuasan kerja, dan lainnya) serta status apakah mereka resign atau tidak (attrition).  

EDA bertujuan untuk memahami pola data dan insight awal, yang akan berguna untuk analisis lanjutan seperti prediksi churn, data visualization, dan data-driven decision making.

⚙ Langkah Analisis  
🔎 Menyiapkan Tabel:  
Membuat tabel SQL sesuai struktur dataset dan melakukan impor data CSV ke MySQL.

📊 EDA Dasar:  
- Hitung jumlah total data  
- Lihat contoh data (top 10 baris)  
- Profil kolom dan tipe data  
- Hitung jumlah missing value per kolom  

🔍 Distribusi Kategorikal:  
- Attrition  
- Gender  
- Department  
- JobRole  
- OverTime  

📈 Statistik Ringkasan Numerik:  
- Age  
- MonthlyIncome  

🔗 Analisis Khusus:  
- Distribusi OverTime vs Attrition  
- Statistik karyawan yang resign (Attrition=Yes)  
- Korelasi manual antara YearsAtCompany dan MonthlyIncome (Pearson correlation coefficient)  

🧠 Tools & Skillset  
- SQL (GROUP BY, agregat fungsi, CASE WHEN, JOIN, subquery)  
- Data profiling & basic descriptive statistics  
- Data exploration best practices  

✅ Output  
Insight dasar seputar distribusi data, profil demografi karyawan, pola attrition, dan relasi antar atribut (korelasi). Dataset siap untuk analisis lanjutan di tools BI (misalnya Tableau/Power BI) atau untuk machine learning (misalnya prediksi churn/attrition).

🚀 Next Steps  
- Visualisasi data (charts, dashboard)  
- Analisis lebih lanjut: prediksi employee attrition dengan ML  
- Benchmarking insight dengan data HR lain

📂 File Utama  
- `eda_ibm_hr_analytics.sql` : script EDA lengkap yang dijalankan di MySQL Workbench.  

💡 Sumber Dataset  
[IBM HR Analytics Employee Attrition & Performance (Kaggle)](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
