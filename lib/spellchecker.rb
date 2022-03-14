# frozen_string_literal: true

def spellcheck(sentence)
  raise 'Incorrect input type: must be a String.' unless sentence.is_a? String

  sentence = sentence.split
  highlight_errors(sentence).join(' ')
end

private

def highlight_errors(sentence)
  sentence.map { |word| (DICTIONARY.include? word.downcase) ? word : "~#{word}~" }
end

DICTIONARY = %w[these words are spelt correctly].freeze
