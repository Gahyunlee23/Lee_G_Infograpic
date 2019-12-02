(() => {
    
    let seeButtons = document.querySelectorAll('.coffee');

    let waypoint = new Waypoint({
        element: document.querySelector('#coffee1'),
        handler: function(direction) {
          console.log('Scrolled to waypoint!');
          this.element.innerHTML += "<p>I got added with Waypoint!</p>";

          let svg = this.element.firstElementChild.contentDocument;
          // debugger;

        },

        offset: 300
      });

    function showRecipe(recipe, el) {
        seeRecipe.querySelector(".recipe-legend").textContent = `Recipe: ${recipe.legend}`;

        seeRecipe.classList.add('show-recipe');

        el.appendChild(seeRecipe);
    }

    function fetchData() {
        let url = `/info/${this.dataset.target}`,
            targetElement = this;

        fetch(url)
        .then(res => res.json())
        .then(data => {
            console.log(data)
            showPopover(data, targetElement);
        })
        .catch(function(error) {
            console.log(error);
        })
    }

    seeButtons.forEach(button => button.addEventListener("click", fetchData));
    
})();