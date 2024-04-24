/**https://leetcode.com/problems/running-sum-of-1d-array/
 * @param {number[]} nums
 * @return {number[]}
 */
var runningSum = function (nums) {
    /* for (let i = 0; i < nums.length - 1; i++) {
        nums[i] = nums[i] + nums[i + 1]; // return [ 23, 11, 14, 25, 12 ]
    } */
    for (let i = 1; i < nums.length; i++) {
        nums[i] = nums[i] + nums[i - 1];
    }
    return nums; //[ 13, 23, 24, 37, 49 ]
};

console.log(runningSum([13, 10, 1, 13, 12]));