require 'spec_helper'

describe GlazeAnalyzer::CharacterData do
  character_data = GlazeAnalyzer::CharacterData.new(
    'bleeding-hollow',
    'aeze',
    70)

  it 'successfully retrives character information' do
    expect(character_data.data).to be_an(Hash)
  end
end
