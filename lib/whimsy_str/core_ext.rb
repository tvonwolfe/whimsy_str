# frozen_string_literal: true

require_relative '../whimsy_str/wavy'
require_relative '../whimsy_str/sponge'

class String
  include WhimsyStr::Sponge
  include WhimsyStr::Wavy
end
