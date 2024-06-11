document.addEventListener('DOMContentLoaded', function() {
    const menuToggle = document.getElementById('menu-toggle');
    const sidebar = document.getElementById('sidebar');
    const mainContent = document.getElementById('main-content');

    menuToggle.addEventListener('click', function() {
        sidebar.classList.toggle('expanded');
        if (sidebar.classList.contains('expanded')) {
            mainContent.style.marginLeft = '250px';
        } else {
            mainContent.style.marginLeft = '0';
        }
    });
});


    window.changeContent = function(section) {
        
        const titleMap = {
            'evaluation': 'Saisie Notes',
            'absences': 'Absences',
            'parametres': 'Paramètres'
        };
        const contentMap = {
            'evaluation': 'Manage evaluations here.',
            'absences': 'Manage absences here.',
            'parametres': 'Adjust settings here.'
        };

        
        mainContent.innerHTML = `<h2>${titleMap[section]}</h2><p>${contentMap[section]}</p>`;
    };

