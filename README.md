# Job Market Intelligence System

## Overview
A data-driven system that analyzes job postings to identify in-demand skills,
salary trends, and skill gaps across technical roles.

## Problem Statement
Job seekers often lack structured insights into which skills are most valuable,
how experience affects compensation, and what learning paths improve employability.
This project addresses that gap using large-scale job posting data.

## Target Users
- Job seekers and students
- Early-career professionals
- Career switchers

## Data Sources
- LinkedIn job postings (primary dataset)
- Indeed job postings (secondary dataset)

## Core Features
- Skill demand analysis using NLP
- Job role clustering
- Salary prediction based on skills and experience
- Skill gap analysis for personalized recommendations

## Skill Extraction Pipeline
This project extracts technical skills from job postings using a keyword-based
matching approach on cleaned job descriptions.

Steps:
- Job descriptions are lowercased, cleaned, and stopwords removed
- A predefined technical skill vocabulary is matched against descriptions
- Extracted skills are stored as lists per job (skills_v2)
- Skills are normalized to lowercase canonical forms (skills_norm)

Coverage:
- Skills were extracted for ~53% of job postings
- Lower coverage is expected for non-technical and generic roles

Limitations:
- Non-technical roles often contain no explicit skills
- Some tools (e.g. Excel) appear frequently due to broad job categories
- This version prioritizes precision over recall


## Tech Stack
- Python, Pandas, NumPy
- Scikit-learn
- spaCy / NLP
- FastAPI
- SQL
- Power BI (analytics)

## Project Status
This project is under active development.
