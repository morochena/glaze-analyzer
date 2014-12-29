require 'spec_helper'


describe GlazeAnalyzer::Analyzer do
  analyzer = GlazeAnalyzer::Analyzer.new('leaderboard.json')

  describe '#initialize' do
    context 'it is provided a static file' do
      it 'successfully parses the JSON to an Array' do
        expect(analyzer.ranking_data).to be_an(Array)
      end
    end
    context 'it is not provided a static file' do
      it 'successfully parses the JSON to an Array' do
        analyzer2 = GlazeAnalyzer::Analyzer.new
        expect(analyzer.ranking_data).to be_an(Array)
      end
    end
  end

  describe '#num_of_spec' do
    it 'correctly count number of specified specs' do
      expect(analyzer.num_of_spec(70)).to eq(537)
    end
  end

  describe '#average_rating_of_spec' do
    context 'it is provided a limit' do
      it 'correctly calculates average rating of top 5 characters of a spec' do
        expect(analyzer.average_rating_of_spec(70, 5)).to eq (2638)
      end
    end
    context 'it is not provided a limit' do
      it 'caculates average rating of specified spec' do
        expect(analyzer.average_rating_of_spec(268)).to eq(2025)
      end
    end
  end

  it 'gets top arena players by spec' do
    top_paladins = analyzer.top_characters(70, 25)
    expect(top_paladins.size).to eq(25)
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