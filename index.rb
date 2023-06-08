# frozen_string_literal: true

def caesar_cipher(string, shift_factor)
  string.split('').map { |char| ord_shift(char, shift_factor) }.join('')
end

def ord_shift(char, shift_factor)
  if char.ord.between?(86, 90) || char.ord.between?(118, 122)
    (char.ord - 26 + shift_factor).chr
  elsif (65..85).include?(char.ord) || (97..117).include?(char.ord)
    (char.ord + shift_factor).chr
  else
    char
  end
end

puts caesar_cipher('What a string!', 5)