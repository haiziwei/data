## Drug response data
- /data/Drug_response.txt

1. The clinical drug response data are collected from TCGA. 
2.
cancers: the cancer type
patient_ID: the patients' TCGA ID
drug_name: the drug that TCGA recorded for the patient, standardized according to DrugBank
response: the patient's clinical response to the drug

## processed_pan_cancer_datasets 

- /data/processed_pan_cancer_datasets/carboplatin/
- /data/processed_pan_cancer_datasets/cisplatin/
- /data/processed_pan_cancer_datasets/paclitaxel/
- /data/processed_pan_cancer_datasets/fluorouracil/

1. These text files are tables of core datasets across multiple cancers on carboplatin, cisplatin, paclitaxel and fluorouracil respectively, including drug response records and omics data. These datasets are processed follows the description in Materials and Methods and modelled across the landmark gene list.
2. Each folder is named by a drug name.
For example,"carboplatin" contains patients treated by this drug from multiple cancer types. 
3. Each folder contains four files.
For example, "carboplatin" contains 
1)processed_carboplatin_pan_cancer_DNA_methylation.txt: the DNA methylation data of the patients.
2)processed_carboplatin_pan_cancer_mRNA_expression.txt: the mRNA expression data of the patients.
3)processed_carboplatin_pan_cancer_CNA.txt: the CNA data of the patients.
4)carboplatin_drug_response.txt: the drug response data of the patietns, the patients in the first three files are in the same order with that in this file.
4.
cancers: the cancer type
patient_ID: the patients' TCGA ID
drug_name: the drug that TCGA recorded for the patient, standardized according to DrugBank
response: the patient's clinical response to the drug, 1, responders, 0, non-responders

## single_cancer_datasets
- /data/single_cancer_datasets/carboplatin_LUAD.txt
- /data/single_cancer_datasets/cisplatin_BLCA.txt
- /data/single_cancer_datasets/cisplatin_HNSC.txt
- /data/single_cancer_datasets/cisplatin_LUSD.txt
- /data/single_cancer_datasets/cisplatin_STAD.txt
- /data/single_cancer_datasets/fluorouracil_STAD.txt
- /data/single_cancer_datasets/paclitaxel_BRCA.txt

1.This folder contains seven files. Each file is for one single cancer dataset, including the informationg of drug response and overall survival.
2.
cancers: the cancer type
patient_ID: the patients' TCGA ID
drug_name: the drug that TCGA recorded for the patient, standardized according to DrugBank
response: the patient's clinical response to the drug, 1, responders, 0, non-responders
overall_survival: the overall survival (months) of patients

## **Contact**
Please feel free to contact us if you need any help: hanziwei@mail.ustc.edu.cn.