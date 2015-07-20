# Rozwiązywanie układu równań liniowych Ax = B
# dla danej macierzy współczynników A ∈ R ^(n x n)
# i wektora prawych stron B ∈ R^n.
# Macierz A generować w następujący sposób:

# a) A = Hn, gdzie Hn jest macierzą Hilberta stopnia n wygenerowaną za pomocą
#  funkcji A = hilb(n).

# b) A = Rn, gdzie Rn jest losową macierzą stopnia n z zadanym wskaźnikiem uwarunkowania e
#   wygenerowaną za pomocą funkcji matcond(n,c).

# Wektor b zadany jest następująco b = Ax, gdzie A jest wygenerowaną macierzą, x = (1, ... , 1)^T.

# Rozwiązać Ax za pomocą dwóch algorytmów:
# Eliminacji Gaussa (x = A \ b)
# Inwersji (x = inv(A) * b)

# Eksperymenty wykonać dla macierzy Hilberta z rosnącym stopniem n > 1
# oraz dla macierzy losowej Rn, n = 5, 10, 20 z rosnącym wskaźnikiem uwarunkowania
#                                                e = 1, 10, 10^3, 10^7, 10^12, 10^16.
# Porównać obliczony x' z rozwiązaniem dokładnym x = (1, ... , 1)^T.

# Za pomocą funkcji cond(A) można sprawdzić jaki jest wskaźnik uwarunkowania wygenerowanej macierzy.
# Za pomocą funkcji rank(A) można sprawdzić jaki jest rząd macierzy.
