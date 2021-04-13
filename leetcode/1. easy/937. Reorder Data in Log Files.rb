require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String[]} logs
# @return {String[]}
def reorder_log_files(logs)
  lines = logs.map { |line| id, _, log = line.partition(' ') }
  letters_logs = lines.select { |line| line[-1].split.all?(/[a-z]/) }.sort_by { |line| line[0] }.sort_by { |line| line[-1] }
  digit_logs = lines.select { |line| line[-1].split.all?(/[0-9]/) }
  letters_logs.map(&:join) + digit_logs.map(&:join)
end

logs = ["dig1 8 1 5 1","let1 art can","dig2 3 6","let2 own kit dig","let3 art zero"]
expected = ["let1 art can","let3 art zero","let2 own kit dig","dig1 8 1 5 1","dig2 3 6"]
actual = reorder_log_files(logs)
assert_equal(expected, actual)
