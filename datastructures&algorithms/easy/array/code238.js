/**
 * @param {number[]} nums
 * @return {number[]}
 */
var productExceptSelf = function (nums) {
    //TIME: O(n)
    //MEMORY: O(1)
    // Initialize an array to store the final result
    let result = [];

    // Initialize variables for left and right products
    let left = 1;
    let right = 1;

    // Compute left products for each element in the array
    for (let i = 0; i < nums.length; i++) {
        result[i] = left;  // Store the left product at the current index
        // 1 = 1
        // 1 = 1
        // 2 = 2
        // 6 = 6
        // console.log(result[i] + " = ", left); //[1,1,2,6]
        left *= nums[i];   // Update left product by multiplying it with the current element
        // 1 *= 1
        // 2 *= 2
        // 6 *= 3
        // 24 *= 4
        // console.log(left + " *= ", nums[i]); //[1, 2, 3, 4]
    }

    // console.log(result)

    // Compute right products for each element in the array and multiply them with the left products
    for (let i = nums.length - 1; i >= 0; i--) {
        result[i] *= right; // Multiply the result by the right product
        // 6 *= 1
        // 8 *= 4
        // 12 *= 12
        // 24 *= 24
        // console.log(result[i] + " *= ", right); // [1,1,2,6]
        right *= nums[i];   // Update right product by multiplying it with the current element
        // 4 *= 4
        // 12 *= 3 
        // 24 *= 2
        // 24 *= 1
        // console.log(right + " *= ", nums[i]); //[1, 2, 3, 4]
    }

    // The final result array contains the product of all elements except the element at the current index
    return result;

};
var productExceptSelf1 = function (nums) {
    let result = [];
    let left = 1;
    let right = 1;
    for (let i = 0; i < nums.length; i++) {
        result[i] = left;  // Store the left product at the current index
        left *= nums[i];   // Update left product by multiplying it with the current element
    }
    for (let i = nums.length - 1; i >= 0; i--) {
        result[i] *= right; // Multiply the result by the right product
        right *= nums[i];   // Update right product by multiplying it with the current element
    }
    return result;
};
console.log(productExceptSelf1([1, 2, 3, 4]))