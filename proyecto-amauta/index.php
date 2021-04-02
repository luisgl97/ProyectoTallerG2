<?php include_once 'includes/templates/header.php'; ?>

<section class="seccion contenedor">
        <h2>La mejor página para estudiar y salir adelante</h2>
        <p>
            Praesent rutrum efficitur pharetra. Vivamus scelerisque pretium velit, id tempor turpis pulvinar et. Ut bibendum finibus massa non molestie. Curabitur urna metus, placerat gravida lacus ut, lacinia congue orci. Maecenas luctus mi at ex blandit vehicula.
            Morbi porttitor tempus euismod.
        </p>
</section>
    <!--seccion-->

    <section class="programa">
        <div class="contenedor-video">
            <video autoplay loop poster="img/invitados/bg-talleres.jpg">
                    <source src="video/video.mp4" type="video/mp4">
                    <source src="video/video.webm" type="video/webm">
                    <source src="video/video.ogv" type="video/ogg">
            </video>
        </div>
        <!--.contenedor-video-->
        <div class="contenido-programa">
            <div class="contenedor">
                <div class="programa-evento">
                    <h2>Cursos</h2>

                    <?php
                try{
                    require_once('includes/funciones/bd_conexion.php');
                    
                    $sql =" SELECT * FROM `curso`  ";
                    
                    

                    $resultado = $conn->query($sql);
                }catch(Exception $e){
                
                    $error=$e->getMessage();
                }
            ?>
                        <nav class="menu-programa">
                            <?php while($cat = $resultado->fetch_array(MYSQLI_ASSOC)){?>
                                <?php $categoria= $cat['cat_curso']?>
                                <a href="#<?php echo strtolower($categoria)?> ">
                                <i class="fa <?php echo $cat['icono']?>" aria-hidden="true"></i> <?php echo $categoria?> 
                            </a>
                                
                            
                            <?php }?>
                        </nav>

        <?php
            try{
                
                require_once('includes/funciones/bd_conexion.php');
                $sql =" SELECT curso_id, nombre_curso, fecha_curso, hora_curso, cat_curso, icono, nombre_profesor, apellido_profesor ";
                $sql .= "FROM `cursos` ";
                $sql .= "INNER JOIN `curso` ";
                $sql .= "ON cursos.id_cat_curso = curso.id_curso ";
                $sql .= "INNER JOIN `profesores` ";
                $sql .= "ON cursos.id_prof = profesores.profesor_id ";
                $sql .= "AND cursos.id_cat_curso = 1 ";
                $sql .= "ORDER BY `curso_id` LIMIT 2; ";

                
                
                $sql .=" SELECT curso_id, nombre_curso, fecha_curso, hora_curso, cat_curso, icono, nombre_profesor, apellido_profesor ";
                $sql .= "FROM `cursos` ";
                $sql .= "INNER JOIN `curso` ";
                $sql .= "ON cursos.id_cat_curso = curso.id_curso ";
                $sql .= "INNER JOIN `profesores` ";
                $sql .= "ON cursos.id_prof = profesores.profesor_id ";
                $sql .= "AND cursos.id_cat_curso = 2 ";
                $sql .= "ORDER BY `curso_id` LIMIT 2; ";
                
                $sql .=" SELECT curso_id, nombre_curso, fecha_curso, hora_curso, cat_curso, icono, nombre_profesor, apellido_profesor ";
                $sql .= "FROM `cursos` ";
                $sql .= "INNER JOIN `curso` ";
                $sql .= "ON cursos.id_cat_curso = curso.id_curso ";
                $sql .= "INNER JOIN `profesores` ";
                $sql .= "ON cursos.id_prof = profesores.profesor_id ";
                $sql .= "AND cursos.id_cat_curso = 3 ";
                $sql .= "ORDER BY `curso_id` LIMIT 2; ";
                
                
                
                
            }catch(Exception $e){
               
                $error=$e->getMessage();
            }
        ?>
        

        <?php $conn->multi_query($sql); ?>

        <?php 
        do{
            $resultado=$conn->store_result();
            $row=$resultado->fetch_all(MYSQLI_ASSOC);?>
            
            <?php $i =0; ?>
            <?php foreach($row as $curso): ?>
            
                <?php if($i % 2 == 0){?>

                    <div id="<?php echo strtolower($curso['cat_curso'])?>" class="info-curso ocultar clearfix">
                    
                <?php }?>


            
            <div class="detalle-evento">
                <h3><?php echo ($curso['nombre_curso'])?></h3>
                <p><i class="fa fa-clock-o" aria-hidden="true"></i> <?php echo $curso['hora_curso']?></p>
                <p><i class="fa fa-calendar" aria-hidden="true"></i>  <?php echo $curso['fecha_curso']?></p>
                <p><i class="fa fa-user" aria-hidden="true"></i>  <?php echo $curso['nombre_profesor']." ".$curso['apellido_profesor']?></p>
            </div>
            
            <?php if($i % 2 == 1):?>
                <a href="cursos.php" class="button float-right">Ver todos</a>
        </div>  <!--#talleres-->
           
            <?php endif;?>
        <?php $i++;?>
        <?php endforeach; ?>
        <?php $resultado->free();?>
        <?php } while($conn->more_resultS() && $conn->next_result());?>
        

                </div>
                <!--.programa-evento-->
            </div>
            <!--.contenedor-->
        </div>
        <!--.contenido-programa-->
    </section>
    <!--.programa-->



    <?php include_once 'includes/templates/profesores.php'; ?>




    <div class="contador parallax">
        <div class="contenedor">
            <ul class="resumen-evento clearfix">
                <li>
                    <p class="numero"></p> Cursos</li>
                <li>
                    <p class="numero"></p> Talleres</li>
                <li>
                    <p class="numero"></p> Días</li>
                <li>
                    <p class="numero"></p> Conferencias</li>

            </ul>
        </div>
    </div>

    <section class="precios seccion">
        <h2>Cursos</h2>
        <div class="contenedor">
            <ul class="lista-precios clearfix">
                <li>
                    <div class="tabla-precio">
                        <h3>Angular</h3>
                        <img src="img/angular.PNG" alt="">
                        <p class="numero">$30</p>
                        <ul>
                            <li>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ut a aut iusto corporis placeat, deleniti, molestias facere et perferendis consequuntur, at harum recusandae laudantium obcaecati aliquam voluptatem? Vitae, qui ratione.</li>

                        </ul>
                        <a href="#" class="button hollow">Comprar</a>
                    </div>
                </li>
                <li>
                    <div class="tabla-precio">
                        <h3>GitHub</h3>
                        <img src="img/github.PNG" alt="">
                        <p class="numero">$50</p>
                        <ul>
                            <li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure a perspiciatis fugit velit, corporis cum eligendi, suscipit doloremque voluptas molestias laborum, consequatur alias perferendis accusamus ex. Ut eaque odit omnis.</li>

                        </ul>
                        <a href="#" class="button">Comprar</a>
                    </div>
                </li>

                <li>
                    <div class="tabla-precio">
                        <h3>HTML</h3>
                        <img src="img/html.PNG" alt="">
                        <p class="numero">$45</p>
                        <ul>
                            <li>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Molestias voluptate aperiam saepe earum odio rerum, animi eius qui sunt quis repellendus quod repudiandae eum beatae aut consequuntur aspernatur, eos consequatur!</li>

                        </ul>
                        <a href="#" class="button hollow">Comprar</a>
                    </div>
                </li>
            </ul>
        </div>
    </section>

    <div id="mapa" class="mapa"></div>

    <section class="seccion">
        <h2>Testimoniales</h2>
        <div class="testimoniales contenedor clearfix">
            <div class="testimonial">
                <blockquote>
                    <p>Sed mollis velit sit amet felis condimentum ultrices. Fusce vehicula ut sem vitae semper. Nullam blandit neque eu semper ullamcorper. Duis commodo quam in orci condimentum ultricies.
                        <p>
                            <footer class="info-testimonial clearfix">
                                <img src="img/testimonial.jpg" alt="imagen testimonial">
                                <cite>Oswaldo Aponte Escobedo <span>Diseñador en @prisma</span></cite>
                            </footer>
                </blockquote>
            </div>
            <!--.testimonial-->
            <div class="testimonial">
                <blockquote>
                    <p>Sed mollis velit sit amet felis condimentum ultrices. Fusce vehicula ut sem vitae semper. Nullam blandit neque eu semper ullamcorper. Duis commodo quam in orci condimentum ultricies.
                        <p>
                            <footer class="info-testimonial clearfix">
                                <img src="img/testimonial.jpg" alt="imagen testimonial">
                                <cite>Oswaldo Aponte Escobedo <span>Diseñador en @prisma</span></cite>
                            </footer>
                </blockquote>
            </div>
            <!--.testimonial-->
            <div class="testimonial">
                <blockquote>
                    <p>Sed mollis velit sit amet felis condimentum ultrices. Fusce vehicula ut sem vitae semper. Nullam blandit neque eu semper ullamcorper. Duis commodo quam in orci condimentum ultricies.
                        <p>
                            <footer class="info-testimonial clearfix">
                                <img src="img/testimonial.jpg" alt="imagen testimonial">
                                <cite>Oswaldo Aponte Escobedo <span>Diseñador en @prisma</span></cite>
                            </footer>
                </blockquote>
            </div>
            <!--.testimonial-->
        </div>
    </section>




    <div class="newsletter parallax">
        <div class="contenido contenedor">
            <p> regístrate al newsletter:</p>
            <h3>Amauta</h3>
            <a href="#mc_embed_signup" class="boton_newsletter button transparente">Registro</a>
        </div>
        <!--.contenido-->
    </div>
    <!--.newsletter-->



    <section class="seccion">
        <h2>Faltan</h2>
        <div class="cuenta-regresiva contenedor">
            <ul class="clearfix">
                <li>
                    <p id="dias" class="numero"></p> días</li>
                <li>
                    <p id="horas" class="numero"></p> horas</li>
                <li>
                    <p id="minutos" class="numero"></p> minutos</li>
                <li>
                    <p id="segundos" class="numero"></p> segundos</li>
            </ul>
        </div>
    </section>

    <?php include_once 'includes/templates/footer.php'; ?>

    <script type="text/javascript" src="//s3.amazonaws.com/downloads.mailchimp.com/js/signup-forms/popup/embed.js" data-dojo-config="usePlainJson: true, isDebug: false"></script>
    <script type="text/javascript">
        require(["mojo/signup-forms/Loader"], function(L) {
            L.start({
                "baseUrl": "mc.us11.list-manage.com",
                "uuid": "b3bb37039b6fbf3db0c1a8331",
                "lid": "20463b69f2"
            })
        })
    </script>
    <script>
    
        /*Mapa */


        var map = L.map('mapa').setView([-11.909918, -77.033944], 16);

L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

L.marker([-11.909918, -77.033944]).addTo(map)
    .bindPopup('Amauta 2021<br> Cursos Disponibles')
    .openPopup();
    </script>