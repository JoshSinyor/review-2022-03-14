# frozen_string_literal: true

def spellcheck(input)
  if DICTIONARY_ARRAY.include? input
    input
  else
    DICTIONARY_ARRAY[1]
  end
end

DICTIONARY_ARRAY = %w[These words are spelt correctly].freeze
