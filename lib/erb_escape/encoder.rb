# frozen_string_literal: true

require "cgi"

module ErbEscape
  # Responsible for escaping erb templates.
  class Encoder
    # The same Regexp used by Erubi, the default erb engine in Rails
    REGEXP = /<%(={1,2}|-|\#|%)?(.*?)([-=])?%>([ \t]*\r?\n)?/m.freeze

    def initialize(str)
      @str = str
    end

    def encode
      @str.gsub(REGEXP) do
        encode_tag(*Regexp.last_match.to_a)
      end
    end

    private

    def encode_tag(_match, indicator, code, _tailch, rspace)
      start_tag = START_TAGS[indicator.to_s]
      end_tag = END_TAGS[indicator.to_s]
      escaped_code = CGI.escapeHTML(code)
      "#{start_tag}#{escaped_code}#{end_tag}#{rspace}"
    end
  end
end
