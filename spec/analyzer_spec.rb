require 'spec_helper'


describe GlazeAnalyzer::Analyzer do
  analyzer = GlazeAnalyzer::Analyzer.new

  it 'retrieves 3v3 ranking data and parses as array' do
    expect(analyzer.ranking_data).to be_an(Array)
  end

  it 'gets top arena players by spec' do
    top_paladins = analyzer.get_top_characters(70, 3)
    expect(top_paladins).to be_an(Array)
  end

  it 'gets glyph data for a spec' do
    glyph_data, character_count = analyzer.get_glyph_data_for_spec(70, 3)
    expect(glyph_data).to be_an(Hash)
  end

  it 'increments glyph list based on glyph array' do
    glyph_array = [
      "Glyph of Templar's Verdict",
      "Glyph of Templar's Verdict",
      "Glyph of Templar's Verdict",
      "Glyph of Burden of Guilt",
      "Glyph of Burden of Guilt",
      "Glyph of Burden of Guilt",
      "Glyph of Hand of Freedom",
      "Glyph of Hand of Freedom",
      "Glyph of Hand of Freedom",
      ]
    glyph_hash = analyzer.create_glyph_hash(glyph_array, 70)
    expect(glyph_hash["Glyph of Hand of Freedom"]).to eq 3
  end

end