/**https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
 * @param {number[]} nums
 * @return {number[]}
 */
var smallerNumbersThanCurrent = function (nums) {
    //witout the [...nums] = nums.sort the index of the elements will change of place [ 0, 1, 1, 3, 4 ]
    const sorted = [...nums].sort((a, b) => a - b); // Here 'sort' compare the number a - b if is bigger then next move to the next ubication [ 1, 2, 2, 3, 8 ]
    return nums.map(num => sorted.indexOf(num)); // now calls the sorted and then registers the moves that take to complete de sorted for each element[number] [ 4, 0, 1, 1, 3 ]
}

console.log(smallerNumbersThanCurrent(Array.from("81223")));