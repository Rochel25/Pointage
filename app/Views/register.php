<!DOCTYPE html>
<html>
<head>
<?php include_once "header.php" ?>
<style>
.reg{
margin-bottom:22px;
border-radius:40px;
margin-top:30px;
background-color: #dde7eb ;}
</style>
   
	
</head>
<body>
    <div class="container-fluid" >
        <div class="row" >
      
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
                <div class="reg col-md-6 col-md-6 col-sm-6 col-xs-12 ">
 <div class="reg" style="margin-top:20px">
                    <div class="text-center custom-login">
				
                    <h2>INSCRIPTION</h2>
                    <hr style="background-color:#106eea; height:2px;font-family: Bahnschrift;">
                    </div>
               
               
                     <div class="hpanel">
                        <div class="panel-body">
                        <form action="/register/save" method="post">
                        <div style="display:flex;">
                        <div class="form-group col-lg-6">
                                <div class="inputWithIcon">
                                    <label>Nom</label>
									<input type="text" placeholder="Entrer votre nom" name="name" class="form-control NOM" >
									<span id="Nom"  style="position:absolute; margin-top:-10px" class="alert"></span>
                                <a class="user-btn" href="#"><i class="fas fa-user"></i></a>
                            </div>
                             </div>

								<div class="form-group col-lg-6">
                                <div class="inputWithIcon">
                                    <label>Rôle</label>
                                    <select type="text" class="form-control ROLE"  name="role" required>
                    <option value="">&nbsp &nbsp -Rôle-</option>
                    <option value="admin">&nbsp &nbsp Admin</option>
                    <option value="utilisateur">&nbsp &nbsp Utilisateur</option>
 
                    </select><span id="role"  class="alert"></span>
									<span id="role" class="alert"></span>
                                <a class="user-btn" href="#"><i class="fas fa-gear"></i></a>
                            </div>
                             </div>
							</div>   

                             <div class="form-group col-lg-12">
                                <div class="inputWithIcon">
                                    <label>Email</label>
									<input type="text" placeholder="Entrer votre email" name="email" class="form-control EMAIL" >
									<span id="mail" class="alert"></span>
                                <a class="user-btn" href="#"><i class="fas fa-envelope"></i></a>
                            </div>
                             </div>
								
                            <div style="display:flex;">

								<div class="form-group col-lg-6">
                                <div class="inputWithIcon">
                                    <label>Mot de passe</label>
                                    <input type="text" placeholder="Mot de passe" name="password" class="form-control MDP">
                                    <span id="mdp" style="position:absolute;margin-top:-10px;" class="alert"></span>
                                <a class="user-btn" href="#"><i class="fas fa-lock"></i></a>
                                </div>
                                </div>
							   
								<div class="form-group col-lg-6">
                                <div class="inputWithIcon">
                                    <label>Confirmation du mot de passe</label>
                                    <input type="text" placeholder="Confirmation du mot de passe" name="confpassword" class="form-control MDP1">
                                    <span id="mdp1"  style="position:absolute; margin-left:20px;margin-top:-10px;" class="alert"></span>
                                <a class="user-btn" href="#"><i class="fas fa-lock"></i></a>
                                </div>
								</div>
								</div>
							</div>
                            
                            <div class="text-center" style="margin-top:40px;margin-left:-20px;">
                                <button class="btn btn-primary" id="verification">Enregistrer</button>
                                &nbsp; &nbsp; &nbsp;
                                <a type="button" href="/compte" class="btn btn-secondary" id="verification">Annuler</a>
                              
                            </div>
                        </form>
                    </div>
				</div>
                </div>			
            </div>
			
        </div>
	
    </div>
    
    <?php include_once "footer.php" ?>
    <script>  
$('#verification').on('click',function() { 
  var texte= "Veuillez completer le champ"; 
  var NOM =  $.trim($('.NOM').val());
  var email =  $.trim($('.EMAIL').val());
  var MDP =  $.trim($('.MDP').val());
  var MDP1 =  $.trim($('.MDP1').val());
  var ROLE =  $.trim($('.ROLE').val());

  
  
  if(NOM=="") {
  $('#Nom').html(texte);
return false;
  }

  if(NOM.length<3){
    $('#Nom').html("Le nom doit contenir 3 caractères au minimum");
return false; 

  }
  if(NOM!="" && NOM.length>=3) {
  $('#Nom').html('');
 }

  if(ROLE== "")
{
    $('#role').html("Veuillez selectionner le rôle");
     return false;
}
else if(ROLE !="" ){
    $('#role').html("");
                   
 }

  if(email=="") {
  $('#mail').html(texte);
return false;
  }

  
  if(email.length > 0 && !(email.match(/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/)))
 {
    $('#mail').html('Adresse email incorrecte');
     return false;
}
  
  if(email.length<8){
    $('#mail').html("L'email doit contenir 8 caractères au minimum");
return false; 
}
if(email!="" && email.length>=8) {
  $('#mail').html('');

  }

if(MDP== "")
{
$('#mdp').html(texte);
 return false;
 }

if(MDP!= "" && MDP.length>=6)
{
$('#mdp').html("");
                 
} 
if(MDP.length<6){
    $('#mdp').html("Le mot de passe doit contenir au moins 6 caractères");
 return false;
}
       if(MDP1== "")
              {
                   $('#mdp1').html(texte);
                 return false;
              }     
        else if(MDP1!= "")
              {
                   $('#mdp1').html("");
                 
              } 
        if(MDP1!=MDP)
        {
            $('#mdp1').html("La confirmation du mot de passe doit être conforme au précédent");
                 return false;
        }
        
 
});  
</script>  
</body>
</html>