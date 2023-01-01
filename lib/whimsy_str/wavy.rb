# frozen_string_literal: true

module WhimsyStr
  module Wavy
    # Transforms a string by inserting the specified number of spaces between
    # each character in the original.
    # @param num_spaces [Integer] - the number of spaces to insert between each
    # character of the original string.
    # @return [String] - a modified string in the 'vaporwave' aesthetic.
    def wavify(num_spaces = 1)
      num_spaces = Integer(num_spaces)
      return self unless num_spaces.positive?

      chars.join(' ' * num_spaces)
    end
  end
end
