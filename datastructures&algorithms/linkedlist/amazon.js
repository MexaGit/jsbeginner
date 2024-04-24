'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}


/*
 * Complete the 'countGroups' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts STRING_ARRAY related as parameter.
 */

function countGroups(related) {
    // Write your code here
    // sounds as a recursion problem
    
}
function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const relatedCount = parseInt(readLine().trim(), 10);

    let related = [];

    for (let i = 0; i < relatedCount; i++) {
        const relatedItem = readLine();
        related.push(relatedItem);
    }

    const result = countGroups(related);

    ws.write(result + '\n');

    ws.end();
}
