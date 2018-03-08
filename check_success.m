function [uwon cwon] = check_success(A,u,c)
  
  uwon = 0;
  cwon = 0;
  
  %orizontala
  for i = 1:3
    if A(i,2) == A(i,5) && A(i,5) == A(i,8) && A(i,2) == u
      uwon = 1;
    elseif A(i,2) == A(i,5) && A(i,5) == A(i,8) && A(i,2) == c
      cwon = 1;
    endif
  endfor
  
  %verticala
  for i = [2, 5, 8]
    if A(1,i) == A(2,i) && A(2,i) == A(3,i) && A(1,i) == u
      uwon = 1;
    elseif A(1,i) == A(2,i) && A(2,i) == A(3,i) && A(1,i) == c
      cwon = 1;
    endif
  endfor
  
  %diagonale
  if A(1,2) == A(2,5) && A(2,5) == A(3,8) && A(1,2) == u %diagonala principala
    uwon = 1;
  elseif A(1,2) == A(2,5) && A(2,5) == A(3,8) && A(1,2) == c
    cwon = 1;
  elseif A(1,8) == A(2,5) && A(2,5) == A(3,2) && A(1,8) == u %diagonala secundara
    uwon = 1;
  elseif A(1,8) == A(2,5) && A(2,5) == A(3,2) && A(1,8) == c
    cwon = 1;
  endif
endfunction  