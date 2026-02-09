# AI / Data Science Job Market Intelligence System

## Overview

A data-driven job market intelligence system that analyzes large-scale job postings to uncover **in-demand skills**, **role archetypes**, **salary patterns**, and **career transition pathways** using NLP and unsupervised learning.

The project transforms unstructured job descriptions into actionable insights for career planning and skill development.

---

## Problem Statement

Job seekers and early-career professionals often lack structured, data-backed answers to questions such as:

* Which skills matter most for specific roles?
* How do skills evolve as careers progress?
* Which role transitions are realistic and what skills are required?
* How do different role archetypes compare in terms of compensation?

This project addresses these gaps using real-world job posting data and interpretable analytics.

---

## Target Users

* Students and fresh graduates
* Early-career professionals
* Career switchers
* Data-driven career advisors

---

## Data Sources

* LinkedIn job postings (primary dataset)
* Indeed job postings (secondary dataset)

---

## System Capabilities

* Skill extraction from job descriptions using NLP
* Canonical skill normalization across datasets
* Job role clustering into interpretable role archetypes
* Salary analysis by role archetype and experience level
* Career progression skill gap analysis (Junior → Senior)
* Skill transition analysis between role archetypes
* Career transition roadmaps highlighting upskilling paths

---

## Data Processing & NLP Pipeline

Raw job postings are transformed into structured, machine-readable data through a multi-stage pipeline:

### 1. Text Cleaning & Normalization

* Job descriptions are cleaned and standardized
* Noise such as boilerplate text and formatting artifacts is removed

### 2. Skill Extraction

* Technical skills are extracted using a curated skill vocabulary
* Skills are normalized into canonical forms to ensure consistency

**Outputs:**

* Per-job normalized skill lists
* Canonical skill vocabulary
* Skill frequency statistics

**Coverage:**

* Skills detected in ~53% of job postings
* Lower coverage is expected for non-technical and generic roles

---

## Job Role Clustering

Job postings are clustered using:

* TF-IDF vectorization of skill-enriched text
* Dimensionality reduction (Truncated SVD)
* K-Means clustering with elbow-based cluster selection

Clusters are manually labeled into **role archetypes** based on dominant job titles and skill profiles.

**Output:**

* `jobs_with_clusters_v1.csv`

---

## Career Progression & Skill Gaps

Within each role archetype:

* Skill frequencies are compared across experience levels
* Senior–junior skill gaps are computed
* High-signal progression skills are identified

This highlights **what skills differentiate senior roles from junior ones**.

---

## Role Archetypes & Salary Insights

For each role archetype:

* Top skill signatures are identified
* Experience distribution is analyzed
* Median salary profiles are computed and compared

**Outputs:**

* `role_archetype_summary.csv`
* `role_archetype_skills.csv`

---

## Career Transition & Skill Roadmaps

The system analyzes transitions between role archetypes by:

* Normalizing skill distributions within archetypes
* Computing skill gaps between source and target roles
* Ranking skills required for successful transitions

This enables **data-driven career transition roadmaps**.

**Output:**

* `career_transition_roadmaps_v1.csv`

---

## Reproducibility

All results can be reproduced by running the notebooks sequentially.

**Steps:**

1. Place raw datasets in `data/raw/`
2. Run notebooks `01` → `10` in order
3. All processed datasets and artifacts will be generated locally

> Note: Large CSV files are not committed due to size constraints.

---

## Dashboard Summary

### Page 1 — Job Market Distribution
Overall distribution of jobs, experience levels, and salary ranges to establish baseline market structure.

<img width="1326" height="769" alt="{F0D54DC1-E955-40DC-9A7C-63885DAEDA05}" src="https://github.com/user-attachments/assets/afcb7892-b9b6-4885-9454-502f152df7aa" />

---

### Page 2 — Skill Demand
Most in-demand skills and how skill frequency varies across experience levels.

<img width="1329" height="769" alt="{B6154CA3-A4FB-4E06-8F0A-B234F789555D}" src="https://github.com/user-attachments/assets/1e0696ae-f9e0-44dd-b14f-3fe01f34e988" />

---

### Page 3 — Skill Pair Analysis
Commonly co-occurring skill pairs and their relationship with salary, highlighting the impact of skill combinations.

<img width="1327" height="771" alt="{3D00176F-43E4-4574-BB73-4B26CA853C95}" src="https://github.com/user-attachments/assets/aeba1839-9071-45b1-b2cd-c21109d7d242" />


## Tech Stack

* Python
* Pandas, NumPy
* Scikit-learn
* MS Excel
* spaCy (NLP)
* Matplotlib / Seaborn
* SQL
* Power BI (analysis & visualization)

---

## Conclusion

This project demonstrates an end-to-end **job market intelligence system**, transforming unstructured job postings into actionable insights around skills, salaries, role archetypes, and career transitions.

The analysis provides:
- Clear visibility into **in-demand skills**
- Interpretable **role archetypes**
- Data-backed **career progression and transition paths**

All insights are reproducible, modular, and designed to support real-world career decision-making.

---

## Future Work

Potential extensions include:
- Interactive dashboards for personalized career recommendations
- Skill-to-role matching for individual profiles
- Time-series analysis to track evolving skill demand
- Deployment as a lightweight web application or API

---

## Notes

This project was built with a strong focus on **clarity, reproducibility, and real-world relevance**, and serves as a foundation for more advanced career intelligence systems.

