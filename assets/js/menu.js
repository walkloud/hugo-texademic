// assets/js/menu.js
(function() {
    const toggle = document.getElementById('nav-toggle');
    const header = document.getElementById('header');
    
    if (toggle && header) {
        toggle.addEventListener('click', () => {
            header.classList.toggle('is-open');
        });
    }
})();
