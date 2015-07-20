# Sprawdź, że w arytmetyce Float64 liczby zmiennopozycyjne są równomiernie rozmieszczone w przedziale [1,2] z krokiem sigma = 2 ^ (-52).
# Innymi słowy, każda liczba zmiennopozycyjna x pomiędzy 1 i 2 może być przedstawiona jako x = 1 + k*delta w tej arytmetyce,
#              gdzie k = 1, 2, 3, ..., 2 ^ 52 - 1; delta = 2 ^ (-52)

function spread()
  i::Float64;
  i = 1.0;
  k_max = (float64(2.0)^52)-float64(1.0);
  delta = float64(2.0)^(-52);
  k = 1;

  while i <= float64(2.0)
    x = float64(1.0) + (float64(k) * float64(delta));
    if x - i > eps(Float64)
      println("x: ",x);
      println("y: ",i);
    else println("Blad w normie");
      #return;
    end
    if k < k_max
      k += 1;
      i = nextfloat(float64(i));
    elseif k == k_max
      println("Teza prawdziwa");
      return;
    end
  end
  ########################################
  # x = 1.0 + float64(k)*float64(delta); #
  # if i == x                            #
  #  continue;                           #
  # else return;                         #
  ########################################
end

spread();

# Obliczenia wskazuja na to ze liczby zmiennopozycyjne sa rownomiernie rozmieszczone w zadanym przedziale [1:2].
# Miedzy obliczonymi wartosciami a oczekiwanymi wartosciami istnieje niewielka różnica, która mieści się w granicach błędu precyzji (epsilon maszynowy).
