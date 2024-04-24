/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function (prices) {
    let maxProfit = 0;  // Variable to store the maximum profit
    let minPrice = Number.MAX_VALUE;  // Variable to store the minimum price, initialized to the maximum possible value
    
    // Loop through the array of prices
    for (let i = 0; i < prices.length; i++) {
        // Check if the current price is less than the minimum price encountered so far
        if (prices[i] < minPrice) {
            minPrice = prices[i];  // Update the minimum price if the current price is smaller
        } else if (prices[i] - minPrice > maxProfit) {
            // If selling at the current price would yield a higher profit than the current maxProfit,
            // update maxProfit with the new profit value
            maxProfit = prices[i] - minPrice;
        }
    }
    
    // The loop completes, and the maximum profit has been found, return it
    return maxProfit;
};

console.log(maxProfit([7, 1, 5, 3, 6, 4]))
    // let r = []
    // for (let i = 0; i < prices.length; i++) {
    //     for (let j = i + 1; j < prices.length; j++) {
    //         if (prices[i] < prices[j]) {
    //             let profit = prices[j] - prices[i]
    //             if (!r[i] || profit > r[i]) {
    //                 r[i] = profit;
    //             }
    //         }
    //     }
    // }

    // for (let i = 0; i < r.length; i++) {
    //     if (!r[i]) {
    //         r[i] = 0;
    //     }
    // }