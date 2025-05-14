#! /bin/bash

python3 generate_val_dataset_lung.py \
    --train_csv_file "/data/projects/MSCPT/numshots/example/Lung_train_16_1.csv" \
    --test_csv_file "/data/projects/MSCPT/numshots/example/Lung_val_16_1.csv" \
    --labels_csv_file "/data/projects/MSCPT/tcga_lung.csv" \
    --output_csv_file "val_dataset_lung_16_1.csv"

python3 generate_val_dataset_lung.py \
    --train_csv_file "/data/projects/MSCPT/numshots/example/Lung_train_16_2.csv" \
    --test_csv_file "/data/projects/MSCPT/numshots/example/Lung_val_16_2.csv" \
    --labels_csv_file "/data/projects/MSCPT/tcga_lung.csv" \
    --output_csv_file "val_dataset_lung_16_2.csv"

python3 generate_val_dataset_lung.py \
    --train_csv_file "/data/projects/MSCPT/numshots/example/Lung_train_16_3.csv" \
    --test_csv_file "/data/projects/MSCPT/numshots/example/Lung_val_16_3.csv" \
    --labels_csv_file "/data/projects/MSCPT/tcga_lung.csv" \
    --output_csv_file "val_dataset_lung_16_3.csv"

python3 generate_val_dataset_lung.py \
    --train_csv_file "/data/projects/MSCPT/numshots/example/Lung_train_16_4.csv" \
    --test_csv_file "/data/projects/MSCPT/numshots/example/Lung_val_16_4.csv" \
    --labels_csv_file "/data/projects/MSCPT/tcga_lung.csv" \
    --output_csv_file "val_dataset_lung_16_4.csv"

python3 generate_val_dataset_lung.py \
    --train_csv_file "/data/projects/MSCPT/numshots/example/Lung_train_16_5.csv" \
    --test_csv_file "/data/projects/MSCPT/numshots/example/Lung_val_16_5.csv" \
    --labels_csv_file "/data/projects/MSCPT/tcga_lung.csv" \
    --output_csv_file "val_dataset_lung_16_5.csv"

