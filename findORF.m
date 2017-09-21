function [ORFlength, start_pos, stop_pos] = findORF(dnaseq)
%Function to find the length of the longest open reading frame of a
%sequences called dnaseq

%fill in here.
% corrected my code in HW1 to the solution presented in class
start = strfind(dnaseq, 'ATG');
stop = [strfind(dnaseq, 'TGA') strfind(dnaseq, 'TAA') strfind(dnaseq, 'TAG')];

first_stop_codon = zeros(1,length(start));
for i = 1:length(start)
    length_orf = stop - start(i);
    good_length = 1e8;
    index = 0;
    for j = 1:length(length_orf)
        if (length_orf(j) > 0) & (mod(length_orf(j),3) == 0) & (length_orf(j) < good_length)
            good_length = length_orf(j);
            index = j;
        end
    end
    if index > 0
        first_stop_codon(i) = stop(index);
    else
        first_stop_codon(i) = start(i);
    end
    size_orf = first_stop_codon - start + 3;
    [ORFlength, idx_max] = max(size_orf);
    
    
end

    if exist('ORFlength','var') && ORFlength > 0
        start_pos = start(idx_max);
        stop_pos = first_stop_codon(idx_max);
    else
        ORFlength = -1;
        start_pos = -1;
        stop_pos = -1;
    end



end

