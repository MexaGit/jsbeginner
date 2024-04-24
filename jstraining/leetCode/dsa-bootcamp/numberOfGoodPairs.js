/**https://leetcode.com/problems/number-of-good-pairs/submissions/
 * @param {number[]} nums
 * @return {number}
 */
var numIdenticalPairs = function (nums) {
    let pairs = [];
    let totalPairs = 0;
    for (let i = 0; i < nums.length; i++) {
        for (let j = 1; j < nums.length; j++) {
            //console.log(nums[i], nums[j]);
            if (nums[i] === nums[j] && i < j) { // si i < j e.g = index[0] < index[1] so you don't compare again
                pairs.push(i, j);
            }
        }
    }
    totalPairs = pairs.length / 2;
    console.log(pairs);
    console.log(totalPairs);
};

numIdenticalPairs([1, 2, 3, 1, 1, 3]);
numIdenticalPairs([1, 1, 1, 1]);