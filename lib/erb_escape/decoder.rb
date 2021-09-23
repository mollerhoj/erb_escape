# frozen_string_literal: true

require "cgi"

module ErbEscape
  # Responsible for unescaping erb templates.
  class Decoder
    START_TAGS_REGEXP = START_TAGS.values.join("|")
    END_TAGS_REGEXP = END_TAGS.values.join("|")
    REGEXP = /(#{START_TAGS_REGEXP})(.*?)(#{END_TAGS_REGEXP})/m.freeze

    def initialize(str)
      @str = str
    end

    def decode
      @str.gsub(REGEXP) do
        match = Regexp.last_match
        decode_tag(code: match[2], indicator: match[1])
      end
    end

    private

    def decode_tag(code:, indicator:)
      start_tag = START_TAGS.invert[indicator.to_s]
      unescaped_code = CGI.unescapeHTML(code)
      "<%#{start_tag}#{unescaped_code}%>"
    end
  end
end
