# frozen_string_literal: true

def spellcheck(sentence)
  sentence = sentence.split
  highlight_errors(sentence)
  sentence.join(' ')
end

private

def highlight_errors(sentence)
  sentence.map! do |word|
    case DICTIONARY_ARRAY.include? word
    when true
      word
    when false
      "~#{word}~"
    end
  end
end

DICTIONARY_ARRAY = %w[These words are spelt correctly].freeze
