# frozen_string_literal: true

def spellcheck(input)
  input = input.split()

  input.map! do |word|
    case DICTIONARY_ARRAY.include? word
    when true
      "#{word}"
    when false
      "~#{word}~"
    end
  end

  input.join(' ')
end

private

DICTIONARY_ARRAY = %w[These words are spelt correctly].freeze
