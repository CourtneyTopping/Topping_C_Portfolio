$(document).foundation();

(() => {
    console.log('fired!');

    //Variables
    let vidPlayer = document.querySelector('video'),
        pausePlayBtn = document.querySelector('.pause'),
        rewindBtn = document.querySelector('.rewind'),
        replayBtn = document.querySelector('.replay'),
        muteBtn = document.querySelector('.mute');

    function pausePlay() {
        //if video is paused button is play button
        if (vidPlayer.paused === true){
            vidPlayer.play();
            document.querySelector('.pause').src = "images/pause.png";
        } else { //otherwise, button is pause button
            vidPlayer.pause();
            document.querySelector('.pause').src = "images/play.png";
        }
    }

    function replayVid() {
        if (vidPlayer.paused === true){
            vidPlayer.currentTime = 0;
            vidPlayer.play();
            document.querySelector('.pause').src = "images/pause.png";
        } else {
            vidPlayer.currentTime = 0;
            vidPlayer.play();
        }
    }

    function rewindVid() {
        vidPlayer.currentTime -= 5;
    }

    function muteVid() {
        if (vidPlayer.muted === true) {
            vidPlayer.muted = false;
            document.querySelector('.mute').src = "images/mute.png";
        } else {
            vidPlayer.muted = true;
            document.querySelector('.mute').src = "images/unmute.png";
        }
    }

    //debugger;

    //Event Handling
    pausePlayBtn.addEventListener('click', pausePlay); //pauses/plays the video when the button is clicked
    rewindBtn.addEventListener('click', rewindVid); //rewinds video to the start when button is clicked		
    muteBtn.addEventListener('click', muteVid); //mute and unmute video when button is clicked
    replayBtn.addEventListener('click', replayVid); //rewinds video to the start when button is clicked

})();