const formCrearReserva = document.querySelector("#formNuevaReserva")

formCrearReserva.addEventListener('submit', async (e) => {
    e.preventDefault();

    const nombre = document.querySelector('#nombre').value;
    const apellido = document.querySelector('#apellido').value;
    const fecha_ida = document.querySelector('#fecha_ida').value;
    const fecha_vuelta = document.querySelector('#fecha_vuelta').value;
    const email = document.querySelector('#email').value;

    const reserva = {
        nombre,
        apellido,
        fecha_ida,
        fecha_vuelta,
        email
    }


    const response = await fetch('http://localhost:4000/api', {
        method: 'POST',
        body: JSON.stringify(reserva),
        headers: {
            'Content-Type': 'application/json' // Cuando se envían datos JSON al servidor
        }
    })

    if (response.status !== 201) {
        return Swal.fire({
            title: 'Error',
            text: 'Hubo un error al crear la reserva',
            icon: 'error',
            confirmButtonText: 'Aceptar'
        });
    }

    const data = await response.json();

    Swal.fire({
        title: 'Reserva creada',
        text: data.message,
        icon: 'success',
        confirmButtonText: 'Aceptar'
    });

    setTimeout(() => {
        window.location.href = "/"
    }, 2000);



});

