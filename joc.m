function [] = joc()
  
  %initializare tabla de joc
  T = [ '|_|' '|_|' '|_|'; '|_|' '|_|' '|_|'; '|_|' '|_|' '|_|'];
  x = 'X';
  o = '0';
  %jucatorul alege daca joaca primul sau nu
  
  exit = 0;     %variabila pentru iesire
  uwon = 0;     %variabila ce devine 1 daca castiga jucatoruluu
  cwon = 0;     %variabila ce devine 1 daca castiga calculatorul
  uscore = 0;   %variabila ce salveaza scorul jucatorului
  cscore = 0;   %variabila ce salveaza scorul calculatorului
  
  while exit == 0
    
    choice = input('Alegeti cu ce jucati, X sau 0 (Daca alegeti X veti face prima mutare) ', 's');
  if choice == 'X' || choice == 'x'
    user = x;   %variabila pentru caracterul jucatorului
    comp = o;   %variabila pentru caracterului calculatorului
  elseif choice == '0'
    user = o;
    comp = x;
  else
    disp("Alegerea este invalida");
  endif
    
      if user == x
        
        A = T;
        while uwon == 0 && cwon == 0 && check_full(A) ~= 9
          if check_full(A) < 8
          A = user_choice(A, user)
          if size(A) == [0 0] return endif
          [uwon cwon] = check_success(A, user, comp);
          A = c_choice(A, comp)
          [uwon cwon] = check_success(A, user, comp);
          elseif check_full(A) == 8
          A = user_choice(A, user)
          if size(A) == [0 0] return endif
          [uwon cwon] = check_success(A, user, comp);
          endif
        endwhile
    
      elseif user == o
        
        A = T;
        while uwon == 0 && cwon == 0 && check_full(A) ~= 9
          if check_full(A) < 4
            A = c_choice(A, comp)
            [uwon cwon] = check_success(A, user, comp);
            A = user_choice(A, user)
            if size(A) == [0 0] return endif
            [uwon cwon] = check_success(A, user, comp);
          elseif check_full(A) == 4
            A = c_choice(A, comp)
            [uwon cwon] = check_success(A, user, comp);
          elseif check_full(A) == 5
            A = user_choice(A, user)
            if size(A) == [0 0] return endif
            [uwon cwon] = check_success(A, user, comp);
          elseif check_full(A) == 6
            A = c_choice(A, comp)
            [uwon cwon] = check_success(A, user, comp);
          elseif check_full(A) == 7
            A = user_choice(A, user)
            if size(A) == [0 0] return endif
            [uwon cwon] = check_success(A, user, comp);
          elseif check_full(A) == 8
            A = c_choice(A, comp)
            [uwon cwon] = check_success(A, user, comp);
            endif
        endwhile
      endif
      
      if uwon == 1
        uscore = uscore + 1;
        disp("Ati castigat");
        uwon = 0;
      elseif cwon == 1
        cscore = cscore + 1;
        disp("Ati pierdut");
        cwon = 0;
      elseif check_full(A) == 9 && uwon == 0 && cwon == 0
        disp("Egalitate");
      endif
    printf( "%d : %d\n", cscore, uscore);
    a = input( "Inca un joc? (y/n) ", 's');
    if a == 'n'
      exit = 1; break;
    endif
    
  endwhile
endfunction 