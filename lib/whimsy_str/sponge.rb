# frozen_string_literal: true

module WhimsyStr
  module Sponge
    # Transform a string by randomly upcasing/downcasing each character in it.
    # @param chance_of_upcase [Float] - value between 0 and 1 indicating how
    # @param block [Proc] - Optional block to pass, which will execute for each
    # character. The block should return a boolean where `true` means the
    # yielded character will be upcased, and `false` means it will be downcased.
    #
    # @return [String] - a modified string in the style of the Spongbob 'mocking
    #         text' meme format.
    def spongify(chance_of_upcase = 0.5)
      chance_of_upcase = Float(chance_of_upcase)
      return self unless chance_of_upcase.positive?

      random = Random.new(chance_of_upcase)
      chars.map.with_index do |char, index|
        will_upcase = if block_given?
                        yield char, index
                      else
                        random.rand > chance_of_upcase
                      end
        will_upcase ? char.upcase : char.downcase
      end.join
    end
  end
end
