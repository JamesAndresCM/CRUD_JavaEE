

<%@page import="stotomas.clases.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/styles.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       
        </br>
        
        
         <div class="container" style="width: 35%">
    
            <div class="row center">
      
                <div class="col-md-4 div-login main-color">
        
                    <legend class="center">Registrar Usuario</legend>

          
                 <form action="/appMensajes/ServletUsuario" method="post">
              
            
                    <div class="form-group">
                
                        <label class="col-md-4 control-label" for="textinput">Usuario</label>  
                    
                        <div class="col-md-4">
                            <input id="textinput" name="usuario" type="text" placeholder="username" class="form-control input-md">
                        </div>
                    </div>
               <!-- Password input-->
        
               <div class="form-group">
        
                   <label class="col-md-4 control-label" for="passwordinput">Password</label>
            
                   <div class="col-md-4">
            
                       <input id="passwordinput" name="clave" type="password" placeholder="*****" class="form-control input-md">
           
                   </div>
        
               </div>
               
               <div class="form-group">
                
                        <label class="col-md-4 control-label" for="textinput">Nombre</label>  
                    
                        <div class="col-md-4">
                            <input id="textinput" name="nombre" type="text" placeholder="username" class="form-control input-md">
                        </div>
                    </div>
               
               
               <div class="form-group">
                
                        <label class="col-md-4 control-label" for="textinput">Email</label>  
                    
                        <div class="col-md-4">
                            <input id="textinput" name="email" type="email" placeholder="user@domain.com" class="form-control input-md">
                        </div>
                    </div>
               
                
               <input type="submit" class="btn btn-primary center" value="Registrar">
                </br>
                <a href="index.jsp" class="btn btn-info center margin-btn" role="button">Volver Atrás</a>
          </form>
    </div>
    </div>
        </div>
    </body>
</html>
