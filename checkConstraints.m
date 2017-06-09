function foundDuplicate = checkConstraints(solutionCandidate)
  n = size(solutionCandidate,1);
  foundDuplicate = 0;
  %check column uniqueness
  if (max(sum(solutionCandidate)) > 1)
    foundDuplicate = 1;
  else
    %check the diagonal uniqueness
    for i = -n+1:1:n-1
      if (foundDuplicate == 0 && (sum(diag(solutionCandidate,i)) > 1 || sum(diag(flipud(solutionCandidate),i)) > 1))
        foundDuplicate = 1;
      endif
    endfor
  endif
endfunction