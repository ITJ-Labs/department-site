document.addEventListener("DOMContentLoaded", () => {
  const toggleButton = document.querySelector(".mobile-menu-toggle");
  const header = document.querySelector(".site-header");

  if (toggleButton && header) {
    toggleButton.addEventListener("click", () => {
      header.classList.toggle("nav-open");
    });
  }
});
