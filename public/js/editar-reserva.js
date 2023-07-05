const formReserva = document.querySelector('#formNuevaReserva');
const reservaId = formReserva.dataset.id;

const nombre = document.querySelector('#nombre')
const apellido = document.querySelector('#apellido')
const fecha_ida = document.querySelector('#fechaida')
const fecha_vuelta = document.querySelector('#fechavuelta')
const email = document.querySelector('#email')


document.addEventListener('DOMContentLoaded', async () => {
    // Traemos la reserva que se va a editar
    const response = await fetch(`/api/${reservaId}`);
    const data = await response.json();

    // Mostrar en el formulario los datos de la reserva que se quiere actualizar
    nombre.value = data.nombre;
    apellido.value = data.apellido;
    fecha_ida.value = dayjs(data.fecha_ida).format('YYYY-MM-DD HH:mm');
    fecha_vuelta.value = dayjs(data.fecha_vuelta).format('YYYY-MM-DD HH:mm');
    email.value = data.email;
});


formReserva.addEventListener('submit', async (e) => {
    e.preventDefault();

    reservaActualizada = {
        nombre: nombre.value,
        apellido: apellido.value,
        fecha_ida: fecha_ida.value,
        fecha_vuelta: fecha_vuelta.value,
        email: email.value,
    }


    // Se envían los nuevos datos al servidor express
    const response = await fetch(`/api/${reservaId}`, {
        method: 'PUT',
        body: JSON.stringify(reservaActualizada),
        headers: {
            'Content-Type': 'application/json'
        }
    })

    const respToJson = await response.json();

    if (response.status !== 200) {

        return Swal.fire({
            title: 'Error',
            text: respToJson.message,
            icon: 'error',
            confirmButtonText: 'Aceptar'
        });
    }


    // Mostrar mensajes al usuario
    Swal.fire({
        title: 'Reserva actualizada',
        text: respToJson.message,
        icon: 'success',
        confirmButtonText: 'Aceptar'
    })


    setTimeout(() => {
        // Redireccionar al usuario
        window.location.href = "/"
    }, 2000);




})