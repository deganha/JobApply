<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1 user-scalable=no">
    <link rel="icon" href="assets/img/favicon.ico">
    <title>Trabalhe conosco</title>    
  </head>
  <body>
    <div class="page-header container">
      <div class="row row-bottom-align" >
        <img src="assets/img/logo.png" class="col-lg-3 col-md-4 col-sm-5 col-xs-8">
        <h1 class="no-padding col-lg-3 col-md-8 col-sm-7 col-xs-2" ><small>Jobs</small></h1>
      </div>
    </div>
    <div class="container"><br>
      <div class="panel panel-info" id="applicantData">
        <div class="panel-heading"> 
          <div class="panel-title">
            <h4>Dados do Candidato</h4>
          </div>
        </div>
        <div class="panel-body">
          <div class="form-group" id="nameForm">
            <label for="name" class="control-label h4">Nome</label>
            <input type="text" class="form-control input-lg" onfocusout="validateName()" id="name" placeholder="Nome" required>
            <div class="alert alert-danger" id="nameHelp" hidden="true" role="alert">Por favor nos diga seu nome.</div>
          </div>
          <div class="form-group" id="emailForm">
            <label for="email" class="control-label h4">E-mail</label>
            <input type="email" class="form-control input-lg" onfocusout="validateEmail()" id="email" placeholder="E-mail" required>
            <div class="alert alert-danger" id="emailHelp" hidden="true" role="alert">Por favor informe um e-mail válido.</div>
          </div>    
        </div>
      </div>      
      <div class="panel panel-info">        
        <div class="panel-heading"> 
          <div class="panel-title">
            <h4>Avalie seu conhecimento de 0 a 10 nos seguintes itens:</h4>
          </div>         
        </div>
        <div class="panel-body centered">
          <!-- PC VERSION -->      
          <div class="btn-group col-sm-12 hidden-xs" id="htmlGroup">
            <label class="col-sm-3">HTML</label>
            <div class="container col-xs-9 ">
              <label class="radio-inline ">
                <input type="radio" name="html" id="html0" value="0"> 0
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html1" value="1"> 1
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html2" value="2"> 2
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html3" value="3"> 3
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html4" value="4"> 4
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html5" value="5"> 5
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html6" value="6"> 6
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html7" value="7"> 7
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html8" value="8"> 8
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html9" value="9"> 9
              </label>
              <label class="radio-inline ">
                <input type="radio" name="html" id="html10" value="10"> 10            
              </label>
            </div>
          </div>          
          <div class="btn-group col-sm-12 hidden-xs" id="cssGroup">
            <label class="col-sm-3">CSS</label>
            <div class="container col-xs-9">
              <label class="radio-inline ">
                <input type="radio" name="css" id="css0" value="0"> 0
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css1" value="1"> 1
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css2" value="2"> 2
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css3" value="3"> 3
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css4" value="4"> 4
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css5" value="5"> 5
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css6" value="6"> 6
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css7" value="7"> 7
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css8" value="8"> 8
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css9" value="9"> 9
              </label>
              <label class="radio-inline ">
                <input type="radio" name="css" id="css10" value="10"> 10
              </label>
            </div>
          </div>  
          <div class="btn-group col-sm-12 hidden-xs" id="javascriptGroup">
            <label class="col-sm-3">Javascript</label>
            <div class="container col-xs-9">
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript0" value="0"> 0
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript1" value="1"> 1
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript2" value="2"> 2
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript3" value="3"> 3
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript4" value="4"> 4
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript5" value="5"> 5
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript6" value="6"> 6
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript7" value="7"> 7
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript8" value="8"> 8
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript9" value="9"> 9
              </label>
              <label class="radio-inline ">
                <input type="radio" name="javascript" id="javascript10" value="10"> 10
              </label>
            </div>
          </div>  
          <div class="btn-group col-sm-12 hidden-xs" id="pythonGroup">
            <label class="col-sm-3">Python</label>
            <div class="container col-xs-9">
              <label class="radio-inline ">
                <input type="radio" name="python" id="python0" value="0"> 0
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python1" value="1"> 1
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python2" value="2"> 2
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python3" value="3"> 3
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python4" value="4"> 4
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python5" value="5"> 5
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python6" value="6"> 6
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python7" value="7"> 7
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python8" value="8"> 8
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python9" value="9"> 9
              </label>
              <label class="radio-inline ">
                <input type="radio" name="python" id="python10" value="10"> 10
              </label>
            </div>
          </div>  
          <div class="btn-group col-sm-12 hidden-xs" id="djangoGroup">
            <label class="col-sm-3">Django</label>
            <div class="container col-xs-9">
              <label class="radio-inline ">
                <input type="radio" name="django" id="django0" value="0"> 0
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django1" value="1"> 1
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django2" value="2"> 2
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django3" value="3"> 3
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django4" value="4"> 4
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django5" value="5"> 5
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django6" value="6"> 6
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django7" value="7"> 7
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django8" value="8"> 8
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django9" value="9"> 9
              </label>
              <label class="radio-inline ">
                <input type="radio" name="django" id="django10" value="10"> 10
              </label>
            </div>
          </div>
          <div class="btn-group col-sm-12 hidden-xs" id="iosGroup">
            <label class="col-sm-3">Desenvolvimento iOS</label>
            <div class="container col-xs-9">
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios0" value="0"> 0
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios1" value="1"> 1
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios2" value="2"> 2
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios3" value="3"> 3
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios4" value="4"> 4
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios5" value="5"> 5
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios6" value="6"> 6
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios7" value="7"> 7
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios8" value="8"> 8
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios9" value="9"> 9
              </label>
              <label class="radio-inline ">
                <input type="radio" name="ios" id="ios10" value="10"> 10
              </label>
            </div>
          </div>
          <div class="btn-group col-sm-12 hidden-xs" id="androidGroup">
            <label class="col-sm-3">Desenvolvimento Android</label>
            <div class="container col-xs-9">
              <label class="radio-inline ">
                <input type="radio" name="android" id="android0" value="0">0
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android1" value="1">1
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android2" value="2">2
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android3" value="3">3
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android4" value="4">4
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android5" value="5">5
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android6" value="6">6
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android7" value="7">7
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android8" value="8">8
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android9" value="9">9
              </label>
              <label class="radio-inline ">
                <input type="radio" name="android" id="android10" value="10">10
              </label>
            </div>
          </div>     
          
          <!-- MOBILE VERSION -->
          
          <div class="form-group visible-xs">
            <label class="h4">HTML</label>
            <select id="htmlSelect" class="form-control col-xs-1">
              <option value="0">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>              
          </div>
          <div class="form-group visible-xs">
            <label class="h4">CSS</label>
            <select id="cssSelect" class="form-control col-xs-1">
              <option value="0">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>              
          </div>
          <div class="form-group visible-xs">
            <label class="h4">Javascript</label>
            <select id="javascriptSelect" class="form-control col-xs-1">
              <option value="0">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>              
          </div>
          <div class="form-group visible-xs">
            <label class="h4">Python</label>
            <select id="pythonSelect" class="form-control col-xs-1">
              <option value="0">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>              
          </div>
          <div class="form-group visible-xs">
            <label class="h4">Django</label>
            <select id="djangoSelect" class="form-control col-xs-1">
              <option value="0">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>              
          </div>
          <div class="form-group visible-xs">
            <label class="h4">Desenvolvimento IOS</label>
            <select id="iosSelect" class="form-control col-xs-1">
              <option value="0">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>              
          </div>
          <div class="form-group visible-xs">
            <label class="h4">Desenvolvimento Android</label>
            <select id="androidSelect" class="form-control col-xs-1">
              <option value="0">0</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
            </select>              
          </div>          
        </div>
      </div>
      <button type="button" id="btEnviar" data-loading-text="Enviando..." class="btn btn-primary btn-lg col-xs-12 col-sm-3 col-md-2">Enviar</button>      
    </div>
    
    <!-- VALIDATE MOBILE SIZE -->
    <div class="device-xs visible-xs"></div>
    
    <!-- MODAL FEEDBACK -->
    <div class="modal fade" id="myModal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title" id="modalTitle"></h4>
          </div>
          <div class="modal-body" id="modalBody">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" data-dismiss="modal" id="btFecharModal">Fechar</button>
          </div>
        </div>
      </div>
    </div>
    
    <!-- PAGE FOOTER -->
    <div id="footer">
      <div class="container">
        <p class="text-muted">Developed by <a target="_blank" href="https://br.linkedin.com/in/jonatha-moreno-schmitz-04567470">Jonatha Moreno Schmitz</a></p>
      </div>
    </div>
  </body>

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/apply.css" rel="stylesheet">
  <script src="js/jquery-3.1.0.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/apply.js"></script>
</html>