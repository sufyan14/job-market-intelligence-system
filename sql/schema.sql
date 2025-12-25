CREATE TABLE jobs (
    job_id SERIAL PRIMARY KEY,
    source VARCHAR(20),
    source_job_id VARCHAR(50),
    title TEXT,
    company TEXT,
    location TEXT,
    experience_level TEXT,
    work_type TEXT,
    job_description TEXT,
    salary_avg FLOAT,
    currency VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE skills (
    skill_id SERIAL PRIMARY KEY,
    skill_name TEXT UNIQUE
);

CREATE TABLE job_skills (
    job_id INT REFERENCES jobs(job_id),
    skill_id INT REFERENCES skills(skill_id),
    PRIMARY KEY (job_id, skill_id)
);

CREATE TABLE job_clusters (
    job_id INT REFERENCES jobs(job_id),
    cluster_id INT,
    cluster_label TEXT,
    PRIMARY KEY (job_id)
);

CREATE TABLE salary_predictions (
    job_id INT REFERENCES jobs(job_id),
    predicted_salary FLOAT,
    model_version TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
