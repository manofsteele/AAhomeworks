document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items

  // --- your code here!
  const addListItem = (e) => {
    const placeInput = document.getElementByClass("favorite-input");
    placeInput.value = "";
    const ul = document.getElementById("sf-places");
        if (input.className === "favorite-submit") {

    }
  }


  // adding new photos

  // --- your code here!



});
