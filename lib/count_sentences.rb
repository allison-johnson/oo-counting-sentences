require 'pry'

class String

  def sentence?
    return self[self.length - 1] == "."
  end

  def question?
    return self[self.length - 1] == "?"
  end

  def exclamation?
    return self[self.length - 1] == "!"
  end

  def count_sentences
    if self.length == 0
      0
    else
    i = 0
      num_sentences = 0
      punctuation = [".", "!", "?"]
      while i < self.length - 1
        if punctuation.include?(self[i]) && self[i+1] == " "
          num_sentences += 1
        end #if
        i += 1
      end #while
      num_sentences + 1
    end #if
  end #method count_sentences

end #class