/**
 * 十进制转二进制JS实现
 * 十进制整数转换为二进制整数采用 "除 2 取余，逆序排列" 法。
 * 具体做法是：
 * 用 2 整除十进制整数，可以得到一个商和余数；再用 2 去除商，又会得到一个商和余数，如此进行，直到商为小于 1 时为止，然后把先得到的余数作为二进制数的低位有效位，后得到的余数作为二进制数的高位有效位，依次排列起来。
 */
export const decimalToBinary = (decimal) => {
    // 余数
    let remainder = 0;
    // 商
    let quotient = decimal;
    // 结果数组
    let resultArray = [];
    // 循环，直到商小于 1
    while (quotient >= 1) {
        console.log('quotient = ', quotient);
        console.log('remainder = ', remainder);
        // 商 = 商 / 2
        quotient = Math.floor(quotient / 2);
        // 余数 = 商 % 2
        remainder = quotient % 2;
        resultArray.push(remainder);
    }
    return resultArray.join("");
}