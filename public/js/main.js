const myVM = (() => {
    console.log("hello");
    // get the user buttons and fire off an async DB query with Fetch
    let portfolioButtons = document.querySelectorAll('.u-link'),
        lightbox = document.querySelector('.lightbox');
        

        function portfolioInfo(portfolio) { // person is the databaase result
            let targetDiv = document.querySelector('.lb-content'),
                targetImg = lightbox.querySelector('img');
                
                let portfolioContent = `
                <h2>${portfolio.name}</h2>
                <p>${portfolio.dfull}<p>
                `

            console.log(portfolioContent);

            targetDiv.innerHTML = portfolioContent;
            targetImg.src = portfolio.imgsrc;

            lightbox.classList.add('show-lb');
            

        }
        
        function getPortfolioData(event) {
            event.preventDefault(); //kill default tag in behaviour (dont navigate anywhere)
           // debugger;
            let imgSrc = this.previousElementSibling.getAttribute('src');
            let url = `/${this.getAttribute('href')}`; // /1

            fetch(url) // go get data
                .then(res => res.json()) // parse the json into a plain object
                .then(data => {
                    console.log("my database result is:", data)

                    data[0].imgsrc = imgSrc;

                    portfolioInfo(data[0]);
                })
                .catch((err) => {
                    console.log(err)
                })}

        portfolioButtons.forEach(button => button.addEventListener('click', getPortfolioData));

        lightbox.querySelector('.close').addEventListener('click', function() {
            lightbox.classList.remove('show-lb');
            
        });

})();