# require 'pry'
module Musi
  class Note
    @@sharp_notes = {
      "C" => 1,
      "C#" => 2,
      "D" => 3,
      "D#" => 4,
      "E" => 5,
      "F" => 6,
      "F#" => 7,
      "G" => 8,
      "G#" => 9,
      "A" => 10,
      "A#" => 11,
      "B" => 12
    }
    @@flat_notes = {
      "C" => 1,
      "Db" => 2,
      "D" => 3,
      "Eb" => 4,
      "E" => 5,
      "F" => 6,
      "Gb" => 7,
      "G" => 8,
      "Ab" => 9,
      "A" => 10,
      "Bb" => 11,
      "B" => 12
    }


    #Helper Method for lowering intervals
    def self.above_zero(next_note)
      if next_note < 1
        next_note += 12
      else
        next_note
      end
    end

    def self.sharp(note)
      if note.include?("b")
        next_note = (@@flat_notes[note] + 1) % 12
        @@flat_notes.keys.each do |k|
          if @@flat_notes[k] == next_note
            return k
          end
        end
      else
        next_note = (@@sharp_notes[note] + 1) % 12
        @@sharp_notes.keys.each do |k|
          if @@sharp_notes[k] == next_note
            return k
          end
        end
      end
    end

    def self.flat(note)
      if note.include?("#")
        next_note = (@@sharp_notes[note] - 1) % 12
        @@sharp_notes.keys.each do |k|
          if @@sharp_notes[k] == self.above_zero(next_note)
            return k
          end
        end
      else
        next_note = (@@flat_notes[note] - 1)
        @@flat_notes.keys.each do |k|
          if @@flat_notes[k] == self.above_zero(next_note)
            return k
          end
        end
      end
    end

    def self.raiseP5(note)
      if note.include?("b")
        next_note = (@@flat_notes[note] + 7) % 12
        @@flat_notes.keys.each do |k|
          if @@flat_notes[k] == next_note
            return k
          end
        end
      else
        next_note = (@@sharp_notes[note] + 7) % 12
        @@sharp_notes.keys.each do |k|
          if @@sharp_notes[k] == next_note
            return k
          end
        end
      end
    end

    def self.lowerP5(note)
      if note.include?("b")
        next_note = (@@flat_notes[note] - 7) % 12
        @@flat_notes.keys.each do |k|
          if @@flat_notes[k] == self.above_zero(next_note)
            return k
          end
        end
      else
        next_note = (@@sharp_notes[note] - 7) % 12
        @@sharp_notes.keys.each do |k|
          if @@sharp_notes[k] == self.above_zero(next_note)
            return k
          end
        end
      end
    end

  end

end
