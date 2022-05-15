<?php
include_once "./include/header.php";
include_once "./msg/login.php";
?>

<div class="container" style="margin-top: 50px; width: 450px;">
    <div class="card">
        <img src="./images/providers.jpeg" style="height: 150px; width: 150px; margin-left: 130px" class="card-img-top"
            alt="...">
        <div class="card-body">
            <div class="card-title">
                <h3 class="text-center">Login for Service Providers</h3>
            </div>
            <hr>

            <form action="scripts/login.php" method="post">
                <div class="form-group">
                    <label for="">username.</label>
                    <input id="contact"
                        name="username" type="text" class="form-control" placeholder="Entrer votre nom."
                        required>
                </div>

                <div class="form-group">
                    <label for="">Password</label>
                    <input id="password" name="password" type="password" class="form-control"
                        placeholder="Enter Password" minlength="4" required>
                </div>

                <button style="margin-top: 30px;" class="btn btn-block btn-primary" type="submit" name="login"
                    id="login">Login</button>
                    <button style="margin-top: 30px;" class="btn btn-block btn-primary" type="submit" name="update"
                    id="login">update profile</button>
            </form>

        </div>
    </div>
</div>


<?php include_once "./include/footer.php";
