# lib/caesar_cipher.rb
def caesar_cipher(string, factor)
  if (string.is_a? String) && (factor.is_a? Fixnum)
    caesar = string.split("")
    letter = []
    factor %= 26
  
    caesar.each do |c|
      change = c.ord + factor
  
      if ("a".."z").include?(c)
        change > "z".ord ? change -= 26 : change
        letter << change.chr
      elsif ("A".."Z").include?(c)
        change > "Z".ord ? change -= 26 : change
        letter << change.chr
      else
        letter << c
      end
    end
    letter.join()
  else
    0
  end
end