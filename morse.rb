@morse_code = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z',
    '----' => '0',
    '.----' => '1',
    '..---' => '2',
    '...--' => '3',
    '....-' => '4',
    '.....' => '5',
    '-....' => '6',
    '--...' => '7',
    '---..' => '8',
    '----.' => '9'
}

def decode_char(str)
    @morse_code[str]
end

# testing the decode_char func
puts decode_char('-...')

def decode_word(morse_word)
    word_arr = morse_word.split
    word = ' '
    word_arr.each do |char| 
        word = word + decode_char(char)
    end
    word
end

def decode_bottle(morse_bottle)
    bottle_arr = morse_bottle.split(' ')
    bottle = ' '
    bottle_arr.each do |n|
        bottle = bottle + decode_word(n)
        # bottle += ' '
    end
    bottle
end

# testing the decode_word func
puts decode_word('-- -.--')
puts decode_bottle('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
