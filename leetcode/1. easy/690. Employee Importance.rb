require "test/unit/assertions"
include Test::Unit::Assertions

# =begin
# Definition for Employee.
class Employee
    attr_accessor :id, :importance, :subordinates
    def initialize( id, importance, subordinates)
        @id = id
        @importance = importance
        @subordinates = subordinates
    end
end
# =end

# @param {Employee} employees
# @param {Integer} id
# @return {Integer}
def get_importance(employees, id)
  employee = employees.detect { |e| e.id == id }
  return 0 unless employee
  return employee.importance if employee.subordinates.empty?

  subs_importance = employee.subordinates.reduce(0) { |sum, s| sum + get_importance(employee.subordinates, s.id) }
  employee.importance + subs_importance
end

# [[1,5,[2,3]],[2,3,[]],[3,3,[]]]
# 1

e1 = [Employee.new(1, 5, [
  Employee.new(2, 3, []),
  Employee.new(3, 3, [])])]

expected = 11

actual = get_importance(e1, 1)
assert_equal(expected, actual)