

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
        </br>
        <div class="container" style="width: 35%">
    
            <div class="row center">
      
                <div class="col-md-4 div-login main-color">
        
                    <legend class="center">Log in</legend>

          
                <form action="/appMensajes/ServletValidar" method="post">
              
            
                    <div class="form-group">
                
                        <label class="col-md-4 control-label" for="textinput">Usuario</label>  
                    
                        <div class="col-md-4">
                            <input id="textinput" name="user" type="text" placeholder="username" class="form-control input-md">
                        </div>
                    </div>
               <!-- Password input-->
        
               <div class="form-group">
        
                   <label class="col-md-4 control-label" for="passwordinput">Password</label>
            
                   <div class="col-md-4">
            
                       <input id="passwordinput" name="pass" type="password" placeholder="*****" class="form-control input-md">
           
                   </div>
        
               </div>
               
                
               <input type="submit" class="btn btn-primary center" value="Aceptar">
               </br>
                <a href="frmUsuario.jsp" method="get" class="btn btn-info center margin-btn" role="button">Registrarse</a>
          </form>
    </div>
    </div>
        </div>
       
        
    
            
            
      
</body>