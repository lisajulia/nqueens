function nQueens(n)
  solutionCandidates = zeros(n,n,n);
  foundSolutions_attempts = [0,0];
  for i = 1:n
    solutionCandidates(i,i,1) = 1;
    foundSolutions_attempts = placeNextRow(solutionCandidates(:,:,i), 1, foundSolutions_attempts);
  endfor
  foundSolutions_attempts
endfunction

