
-- 1️⃣ Membuat tabel sementara (kolom disesuaikan dari dataset)
DROP TABLE IF EXISTS employee_attrition;
CREATE TABLE employee_attrition (
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(5),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

-- Catatan: Lakukan import data CSV ke tabel employee_attrition
-- Di MySQL Workbench gunakan "Table Data Import Wizard"
-- Atau gunakan:
-- LOAD DATA INFILE '/path/to/WA_Fn-UseC_-HR-Employee-Attrition.csv'
-- INTO TABLE employee_attrition
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- 2️⃣ Jumlah total data
SELECT COUNT(*) AS total_records FROM employee_attrition;

-- 3️⃣ Contoh data (top 10 baris)
SELECT * FROM employee_attrition LIMIT 10;

-- 4️⃣ Daftar kolom dan tipe data
DESCRIBE employee_attrition;

-- 5️⃣ Jumlah data NULL per kolom
SELECT
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS missing_age,
    SUM(CASE WHEN Attrition IS NULL THEN 1 ELSE 0 END) AS missing_attrition,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS missing_gender,
    SUM(CASE WHEN MonthlyIncome IS NULL THEN 1 ELSE 0 END) AS missing_monthlyincome
FROM employee_attrition;

-- 6️⃣ Distribusi 'Attrition'
SELECT Attrition, COUNT(*) AS count FROM employee_attrition GROUP BY Attrition;

-- 7️⃣ Distribusi 'Gender'
SELECT Gender, COUNT(*) AS count FROM employee_attrition GROUP BY Gender;

-- 8️⃣ Distribusi 'Department'
SELECT Department, COUNT(*) AS count FROM employee_attrition GROUP BY Department;

-- 9️⃣ Distribusi 'JobRole'
SELECT JobRole, COUNT(*) AS count FROM employee_attrition GROUP BY JobRole;

-- 🔟 Statistik ringkasan numerik: Age
SELECT
    MIN(Age) AS min_age,
    MAX(Age) AS max_age,
    AVG(Age) AS avg_age,
    STDDEV(Age) AS stddev_age
FROM employee_attrition;

-- 1️⃣1️⃣ Statistik ringkasan numerik: MonthlyIncome
SELECT
    MIN(MonthlyIncome) AS min_income,
    MAX(MonthlyIncome) AS max_income,
    AVG(MonthlyIncome) AS avg_income,
    STDDEV(MonthlyIncome) AS stddev_income
FROM employee_attrition;

-- 1️⃣2️⃣ Distribusi 'OverTime' dan 'Attrition'
SELECT
    OverTime,
    Attrition,
    COUNT(*) AS count
FROM employee_attrition
GROUP BY OverTime, Attrition;

-- 1️⃣3️⃣ Statistik ringkasan untuk karyawan yang resign (Attrition='Yes')
SELECT
    AVG(Age) AS avg_age_resign,
    AVG(MonthlyIncome) AS avg_income_resign,
    AVG(YearsAtCompany) AS avg_years_resign
FROM employee_attrition
WHERE Attrition = 'Yes';

-- 1️⃣4️⃣ Korelasi (manual hitung) antara YearsAtCompany dan MonthlyIncome
-- Karena MySQL standar TIDAK ada CORR, kita hitung manual pakai rumus Pearson:
SELECT
    (AVG(YearsAtCompany * MonthlyIncome) - AVG(YearsAtCompany) * AVG(MonthlyIncome)) /
    (STDDEV(YearsAtCompany) * STDDEV(MonthlyIncome)) AS corr_years_income
FROM employee_attrition;
