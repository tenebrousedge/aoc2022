# frozen_string_literal: true

INPUT = File.read('input_01.txt')

module Solution
  extend self
  def groups(input = INPUT)
    input.split("\n\n").map { |group| group.split.sum(&:to_i) }
  end

  def part1
    groups.max
  end

  def part2
    groups.sort.max(3).sum
  end
end

puts "Part 1: #{Solution.part1}"

puts "Part 2: #{Solution.part2}"
