UMAX = 90 # Z
UMIN = 65 # before A
LMAX = 122 # z
LMIN = 97 # before a



def caesar_cipher(word, jump)
  new_word = ""
  word.each_byte do |c|
    new_c = c + jump
    if c.between?(UMIN, UMAX) and new_c > UMAX
      new_c = ((new_c - UMAX - 1) % 26) + UMIN
    elsif c.between?(LMIN, LMAX) and new_c > LMAX
      new_c = ((new_c - LMAX - 1) % 26) + LMIN
    elsif !c.between?(LMIN, LMAX) and !c.between?(UMIN, UMAX)
      new_c = c
    end
    new_word += new_c.chr
  end
  return new_word
end


puts caesar_cipher("What a string!", 5)
