function animate(id, width, height, nb_frames_x, nb_frames_y, delay) {
    const element = document.getElementById(id);
    let posX = 0;
    let posY = 0;
    let lastTimestamp = 0;
    if (nb_frames_x === 0) {
        nb_frames_x = 1;
    }
    if (nb_frames_y === 0) {
        nb_frames_y = 1;
    }
    //   convert de milliseconds to seconds (just a standard for later on in another program)
    delay = delay * 1000;

    function update(timestamp) {
        if (!lastTimestamp || timestamp - lastTimestamp >= delay) {
            posX = (posX + 1) % nb_frames_x;  // Adjust the animation speed by changing the increment value
            posY = (posY + 1) % nb_frames_y;

            element.style.backgroundPosition = `-${posX * width}px -${posY * height}px`;
            console.log(`-${posX * width}px -${posY * height}px`);

            lastTimestamp = timestamp;
        }

        requestAnimationFrame(update);
    }

    update(); // Start the animation loop
}

// animate("loader_id", 49, 49, 18, 0, 0.1);
