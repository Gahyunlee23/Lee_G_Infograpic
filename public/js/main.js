(() => {
    let seeButtons = document.querySelectorAll('.seeRecipe');

    function popSeeRecipe() {
        console.log('working!');
    }


    seeButtons(button => button.addeventListener("click", popSeeRecipe));
})();