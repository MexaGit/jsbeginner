// https://leetcode.com/discuss/interview-question/2353856/Amazon-or-India-or-SDE-2-or-OA-or-JULY-or-2022
// https://leetcode.com/playground/AVDUsqDL
function maxSetSize(riceBags) {
    riceBags.sort((a, b) => a - b);
    let maxSetSize = 0;

    for (let i = 0; i < riceBags.length - 1; i++) {
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
const ricebags = [5,625,4,2,5,25];
console.log(maxSetSize(ricebags)); // Output: 3

