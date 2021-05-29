class House

  def recite
    (1..verses.length).collect {|i| line(i)}.join("\n")
  end

  def recite_randomly
    (1..verses.length).collect {|i| random_line(i)}.join("\n")
  end

  def line(line_num)
    "#{intro_to_verse} #{verses.reverse.last(line_num).join(" ")}.\n"
  end

  def random_line(line_num)
    "#{intro_to_verse} #{randomize_line_order(line_num).join(" ")}.\n"
  end

  private

  def intro_to_verse
    "This is"
  end

  def randomize_line_order(line_num)
    (verses[1..line_num].shuffle << verses[0])
  end

  def verses
    12.times.map {|i| "the #{subjects[i]} that #{verbs[i]}"}
  end

  def subjects
    [
      "house",
      "malt",
      "rat",
      "cat",
      "dog",
      "cow with the crumpled horn",
      "maiden all forlorn",
      "man all tattered and torn",
      "priest all shaven and shorn",
      "rooster that crowed in the morn",
      "farmer sowing his corn",
      "horse and the hound and the horn",
    ]
  end

  def verbs
    [
      "Jack built",
      "lay in",
      "ate",
      "killed",
      "worried",
      "tossed",
      "milked",
      "kissed",
      "married",
      "woke",
      "kept",
      "belonged to",
    ]
  end

end

class PirateHouse < House
  private 

  def intro_to_verse
    "Thar be"
  end
end
