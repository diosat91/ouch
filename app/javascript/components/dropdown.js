const activateDropdown = () => {
  document.querySelectorAll(".dropdown").forEach(dropdown => {
    dropdown.addEventListener("click", event => {
      dropdown.classList.toggle("is-active");
    });
  });
};

export { activateDropdown };
