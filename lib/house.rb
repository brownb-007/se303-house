class House

  def recite
    (1..verses.length).collect {|i| line(i)}.join("\n")
  end

  def recite_randomly
    (1..verses.length).collect {|i| random_line(i)}.join("\n")
  end

  def line(line_num)
    "#{intro_to_verse} #{verses.reverse.last(line_num).join(" ")}"
  end

  def random_line(line_num)
    "#{intro_to_verse} #{randomize_line_order(line_num).join(" ")}"
  end

  private

  def intro_to_verse
    "This is"
  end

  def randomize_line_order(line_num)
    (verses[1..line_num].shuffle << verses[0])
  end

  def verses
    [
      "the house that Jack built.\n",
      "the malt that lay in",
      "the rat that ate",
      "the cat that killed",
      "the dog that worried",
      "the cow with the crumpled horn that tossed",
      "the maiden all forlorn that milked",
      "the man all tattered and torn that kissed",
      "the priest all shaven and shorn that married",
      "the rooster that crowed in the morn that woke",
      "the farmer sowing his corn that kept",
      "the horse and the hound and the horn that belonged to"
    ]
  end
end

class PirateHouse < House
  private 

  def intro_to_verse
    "Thar be"
  end
end
