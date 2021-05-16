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
    case line_num
    when 1
      "#{verses[line_num-1]}"
    when 2
      "the malt that lay in #{segment(line_num-1)}"
    when 3
      "the rat that ate #{segment(line_num-1)}"
    when 4
      "the cat that killed #{segment(line_num-1)}"
    when 5
      "the dog that worried #{segment(line_num-1)}"
    when 6
      "the cow with the crumpled horn that tossed #{segment(line_num-1)}"
    when 7
      "the maiden all forlorn that milked #{segment(line_num-1)}"
    when 8
      "the man all tattered and torn that kissed #{segment(line_num-1)}"
    when 9
      "the priest all shaven and shorn that married #{segment(line_num-1)}"
    when 10
      "the rooster that crowed in the morn that woke #{segment(line_num-1)}"
    when 11
      "the farmer sowing his corn that kept #{segment(line_num-1)}"
    when 12
      "the horse and the hound and the horn that belonged to #{segment(line_num-1)}"
    end
  end

  def verses
    [
      "the house that Jack built.\n",
    ]
  end
end