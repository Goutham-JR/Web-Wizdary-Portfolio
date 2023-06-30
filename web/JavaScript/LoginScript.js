const rainContainer = document.getElementById('rainContainer');

// Function to generate a random number between min and max
function getRandomNumber(min, max) {
    return Math.random() * (max - min) + min;
}

function createRaindrop() {
    const raindrop = document.createElement('div');
    raindrop.classList.add('raindrop');
    raindrop.style.left = getRandomNumber(0, 100) + "%";
    rainContainer.appendChild(raindrop);
    const delay = getRandomNumber(0, 3000);
    setTimeout(TimerAnimation, delay, raindrop);
}

function TimerAnimation(raindrop) {
    raindrop.style.animationDelay = getRandomNumber(0, 500) + "ms";
    raindrop.style.animationDuration = getRandomNumber(1000, 2000) + "ms";
    raindrop.style.animationTimingFunction = "linear";
    raindrop.style.animationPlayState = "running";
}

// Create multiple raindrops
for (var i = 0; i < 100; i++) {
    createRaindrop();
}
