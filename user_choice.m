function A = user_choice(x, c)
  
  disp("Mutarile sunt de la 1 la 9. Puteti iesi apasant tasta q.")
  move = input('Alegeti casuta: ', 's');
  if move == '1'
    if x(1,2) == '_'
      x(1,2) = c;
    else
      disp("Mutare invalida. Casuta este deja ocupata.")
    endif
  elseif move == '2' 
    if x(1,5) == '_'
      x(1,5) = c;
    else
      disp("Mutare invalida. Casuta este deja ocupata.")
    endif
  elseif move == '3'
    if x(1,8) == '_'
      x(1,8) = c;
    else
      disp("Mutare invalida. Casuta este deja ocupata.")
    endif
  elseif move == '4'
    if x(2,2) == '_'
      x(2,2) = c;
    else
      disp("Mutare invalida. Casuta este deja ocupata.")
    endif
  elseif move == '5'
    if x(2,5) == '_'
      x(2,5) = c;
    else
      disp("Mutare invalida. Casuta este deja ocupata.")
    endif
  elseif move == '6'
    if x(2,8) == '_'
      x(2,8) = c;
    else
      disp("Mutare invalida. Casuta este deja ocupata.")
    endif
  elseif move == '7'
    if x(3,2) == '_'
      x(3,2) = c;
    else
      disp("Mutare invalida. Casuta este deja ocupata.")
    endif
  elseif move == '8'
    if x(3,5) == '_'
      x(3,5) = c;
    else
      disp("Mutare invalida. Casuta este deja ocupata.")
    endif
  elseif move == '9'
    if x(3,8) == '_'
      x(3,8) = c;
    else
      disp("Mutare invalida. Casuta este deja ocupata.")
    endif
  elseif move == 'q'
    A = zeros(0,0);
    break
  else
    disp("Mutare invalida. Numarul nu corespunde niciunei casute")
  endif
  A = x;
endfunction 
  