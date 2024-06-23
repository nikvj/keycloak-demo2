<#import "/spring.ftl" as spring>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Calfus App 1</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body, html {
        margin: 0;
        padding: 0;
        height: 100%;
    }

    iframe {
        width: 100%;
        height: 100vh; /* vh stands for viewport height */
        border: none; /* optional: remove iframe border */
    }
        .container {
    max-width: 1100px;
    margin: 0 auto;
    padding: 0 15px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 100%;
}

button {
  background: linear-gradient(90.04deg, #1d7b87 0.03%, #63bdc9 99.96%);
  border-radius: 9px;
  font-size: 18px;
  color: #ffffff;
  padding: 10px 42px;
  outline: none;
  border: none;
  cursor: pointer;
}

.navbar {
    height: 60px;
    background-color: #f5f5f5;
    position: relative;
}

.logo img {
    /* Add any specific styles for the logo here */
}

.menu-icon {
    display: none; /* To be displayed when implementing hamburger menu for smaller screens */
}

    </style>
</head>
<body>
<nav class="navbar">
    <div class="container">
        <div class="logo">

        </div>
        <div class="nav-elements" id="logoutButton">
            <button>Logout</button>
        </div>
    </div>
</nav>
<div>
    <iframe src="https://www.calfus.com/products-platforms/"></iframe>
</div>

<div>

</div>

<script>
    const loginButton = document.getElementById('logoutButton');
           loginButton.onclick = function() {
               window.location.href = "/logout";
           };
</script>
</body>
</html>