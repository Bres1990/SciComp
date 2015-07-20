#Porownaj wyliczone iteracyjnie epsilony maszynowe Float16, 32, 64 z wynikami f-kcji eps() oraz z <float.h>

function epsilon16()

  one16::Float16;
  two16::Float16;
  macheps16::Float16;

  one16 = 1.0;
  two16 = 2.0;
  macheps16 = 1.0;

  while one16 + (macheps16/two16) > one16
    macheps16 = macheps16/two16;
  end
  return macheps16;
end

function epsilon32()
  one32::Float32;
  two32::Float32;
  macheps32::Float32;

  one32 = 1.0;
  two32 = 2.0;
  macheps32 = 1.0;

  while one32 + (macheps32/two32) > one32
    macheps32 = macheps32/two32;
  end
  return macheps32;
end

function epsilon64()
  one64::Float64;
  two64::Float64;
  macheps64::Float64;

  one64 = 1.0;
  two64 = 2.0;
  macheps64 = 1.0;

  while one64 + (macheps64/two64) > one64
    macheps64 = macheps64/two64;
  end
  return macheps64;
end

println("Macheps for Float16! Calculated: ", epsilon16(), ", Julian: ", eps(Float16));
println("Macheps for Float32! Calculated: ", epsilon32(), ", Julian: ", eps(Float32), ", FLT_EPSILON: 1.19209290e-7");
println("Macheps for Float64! Calculated: ", epsilon64(), ", Julian: ", eps(Float64), ", DBL_EPSILON: 2.2204460492503131e-16");
