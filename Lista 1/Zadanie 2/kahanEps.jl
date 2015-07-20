# Sprawdz czy macheps dla Float16, 32 i 64 mozna otrzymac obliczajac 3(4/3-1)-1 w arytmetyce zmiennopozycyjnej

function kahan(x, y, z)
  return x * (y-z) - z;
end

println("Epsilon dla Float16 wg Kahana to: ", kahan(float16(3.0), float16(4/3), float16(1.0)));
println("Epsilon dla Float32 wg Kahana to: ", kahan(float32(3.0), float32(4/3), float32(1.0)));
println("Epsilon dla Float64 wg Kahana to: ", kahan(float64(3.0), float64(4/3), float64(1.0)));