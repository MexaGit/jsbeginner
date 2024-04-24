/**
 * @param {number[]} nums
 * @return {number[]}
 */

const buildArray = (nums) => {
    let arr = [];
    nums.forEach((num) => {
        arr.push(nums[num])
    });
    return arr;
};

var buildArray1 = function (nums) {
    var ans = []
    // console.log(nums)
    for (var i = 0; i < nums.length; i++) {
        ans[i] = nums[nums[i]]
        // console.log(i, ans, ans[i] + " ... " + nums[i] + " ... " + nums[nums[i]])
    }
    return ans
};

console.log(buildArray([5, 0, 1, 2, 3, 4]))
console.log(buildArray1([5, 0, 1, 2, 3, 4]))
                        // index 5 = 4
                        // index 0 = 5
                        // index 1 = 0
                        // index 2 = 1
                        // index 3 = 2
                        // index 4 = 3    



