function prob = probabilityORF(N, N_ORF)

length_orf_prob = 0;

for iteration = 1:1000
    
  rand_seq = randdnaseq(N);
  ORF_length = findORF(rand_seq);
  
  if (ORF_length > N_ORF)
      length_orf_prob = length_orf_prob + 1;
  end
  
end

prob = (length_orf_prob/1000);
  disp(['Probability for 1000 iterations is: ' num2str(prob) '.']);
  
end