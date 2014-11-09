<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Welcome To Phang-Nga</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

	<!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
	<!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
	<!--script src="js/less-1.3.3.min.js"></script-->
	<!--append ‘#!watch’ to the browser URL, then refresh the page. -->
	
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="img/favicon.png">
  
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
body,td,th {
	font-family: pt_serif_captionregular;
}
</style>
</head>
   <script>
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4 && xmlhttp.status==200){ 
			document.getElementById("result").innerHTML = xmlhttp.responseText;
			
		}
	}
	var url="loadtext.jsp";
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
</script>

<script language = "javascript">
			var json = {"name1":"ทัวร์หมู่เกาะสิมิลัน เดินทางด้วยเรือเร็ว ไปยังเกาะ แวะให้ดำน้ำชมความสวยงามใต้ท้องทะเล ออกเดินทางต่อไปยังอ่าวหน้าหรือ เกาะเมี่ยง สำรวจความงามของเกาะ และเดินทางกันต่อ แวะเกาะบาง",
			"name2":"อยู่เชื่อมระหว่างสะพานสารสิน - สะพานเทพกษัตรี ระหว่างจังหวัดพังงาและภูเก็ต บริเวณช่องแคบปากพระ จะแลเห็นหาดทรายทั้งด้านซ้ายและด้านขวา ที่หาดทรายนี้ทุก ๆ ปี จะมีเต่าขึ้นมาวางไข่อยู่เสมอ",
			"name3":"เขาตะปูหรือเกาะตะปู มีลักษณะเป็นเกาะเดี่ยว รูปร่างคล้ายตะปู การชมเกาะตะปูต้องชมในระยะไกลจากเรือ หรือจากสันดอนของเกาะเขาพิงกันไม่สามารถขึ้นไปบนเกาะได้",
			"name4":"ถ้ำพุ้งช้าง",
			"name5":"บ่อน้ำพุร้อน-บ้านบ่อดาน",
			"name6":"อุทยานแห่งชาติเขาลำปี"
			};
		
</script>


<body>

<div class="page">
		<div class="header">
			<a href="index.html" id="logo"><img src="images/logo.png" alt="logo" width="148px" height="131px"></a>
			<div>
				<div>
					<li>
					<!--<a href="#">Sign Up</a> <span>|</span> -->
					
					<% String getusername_ses = (String)session.getAttribute("username_ses");
   	  String getname_ses = (String)session.getAttribute("name_ses");
	  if(getusername_ses==null) { %>
<a href="login.html">Singin</a>
	  <% } else { %>
                  <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> &nbsp;<%=getname_ses%> (Log out)</a></a>
	                  <% } %>
                  </li>
	         
				</div>
				<div>
					<ul>
						<li class="selected">
							<a href="index.html"><span>Home</span></a>
						</li>
						<li>
							<a href="about.html"><span>About</span></a>
						</li>
						<li>
							<a href="blog.html"><span>Blog</span></a>
						</li>
						<li>
							<a href="contact.html"><span>Contact</span></a>
						</li>
												<li>
							<a href="profile.html"><span>Profile</span></a>
						</li>
					</ul>
					
				</div>
			</div>
		</div>
		<div class="body">
			<div class="home">
				<div class="featured">
					<img src="images/featured.jpg" alt="" height="354" width="864">
					<div>
					  <div></div>  
					</div>
						 
						
			  </div>
				<div class="section"><marquee id="result"></marquee></div>
				<div>
					<ul>
					  <li>
							<a href="blog.html"><img src="images/page1_img1.jpg" width="228" height="228"></a></br>
							<center><input type="button" value= "หมู่เกาะสิมิลัน" onclick= alert(json.name1);></center></br></br>

						</li>
						<li>
							<a href="blog.html"><img src="images/page1_img2.jpg" width="228" height="228"></a></br>
							<center><input type="button" value= "ชายทะเลท่านุ่น" onclick= alert(json.name2);></center></br></br>
						</li>
						<li>
							<a href="blog.html"><img src="images/page1_img3.jpg" width="228" height="228"></a></br>
							<center><input type="button" value= "เขาตะปู" onclick= alert(json.name3);></center></br></br>
						</li>
					</ul>
					<ul>
					  <li>
							<a href="blog.html"><img src="images/tumpungchang.jpg" width="228" height="228"></a></br>
							<center><input type="button" value= "ถ้ำพุ้งช้าง" onclick= alert(json.name4);></center></br>
							
						</li>
						<li>
							<a href="blog.html"><img src="images/barnbordarn.jpg" width="228" height="228"></a></br>
							<center><input type="button" value= "บ่อน้ำพุร้อน-บ้านบ่อดาน" onclick= alert(json.name5);></center></br>
							
						</li>
						<li>
							<a href="blog.html"><img src="images/kaolumpee.jpg" width="228" height="228"></a></br>
							<center><input type="button" value= "อุทยานแห่งชาติเขาลำปี" onclick= alert(json.name6);></center></br>
							
						</li>
					</ul>
			  </div>
			</div>
		</div>
		<div class="footer">
			<div>
				<div>
<p>
			&nbsp;&nbsp;&#169; Copyright &#169;Computer Science 2014</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>