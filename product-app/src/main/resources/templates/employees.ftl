<#import "/spring.ftl" as spring>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title></title>
	<style>
	*{
  margin: 0;
  padding: 0;
}

body {
  background: #302929;
}

.wrapper{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
}

.mail{
  width: 300px;
  height: 200px;
  background: #ff8789;
  position: relative;
  transform-style: preserve-3d;
  border-bottom-left-radius: 20px;
  border-bottom-right-radius: 20px;
  cursor: pointer;
}

.mail:before{
  content: '';
  position: absolute;
  top: 0;
  right: 0;
  border-left: 140px solid Transparent;
  border-right: 150px solid #ff393c;
  border-top: 100px solid Transparent;
  border-bottom: 100px solid #ff393c;
  z-index: 5;
  border-bottom-right-radius: 10px;
}

.mail:after{
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  border-left: 150px solid #ff5355;
  border-right: 140px solid Transparent;
  border-top: 100px solid Transparent;
  border-bottom: 100px solid #ff5355;
  z-index: 4;
  border-bottom-left-radius: 10px;
}

.cover:before{
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  border-left: 150px solid transparent;
  border-right: 150px solid transparent;
  border-top: 100px solid #ff8789;
  border-bottom: 100px solid transparent;
  z-index: 6;
  transform-origin: top;
  transform: rotateX(0deg);
  transition: all 1s 1s ease;
}

.letter{
  position: absolute;
  z-index: 3;
  top: 0px;
  left: 10px;
  background: #dedede;
  width: 280px;
  height: 180px;
  border-radius: 20px;
  transition: all 1s ease;
}

.letter h1{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  font-size: 80px;
  color: #798992;
  font-weight: 900;
}

.mail:hover .cover:before{
  transform: rotateX(180deg);
  transition: all 1s ease;
}

.mail:hover .letter{
  top: -80px;
  transition: all 1s 1s ease;
}
h2 {
 text-transform: uppercase;
 color:white;
 margin-top:70px
 } 

	</style>
</head>
<body>

<center><h2>Open envelope to see employees</h2></center>
	<button style="float: right; margin-top: -30px; margin-right: 50px; border: solid;border-color:red; background: red"><a href="/logout" style="font-size:150%;color:white; margin: 20px 20px 20px 20px;">Logout</a></button>


<div class="wrapper">
  <div class="mail">
    <div class="cover"></div>
    <div class="letter"><#list employees as employee>
   
	    <li style="font-size:15px; list-style: none; text-align:center; margin-top: 10px;">${employee}</li>
	    <br>
	</#list></div>
  </div>
</div>

</body>
</html>