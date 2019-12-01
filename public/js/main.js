(() => {
    let seeButtons = document.querySelectorAll('.coffee');

    function popSeeRecipe() {
        console.log('working!');

    }


    seeButtons.forEach(button => button.addeventListener("click", popSeeRecipe));
})();