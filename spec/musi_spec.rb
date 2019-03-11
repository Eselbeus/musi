require 'musi'


RSpec.describe Musi do
  it "has a version number" do
    expect(Musi::VERSION).not_to be nil
  end
end

#sharp
RSpec.describe Musi::Note do
  it "raises a note by a half step" do
    expect(Musi::Note.sharp("C")). to eql("C#")
    expect(Musi::Note.sharp("C#")). to eql("D")
    expect(Musi::Note.sharp("B")). to eql("C")
    expect(Musi::Note.sharp("Db")). to eql("D")
  end
end

RSpec.describe Musi::Note do
  it "raises a note by a half step" do
    expect(Musi::Note.sharp("A#")). to eql("B")
  end
end

#flat
RSpec.describe Musi::Note do
  it "lowers a note by half step" do
    expect(Musi::Note.flat("A")). to eql("Ab")
    expect(Musi::Note.flat("C")). to eql("B")
  end
end

#M2
RSpec.describe Musi::Note do
  it "raises a note by a whole step" do
    expect(Musi::Note.raise_whole_step("C")). to eql("D")
    expect(Musi::Note.raise_whole_step("C#")). to eql("D#")
    expect(Musi::Note.raise_whole_step("Db")). to eql("Eb")
  end
end

RSpec.describe Musi::Note do
  it "lowers a note by whole step" do
    expect(Musi::Note.lower_whole_step("A")). to eql("G")
    expect(Musi::Note.lower_whole_step("C")). to eql("Bb")
  end
end

#P4
RSpec.describe Musi::Note do
  it "raises a note by a perfect fourth" do
    expect(Musi::Note.raiseP4("C")). to eql("F")
    expect(Musi::Note.raiseP4("G")). to eql("C")
    expect(Musi::Note.raiseP4("Ab")). to eql("Db")
  end
end

RSpec.describe Musi::Note do
  it "raises a note by a perfect fourth" do
    expect(Musi::Note.lowerP4("C")). to eql("G")
    expect(Musi::Note.lowerP4("G")). to eql("D")
    expect(Musi::Note.lowerP4("Ab")). to eql("Eb")
  end
end

#P5
RSpec.describe Musi::Note do
  it "lowers a note by a perfect fifth" do
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
