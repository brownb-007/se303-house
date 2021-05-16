class House

  def initialize
  end

  def recite
    (1..12).collect {|i| line(i)}.join("\n")
  end

  def line(line_num)
    "This is #{segment(line_num)}"
  end

  def segment(line_num)
    if line_num == 0
      ""
    else
      "#{verses[line_num-1]}#{segment(line_num-1)}"
    end
  end

  def verses
    [
      "the house that Jack built.\n",
      "the malt that lay in ",
      "the rat that ate ",
      "the cat that killed ",
      "the dog that worried ",
      "the cow with the crumpled horn that tossed ",
      "the maiden all forlorn that milked ",
      "the man all tattered and torn that kissed ",
      "the priest all shaven and shorn that married ",
      "the rooster that crowed in the morn that woke ",
      "the farmer sowing his corn that kept ",
      "the horse and the hound and the horn that belonged to "
    ]
  end
end