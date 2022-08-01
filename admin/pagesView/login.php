    <?php
         if(isset($_POST['submit'])){
            
            $email = htmlentities($_POST['email']);
            $password = htmlentities($_POST['password']);
 
            header("Location:index.php?page=dashboard");

         }
    
        if(isset($_POST['connect'])){

            $email = htmlentities($_POST['email']);
            $password = htmlentities($_POST['password']);
        
        
            if(!empty($email) && !empty($password)){
        
        
                    if($user->checkUserExist($email, $password) === 1){
                        $_SESSION['email'] = $email;
                        $_SESSION['admins'] = $user->get_login($email);
                        $_SESSION['messages'] =  'Vous êtes bien connecté !';
                        header('location:index.php');
                    }else{
                        $_SESSION['messages'] = 'Erreur de login ou de mot de passe';
                    }
             
                
            }else{
                $_SESSION['messages'] = 'Veuillez remplir tous les champs';
            }
        
        }var_dump( $_SESSION['email']);
    
    ?>
    
    
    
    <h1>Connexion</h1>
    <form method="post" action="">
        <label for="email">Adresse email</label>
        <input type="email" id="email" name="email"/>
        
        <label for="password">Mot de passe</label>
        <input type="password" id="password" name="password"/>

        <button type="submit" name="connect" class="waves-effect waves-light btn light-blue">
            <i class="material-icons left">perm_identity</i>
            <!-- <a href="index.php?page=dashboard">Se connecter</a>  -->
              Se connecter 
        </button>

        <!-- <button type="submit" name="submit" class="waves-effect waves-light btn light-blue">
            <a href="index.php?page=newUser">Nouveau modérateur</a>
        </button> -->

    </form>
</html>




