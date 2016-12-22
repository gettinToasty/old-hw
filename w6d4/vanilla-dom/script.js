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
  let submit = document.querySelectorAll(".favorite-submit");
  submit[0].addEventListener("click", (e) => {
    e.preventDefault();
    let ul = document.getElementById("sf-places");
    let input = document.querySelectorAll(".favorite-input")[0];
    let li = document.createElement('li');
    li.textContent = input.value;
    ul.appendChild(li);
    input.value = "";
  });



  // adding new photos
  const toggleForm = (e) => {
    const form = document.querySelectorAll(".photo-form-container")[0];
    if (form.className === 'photo-form-container hidden') {
      form.className = 'photo-form-container';
    } else {
      form.className = 'photo-form-container hidden';
    }
  };

  let button = document.querySelectorAll(".photo-show-button")[0];
  button.addEventListener("click", toggleForm);

  let photoSubmit = document.querySelectorAll(".photo-url-submit")[0];
  photoSubmit.addEventListener("click", (e) => {
    e.preventDefault();
    let ul = document.querySelectorAll(".dog-photos")[0];
    let input = document.querySelectorAll(".photo-url-input")[0];
    let li = document.createElement('li');
    let img = document.createElement('img');
    img.src = input.value;
    li.appendChild(img);
    ul.appendChild(li);
    input.value = "";
  });

});
