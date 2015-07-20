using SortingAlgorithms
# Oblicz iloczyn skalarny dwóch wektorów:
# x = [2.718281828, −3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
# y = [1486.2497, 878366.9879, −22.37492, 4773714.647, 0.000185049]
# na cztery sposoby, uzywajac Float32 i Float64

x = [2.718281828,3.141592654,1.414213562,0.577215664,0.301029995];
x[2] = x[2] * (-1);
y = [1486.2497,878366.9879,22.37492,4773714.647,0.000185049];
y[3] = y[3] * (-1);

function forth32(Sum::Float32)
  for i in 1:length(x)
    Sum = Sum + (float32(x[i]) * float32(y[i]));
  end
  return Sum;
end

function forth64(Sum::Float64)
  for i in 1:length(x)
    Sum = Sum + (float64(x[i]) * float64(y[i]));
  end
  return Sum;
end

function backwards32(Sum::Float32)
  i = length(x);
  while i >= 1
    Sum = Sum + (float32(x[i]) * float32(y[i]));
    i -= 1;
  end
  return Sum;
end

function backwards64(Sum::Float64)
  i = length(x);
  while i >= 1
    Sum = Sum + (float64(x[i]) * float64(y[i]));
    i -= 1;
  end
  return Sum;
end



function maxtomin32(Sum::Float32)
  sort!(x, rev=true);
  sort!(y, rev=true);

  for i in 1:length(x)
    Sum = Sum + (float32(x[i]) * float32(y[i]));
  end
  return Sum;
end

function maxtomin64(Sum::Float64)
  sort!(x, rev=true);
  sort!(y, rev=true);

  for i in 1:length(x)
    Sum = Sum + (float32(x[i]) * float32(y[i]));
  end
  return Sum;
end

function mintomax32(Sum::Float32)
  sort!(x, alg = RadixSort);
  sort!(y, alg = RadixSort);

  for i in 1:length(x)
    Sum = Sum + (float32(x[i]) * float32(y[i]));
  end
  return Sum;
end

function mintomax64(Sum::Float64)
  sort!(x, alg = RadixSort);
  sort!(y, alg = RadixSort);

  for i in 1:length(x)
    Sum = Sum + (float32(x[i]) * float32(y[i]));
  end
  return Sum;
end

println("Forth32: ", forth32(float32(0.0)));
println("Forth64: ", forth64(float64(0.0)));
println("Backwards32 :", backwards32(float32(0.0)));
println("Backwards64 :", backwards64(float64(0.0)));
println("MaxToMin32 :", maxtomin32(float32(0.0)));
println("MaxToMin64 :", maxtomin64(float64(0.0)));
println("MinToMax32 :", mintomax32(float32(0.0)));
println("MinToMax64 :", mintomax64(float64(0.0)));