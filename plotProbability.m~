function plot = plotProbability(N_ORF, min_length, increment, max_length)

length_orf_prob = 0;
counter = 1;
prob_table = [];

for i = min_length:increment:max_length
    
    for iteration = 1:1000
        
        rand_seq = randdnaseq(i);
        [ORF_length, start_pos, stop_pos] = findORF(rand_seq);
        
        if (ORF_length > N_ORF)
            length_orf_prob = length_orf_prob + 1;
        end
        
    end
    
    prob = (length_orf_prob/1000);
    
    prob_table(counter, 1) = i;
    prob_table(counter, 2) = prob;
    
    length_orf_prob = 0;
    
    counter = counter + 1;
    
end

scatter(prob_table(:,1), prob_table(:,2));
xlabel('Random sequence N');
ylabel(['Frequency orf > N_ORF' ]);


end

