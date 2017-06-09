function foundSolutions_attempts = placeNextRow(solutionCandidate, m, foundSolutions_attempts)
  n = size(solutionCandidate,1);
  solutionCandidates = zeros(n,n,n);
  for i = 1:n
    solutionCandidates(:,:,i) = solutionCandidate;
    solutionCandidates(m+1,i,i) = 1;
    if(checkConstraints(solutionCandidates(:,:,i)) == 0 && n == m+1)
      foundSolutions_attempts(1) += 1;
      solutionCandidates(:,:,i)
      fprintf("next\n");
    elseif (checkConstraints(solutionCandidates(:,:,i)) == 0)
      foundSolutions_attempts(2) += 1;
      foundSolutions_attempts = placeNextRow(solutionCandidates(:,:,i), m+1, foundSolutions_attempts);
    endif
  endfor
endfunction