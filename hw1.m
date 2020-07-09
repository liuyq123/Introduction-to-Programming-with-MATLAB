function coded = caesar(s, shift)
chars = double(s);
chars = chars + shift - 32 + 95;
warped = 32 + mod(chars, 95);
coded = char(warped);
end