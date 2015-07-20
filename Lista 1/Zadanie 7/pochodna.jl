# Zbadać różnice pomiędzy wartością pochodnej funkcji, a przybliżaniem tej wartości przez wzór:
#

f(x) = sin(x) + cos(3x);
function pochodna(h::Float64)
  return (f(1.0 + h) - f(1.0)) / h;
end

for i in 0:54
  println(pochodna(1/(2^i)));
end