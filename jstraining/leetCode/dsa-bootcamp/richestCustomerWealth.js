/**https://leetcode.com/problems/richest-customer-wealth/
 * @param {number[][]} accounts
 * @return {number}
 */
var maximumWealth = function (accounts) {
    let result = 0
    accounts.forEach((account) => {
        let count = 0;
        for (let i = 0; i < account.length; i++) {
            count += account[i];
        }
        result = Math.max(count, result); //25
        //25 0
        //6 25
        //15 25
    })

    return result;
};

console.log(maximumWealth([[1, 2, 22], [3, 2, 1], [4, 5, 6]]));