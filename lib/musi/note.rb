# require 'pry'
module Musi
  class Note

    @@sharp_notes = {
      "C" => 0,
      "C#" => 1,
      "D" => 2,
      "D#" => 3,
      "E" => 4,
      "F" => 5,
      "F#" => 6,
      "G" => 7,
      "G#" => 8,
      "A" => 9,
      "A#" => 10,
      "B" => 11
    }
    @@flat_notes = {
      "C" => 0,
      "Db" => 1,
      "D" => 2,
      "Eb" => 3,
      "E" => 4,
      "F" => 5,
      "Gb" => 6,
      "G" => 7,
      "Ab" => 8,
      "A" => 9,
      "Bb" => 10,
      "B" => 11
    }

    #Helper Method for lowering intervals that go below C
    def self.above_zero(next_note)
      if next_note < 0
        next_note += 12
      else
        next_note
      end
    end

    #Helper method for raising(m2, M2, P4, P5)
    def self.raise_helper(note, modifier)
      if note.include?("b")
        next_note = (@@flat_notes[note] + modifier) % 12
        @@flat_notes.keys.each do |k|
          if @@flat_notes[k] == next_note
            return k
          end
        end
      else
        next_note = (@@sharp_notes[note] + modifier) % 12
        @@sharp_notes.keys.each do |k|
          if @@sharp_notes[k] == next_note
            return k
          end
        end
      end
    end


    #Helper method for lowering(m2, M2, P4, P5)
    def self.lower_helper(note, modifier)
      if note.include?("#")
        next_note = (@@sharp_notes[note] - modifier) % 12
        @@sharp_notes.keys.each do |k|
          if @@sharp_notes[k] == self.above_zero(next_note)
            return k
          end
        end
      else
        next_note = (@@flat_notes[note] - modifier)
        @@flat_notes.keys.each do |k|
          if @@flat_notes[k] == self.above_zero(next_note)
            return k
          end
        end
      end
    end

    #m2
    def self.sharp(note)
      self.raise_helper(note, 1)
    end

    def self.flat(note)
      self.lower_helper(note, 1)
    end

    #M2
    def self.raise_whole_step(note)
      self.raise_helper(note, 2)
    end

    def self.lower_whole_step(note)
      self.lower_helper(note, 2)
    end

    #P4
    def self.raiseP4(note)
      self.raise_helper(note, 5)
    end

    def self.lowerP4(note)
      self.lower_helper(note, 5)
    end

    #P5
    def self.raiseP5(note)
      self.raise_helper(note, 7)
    end

    def self.lowerP5(note)
      self.lower_helper(note, 7)
    end

  end

end
