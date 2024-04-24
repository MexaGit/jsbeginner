//0(n*n) = 0(n2) = bad
// var twoSum = function (nums, target) {
//     for (let n = 0; n < nums.length; n++) {
//         for (let m = n + 1; m < nums.length; m++) {
//             let total = nums[n] + nums[m]
//             if (total === target) {
//                 return [n, m]
//             }
//         }
//     }
// }
var twoSum = function(nums, target) {
    // This line initializes an empty Map called numMap. In this map, we will store numbers 
    // from the array (nums) as keys and their corresponding indices as values.
    const numMap = new Map()

    for (let i = 0; i < nums.length; i++) {
        if (numMap.has(target - nums[i])) {
            return [numMap.get(target - nums[i]), i];
        }
        numMap.set(nums[i], i);
    }
    // If no solution is found
    return nums;
}

console.log(twoSum([15, 2, 11, 7], 22))