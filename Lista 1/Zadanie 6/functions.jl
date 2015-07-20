# Policz wartości następujących funkcji w arytmetyce Float64
# dla kolejnych wartości argumentu x = 8^-1, 8^-2, 8^-3, ...
# Chociaż f = g komputer daje różne wyniki.
# Które z nich są wiarygodne, a które nie?

# f(x) = root(x^2 + 1) - 1
# g(x) = x^2 /( (root(x^2 + 1) + 1 ) )

f(x::Float64) = sqrt(x^2 + 1) - 1;

g(x::Float64) = sqrt(x^2 / ((sqrt(x^2 + 1) + 1)));

function results(n)
  for i in 1:n
    println("fn = $i: ", f(1/(8^(i))));
    println("gn = $i: ", g(1/(8^(i))));
  end
end

results(100);

