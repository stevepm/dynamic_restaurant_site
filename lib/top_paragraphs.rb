class TopParagraphs
  def initialize
    @file = File.open(File.expand_path('../../config/top_paragraphs.csv',__FILE__))
  end

  def read_paragraphs
    File.readlines(@file).join.split("\n\n")
  end
end