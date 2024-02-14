{...}: rec {
  pow = n : i :
          if i == 1 then n
          else if i == 0 then 1
          else n * pow n (i - 1);

  polynomialEvalHex = exponent: scalar: scalar * pow 16 exponent;
}