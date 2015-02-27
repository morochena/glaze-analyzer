require 'spec_helper'


describe GlazeAnalyzer::Analyzer do
  analyzer = GlazeAnalyzer::Analyzer.new('leaderboard.json')

  describe '#initialize' do
    context 'it is provided a static file' do
      it 'successfully parses the JSON to an Array' do
        expect(analyzer.ranking_data).to be_an(Array)
      end
    end
  end

  describe '#num_of_spec' do
    it 'correctly count number of specified specs' do
      expect(analyzer.num_of_spec(70)).to eq(235)
    end
  end

  describe '#num_of_spec_within' do
    it 'correctly count number of specified specs' do
      expect(analyzer.num_of_spec_within(70, 500)).to eq(19)
    end
  end

  describe '#average_rating_of_spec' do
    context 'it is provided a limit' do
      it 'correctly calculates average rating of top 5 characters of a spec' do
        expect(analyzer.average_rating_of_spec(70, 5)).to eq (2867)
      end
    end
    context 'it is not provided a limit' do
      it 'caculates average rating of specified spec' do
        expect(analyzer.average_rating_of_spec(268)).to eq(2214)
      end
    end
  end


  it 'creates a glyph array based on spec' do
    glyph_list = analyzer.glyphs_of_spec(70, 5)
    puts glyph_list
    expect(glyph_list).to be_an(Array)
  end

  it 'creates a talent array based on spec' do
    talent_list = analyzer.talents_of_spec(70, 5)
    puts talent_list
    expect(talent_list).to be_an(Array)
  end

end