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

    @@letter_names = [
      "A", "B", "C", "D", "E", "F", "G", "A", "B", "C", "D", "E", "F", "G"
    ]

    def self.raise_helper(note, diatonic_step, semitones)
      letter = note[0]
      i = 0
      while i < 7
        if letter == @@letter_names[i]
          new_letter = @@letter_names[i + diatonic_step]
          break
        end
        i += 1
      end
      if !note.match /b/
        if @@sharp_notes[new_letter] - @@sharp_notes[note] == semitones || @@sharp_notes[new_letter] - @@sharp_notes[note] == (semitones - 12)
          return new_letter
        elsif @@sharp_notes[new_letter] - @@sharp_notes[note] == semitones - 1 || @@sharp_notes[new_letter] - @@sharp_notes[note] == (semitones - 13)
          new_letter += "#"
        else
          new_letter += "b"
        end
      else
        if @@flat_notes[new_letter] - @@flat_notes[note] == semitones || @@flat_notes[new_letter] - @@flat_notes[note] == (semitones - 12)
          return new_letter
        else
          new_letter += "b"
        end
      end
    end

    def self.lower_helper(note, diatonic_step, semitones)
      letter = note[0]
      i = 13
      while i >= 7
        if letter == @@letter_names[i]
          new_letter = @@letter_names[i - diatonic_step]
          break
        end
        i -= 1
      end
      if !note.match /b/
        if @@sharp_notes[note] - @@sharp_notes[new_letter] == semitones || @@sharp_notes[note] - @@sharp_notes[new_letter] == (semitones - 12)
          return new_letter
        elsif @@sharp_notes[note] - @@sharp_notes[new_letter] == semitones + 1 || @@sharp_notes[note] - @@sharp_notes[new_letter] == (semitones - 11)
          new_letter += "#"
        else
          new_letter += "b"
        end
      else
        if @@flat_notes[note] - @@flat_notes[new_letter] == semitones || @@flat_notes[note] - @@flat_notes[new_letter] == (semitones - 12)
          return new_letter
        else
          new_letter += "b"
        end
      end
    end

    #m2
    def self.sharp(note)
      self.raise_helper(note, 1, 1)
    end

    def self.raisem2(note)
      self.raise_helper(note, 1, 1)
    end

    def self.flat(note)
      self.lower_helper(note, 1, 1)
    end

    def self.lowerm2(note)
      self.lower_helper(note, 1, 1)
    end

    #M2
    def self.raise_whole_step(note)
      self.raise_helper(note, 1, 2)
    end

    def self.raiseM2(note)
      self.raise_helper(note, 1, 2)
    end

    def self.lower_whole_step(note)
      self.lower_helper(note, 1, 2)
    end

    def self.lowerM2(note)
      self.lower_helper(note, 1, 2)
    end

    #m3
    def self.raisem3(note)
      self.raise_helper(note, 2, 3)
    end

    def self.lowerm3(note)
      self.lower_helper(note, 2, 3)
    end

    #M3

    def self.raiseM3(note)
      self.raise_helper(note, 2, 4)
    end

    def self.lowerM3(note)
      self.lower_helper(note, 2, 4)
    end

    # P4
    def self.raiseP4(note)
      self.raise_helper(note, 3, 5)
    end

    def self.lowerP4(note)
      self.lower_helper(note, 3, 5)
    end

    # tritone
    def self.raiseA4(note)
      self.raise_helper(note, 3, 6)
    end

    def self.raised5(note)
      self.raise_helper(note, 4, 6)
    end

    def self.lowerA4(note)
      self.lower_helper(note, 3, 6)
    end

    def self.lowerd5(note)
      self.lower_helper(note, 4, 6)
    end

    # P5
    def self.raiseP5(note)
      self.raise_helper(note, 4, 7)
    end

    def self.lowerP5(note)
      self.lower_helper(note, 4, 7)
    end

    #m6
    def self.raisem6(note)
      self.raise_helper(note, 5, 8)
    end

    def self.lowerm6(note)
      self.lower_helper(note, 5, 8)
    end

    #M6
    def self.raiseM6(note)
      self.raise_helper(note, 5, 9)
    end

    def self.lowerM6(note)
      self.lower_helper(note, 5, 9)
    end

    #m7
    def self.raisem7(note)
      self.raise_helper(note, 6, 10)
    end

    def self.lowerm7(note)
      self.lower_helper(note, 6, 10)
    end

    #M7
    def self.raiseM7(note)
      self.raise_helper(note, 6, 11)
    end

    def self.lowerM7(note)
      self.lower_helper(note, 6, 11)
    end

  end

end

#Original Helper method for raising(m2, M2, P4, P5)
# def self.raise_helper(note, modifier)
#   if note.include?("b")
#     next_note = (@@flat_notes[note] + modifier) % 12
#     @@flat_notes.keys.each do |k|
#       if @@flat_notes[k] == next_note
#         return k
#       end
#     end
#   else
#     next_note = (@@sharp_notes[note] + modifier) % 12
#     @@sharp_notes.keys.each do |k|
#       if @@sharp_notes[k] == next_note
#         return k
#       end
#     end
#   end
# end

#Original Helper Method for lowering intervals that go below C
# def self.above_zero(next_note)
#   if next_note < 0
#     next_note += 12
#   else
#     next_note
#   end
# end

#Original Helper method for lowering(m2, M2, P4, P5)
# def self.lower_helper(note, modifier)
#   if note.include?("#")
#     next_note = (@@sharp_notes[note] - modifier) % 12
#     @@sharp_notes.keys.each do |k|
#       if @@sharp_notes[k] == self.above_zero(next_note)
#         return k
#       end
#     end
#   else
#     next_note = (@@flat_notes[note] - modifier)
#     @@flat_notes.keys.each do |k|
#       if @@flat_notes[k] == self.above_zero(next_note)
#         return k
#       end
#     end
#   end
# end
