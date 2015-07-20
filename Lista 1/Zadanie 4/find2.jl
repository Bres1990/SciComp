# Znajdz w arytmetyce Float64 NAJMNIEJSZA liczbę zmiennopozycyjną x w przedziale 1 < x < 2
# taką, że x * (1/x) != 1
# tj. fl(x * fl(1/x)) != 1

function find(x)
  while x < float64(2.0)
    if float64(x * (float64(1.0/x))) != float64(1.0)
      return x;
    else
      x = nextfloat(float64(x));
    end
  end
end

println(find(nextfloat(typemin(Float64))));

# wynik to -1.7976931348623157e308