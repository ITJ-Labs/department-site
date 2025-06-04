document.addEventListener("DOMContentLoaded", () => {
  const toggleButton = document.querySelector(".mobile-menu-toggle");
  const header = document.querySelector(".site-header");

  if (toggleButton && header) {
    toggleButton.addEventListener("click", () => {
      const isOpen = header.classList.toggle("nav-open");
      toggleButton.setAttribute("aria-expanded", isOpen);
    });
  }
});
