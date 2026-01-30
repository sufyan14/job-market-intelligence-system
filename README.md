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

## Tech Stack

* Python
* Pandas, NumPy
* Scikit-learn
* spaCy (NLP)
* Matplotlib / Seaborn
* SQL
* Power BI (analysis & visualization)

---

## Project Status

Core analysis is complete.
This project is under active development.

---
