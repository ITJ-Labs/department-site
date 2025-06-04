console.log('🕹️ services-tilt.js loaded');

document.addEventListener('DOMContentLoaded', () => {
  // For each interactive-card on the page...
  document.querySelectorAll('.interactive-card').forEach(card => {
    const inner = card.querySelector('.intro-block');
    if (!inner) return;

    // How “tilted” the card can get (degrees)
    const maxTilt = 12; 

    card.addEventListener('mousemove', (e) => {
      const rect = card.getBoundingClientRect();
      // Coordinates of cursor relative to card’s top-left
      const x = e.clientX - rect.left;
      const y = e.clientY - rect.top;
      // Compute percentage from center:  -0.5 → +0.5
      const px = (x / rect.width)  - 0.5;
      const py = (y / rect.height) - 0.5;
      // Invert py so moving mouse down tilts card “toward” viewer
      const rotateX = (py * maxTilt * -1).toFixed(2);
      const rotateY = (px * maxTilt).toFixed(2);
      // Apply the transform
      inner.style.transform = `rotateX(${rotateX}deg) rotateY(${rotateY}deg)`;
    });

    card.addEventListener('mouseleave', () => {
      // Smoothly reset rotation on exit
      inner.style.transform = `rotateX(0deg) rotateY(0deg)`;
    });
  });
});
