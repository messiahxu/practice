# 十进制转二进制的方法
# 十进制数一直除以 2，直到结果为 0
# 中间每次得到的值除以 2 取余数，逆向后即为二进制

def int_to_bin(num, arr=[])
  number = num
  array = arr
  if arr.length == 0
    arr << number
  end
  if number / 2 != 0
    number = number / 2
    array << number
    return int_to_bin(number, array)
  end
  return array.map{|e| (e % 2).to_s}.reverse.join
end

def test_int_to_bin(num)
  our_binary_string = int_to_bin(num)
  ruby_binary_string = num.to_s(2)
  puts "our_binary_string = #{our_binary_string}"
  puts "ruby_binary_string = #{ruby_binary_string}"
end

# 二进制转十进制方法
# 不知道怎么解释，举例说明
# 二进制数 100 的第一位，
# 二进制数从右向左数位数，第一位是 0
# 以此类推，每一位的对应十进制数就是某一位的值 * 2的位数次幂，如第三位是1 即 1 * 2 ** 3，各位相加即可

def bin_to_int(bin_string)
  bin_string.split(//u).reverse.map.with_index{|e, index| e.to_i * (2 ** index) }.inject(:+)
end

def test_bin_to_int(bin_string)
  our_int = bin_to_int(bin_string)
  ruby_int = Integer('0b'+bin_string)
  puts "our_int = #{our_int}"
  puts "ruby_int = #{ruby_int}"
end
