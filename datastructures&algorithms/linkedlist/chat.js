function optimizeBoxWeights(arr) {
    const sorted = arr.sort((a, b) => a - b)
    let totalWeight = sorted.reduce((acc, val) => acc += val, 0)

    let aWeight = 0, bWeight = totalWeight
    let A = [], B = []

    while (sorted.length > 0) {
        const weight = sorted.pop()

        if (aWeight < bWeight) {
            A.push(weight)
        }

        aWeight += weight
        bWeight -= weight
    }
    return A.reverse()
}

// Example
const arr = [3, 7, 5, 6, 2];
console.log(optimizeBoxWeights(arr))
