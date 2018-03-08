
function [x k] = check(m, u,c)
  %functia verifica daca calculatorul are pe linie, verticala sau diagonala doua elemente
  %daca are doua elemente proprii atunci pune si al 3-lea si castiga
  %altfeldaca se afla 2 elemente ale jucatorului blocheaza posibilitatea acestuia de a castiga
  
    k = 0;
    
    if m(1,5) == c && m(2,5) == c && m(3,5) == '_'
      m(3,5) = c;
    elseif m(2,5) == c && m(3,5) == c && m(1,5) == '_'
      m(1,5) = c; 
    elseif m(1,2) == c && m(3,2) == c && m(2,2) == '_'
      m(2,2) = c; 
    elseif m(1,8) == c && m(3,8) == c && m(2,8) == '_'
      m(2,8) = c; 
    elseif m(1,2) == c && m(2,2) == c && m(3,2) == '_'
      m(3,2) = c; 
    elseif m(1,8) == c && m(2,8) == c && m(3,8) == '_'
      m(3,8) = c; 
    elseif m(2,8) == c && m(3,8) == c && m(1,8) == '_'
      m(1,8) = c; 
    elseif m(2,2) == c && m(3,2) == c && m(1,2) == '_'
      m(1,2) = c;
    elseif m(2,5) == c && m(1,8) == c && m(3,2) == '_'
      m(3,3) = c;
    elseif m(2,5) == c && m(3,2) == c && m(1,8) == '_'
      m(1,8) = c;
      
    elseif m(1,2) == c && m(1,5) == c && m(1,8) == '_'
      m(1,8) = c; 
    elseif m(1,2) == c && m(1,8) == c && m(1,5) == '_'
      m(1,5) = c;
    elseif m(3,2) == c && m(3,5) == c && m(3,8) == '_'
      m(3,8) = c;
    elseif m(3,2) == c && m(3,8) == c && m(3,5) == '_'
      m(3,2) = c;
    elseif m(1,5) == c && m(1,8) == c && m(1,2) == '_'
      m(1,2) = c; 
    elseif m(3,5) == c && m(3,8) == c && m(3,2) == '_'
      m(3,2) = c;
    elseif m(2,2) == c && m(2,5) == c && m(2,8) == '_'
      m(2,8) = c;
    elseif m(2,5) == c && m(2,8) == c && m(2,2) == '_'
      m(2,2) = c;
    elseif m(1,2) == c && m(3,8) == c && m(2,5) == '_'
      m(2,5) = c;
   
   
  
    elseif m(1,2) == u && m(1,5) == u && m(1,8) == '_'
      m(1,8) = c;
    elseif m(1,2) == u && m(1,8) == u && m(1,5) == '_'
      m(1,5) = c;
    elseif m(3,2) == u && m(3,5) == u && m(3,8) == '_'
      m(3,8) = c;
    elseif m(3,5) == u && m(3,8) == u && m(3,2) == '_'
      m(3,2) = c;
    elseif m(1,5) == u && m(1,8) == u && m(1,2) == '_'
      m(1,2) = c;
    elseif m(3,5) == u && m(3,8) == u && m(3,2) == '_'
      m(3,2) = c;
    elseif m(2,2) == u && m(2,5) == u && m(2,8) == '_'
      m(2,8) = c; 
    elseif m(2,5) == u && m(2,8) == u && m(2,2) == '_'
      m(2,2) = c; 
    
    elseif m(1,5) == u && m(2,5) == u && m(3,5) == '_'
      m(3,5) = c;
    elseif m(2,5) == u && m(3,5) == u && m(1,5) == '_'
      m(1,5) = c'
    elseif m(1,2) == u && m(3,2) == u && m(2,2) == '_'
      m(2,2) = c;
    elseif m(1,8) == u && m(3,8) == u && m(2,8) == '_'
      m(2,8) = c;
    elseif m(1,2) == u && m(2,2) == u && m(3,2) == '_'
      m(3,2) = c;
    elseif m(1,8) == u && m(2,8) == u && m(3,8) == '_'
      m(3,8) = c;
    elseif m(2,8) == u && m(3,8) == u && m(1,8) == '_'
      m(1,8) = c;
    elseif m(2,2) == u && m(3,2) == u && m(1,2) == '_'
      m(1,2) = c;
    elseif m(2,5) == u && m(1,8) == u && m(3,2) == '_'
      m(3,2) = c;
    elseif m(2,5) == u && m(3,2) ==u && m(1,8) == '_'
      m(1,8) = c;
      
    elseif m(1,2) == u && m(1,5) == u && m(1,8) == '_'
      m(1,8) = c;
    elseif m(1,2) == u && m(1,8) == u && m(1,5) == '_'
      m(1,5) = c;
    elseif m(3,2) == u && m(3,5) == u && m(3,8) == '_'
      m(3,8) = c;
    elseif m(3,5) == u && m(3,8) == u && m(3,2) == '_'
      m(3,2) = c;
    elseif m(1,5) == u && m(1,8) == u && m(1,2) == '_'
      m(1,2) = c;
    elseif m(3,5) == u && m(3,8) == u && m(3,2) == '_'
      m(3,2) = c;
    elseif m(2,2) == u && m(2,5) == u && m(2,8) == '_'
      m(2,8) = c;
    elseif m(2,5) == u && m(2,8) == u && m(2,2) == '_'
      m(2,2) = c;
    else
      k = 1;
   
    endif
    
    x = m;
endfunction