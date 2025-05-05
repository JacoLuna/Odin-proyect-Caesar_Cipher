require 'pry-byebug'

def caesar_cipher(string, shift, rightShift = true)
    abecedary = ('a'..'z').to_a
    encodeString = ""
    
    string.chars.each do |letter|
      if letter.match(/[a-zA-Z]/)
        letterIndex = abecedary.find_index(letter.downcase)
        
        if letterIndex + shift > abecedary.length
          letterIndex = letterIndex + shift - abecedary.length
        else
          letterIndex = letterIndex + shift
        end
        
        encodeString += letter == letter.downcase ? abecedary[letterIndex].downcase : abecedary[letterIndex].upcase
      else
        encodeString += letter
      end
    end

    encodeString
end

# puts caesar_cipher("a", 5)
puts caesar_cipher("What a string!", 5)


