<?php
// if(isset($_SESSION['admin'])){
//     header("Location:index.php?page=dashboard");
// }

?>

<h4 class="center-align">Nouveau Moderateur</h4>

    <form>
        <label for="email">Adresse email</label>
        <input type="email" id="email" name="email"/>
        
        <label for="token">Code unique</label>
        <input type="password" id="password" name="password"/>

        <button type="submit" name="submit" class="waves-effect waves-light btn light-blue">
            <i class="material-icons left">perm_identity</i>
            Se connecter
        </button>

        <button type="submit" name="submit" class="waves-effect waves-light btn light-blue">
            <a href="index.php?page=newUser">Nouveau modérateur</a>
        </button>
    </form>
<?php

                        // if(isset($_POST['submit'])){
                        //     var_dump($_POST);
                        //     $email = htmlspecialchars(trim($_POST['email']));
                        //     $token = htmlspecialchars(trim($_POST['token']));

                        //     $errors = [];

                        //     if(empty($email) || empty($token)){
                        //         $errors['empty'] = "Tous les champs n'ont pas été remplis";
                        //     }else if(is_modo($email,$token) == 0){
                        //         $errors['exist'] = "Ce modérateur n'existe pas";
                        //     }

                        //     if(!empty($errors)){
                        //         ?>
                        <!-- //         <div class="card red">
                        //             <div class="card-content white-text">
                        //                 <?php
                        //                 foreach($errors as $error){
                        //                     echo $error."<br/>";
                        //                 }
                        //                 ?>
                        //             </div>
                        //         </div> -->
                        //     <?php
                        //     }else{
                        //         $_SESSION['admin'] = $email;
                        //         header("Location:index.php?page=password");
                        //     }

                        // }
                    ?>