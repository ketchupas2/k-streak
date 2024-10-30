
function hideKillStreakUI() {
    var killstreakElement = document.getElementById('killstreak');
    killstreakElement.style.display = 'none';
}

window.addEventListener('message', function(event) {
    console.log("Received message: ", event.data);
    if (event.data.type === 'updateKillStreakUI') {
        var streakCount = event.data.streak;
        var killstreakElement = document.getElementById('killstreak');
        document.getElementById('streak-count').textContent = streakCount;
        if (streakCount < 3) {
            hideKillStreakUI();
        } else {
            killstreakElement.style.display = 'block';
        }
        if (streakCount >= 5) {
            killstreakElement.classList.add('animated-background');
        } else {
            killstreakElement.classList.remove('animated-background');
        }
    }
});