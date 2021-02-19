# 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 的那 两个 整数，并返回它们的数组下标。
# 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
# 你可以按任意顺序返回答案。
# 示例 1：
# 输入：nums = [2,7,11,15], target = 9
# 输出：[0,1]
# 解释：因为 nums[0] + nums[1] == 9 ，返回 [0, 1] 。
# 示例 2：
# 输入：nums = [3,2,4], target = 6
# 输出：[1,2]
# 示例 3：
# 输入：nums = [3,3], target = 6
# 输出：[0,1]
# 提示：
# 2 <= nums.length <= 103
# -109 <= nums[i] <= 109
# -109 <= target <= 109
# 只会存在一个有效答案
# 链接：https://leetcode-cn.com/problems/two-sum
# 常规遍历
def regular_loop_two_sum(nums, target)
  nums.each_with_index do |n,index|
    nums.each_with_index do |_n, _index|
      if index == _index
        next
      end
      if n + _n == target
        return [index, _index]
      end
    end
  end
end

def two_sum(nums, target)
  map = {}
  nums.each_with_index do |num, index|
    差值索引 = map[num]
    # puts "index = #{index}"
    # puts "差值索引 = #{差值索引}"
    if 差值索引
      # puts "差值索引生效"
      return [差值索引, index]
    end
    # 用 target 与 num 之间的差值作为 key，记录对应的索引
    map[target - num] = index
    # puts "now map = #{map}"
  end
end
nums = (1..10000).to_a.reverse!
# shuffle_nums = (1..10000).to_a.shuffle!
# regular_nums = [2,7,11,15]
a = Time.now
puts regular_loop_two_sum(nums, 9).inspect
b = Time.now
puts two_sum(nums, 9).inspect
c = Time.now
puts "regular_loop_two_sum duration = #{(b - a)*1000} ms"
puts "two_sum duration = #{(c - b)*1000} ms"
