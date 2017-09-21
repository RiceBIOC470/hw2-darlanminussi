function proteinseq = dna2protein(dnaseq,frame)
% Input a dna sequence and a reading frame and returns the corresponding
% protein sequence.

codons = readtable('codons.csv');

keySet = table2array(codons(:,2));
valueSet = table2array(codons(:,1));
proteinseq = {};

aa_dictionary = containers.Map(keySet, valueSet);

if frame == 1
    
    dnaseq_split = strread(dnaseq,'%3s');
    
    for i = 1:size(dnaseq_split,1)
        if numel(dnaseq_split{i}) == 3
            proteinseq(:,i) = cellstr(aa_dictionary(dnaseq_split{i}));
        end
    end
end


if frame == 2
    dnaseq = dnaseq(2:(length(dnaseq)));
    dnaseq_split = strread(dnaseq,'%3s');
    
    for i = 1:size(dnaseq_split,1)
        if numel(dnaseq_split{i}) == 3
            proteinseq(:,i) = cellstr(aa_dictionary(dnaseq_split{i}));
        end
    end
end

if frame == 3
    dnaseq = dnaseq(3:(length(dnaseq)));
    dnaseq_split = strread(dnaseq,'%3s');
    
    for i = 1:size(dnaseq_split,1)
        if numel(dnaseq_split{i}) == 3
            proteinseq(:,i) = cellstr(aa_dictionary(dnaseq_split{i}));
        end
    end
end



if frame > 3
    disp('Please enter a valid frame (1, 2 or 3)');
end

end

