const minArray = [3, 4, 5, 5, 6, 2, 3, 9];
function min(minArray) {
    minArray = Math.min(...minArray);
    console.log(minArray);
}

min(minArray);