# 给你两个 非空 的链表，表示两个非负的整数。它们每位数字都是按照 逆序 的方式存储的，并且每个节点只能存储 一位 数字。
# 请你将两个数相加，并以相同形式返回一个表示和的链表。
# 你可以假设除了数字 0 之外，这两个数都不会以 0 开头。
# 来源：力扣（LeetCode）
# 链接：https://leetcode-cn.com/problems/add-two-numbers
# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
# 注意这里的参数是 ListNode 不是 Array
def add_two_numbers(l1, l2)
  # 莫名其妙不能用数组，不写了
  (l1.val.reverse!.join.to_i + l2.val.reverse!.join.to_i).to_s.reverse!.split(//u).map(&:to_i)
end
puts add_two_numbers([9,9,9,9,9,9,9], [9,9,9,9]).inspect
