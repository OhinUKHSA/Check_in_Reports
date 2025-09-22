# Professional Workforce Check-in Reports

This repository contains scripts to generate automated reports for the **Professional Workforce Check-in Survey**.  
It produces two reports:  

- **Monthly Report** → `Professional_Workforce.html`  
- **6-Monthly Report** → `checkin_6Month.html`  

The workflow uses **RStudio** and **Quarto** to prepare data and render the reports.  

⚠️ **Note:** Updating `data.csv` with the latest survey results from the People Analytics Check-in dashboard (Power BI) must be done manually. This repository does not include the raw data files for governance reasons.  

⚡ A detailed step-by-step guide is provided in **`Detailed_SOP.docx`** within this repository. ⚡ 

---

## 📦 Requirements

Before you start, request installation of the following (via Service Now if applicable):

- [R]
- [RStudio]
- Git (x64)  

---

## 📂 Repository Structure

```

ProfWorkforceCheckIn/
│
├── data/                         # Data folder (place new data.csv here)
│ └── old_data/                   # Archive old data files
├── Professional_Workforce.qmd    # Monthly report script
├── checkin_6Month.qmd            # 6-monthly report script
├── Load_packages.R               # Installs required packages
└── Rproject_checkin.Rproj        # RStudio project file

```

⚠️ You will not see `.csv` or `.html` files until you run the analysis locally.  

---

## 🚀 Setup Instructions

### 1. Clone the Repository
Open **RStudio** → `File` → `New Project` → `Version Control` → `Git`  
Enter:  

- Repository URL: `https://github.com/OhinUKHSA/Check_in_Reports.git`  
- Project directory name: `ProfWorkForce` (or your choice)  

This will create a local copy of the repo.  

---

### 2. Install Packages (first-time only)

Open **`Load_packages.R`** in RStudio.  
Run all lines (`Ctrl + A` → `Ctrl + Enter`).  

When complete, you should see: 

`All required packages are installed. You can run report.`

✅ You only need to do this once.  

---

### 3. Prepare the Data

1. Place the latest `data.csv` in:  

`ProfWorkforceCheckIn/data/`
2. Move the old file into: 
`ProfWorkforceCheckIn/data/old_data/`

3. Ensure **column names and formats remain unchanged**.  

---

### 4. Generate Reports

#### Monthly Report
1. Open **Rproject_checkin.Rproj** in RStudio.  
2. Open **Professional_Workforce.qmd**.  
3. Click the **Render** button.  
4. The report will generate as `Professional_Workforce.html`.  

#### 6-Monthly Report
1. Open **Rproject_checkin.Rproj** in RStudio.  
2. Open **checkin_6Month.qmd**.  
3. Click the **Render** button.  
4. The report will generate as `checkin_6Month.html`.  

---

## ⚠️ Important Notes
- Always save last month’s data in `data/old_data/` before replacing.  
- Do not edit column names or file structure in `data.csv`.  
- Ensure data is pulled from the **People Analytics Check-in Power BI dashboard**.  

---

## ✅ Quick Checklist
- [ ] Archive old `data.csv` → `data/old_data/`  
- [ ] Add latest `data.csv` → `data/`  
- [ ] Open RStudio project → `Rproject_checkin.Rproj`  
- [ ] Render `Professional_Workforce.qmd` or `checkin_6Month.qmd`  
- [ ] Share the generated `.html` report  