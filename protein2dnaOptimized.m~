function dnaseq = protein2dnaOptimized(proteinseq)

codons = readtable('codons.csv');

keySet = table2array(codons(:,1));
valueSet = table2array(codons(:,2));
dnaseq = {};


unique_aa = unique(codons.AmAcid);

for i = 1:length(unique_aa)
    idx = find(contains(codons.AmAcid, unique_aa(i)));
    idx_max = find(codons.x_1000(idx) == max(codons.x_1000(idx)));
    keySet(i) = codons.AmAcid(idx(idx_max));
    valueSet(i) = codons.Codon(idx(idx_max));
    
end

prot2dna_dictionary = containers.Map(keySet, valueSet);

for i = 1:numel(proteinseq)
    dnaseq(:,i) = cellstr(prot2dna_dictionary(proteinseq{i}));
end

end