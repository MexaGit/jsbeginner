function findMaximalSubset(arr) {
    // Sort the array in descending order
    for (let i = 0; i < arr.length - 1; i++) {
        for (let j = 0; j < arr.length - i - 1; j++) {
            if (arr[j] < arr[j + 1]) {
                // Swap elements if they are in the wrong order
                const temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    let subsetA = [];
    let subsetB = [];

    for (let i = 0; i < arr.length; i++) {
        // If adding the current element to subsetA doesn't decrease its sum, add it to subsetA
        let sumA = 0;
        let sumB = 0;

        for (let j = 0; j < subsetA.length; j++) {
            sumA += subsetA[j];
        }

        for (let k = 0; k < subsetB.length; k++) {
            sumB += subsetB[k];
        }

        if (sumA <= sumB) {
            subsetA.push(arr[i]);
        } else {
            subsetB.push(arr[i]);
        }
    }

    return {
        subsetA: subsetA,
        subsetB: subsetB,
        union: [...subsetA, ...subsetB],
        intersection: [],
    };
}

// Example usage:
const n = 5;
const arr = [3, 7, 5, 6, 2];
const result = findMaximalSubset(arr);
console.log(result);




console.log(minimalHeaviestSetA([7, 2, 9, 5, 7]))

// Example 
// n = 5
// arr [ 3,7,5,6,2]

// The 2 subnets in arr that satisfy the conditions for A are [5,7] and [6,7]
// A is minimal (size 2)
// Sum(A) = ( 5 + 7) = 12 > Sum (B) = (2+3+6) = 11
// Sum(A) = ( 6 + 7) = 13 > Sum (B) = (2+3+5) = 10

// The intersection of A and B is null and their union is equal to arr
// The subnet A where the sum of its weigth is maximal is [6,7]