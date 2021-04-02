(function() {

    "use strict";



    document.addEventListener('DOMContentLoaded', function() {
        if (document.getElementById('calcular')) {
            var regalo = document.getElementById('regalo');
            //Campos usuarios
            var nombre = document.getElementById('nombre');
            var apellido = document.getElementById('apellido');
            var email = document.getElementById('email');

            //Campos pases
            var pase_dia = document.getElementById('pase_dia');
            var pase_dosdias = document.getElementById('pase_dosdias');
            var pase_completo = document.getElementById('pase_completo');

            //Botones y divs
            var calcular = document.getElementById('calcular');
            var errorDiv = document.getElementById('error');
            var botonRegistro = document.getElementById('btnRegistro');
            var lista_productos = document.getElementById('lista-productos');
            var suma = document.getElementById('suma-total');


            //Extras
            var camisas = document.getElementById('camisa_evento');
            var etiquetas = document.getElementById('etiquetas');


            botonRegistro.disabled = true;




            calcular.addEventListener('click', calcularMontos);

            pase_dia.addEventListener('blur', mostrarDias);
            pase_dosdias.addEventListener('blur', mostrarDias);
            pase_completo.addEventListener('blur', mostrarDias);




            nombre.addEventListener('blur', validarCampos);
            apellido.addEventListener('blur', validarCampos);
            email.addEventListener('blur', validarCampos);

            email.addEventListener('blur', validarMail);

            (function validarCampos() {
                if (this.value == '') {
                    errorDiv.style.display = 'block';
                    errorDiv.innerHTML = "Este campo es obligatorio";
                    this.style.border = '1px solid red';
                    errorDiv.style.border = '1px solid red';

                } else {
                    errorDiv.style.display = 'none';
                    this.style.border = '1px solid #cccccc';
                }
            })

            (function validarMail() {
                if (this.value.indexOf("@") > -1) {
                    errorDiv.style.display = 'none';
                    this.style.border = '1px solid #cccccc';
                } else {
                    errorDiv.style.display = 'block';
                    errorDiv.innerHTML = "Debe tener al menos un @";
                    this.style.border = '1px solid red';
                    errorDiv.style.border = '1px solid red';
                }
            })

            (function calcularMontos(event) {
                event.preventDefault();
                if (regalo.value === '') {
                    alert("Debes elegir un regalo");
                    regalo.focus();

                } else {
                    var boletosDia = parseInt(pase_dia.value, 10) || 0,
                        boletos2Dias = parseInt(pase_dosdias.value, 10) || 0,
                        boletoCompleto = parseInt(pase_completo.value, 10) || 0,
                        cantCamisas = parseInt(camisas.value, 10) || 0,
                        cantEtiquetas = parseInt(etiquetas.value, 10) || 0;

                    var totalPagar = (boletosDia * 30) + (boletos2Dias * 45) + (boletoCompleto * 50) + ((cantCamisas * 10) * 0.93) + (cantEtiquetas * 2);

                    var listadoProductos = [];

                    if (boletosDia >= 1) {
                        listadoProductos.push(boletosDia + " Pases por dia");
                    }
                    if (boletos2Dias >= 1) {
                        listadoProductos.push(boletos2Dias + ' Pases por 2 dias');
                    }
                    if (boletoCompleto >= 1) {
                        listadoProductos.push(boletoCompleto + ' Pases Completos');
                    }
                    if (cantCamisas >= 1) {
                        listadoProductos.push(cantCamisas + ' Camisas');
                    }
                    if (cantEtiquetas >= 1) {
                        listadoProductos.push(cantEtiquetas + ' Etiquetas');
                    }

                    lista_productos.style.display = "block";

                    lista_productos.innerHTML = '';

                    for (var i = 0; i < listadoProductos.length; i++) {
                        lista_productos.innerHTML += listadoProductos[i] + '<br/>';

                    }

                    suma.innerHTML = "$" + totalPagar.toFixed(2);

                    botonRegistro.disabled = false;


                    document.getElementById('total_pedido').value = totalPagar;


                }
            })

            (function mostrarDias() {
                var boletosDia = parseInt(pase_dia.value, 10) || 0,
                    boletos2Dias = parseInt(pase_dosdias.value, 10) || 0,
                    boletoCompleto = parseInt(pase_completo.value, 10) || 0;

                var diasElegidos = [];

                if (boletosDia > 0) {
                    diasElegidos.push('viernes');
                }
                if (boletos2Dias > 0) {
                    diasElegidos.push('viernes', 'sabado');
                }
                if (boletoCompleto > 0) {
                    diasElegidos.push('viernes', 'sabado', 'domingo');
                }
                for (var i = 0; i < diasElegidos.length; i++) {
                    document.getElementById(diasElegidos[i]).style.display = 'block';
                }
            });

        }





    });


    $(function() {


        //Lettering
        $('.nombre-sitio').lettering();

        $('body.conferencia .navegacion-principal a:contains("Nosotros")').addClass('activo');

        /*Menu fijo*/
        var windowHeight = $(window).height();
        var barraAltura = $('.barra').innerHeight();



        $(window).scroll(function() {
            var scroll = $(window).scrollTop();

            if (scroll > windowHeight) {

                $('.barra').addClass('fixed');
                $('body').css({ 'margin-top': barraAltura + 'px' });
            } else {
                $('.barra').removeClass('fixed');
                $('body').css({ 'margin-top': '0px' });
            }

        });

        /*Menu Responsive*/
        $('.menu-movil').on('click', function() {
            $('.navegacion-principal').slideToggle();
        });
        //Programa de conferencias

        $('.programa-evento .info-curso:first').show();

        $('menu-programa a:first').addClass('activo');

        $('.menu-programa a').on('click', function() {
            $('.menu-programa a').removeClass('activo');
            $(this).addClass('activo');
            $('.ocultar').hide();
            var enlace = $(this).attr('href');
            $(enlace).fadeIn(1000);
            return false;
        });


        //Animaciones para los numeros
        var resumenLista = jQuery('.resumen-evento');
        if (resumenLista.length > 0) {
            $('.resumen-evento').waypoint(function() {
                $('.resumen-evento li:nth-child(1) p').animateNumber({ number: 6 }, 1200);
                $('.resumen-evento li:nth-child(2) p').animateNumber({ number: 15 }, 2000);
                $('.resumen-evento li:nth-child(3) p').animateNumber({ number: 3 }, 600);
                $('.resumen-evento li:nth-child(4) p').animateNumber({ number: 9 }, 500);
            }, {
                offset: '60%'
            });
        }


        //Cuenta Regresiva

        $('.cuenta-regresiva').countdown('2021/01/29 21:51:00', function(event) {
            $('#dias').html(event.strftime('%D'));
            $('#horas').html(event.strftime('%H'));
            $('#minutos').html(event.strftime('%M'));
            $('#segundos').html(event.strftime('%S'));
        });

        //Colorbox
        $('.invitado-info').colorbox({ inline: true, width: "50%" });




    });

})();