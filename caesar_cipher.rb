def caesar_cipher word, key
  crypt_word = ''

  word.each_char do |char|
    crypt_char = char

    if char.match? /[a-z]/i
      key.times { crypt_char.next! }
    end

    crypt_word << crypt_char[-1]
  end

  puts crypt_word
end

caesar_cipher("What a string!", 5)
