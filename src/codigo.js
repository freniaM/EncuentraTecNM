
const botonMostrar = document.getElementById("mostrar")
const imagen = document.getElementById("wea")
const mostrar = document.getElementById("wea2")
const botonAtras = document.getElementById("atras")

const search = document.getElementById("wea3")
const botones = document.getElementById("wea4")






botonMostrar.addEventListener("click", function(){
    imagen.style.display = 'none';
    mostrar.style.display = 'none';
    search.style.display = 'flex';
    botones.style.display = 'flex';
})

botonAtras.addEventListener("click", function(){
    imagen.style.display = 'flex';
    mostrar.style.display = 'flex';
    search.style.display = 'none';
    botones.style.display = 'none';
})
