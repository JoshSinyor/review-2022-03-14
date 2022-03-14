# frozen_string_literal: true

def spellcheck(sentence)
  raise 'Incorrect input type: must be a String.' unless sentence.is_a? String

  sentence = sentence.split
  highlight_errors(sentence).join(' ')
end

private

def highlight_errors(sentence)
  sentence.map do |word|
    escaped_word = word.gsub(/[^a-zA-Z]/, '').downcase
    DICTIONARY.include?(escaped_word) ? word : "~#{word}~"
  end
end

DICTIONARY = %w[these words are spelt correctly].freeze
