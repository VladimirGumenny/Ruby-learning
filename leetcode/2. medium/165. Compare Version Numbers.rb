require "test/unit/assertions"
include Test::Unit::Assertions

# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
  arr1 = version1.split('.').map(&:to_i)
  arr2 = version2.split('.').map(&:to_i)
  (0..[arr1.size, arr2.size].max).each_with_index do |idx|
    v1 = idx >= arr1.size ? 0 : arr1[idx]
    v2 = idx >= arr2.size ? 0 : arr2[idx]
    return -1 if v1 < v2
    return 1 if v1 > v2
  end
  0
end

version1 = "1.01"
version2 = "1.001"
expected = 0
assert_equal(expected, compare_version(version1, version2))

version1 = "1.0"
version2 = "1.0.0"
expected = 0
assert_equal(expected, compare_version(version1, version2))

version1 = "0.1"
version2 = "1.1"
expected = -1
assert_equal(expected, compare_version(version1, version2))

version1 = "1.0.1"
version2 = "1"
expected = 1
assert_equal(expected, compare_version(version1, version2))

version1 = "7.5.2.4"
version2 = "7.5.3"
expected = -1
assert_equal(expected, compare_version(version1, version2))
