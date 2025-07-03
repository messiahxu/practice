/**
 * 二进制转十进制JS实现
 * 二进制字符串从右向左按位数计算次方，然后求和
 */
export const binaryToDecimal = (binaryString) => {
    return binaryString.split('').reverse().map((item, index) => {
        return parseInt(item) * (2 ** index);
    }).reduce((total, current) => {
        return total + current;
    });
}