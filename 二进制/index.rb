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
