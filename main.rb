def dna_to_rna(dna)
  dna.tr('ATGC', 'UACG')
end


p dna_to_rna("ATTAGCGCGATATACGCGTAC") == "UAAUCGCGCUAUAUGCGCAUG"
p dna_to_rna("CGATATA") == "GCUAUAU"
p dna_to_rna("GTCATACGACGTA") == "CAGUAUGCUGCAU"