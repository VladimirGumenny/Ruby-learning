# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  left = 1
  right = n
  while left < right
    cur = left + (right - left) / 2
    if is_bad_version(cur)
      right = cur
    else
      left = cur + 1
    end
  end
  left
end

def is_bad_version(cur)
  cur >= 2
end

p first_bad_version(2)

# Example 1:
#
#   Input: n = 5, bad = 4
# Output: 4
# Explanation:
#   call isBadVersion(3) -> false
# call isBadVersion(5) -> true
# call isBadVersion(4) -> true
# Then 4 is the first bad version.
#   Example 2:
#
#   Input: n = 1, bad = 1
# Output: 1