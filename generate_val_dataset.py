import pandas

import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--train_csv_file", type=str, required=True)
    parser.add_argument("--test_csv_file", type=str, required=True)
    parser.add_argument("--labels_csv_file", type=str, required=True)
    parser.add_argument("--output_csv_file", type=str, required=True)
    args = parser.parse_args()

    train_csv_file = args.train_csv_file
    test_csv_file = args.test_csv_file
    labels_csv_file = args.labels_csv_file
    output_csv_file = args.output_csv_file

    train_csv_df = pandas.read_csv(train_csv_file)
    test_csv_df = pandas.read_csv(test_csv_file)
    labels_df = pandas.read_csv(labels_csv_file)

    train_slide_ids = train_csv_df["slide_id"].tolist()
    test_slide_ids = test_csv_df["slide_id"].tolist()

    labels_slide_ids = labels_df["slide_id"].tolist()
    val_slide_ids = []

    for slide in labels_slide_ids:
        if slide not in train_slide_ids and slide not in test_slide_ids:
            val_slide_ids.append(slide)

    val_df = labels_df[labels_df["slide_id"].isin(val_slide_ids)]

    val_df.to_csv(output_csv_file, index=False)
