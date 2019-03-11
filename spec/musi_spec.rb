require 'musi'


RSpec.describe Musi do
  it "has a version number" do
    expect(Musi::VERSION).not_to be nil
  end
end


RSpec.describe Musi::Note do
  it "raises a note by a half step" do
    expect(Musi::Note.sharp("C")). to eql("C#")
    expect(Musi::Note.sharp("C#")). to eql("D")
    expect(Musi::Note.sharp("B")). to eql("C")
    expect(Musi::Note.sharp("Db")). to eql("D")
  end
end


RSpec.describe Musi::Note do
  it "lowers a note by half step" do
    expect(Musi::Note.flat("A")). to eql("Ab")
    expect(Musi::Note.flat("C")). to eql("B")
  end
end

RSpec.describe Musi::Note do
  it "raises C a P5" do
    expect(Musi::Note.raiseP5("C")). to eql("G")
    expect(Musi::Note.raiseP5("G")). to eql("D")
    expect(Musi::Note.raiseP5("Ab")). to eql("Eb")
  end
end


RSpec.describe Musi::Note do
  it "raises B a P5" do
    expect(Musi::Note.lowerP5("G")). to eql("C")
    expect(Musi::Note.lowerP5("F#")). to eql("B")
    expect(Musi::Note.lowerP5("Eb")). to eql("Ab")
    expect(Musi::Note.lowerP5("D#")). to eql("G#")
  end
end
