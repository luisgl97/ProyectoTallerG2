
<section class="seccion contenedor">
       

        <?php
            try{
                require_once('includes/funciones/bd_conexion.php');
                
                $sql =" SELECT * from `profesores` ";
                
                

                $resultado = $conn->query($sql);
            }catch(Exception $e){
               
                $error= $e->getMessage();
            }
        ?>
            <section class="invitados contenedor seccion">
                <h2>Nuestros profesores</h2>
                <ul class="lista-invitados clearfix">
                <?php
                    
                    while($profesores = $resultado->fetch_array(MYSQLI_ASSOC)){?>
                    
                    <li>
                        <div class="invitado">
                            <a  class="invitado-info" href="#invitado<?php echo $profesores['profesor_id'];?>">
                            
                                <img src="img/invitados/<?php echo $profesores['url_imagen']?>" alt="imagen profesor">
                                <p><?php echo $profesores['nombre_profesor']." ".$profesores['apellido_profesor']?></p>
                            </a>
                        </div>
                    </li>
                    <div style="display:none;">
                        <div class="invitado-info" id="invitado<?php echo $profesores['profesor_id'];?>">
                        <h2><?php echo $profesores['nombre_profesor']. " ". $profesores['apellido_profesor'];?></h2>
                        <img src="img/invitados/<?php echo $profesores['url_imagen']?>" alt="imagen profesor">
                                <p><?php echo $profesores['descripcion'] ?></p>
                                
                    </div>
                    </div>
                    
                    <?php } ?>


                </ul>
       
                </section>
        <?php 
        $conn->close();?>
         </section>
       
       
   