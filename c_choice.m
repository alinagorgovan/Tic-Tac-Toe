function A = c_choice(m,c)
  %functia determina mutarea calculatorului
 
  x = 'X';
  o = '0';
  if c == x
    u = o;
  elseif c == o
    u = x;
  endif
  
  k = 0;    %constanta pentru numarul de mutari efectuate de user
  l = 0;    %constanta pentru numarul de mutaro efectuate de calculator
  v = zeros(30,1);  %vector in care memorez anumite combinatii de miscari
  
  for i = [1 2 3]
    for j = [2 5 8]
      if m(i,j) == u 
          k = k + 1;
      elseif m(i,j) == c
          l = l + 1;
      endif
    endfor
  endfor
  
  %incepe calculatorului
  y = 0;
  %verificam daca matricea este goala atunci pune in mijloc
  if k == 0 && l == 0
    m(1,2) = c;
    %dupa o mutare a calculatorului si una a jucatorului
  elseif k == 1 && l == 1  
    if m(3,8) ==  '_' && m(2,5) == u
      m(3,8) = c; y = 1;
    elseif m(2,5) == '_' && m(3,8) == u
      m(2,5) = c;
    elseif m(2,5) == '_' && m(3,8) == '_'
      m(3,8) = c; y = 1;
    endif
    %dupa 2 mutari ale calculatoului si 2 ale jucatorului
  elseif k == 2 && l == 2
    [n l] = check(m,u,c);
    if l == 0
      m = n;
    elseif l == 1
      if y == 1 && m(1,8) == '_' && m(1,5) == '_' && m(2,8) == '_' 
        m(1,8) = c;
      elseif y == 1 && m(2,2) == '_' && m(3,5) == '_' && m(3,2) == '_'
        m(3,2) = c;
      endif
    endif
    %dupa 3 mutari ale jucatorului si 3 ale calculatorului
  elseif k == 3 && l == 3
    [n l] = check(m,u,c);
    if l == 0
      m = n;
    elseif l == 1
      
      if m(1,5) == '_'
        m(1,5) = c;
      elseif m(1,8) == '_' 
        m(1,8) = c;
      elseif m(2,8) == '_'
        m(2,8) = c;
      elseif m(3,8) == '_'
        m(3,8) = c;
      elseif m(3,5) == '_'
        m(3,5) = c;
      elseif m(3,2) == '_'
        m(3,2) = c;
      elseif m(2,2) == '_'
        m(2,2) = c;
      endif
    endif
        
  elseif k == 4 && l == 4
    
    for i = 1:3
      for j = [2 5 8]
        if m(i,j) == '_'
          m(i,j) = c;
        endif
      endfor
    endfor
  
  
  %incepe jucatorul
  
  %dupa prima mutare a jucatorului
  elseif k == 1 && l == 0
    if m(2,5) ~= u
      %daca jucatorul nu a pus in mijloc atunci pune in mijloc
      m(2,5) = c;
    elseif m(2,5) == u
      % daca jucatorul a pus in mijloc atunci pune in primul colt
      m(1,2) = c;
    endif 
  %dupa 2 mutari ale jucatorului si una a calculatorului
  elseif k == 2 && l == 1
  %daca jucatorul are o mutare in mijloc
    if m(2,5) == u
      if m(1,5) == u
        m(3,5) = c; v(1) = 1;
      elseif m(1,8) == u
        m(3,2) = c; v(2) = 1;
      elseif  m(2,8) == u
        m(2,2) = c; v(3) = 1;
      elseif m(3,8) == u
        m(3,2) = c; v(4) = 1;
      elseif m(3,5) == u
        m(1,5) = c; v(5) = 1;
      elseif m(3,2) == u
        m(1,8) = c; v(6) = 1;
      elseif m(2,2) == u
        m(2,8) = c; v(7) = 1;
      endif
    elseif m(2,5) ~= u
     
     %daca jucatorul a pus in doua colturi opuse
      if m(1,2) == u && m(3,8) == u
        m(2,8) = c; v(8) = 1;
      elseif m(1,8) == u && m(3,2) == u 
        m(2,2) = c; v(9) = 1;
      
      %daca jucatorul are doua mutari pe aceeasi latura
      elseif m(1,2) == u && m(1,5) == u
        m(1,8) = c; v(10) = 1;
      elseif m(1,2) == u && m(1,8) == u
        m(1,5) = c; v(11) = 1;
      elseif m(3,2) == u && m(3,5) == u
        m(3,8) = c; v(12) = 1;
      elseif m(3,5) == u && m(3,8) == u
        m(3,2) = c; v(13) = 1;
      elseif m(1,5) == u && m(1,8) == u
        m(1,2) = c; v(14) = 1;
      elseif m(3,5) == u && m(3,8) == u
        m(3,2) = c; v(15) = 1;
 
      elseif m(1,2) == u && m(3,2) == u
        m(2,2) = c; v(16) = 1;
      elseif m(1, 8) == u && m(3,8) ==u
        m(2,8) = c; v(17) = 1;
      elseif m(1,2) == u && m(2,2) == u
        m(3,2) = c; v(18) = 1;
      elseif m(1,8) == u && m(2,8) == u
        m(3,8) = c; v(19) = 1;
      elseif m(2,8) == u && m(3,8) == u
        m(1,8) = c; v(20) = 1;
      elseif m(2,2) == u && m(3,2) == u
        m(1,2) = c; v(21) = 1;
      
      %daca jucatorul a pus intr-un colt si pe o latura
      elseif m(1,2) == u      %coltul stanga sus
        if m(2,8) == u
          m(1,8) = c; v(22) = 1;
        elseif m(3,5) == u
          m(3,2) = c; v(23) = 1;
        endif
      elseif m(1,8) == u      %coltul dreapta sus
        if m(3,5) == u 
          m(3,8) = c; v(24) = 1;
        elseif m(2,2) == u
          m(1,2) = c; v(25) = 1;
        endif
      elseif m(3,8) == u      %coltul dreapta jos
        if m(1,5) == u
          m(1,8) = c; v(26) = 1;
        elseif m(2,2) == u
          m(3,2) = c; v(27) = 1;
        endif
      elseif m(3,2) == u      %coltul stanga jos
        if m(1,5) == u
          m(1,2) = c; v(28) = 1;
        elseif m(2,8) == u
          m(3,8) = c; v(29) = 1;
        endif 

      endif
    endif
  
  %dupa 3 mutari ale jucatorului si 2 ale calculatorului
  elseif k == 3 && l == 2

    [n l] = check(m, u,c);
    m = n;
  elseif  k == 4 && l == 3
    
    [n l] = check(m, u,c);
    m = n;
  %daca tabla este plina se opreste  
  elseif k == 5 && l == 4
    
    break;
 
  endif 
  
  A = m;
endfunction
