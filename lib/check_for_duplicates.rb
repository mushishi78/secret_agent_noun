file = File.expand_path('../../db/verbs_to_agent_nouns.yml', __FILE__)
pairs = File.read(file).split("\n").map { |l| l.split(': ') }
verbs = pairs.map(&:first)
agent_nouns = pairs.map(&:last)

find_duplicates = ->(ary) { ary.select { |e| ary.count(e) > 1 }.uniq }

duplicates = find_duplicates.call(verbs)
duplicates += find_duplicates.call(agent_nouns)

puts duplicates
