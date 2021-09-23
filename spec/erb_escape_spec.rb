# frozen_string_literal: true

RSpec.describe ErbEscape do
  it "has a version number" do
    expect(ErbEscape::VERSION).not_to be nil
  end

  it "can escape erb expression tags" do
    expect(described_class.escape("<%= 'x' %>")).to eq("<pre class=\"erb-expression\"> &#39;x&#39; </pre>")
  end

  it "can unescape erb expression tags" do
    expect(described_class.unescape("<pre class=\"erb-expression\"> &#39;x&#39; </pre>")).to eq("<%= 'x' %>")
  end
end
