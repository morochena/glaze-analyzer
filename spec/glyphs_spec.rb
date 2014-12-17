require 'spec_helper'

describe GlazeAnalyzer::Glyphs do
  glyphs = GlazeAnalyzer::Glyphs.new(70)

  it 'should initialize as a hash' do
    expect(glyphs.glyph_data).to be_an(Hash)
  end

  it 'should be initialized with proper hash data' do
    expect(glyphs.glyph_data["Glyph of Templar's Verdict"]).to eq 0
  end

end