INPUT = File.read("input_01.txt")

module Solution
  def self.groups(input = INPUT)
    input.split("\n\n").map(&.split.sum(&.to_i))
  end
  def self.solve
    groups.max
  end

  def self.solve2(input = INPUT)
    groups.sort.reverse.first(3).sum
  end
end

puts "Solution: #{Solution.solve}"
puts "Solution2: #{Solution.solve2}"