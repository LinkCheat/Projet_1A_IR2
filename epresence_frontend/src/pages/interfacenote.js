document.addEventListener('DOMContentLoaded', function() {
  
    const students = [
        { id: 22304059, nom: 'ABI-ISSI', prenom: 'ELIE', groupeTD: 'TD1', groupeTP: 'TP1' },
        { id: 22104670, nom: 'ANTROPIUS', prenom: 'SIMON', groupeTD: 'TD1', groupeTP: 'TP1' },
        { id: 22304715, nom: 'AUGEY', prenom: 'LOUIS', groupeTD: 'TD1', groupeTP: 'TP1' },
        
        { id: 22303904, nom: 'VANGU', prenom: 'ERWAN', groupeTD: 'TD1', groupeTP: 'TP3' },
        { id: 22303848, nom: 'WURTZ', prenom: 'PERRINE', groupeTD: 'TD1', groupeTP: 'TP3' }
    ];

    // Manage sidebar toggle
    const menuToggle = document.getElementById('menu-toggle');
    const sidebar = document.getElementById('sidebar');
    const mainContent = document.getElementById('main-content');

    menuToggle.addEventListener('click', function() {
        sidebar.classList.toggle('expanded');
        mainContent.style.paddingLeft = sidebar.classList.contains('expanded') ? '250px' : '0';
    });

    // Populate the student table
    const tableBody = document.getElementById('student-table').getElementsByTagName('tbody')[0];
    students.forEach(student => {
        let row = tableBody.insertRow();
        row.insertCell(0).textContent = student.id;
        row.insertCell(1).textContent = student.nom;
        row.insertCell(2).textContent = student.prenom;
        row.insertCell(3).textContent = student.groupeTD;
        row.insertCell(4).textContent = student.groupeTP;
        let noteCell = row.insertCell(5);
        let input = document.createElement('input');
        input.type = 'number';
        input.min = 0;
        input.max = 20;
        input.placeholder = 'Enter Note';
        noteCell.appendChild(input);
    });
});
