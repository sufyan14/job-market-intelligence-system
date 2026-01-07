## Processed Data

This directory contains cleaned and canonical datasets generated from
public LinkedIn and Indeed job posting datasets.

Due to file size constraints, processed CSV files are not committed
to version control.

To reproduce the data:

1. Place raw datasets in `data/raw/`
2. Run the notebook `01_dataset_validation_and_schema.ipynb`
3. The canonical dataset will be generated in this directory

## Artifacts

This project commits fitted NLP and preprocessing artifacts (e.g., vectorizers, schemas)
required to reproduce features and downstream analysis.


