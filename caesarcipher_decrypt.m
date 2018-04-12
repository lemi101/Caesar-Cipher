%by lemi101

addpath(pwd);
function decrypt()
  clc;
  ln = "=================================================";
  disp(ln);
  disp("Decrypt Caesar Cipher");
  disp(ln);
  p = input("Masukkan Ciphertext : ", 's');
  k = input("Masukkan Key        : ");
  
  if(k < 1 || k > 26)
    error("Key yang diperbolehkan berada pada rentang 1 - 25!!!");
  endif
  
  ln = "=================================================";
  printf("%s\n", ln);
  printf("Ciphertext = %s\nKey = %d\n", p, k);
  a1 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  a2 = 'abcdefghijklmnopqrstuvwxyz';
  x = 1;
  
  while (x <= length(p))
    if(double(p(x)) > 64 && double(p(x)) < 91)
      n = mod(mod((double(p(x)) - k + 26), 65), 26) + 1;
      c(x) = a1(n);
    elseif(double(p(x)) > 96 && double(p(x)) < 123)
      n = mod(mod((double(p(x)) - k + 26), 97), 26) + 1;
      c(x) = a2(n);
    else
      c(x) = double(p(x));
    endif
    x = x+1;
  endwhile
  c = char(c);
  printf ("Plaintext = %s\n", c);
  printf("%s\n\n", ln);
endfunction

decrypt();