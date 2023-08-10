# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"A06.8","system":"icd10"},{"code":"A06.9","system":"icd10"},{"code":"A24","system":"icd10"},{"code":"A35","system":"icd10"},{"code":"A67","system":"icd10"},{"code":"A69","system":"icd10"},{"code":"B33.0","system":"icd10"},{"code":"B33.1","system":"icd10"},{"code":"B37.0","system":"icd10"},{"code":"B46.1","system":"icd10"},{"code":"B46.8","system":"icd10"},{"code":"B46.9","system":"icd10"},{"code":"B47.9","system":"icd10"},{"code":"B65","system":"icd10"},{"code":"B66","system":"icd10"},{"code":"B67.9","system":"icd10"},{"code":"B70","system":"icd10"},{"code":"B71","system":"icd10"},{"code":"B83","system":"icd10"},{"code":"G04.1","system":"icd10"},{"code":"J37","system":"icd10"},{"code":"M72.6","system":"icd10"},{"code":"P39.0","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('infections-of-other-or-unspecified-organs-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["infections-of-other-or-unspecified-organs---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["infections-of-other-or-unspecified-organs---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["infections-of-other-or-unspecified-organs---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
