
<?php include_once 'includes/templates/header.php'; ?>



    <section class="seccion contenedor">
        <h2>Cursos</h2>

        <?php
            try{
                require_once('includes/funciones/bd_conexion.php');
                
                $sql =" SELECT curso_id, nombre_curso, fecha_curso, hora_curso, cat_curso, icono, nombre_profesor, apellido_profesor ";
                $sql .= " FROM cursos ";
                $sql .= " INNER JOIN curso ";
                $sql .= " ON cursos.id_cat_curso = curso.id_curso ";
                $sql .= " INNER JOIN profesores ";
                $sql .= " ON cursos.id_prof = profesores.profesor_id ";
                $sql .= " ORDER BY curso_id ";
                

                $resultado = $conn->query($sql);
            }catch(Exception $e){
               
                $error=$e->getMessage();
            }
        ?>
        <div class="calendario">
            <?php
                $calendario = array();
               while($cursos = $resultado->fetch_assoc()){
                  

                //Obtiene la fecha del evento
                $fecha =$cursos['fecha_curso'];
                $cat_curso=$cursos['cat_curso'];

                    $curso = array(
                        'titulo' => $cursos['nombre_curso'],
                        'fecha' => $cursos['fecha_curso'],
                        'hora' => $cursos['hora_curso'],
                        'categoria' => $cursos['cat_curso'],
                        'icono' => $cursos['icono'],
                        'profesor' => $cursos['nombre_profesor'] . " " . $cursos['apellido_profesor']

                    );
                    $calendario[$fecha][] = $curso;

                    ?>
                   
             <?php  } //while?>
             
                    <?php 
                    //Imprime todos los eventos
                    foreach($calendario as $dia => $lista_cursos){ ?>
                    <h3>
                        <i class="fa fa-calendar"></i>
                        <?php 
                        //Unix
                        setlocale(LC_TIME,'es_ES.UTF.8');
                        //Windows
                        setlocale(LC_TIME,'spanish');
                        
                        echo strftime("%A, %d de %B del %Y", strtotime($dia));?>
                        
                        
                    </h3>
                    
                    <?php foreach($lista_cursos as $curso){?>
                    <div class="dia">
                        <p class="titulo"><?php echo $curso['titulo'];?></p>
                        <p class="hora">
                            <i class="fa fa-clock-o" aria-hidden="true"></i>
                            <?php echo $curso['fecha'] . " " . $curso['hora'];?>
                        </p>
                        <p>
                        <i class="fa <?php echo $curso['icono'];?>" aria-hidden="true"></i>
                        <?php echo $curso['categoria'];?></p>
                        <p>
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <?php echo $curso['profesor'];?></p>
                        </p>
                    </div>
                    

                    <?php } ?>
                    <?php } ?>
                    

            
        </div>

        <?php 
        $conn->close();?>
       
    </section>


    <?php include_once 'includes/templates/footer.php'; ?>