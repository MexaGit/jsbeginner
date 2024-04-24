/**https://leetcode.com/problems/shuffle-the-array/
 * @param {number[]} nums
 * @param {number} n
 * @return {number[]}
 */
var shuffle = function (nums, n) {
    let firstHalf = nums.splice(0, n);
    let secndHalf = nums.splice(0, n);

    let cloneArray = [];
    for (let i = 0; i < firstHalf.length, i < secndHalf.length; i++) {
        cloneArray += firstHalf[i].toString() + secndHalf[i].toString();
    }
    console.log(cloneArray);
    let myFunc = num => Number(num);
    let intArr = Array.from(String(cloneArray), myFunc);

    return intArr;

};

console.log(shuffle([7, 5, 9, 7, 5, 8, 10, 4, 3, 3, 2, 5, 9, 10], 7));