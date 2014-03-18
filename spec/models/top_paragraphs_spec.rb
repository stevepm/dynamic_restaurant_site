require 'top_paragraphs'
require 'rspec/core'


describe 'Top Paragraphs on home page' do
  it 'reads the information in the text file and separates paragraphs into elements of an array' do
    test = TopParagraphs.new
    expect(test.read_paragraphs).to eq(
                                      ["But be all this as it may; let the unseen, ambiguous synod in the air, or the vindictive princes and potentates of fire, have to do or not with earthly Ahab, yet, in this present matter of his leg, he took plain practical procedures; he called the carpenter.",
                                        "And when that functionary appeared before him, he bade him without delay set about making a new leg, and directed the mates to see him supplied with all the studs and joists of jaw-ivory (Sperm Whale) which had thus far been accumulated on the voyage, in order that a careful selection of the stoutest, clearest-grained stuff might be secured. This done, the carpenter received orders to have the leg completed that night; and to provide all the fittings for it, independent of those pertaining to the distrusted one in use. Moreover, the ship's forge was ordered to be hoisted out of its temporary idleness in the hold; and, to accelerate the affair, the blacksmith was commanded to proceed at once to the forging of whatever iron contrivances might be needed."])
  end

end