function dnaseq = protein2dna(proteinseq)
% Input a dna sequence and a reading frame and returns the corresponding
% protein sequence.

codons = readtable('codons.csv');

keySet = table2array(codons(:,1));
valueSet = table2array(codons(:,2));
dnaseq = {};


prot2dna_dictionary = containers.Map(keySet, valueSet);

    
    for i = 1:numel(proteinseq)
            dnaseq(:,i) = cellstr(prot2dna_dictionary(proteinseq{i}));
    end
    
end

