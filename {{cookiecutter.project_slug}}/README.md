# {{ cookiecutter.project_name }}

## Project Overview

Explain the project

## Data Type

PI: {{ cookiecutter.PI }}  
Assay:  
Organism:  

## Data Access

Where and how do I get the data?

## Directory Structure
```
📁 {{ cookiecutter.project_slug }}  
├─ 📁 inputfiles/  
│  ├─ 📁 raw/  
│  │  ├─ 📊 template.xlsx -  
│  │  └─ 📊 template.pdf -  
│  └─ 📁 processed/ - The PDB files and any larger files are on **BRIDATA/cBio**  
│     ├─ 📊 template.json -  
│     └─ 📊 template.csv -  
├─ 📁 results/  
├─ 📁 SLURM_output/  
└─ 📁 src/  
   ├─ 📁 SLURM_scripts/ -  
   └─ 📄 template.py  
```

## Project Updates

## Who do I talk to?

The project was proposed by {{ cookiecutter.PI }} ({{ cookiecutter.PI_email}})
The computational analysis was performed by {{ cookiecutter.author }} ({{ cookiecutter.author_email }})