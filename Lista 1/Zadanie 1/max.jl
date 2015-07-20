#Porownaj wyliczona iteracyjnie liczbe max dla Float16, 32, 64 z realmax(Float16) itd. oraz z <float.h>

function ReadMax16()
  aux16::Float16;
  aux16_2::Float16;
  max16::Float16;
  two16::Float16;
  two16 = 2.0;
  max16 = 1.0;
  aux16 = max16;

  while !isinf(max16)
    aux16 = max16;
    max16 = max16 * two16;
  end

  max16 = aux16;
  aux16_2 = aux16;

  while !isinf(max16)
    aux16 = max16;
    aux16_2 /= two16;
    max16 += aux16_2;
  end

  max16 = aux16;

  #return reinterpret(Float16, reinterpret(Uint16, Inf) - 1);
  return max16;
end

function ReadMax32()
  aux32::Float32;
  aux32_2::Float32;
  max32::Float32;
  two32::Float32;
  two32 = 2.0;
  max32 = 1.0;
  aux32 = max32;

  while !isinf(max32)
    aux32 = max32;
    max32 = max32 * two32;
  end

  max32 = aux32;
  aux32_2 = aux32

  while !isinf(max32)
    aux32 = max32;
    aux32_2 /= two32;
    max32 += aux32_2;
  end

  max32= aux32;

  #return reinterpret(Float32, reinterpret(Uint32, Inf) - 1);
  return max32;
end

function ReadMax64()
  aux64::Float64;
  aux64_2::Float64;
  max64::Float64;
  two64::Float64;
  two64 = 2.0;
  max64 = 1.0;
  aux64 = max64;

  while !isinf(max64)
    aux64 = max64;
    max64 = max64 * two64;
  end

  max64 = aux64;
  aux64_2 = aux64;

  while !isinf(max64)
    aux64 = max64;
    aux64_2 /= two64;
    max64 += aux64_2;
  end

  max64 = aux64;

  #return reinterpret(Float64, reinterpret(Uint64, Inf) - 1);
  return max64;
end

println("Max for Float16! Calculated: ", ReadMax16(), ", Julian: ", realmax(Float16));
println("Max for Float32! Calculated: ", ReadMax32(), ", Julian: ", realmax(Float32));
println("Max for Float64! Calculated: ", ReadMax64(), ", Julian: ", realmax(Float64));