function n = check_full(A)
  %functia verifica daca tabla de joc este plina
  
  n = 0;
  for i = 1:3
    for j = [2 5 8]
      if A(i,j) ~= '_'
        n = n + 1;
      endif
    endfor
  endfor

endfunction