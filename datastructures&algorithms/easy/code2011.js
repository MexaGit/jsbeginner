/**
 * @param {string[]} operations
 * @return {number}
 */
var finalValueAfterOperations = function(operations) {
    let num = 0
    for(let i = 0; i < operations.length; i++){
        let ops = operations[i]
        if (ops === "++X" || ops === "X++") {
            num++;
        } else {
            num--;
        }
    }
    return num

    // for (let i = 0; i < operations.length; i++) {
    //     if (operations[i][1] == "+")
    //         value++;
    //     else
    //         value--;
    // }
};

console.log(finalValueAfterOperations(["--X","X++","X++"]))