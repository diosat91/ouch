const activateAlert = () => {
  document.querySelectorAll(".alert").forEach(item => {
    item.addEventListener("click", event => {
      event.preventDefault();
      event.currentTarget.remove();
    });
  });
};

export { activateAlert };
