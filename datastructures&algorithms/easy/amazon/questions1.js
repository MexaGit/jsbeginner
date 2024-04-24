function maxSetSize(riceBags) {
    riceBags.sort((a, b) => a - b);
    let maxSetSize = 0;

    for (let i = 0; i < riceBags.length; i++) {
        for (let j = i + 1; j < riceBags.length; j++) {
            const diff = riceBags[j] - riceBags[i];
            let count = 2;

            while (riceBags.includes(riceBags[j] + diff)) {
                count++;
                const temp = riceBags[j];
                j = riceBags.indexOf(temp + diff);
            }

            maxSetSize = Math.max(maxSetSize, count);
        }
    }

    return maxSetSize >= 2 ? maxSetSize : -1;
}

// Example usage:
// const riceBags1 = [3, 9, 4, 2, 16];
// const riceBags2 = [3, 4, 5, 2, 1];
const riceBags3 = [5, 625, 4, 2, 5, 25];

// console.log(maxSetSize(riceBags1)); // Output: 3
// console.log(maxSetSize(riceBags2)); // Output: -1
console.log(maxSetSize(riceBags3)); // Output: -1

