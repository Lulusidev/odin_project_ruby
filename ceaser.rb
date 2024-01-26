def caesar_cipher(string,crip)
    new_string = Array.new

    if (crip == 0)
      puts "take a crip value valita"
    
    else
      string.each_byte do |c|
        if ( c >= 65 and c <= 90) or ( c >=97 and c <=122)  
          asci = c + crip
          if (90..97).include?(asci) or asci>122
            asci = asci - 26
          end
          new_string << asci
        else
          new_string << c
        end
      end
    end

    puts new_string.pack('c*')
end

caesar_cipher("What a string!", 5)
