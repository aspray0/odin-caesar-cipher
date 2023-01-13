def caesar_cipher(string, shift = 0)
  ord_array = string.split("").map { |char| char.ord }
  new_array = ord_array.map do |ord|
    if ord.between?(65, 122)
      if (ord.between?(86, 90)) || (ord.between?(118, 122))
        ord = ord - 26 + shift
      else
        ord += shift
      end
    else
      ord = ord
    end
  end
  char_array = new_array.map { |ord| ord.chr }
  char_array.join("")
end