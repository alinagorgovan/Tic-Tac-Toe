Pentru implementarea acestui exercitiu am scris 6 functii: joc   c_choice   u_choice    check   check_success   check_full. 
Fiecare functie se afla in fisierul propriu cu acelasi nume.
Am gandit jocul astfel: in terminal este generata o matrice din caractere de tipul underline si bara creandu-se astfel o tabla de joc.
La inceput jucatorul este intrebat cu ce vrea sa joace si ii este precizat ca daca alege sa joace cu 'X' va face prima mutare.
Dupa fiecare mutare a jucatorului este afisata matricea si imediat dupa, este afisata matricea dupa mutarea automata de calculator.
Dupa fiecare joc este afisat scorul si jucatorul este intrebat daca mai vrea sa joace.
Daca jucatorul apasa q atunci programul se va termina.
Functia joc este functia principala, unde sunt apelate restul functiilor ajutatoare.
Functia u_choice plaseaza miscarea dorit de utilizator.
Fuctia c_choice determina miscarea calculatorului in functie de miscarile anterioare.
Functia check verifica daca sunt doua cate doua elemente pe aceeasi linie,verticala sau diagonala si determina miscarea potrivita in cazul acela.
Functia check_success determina daca a castigat cineva si intoarce 1 pentru cine a cstigat si 0 pentru celcare a pierdut.
Functia check_full detremina gradul de incarcare al tablei de joc si returneaza un numar de la 0 la 9.
 
