#Porownaj wyliczona iteracyjnie liczbe eta dla Float16, 32, 64 z nextfloat(float16(0.0)) itd.

function ReadEta16()

  aux16::Float16;
  eta16::Float16;
  two16::Float16;

  eta16 = 1.0;
  aux16 = eta16;
  two16 = 2.0;

  while eta16 > 0.0
    aux16 = eta16;
    eta16 = eta16/two16;
  end
  return aux16;
end

function ReadEta32()

  aux32::Float32;
  eta32::Float32;
  two32::Float32;

  eta32 = 1.0;
  aux32 = eta32;
  two32 = 2.0;

  while eta32 > 0.0
    aux32 = eta32;
    eta32 = eta32/two32;
  end
  return aux32;
end

function ReadEta64()

  aux64::Float64;
  eta64::Float64;
  two64::Float64;

  eta64 = 1.0;
  aux64 = eta64;
  two64 = 2.0;

  while eta64 > 0.0
    aux64 = eta64;
    eta64 = eta64/two64;
  end
  return aux64;
end

println("Eta for Float16! Calculated: ", ReadEta16(), ", Julian: ", nextfloat(float16(0.0)));
println("Eta for Float32! Calculated: ", ReadEta32(), ", Julian: ", nextfloat(float32(0.0)));
println("Eta for Float64! Calculated: ", ReadEta64(), ", Julian: ", nextfloat(float64(0.0)));
