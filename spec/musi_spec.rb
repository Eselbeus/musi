require 'musi'


RSpec.describe Musi do
  it "has a version number" do
    expect(Musi::VERSION).not_to be nil
  end
end

#m2
RSpec.describe Musi::Note do
  it "raises a note by a half step" do
    expect(Musi::Note.sharp("C")). to eql("Db")
    expect(Musi::Note.sharp("C#")). to eql("D")
    expect(Musi::Note.sharp("B")). to eql("C")
    expect(Musi::Note.sharp("C#")). to eql("D")
    expect(Musi::Note.sharp("A#")). to eql("B")
  end
end

RSpec.describe Musi::Note do
  it "raises a note by a minor 2nd" do
    expect(Musi::Note.raisem2("C")). to eql("Db")
    expect(Musi::Note.raisem2("C#")). to eql("D")
    expect(Musi::Note.raisem2("B")). to eql("C")
    expect(Musi::Note.raisem2("C#")). to eql("D")
  end
end

RSpec.describe Musi::Note do
  it "lowers a note by half step" do
    expect(Musi::Note.flat("A")). to eql("G#")
    expect(Musi::Note.flat("C")). to eql("B")
    expect(Musi::Note.flat("Ab")). to eql("G")
  end
end

RSpec.describe Musi::Note do
  it "lowers a note by half step" do
    expect(Musi::Note.flat("A")). to eql("G#")
    expect(Musi::Note.flat("C")). to eql("B")
    expect(Musi::Note.flat("B")). to eql("A#")
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
  it "raises a note by a major 2nd" do
    expect(Musi::Note.raiseM2("C")). to eql("D")
    expect(Musi::Note.raiseM2("C#")). to eql("D#")
    expect(Musi::Note.raiseM2("Db")). to eql("Eb")
  end
end

RSpec.describe Musi::Note do
  it "lowers a note by whole step" do
    expect(Musi::Note.lower_whole_step("A")). to eql("G")
    expect(Musi::Note.lower_whole_step("C")). to eql("Bb")
    expect(Musi::Note.lower_whole_step("G")). to eql("F")
  end
end

RSpec.describe Musi::Note do
  it "lowers a note by major 2nd" do
    expect(Musi::Note.lower_whole_step("A")). to eql("G")
    expect(Musi::Note.lower_whole_step("C")). to eql("Bb")
    expect(Musi::Note.lower_whole_step("G")). to eql("F")
  end
end

#m3
RSpec.describe Musi::Note do
  it "raises a note by a minor 3rd" do
    expect(Musi::Note.raisem3("D")). to eql("F")
    expect(Musi::Note.raisem3("C#")). to eql("E")
    expect(Musi::Note.raisem3("B")). to eql("D")
    expect(Musi::Note.raisem3("A")). to eql("C")
    expect(Musi::Note.raisem3("Ab")). to eql("Cb")
    expect(Musi::Note.raisem3("F")). to eql("Ab")
    expect(Musi::Note.raisem3("Bb")). to eql("Db")
  end
end

RSpec.describe Musi::Note do
  it "lowers a note by a minor 3rd" do
    expect(Musi::Note.lowerm3("F")). to eql("D")
    expect(Musi::Note.lowerm3("E")). to eql("C#")
    expect(Musi::Note.lowerm3("D")). to eql("B")
    expect(Musi::Note.lowerm3("C")). to eql("A")
    expect(Musi::Note.lowerm3("Ab")). to eql("F")
    expect(Musi::Note.lowerm3("Db")). to eql("Bb")
  end
end


#M3
RSpec.describe Musi::Note do
  it "raises a note by a major 3rd" do
    expect(Musi::Note.raiseM3("D")). to eql("F#")
    expect(Musi::Note.raiseM3("C#")). to eql("E#")
    expect(Musi::Note.raiseM3("B")). to eql("D#")
    expect(Musi::Note.raiseM3("Ab")). to eql("C")
    expect(Musi::Note.raiseM3("Gb")). to eql("Bb")
    expect(Musi::Note.raiseM3("C#")). to eql("E#")
  end
end

RSpec.describe Musi::Note do
  it "lower a note by a major 3rd" do
    expect(Musi::Note.lowerM3("F#")). to eql("D")
    expect(Musi::Note.lowerM3("D#")). to eql("B")
    expect(Musi::Note.lowerM3("C")). to eql("Ab")
    expect(Musi::Note.lowerM3("Bb")). to eql("Gb")
  end
end
#M6
RSpec.describe Musi::Note do
  it "raises a note by a major 6th" do
    expect(Musi::Note.raiseM6("C")). to eql("A")
    expect(Musi::Note.raiseM6("D")). to eql("B")
    expect(Musi::Note.raiseM6("Bb")). to eql("G")
    expect(Musi::Note.raiseM6("Gb")). to eql("Eb")
    expect(Musi::Note.raiseM6("Ab")). to eql("F")
  end
end
#m6
RSpec.describe Musi::Note do
  it "raises a note by a minor 6th" do
    expect(Musi::Note.raisem6("C")). to eql("Ab")
    expect(Musi::Note.raisem6("D")). to eql("Bb")
    expect(Musi::Note.raisem6("Bb")). to eql("Gb")
    expect(Musi::Note.raisem6("G")). to eql("Eb")
    expect(Musi::Note.raisem6("Ab")). to eql("Fb")
  end
end
#m7
RSpec.describe Musi::Note do
  it "raises a note by a minor 7th" do
    expect(Musi::Note.raisem7("C")). to eql("Bb")
    expect(Musi::Note.raisem7("D")). to eql("C")
    expect(Musi::Note.raisem7("Bb")). to eql("Ab")
    expect(Musi::Note.raisem7("Gb")). to eql("Fb")
    expect(Musi::Note.raisem7("Ab")). to eql("Gb")
    expect(Musi::Note.raisem7("Ab")). to eql("Gb")
  end
end

#M7
RSpec.describe Musi::Note do
  it "raises a note by a major 7th" do
    expect(Musi::Note.raiseM7("C")). to eql("B")
    expect(Musi::Note.raiseM7("D")). to eql("C#")
    expect(Musi::Note.raiseM7("Bb")). to eql("A")
    expect(Musi::Note.raiseM7("Gb")). to eql("F")
    expect(Musi::Note.raiseM7("Ab")). to eql("G")
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
    expect(Musi::Note.raiseP4("F#")). to eql("B")
    expect(Musi::Note.raiseP4("B")). to eql("E")
  end
end

RSpec.describe Musi::Note do
  it "raises a note by a perfect fourth" do
    expect(Musi::Note.lowerP4("C")). to eql("G")
    expect(Musi::Note.lowerP4("G")). to eql("D")
    expect(Musi::Note.lowerP4("Ab")). to eql("Eb")
  end
end

#A4
RSpec.describe Musi::Note do
  it "raises a note by an augmented 4th" do
    expect(Musi::Note.raiseA4("C")). to eql("F#")
    expect(Musi::Note.raiseA4("G")). to eql("C#")
    expect(Musi::Note.raiseA4("A")). to eql("D#")
    expect(Musi::Note.raiseA4("F#")). to eql("B#")
  end
end

RSpec.describe Musi::Note do
  it "lowers a note by an augmented 4th" do
    expect(Musi::Note.lowerA4("C")). to eql("Gb")
    expect(Musi::Note.lowerA4("G")). to eql("Db")
    expect(Musi::Note.lowerA4("A")). to eql("Eb")
    expect(Musi::Note.lowerA4("A#")). to eql("E")
    expect(Musi::Note.lowerA4("F#")). to eql("C")
  end
end
#d5
RSpec.describe Musi::Note do
  it "raises a note by a diminished 5th" do
    expect(Musi::Note.raised5("C")). to eql("Gb")
    expect(Musi::Note.raised5("G")). to eql("Db")
    expect(Musi::Note.raised5("A")). to eql("Eb")
    expect(Musi::Note.raised5("A#")). to eql("E")
    expect(Musi::Note.raised5("F#")). to eql("C")
  end
end

RSpec.describe Musi::Note do
  it "lowers a note by a diminished 5th" do
    expect(Musi::Note.lowerd5("C")). to eql("F#")
    expect(Musi::Note.lowerd5("G")). to eql("C#")
    expect(Musi::Note.lowerd5("A")). to eql("D#")
    expect(Musi::Note.lowerd5("F#")). to eql("B#")
  end
end

#P5
RSpec.describe Musi::Note do
  it "raises a note by a perfect fifth" do
    expect(Musi::Note.raiseP5("C")). to eql("G")
    expect(Musi::Note.raiseP5("G")). to eql("D")
    expect(Musi::Note.raiseP5("Ab")). to eql("Eb")
  end
end

RSpec.describe Musi::Note do
  it "lowers a note a P5" do
    expect(Musi::Note.lowerP5("G")). to eql("C")
    expect(Musi::Note.lowerP5("F#")). to eql("B")
    expect(Musi::Note.lowerP5("Eb")). to eql("Ab")
    expect(Musi::Note.lowerP5("D#")). to eql("G#")
  end
end

#m6
RSpec.describe Musi::Note do
  it "lowers a note by a M6" do
    expect(Musi::Note.lowerM6("A")). to eql("C")
    expect(Musi::Note.lowerM6("B")). to eql("D")
    expect(Musi::Note.lowerM6("G")). to eql("Bb")
    expect(Musi::Note.lowerM6("Eb")). to eql("Gb")
    expect(Musi::Note.lowerM6("F")). to eql("Ab")
  end
end
#M6
RSpec.describe Musi::Note do
  it "lowers a note by a m6" do
    expect(Musi::Note.lowerm6("Ab")). to eql("C")
    expect(Musi::Note.lowerm6("Bb")). to eql("D")
    expect(Musi::Note.lowerm6("Gb")). to eql("Bb")
    expect(Musi::Note.lowerm6("Eb")). to eql("G")
  end
end

#m7
RSpec.describe Musi::Note do
  it "lowers a note by a m7" do
    expect(Musi::Note.lowerm7("Bb")). to eql("C")
    expect(Musi::Note.lowerm7("C")). to eql("D")
    expect(Musi::Note.lowerm7("Ab")). to eql("Bb")
    expect(Musi::Note.lowerm7("Gb")). to eql("Ab")
  end
end

#M7
RSpec.describe Musi::Note do
  it "lowers a note by a M7" do
    expect(Musi::Note.lowerM7("B")). to eql("C")
    expect(Musi::Note.lowerM7("C#")). to eql("D")
    expect(Musi::Note.lowerM7("A")). to eql("Bb")
    expect(Musi::Note.lowerM7("F")). to eql("Gb")
    expect(Musi::Note.lowerM7("G")). to eql("Ab")
  end
end
