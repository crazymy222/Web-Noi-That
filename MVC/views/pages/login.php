<div class="register container-fluid">
    <div class="bg-full">
        <div class="col-12 register-text">Login</div>
        <div class="form-register">
            <form action="./register/xuLyDangKy" class="column" method="POST">
                <div class="form-group column">
                    <label for="username">Username</label>
                    <input class="mb-10" type="text" name="username" placeholder="Enter username" id="username" required>
                    <div id="messageUn"></div>
                </div>
                <div class="form-group column">
                    <label for="password">Password</label>
                    <input type="password" name="password" placeholder="Enter password" id="password" required>
                </div>                
                <?php
                if (isset($data["result"])) {
                    if ($data["result"]) {
                        echo '
                            <p class="result true">Registered successfully</p>
                        ';
                    } else {
                        echo '
                            <p class="result fail">Registration failed</p>
                        ';
                    }
                }
                ?>
                <button type="submit" name="btnLogin" class="btn-submit">Continue</button>
            </form>
        </div>
    </div>
</div>