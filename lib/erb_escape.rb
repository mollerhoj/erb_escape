# frozen_string_literal: true

# escape and unescape erb template to standard html
module ErbEscape
  START_TAGS = {
    "=" => '<pre class="erb-expression">',
    "" => '<pre class="erb-scriptlet">',
    "#" => '<pre class="erb-commment">',
    "%" => '<pre class="erb-template">'
  }.freeze

  END_TAGS = {
    "=" => "</pre>",
    "" => "</pre>",
    "#" => "</pre>",
    "%" => "</pre>"
  }.freeze

  def self.escape(str)
    Encoder.new(str).encode
  end

  def self.unescape(str)
    Decoder.new(str).decode
  end
end

require_relative "erb_escape/version"
require_relative "erb_escape/encoder"
require_relative "erb_escape/decoder"
