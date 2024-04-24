/** https://leetcode.com/problems/concatenation-of-array/
 * @param { number[] } nums
 * @return { number[]}
*/
var getConcatenation = function (nums) {
    let numsConcat = nums;
    let clone = nums.concat(numsConcat);
    return clone;
};

console.log(getConcatenation([1, 2, 3]));