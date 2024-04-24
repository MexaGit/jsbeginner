/**https://leetcode.com/problems/two-sum/
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function (nums, target) {
    for (let p1 = 0; p1 < nums.length; p1++) {
        //obtain what needs to be the second number
        const findNumbers = target - nums[p1]
        for (let p2 = p1 + 1; p2 < nums.length; p2++) {
            if (findNumbers === nums[p2]) {
                return [p1, p2]
            }
        }
    }
};

console.log(twoSum([3, 2, 4], 6));
/* var twoSum = function (nums, target) {
    for (let i = 0; i < nums.length; i++) {
        for (let j = i + 1; j < nums.length; j++) {
            let sum = nums[i] + nums[j];
            if (sum === target) {
                console.log("[" + i + "," + j + "]");
            };
        }
    }
};*/
