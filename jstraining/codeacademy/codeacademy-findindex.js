const animals = ['hippo', 'tiger', 'lion', 'seal', 'cheetah', 'monkey', 'salamander', 'elephant'];

const foundAnimal = animals.findIndex(animal => animal === 'elephant');
const startsWithS = animals.findIndex(animalS => animalS[0] === 's');
console.log(startsWithS);