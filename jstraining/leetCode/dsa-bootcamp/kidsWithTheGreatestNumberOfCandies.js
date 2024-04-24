/**https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
 * @param {number[]} candies
 * @param {number} extraCandies
 * @return {boolean[]}
 */
var kidsWithCandies = function (candies, extraCandies) {
    // forEach dont work without the console.log, will be undefined
    // error1 = candies.forEach(cand => console.log(cand * 3)); 
    const mulCandies = candies.map(cand => cand + extraCandies);
    const num = Math.min(...mulCandies);
    const isFalse = mulCandies.map(cand => cand != num ? true : false);
    return isFalse;
};

console.log(kidsWithCandies([2, 3, 5, 8, 3], 3));
