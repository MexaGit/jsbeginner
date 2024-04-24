const randomNumbers = [375, 200, 3.14, 7, 13, 852];
// Call .filter() on randomNumbers below
const smallNumbers = randomNumbers.filter(number => number < 250);

// Call .filter() on favoriteWords below
const favoriteWords = ['nostalgia', 'hyperbole', 'fervent', 'esoteric', 'serene'];
const longFavoriteWords = favoriteWords.filter(long => {
    return long.length > 7;
});


