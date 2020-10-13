require "test/unit/assertions"
include Test::Unit::Assertions

BRACKETS = {
    ')' => '(',
    ']' => '[',
    '}' => '{'
}

OPENING = BRACKETS.values
CLOSING = BRACKETS.keys

# @param {String} s
# @return {Boolean}
#noinspection RubyDynamicConstAssignment
def is_valid(s)
  stack = []

  s.chars do |c|
    if OPENING.include? c
      stack.push c
    elsif CLOSING.include? c
      return false unless stack.pop == BRACKETS[c]
    end
  end

  stack.empty?
end

assert_equal(false , is_valid('['))
assert_equal(true, is_valid('()'))
assert_equal(true, is_valid('()[]{}'))
assert_equal(false , is_valid('(]'))
assert_equal(false , is_valid('([)]'))
assert_equal(true , is_valid('{[]}'))