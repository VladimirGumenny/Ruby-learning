require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if needle.empty?
  return -1 if needle.size > haystack.size

  for idx in 0..haystack.size - needle.size
    needle_idx = 0
    loop do
      break if haystack[idx + needle_idx] != needle[needle_idx]
      needle_idx += 1
      return idx if needle_idx == needle.size
    end
  end
  -1

  # idx = 0
  # needle_idx = 0
  # loop do
  #   loop do
  #     break unless haystack[idx + needle_idx] == needle[needle_idx]
  #     return idx if needle.size == needle_idx + 1
  #     needle_idx += 1
  #   end
  #   idx += 1
  #   needle_idx = 0
  #   return -1 if idx + needle_idx >= haystack.size
  # end
  # -1
end

assert_equal(-1, str_str(haystack = "mississippi", needle = "issipi"))
assert_equal(-1, str_str(haystack = "aaaaa", needle = "bba"))
assert_equal(2, str_str(haystack = "hello", needle = "ll"))
assert_equal(0, str_str(haystack = "", needle = ""))