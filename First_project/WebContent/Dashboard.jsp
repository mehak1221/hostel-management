<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/Footer-white.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {

	background-image: url("ps.jpg");
	background-size:inherit;
	font-family: "Lato", sans-serif;
}
hr{
background-color:red;
height:2px;
}

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

.logout {
	color: gray;
	font-size: 25px;
	margin-left: 600px;
}

#main {
	color: white;
	transition: margin-left .5s;
	padding: 16px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

#myFooter {
	padding-top: 20px;
}

#myFooter .container {
	margin-top: 100px;
	text-align: center;
}

#myFooter .footer-copyright {
	margin-bottom: 35px;
	text-align: center;
	color: white;
}

#myFooter ul {
	list-style-type: none;
	padding: 0;
	margin-bottom: 18px;
}

#myFooter a {
	color: white;
	font-size: 18px;
}

#myFooter li {
	display: inline-block;
	margin: 0px 15px;
	line-height: 2;
}

#myFooter .footer-social {
	text-align: center;
	padding-top: 25px;
	padding-bottom: 25px;
}

#myFooter .fa {
	font-size: 36px;
	margin-right: 15px;
	margin-left: 20px;
	background-color: white;
	color: blue;
	border-radius: 51%;
	padding: 10px;
	height: 60px;
	width: 60px;
	text-align: center;
	line-height: 43px;
	text-decoration: none;
	transition: color 0.2s;
}

#myFooter .fa-facebook:hover {
	color: #2b55ff;
}

#myFooter .fa-facebook:focus {
	color: #2b55ff;
}

#myFooter .fa-google-plus:hover {
	color: red;
}

#myFooter .fa-google-plus:focus {
	color: red;
}

#myFooter .fa-twitter:hover {
	color: #00aced;
}

#myFooter .fa-twitter:focus {
	color: #00aced;
}

@media screen and (max-width: 767px) {
	#myFooter {
		text-align: center;
	}
}

html {
	height: 100%;
}

body {
	display: flex;
	display: -webkit-flex;
	flex-direction: column;
	-webkit-flex-direction: column;
	height: 100%;
}

#myFooter {
	flex: 0 0 auto;
	-webkit-flex: 0 0 auto;
}

.notice {
	margin-bottom: 100px;
}

h2 {
	color: white;
}
ul {list-style-type: none;}
body {font-family: Verdana, sans-serif;}

/* Month header */
.month {
  padding: 70px 25px;
  width: 100%;
  background: #1abc9c;
  text-align: center;
}

/* Month list */
.month ul {
  margin: 0;
  padding: 0;
}

.month ul li {
  color: white;
  font-size: 20px;
  text-transform: uppercase;
  letter-spacing: 3px;
}

/* Previous button inside month header */
.month .prev {
  float: left;
  padding-top: 10px;
}

/* Next button */
.month .next {
  float: right;
  padding-top: 10px;
}

/* Weekdays (Mon-Sun) */
.weekdays {
  margin: 0;
  padding: 10px 0;
  background-color:#ddd;
}

.weekdays li {
  display: inline-block;
  width: 13.6%;
  color: #666;
  text-align: center;
}

/* Days (1-31) */
.days {
  padding: 10px 0;
  background: #eee;
  margin: 0;
}

.days li {
  list-style-type: none;
  display: inline-block;
  width: 13.6%;
  text-align: center;
  margin-bottom: 5px;
  font-size:12px;
  color: #777;
}

/* Highlight the "current" day */
.days li .active {
  padding: 5px;
  background: #1abc9c;
  color: white !important
}
#table1 th 
{
border-collapse:separate;
}
th
{
padding:30px;
text-align:center;
}
#calendarTable,TD  
{
text-align:center;
border:2px solid black;
}
#tableBody ,TD
{
background-color: white;
}
#tableHeader ,TH
{
backgrond-color:white;
}
</style>
<SCRIPT LANGUAGE="JavaScript">

// day of week of month's first day
function getFirstDay(theYear, theMonth){
    var firstDate = new Date(theYear,theMonth,1)
    return firstDate.getDay()
}
// number of days in the month
function getMonthLen(theYear, theMonth) {
    var oneDay = 1000 * 60 * 60 * 24
    var thisMonth = new Date(theYear, theMonth, 1)
    var nextMonth = new Date(theYear, theMonth + 1, 1)
    var len = Math.ceil((nextMonth.getTime() - 
        thisMonth.getTime())/oneDay)
    return len
}
// create array of English month names
var theMonths = ["January","February","March","April","May","June","July","August",
"September","October","November","December"]
// return IE4+ or W3C DOM reference for an ID
function getObject(obj) {
    var theObj
    if (document.all) {
        if (typeof obj == "string") {
            return document.all(obj)
        } else {
            return obj.style
        }
    }
    if (document.getElementById) {
        if (typeof obj == "string") {
            return document.getElementById(obj)
        } else {
            return obj.style
        }
    }
    return null
}
// clear and re-populate table based on form's selections
function populateTable(form) {
    var theMonth = form.chooseMonth.selectedIndex
    var theYear = parseInt(form.chooseYear.options[form.chooseYear.selectedIndex].text)
    // initialize date-dependent variables
    var firstDay = getFirstDay(theYear, theMonth)
    var howMany = getMonthLen(theYear, theMonth)
    
    // fill in month/year in table header
    getObject("tableHeader").innerHTML = theMonths[theMonth] + 
    " " + theYear
    
    // initialize vars for table creation
    var dayCounter = 1
    var TBody = getObject("tableBody")
    // clear any existing rows
    while (TBody.rows.length > 0) {
        TBody.deleteRow(0)
    }
    var newR, newC
    var done=false
    while (!done) {
        // create new row at end
        newR = TBody.insertRow(TBody.rows.length)
        for (var i = 0; i < 7; i++) {
            // create new cell at end of row
            newC = newR.insertCell(newR.cells.length)
            if (TBody.rows.length == 1 && i < firstDay) {
                // no content for boxes before first day
                newC.innerHTML = ""    
                continue
            }
            if (dayCounter == howMany) {
                // no more rows after this one
                done = true
            }
            // plug in date (or empty for boxes after last day)
            newC.innerHTML = (dayCounter <= howMany) ? 
                dayCounter++ : ""
        }
        
    }
}
function fillYears() {
    var today = new Date()
    var thisYear = today.getFullYear()
    var yearChooser = document.dateChooser.chooseYear
    for (i = thisYear; i < thisYear + 5; i++) {
        yearChooser.options[yearChooser.options.length] = new Option(i, i)
    }
    setCurrMonth(today)
}
// set month choice to current month
function setCurrMonth(today) {
    document.dateChooser.chooseMonth.selectedIndex = today.getMonth()
}
</SCRIPT>
</head>
<body  onLoad="fillYears(); populateTable(document.dateChooser)">

	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="Dashboard.jsp">Dashboard</a> <a href="Profile.jsp">Profile</a>
		<a href="Complaint.jsp">Complaint</a> <a href="hostel.html">Hostels</a>
	</div>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"
		style="height: 300px;">
		<div id="main">
			<span style="font-size: 30px; cursor: pointer" onclick="openNav()"><img
				src="menulogo.png" style="width: 50px; height: 50px;"></span>
		</div>

		<script>
			function openNav() {
				document.getElementById("mySidenav").style.width = "250px";
				document.getElementById("main").style.marginLeft = "250px";
			}

			function closeNav() {
				document.getElementById("mySidenav").style.width = "0";
				document.getElementById("main").style.marginLeft = "0";
			}
		</script>
		<h1 style="color: white;">Hostel Management</h1>
		<a href="Index.html" style="margin-left: 800px;" class="logout">LOGOUT</a>
	</nav>
	<hr>

	<div class="container">
		<div class="card-deck">
			 <div class="card bg-danger">
    <div class="card-body text-center">
    <a href="hostelfee.html" style="color:black;"><h1>HOSTEL FEE</h1></a>
    <h3>Student can pay and see the details of hostel fee here.</h3>
    </div>
    </div>
			<div class="card bg-primary">
				<div class="card-body text-center">
					<a href="mess.html" style="color:black;"><h1>MESS MENU</h1></a>
				<h3>The mess menu is available here. Go check out!</h3>
				</div>
			</div>
			<div class="card bg-secondary">
				<div class="card-body text-center">
					<a href="gatepass.html" style="color:black;"><h1>GATE PASS</h1></a>
					<h3>Student Required this Gate Pass whenever he/she
						enters/left the university</h3>
				</div>
			</div>
			<div class="card bg-success">
				<div class="card-body text-center">
					<a href="fine.html" style="color:black;"><h1>FINE</h1></a>
					<h3>All the fine which are due and which are paid can be
						checked</h3>
				</div>
			</div>
			
  <div class="card bg-info">
    <div class="card-body text-center">
     <a href="Warden1.html" style="color:black;"><h1>WARDEN</h1></a>
     <h3>In case of any problem or emergency contact your warden.</h3>
    </div>
    </div>
   
			
		</div>
	<hr>
	<table id="table1">
	<tr>
	<th>
		<h1 style="margin-left: 100px; margin-top:20px; color: white;">Notices</h1>
		<form
			style="border: 2px solid black; width: 400px; height: 300px; margin-left: 50px; overflow: scroll;">
			<a href="#"><h2>Hostel Committee is organising a fun activity for all the hostellers.<span class="badge badge-pill badge-danger">NEW</span></h2></a>
			<br> <a href="#"><h2>Surprise checking of
			 hostels can be done at anytime.<span class="badge badge-pill badge-danger">IMPORTANT</span></h2></a><br><a href="#"><h2>
					<h2>Hostellers can give their names for outing.</h2></a><br> <a href="#"><h2>Hostel night is going to be held by the Hostel Committee team.
					 Register for fun!</h2></a><br> <a href="#"><h2>
					<h2>Mess menu is updated.</h2></a><br> <a href="#"><h2>All the hostellers must carry mess 
					card while entering the mess. </h2></a><br> <a href="#"><h2>
					<h2>The Hostel Committee is here to help you! Check out the Hostel Committee team. </h2></a> <a href="#"><h2>Last date for payment of Hostel fee
					 is 10-04-2019.</h2></a><br> <a href="#"><h2>
					<h2>Cricket match for hostellers.See the details!</h2></a>Important Notice! See file. <a href="#"><h2>Important Notice! Please open.</h2></a>
		</form>
		</th>
		<th>
		<h1 style="margin-left: 100px; margin-top:20px; color: white;">Calendar</h1>
<TABLE ID="calendarTable" BORDER=1  ALIGN="center" style="background-color:white;">
<TR>
    <TH ID="tableHeader" COLSPAN=7></TH>
</TR>
<TR><TH>Sun</TH><TH>Mon</TH><TH>Tue</TH><TH>Wed</TH>
<TH>Thu</TH><TH>Fri</TH><TH>Sat</TH></TR>
<TBODY ID="tableBody"></TBODY>
<TR>
    <TD COLSPAN=7>
    <P>
    <FORM NAME="dateChooser">
        <SELECT NAME="chooseMonth" 
        onChange="populateTable(this.form)">
            <OPTION SELECTED>January<OPTION>February
            <OPTION>March<OPTION>April<OPTION>May
            <OPTION>June<OPTION>July<OPTION>August
            <OPTION>September<OPTION>October
            <OPTION>November<OPTION>December
    </SELECT>
    <SELECT NAME="chooseYear" onChange="populateTable(this.form)">
    </SELECT>
    </FORM>
    </P></TD>
</TR>
</TABLE>
		</th>
</tr>
        </table>    
		<hr>
		<h1 style="color:Black; margin-left: 300px; font-size: 100px;"><b><u>HOSTELS</u></b></h1><br><br>
	</div>
	<div class="card-deck">
		
    <div class="card img-fluid" style="width:500px">
    <img class="card-img-top" src="gargi.jpg" alt="Card image" style="width:100%; height: 100%;">
    <div class="card-img-overlay">
  <a href="#" style="color:black;"><h1>GARGI</h1></a>
  <br>
  <br>
   
    <br><br>
      
      <br>
      <br>
    </div>
  </div>
			
			 <div class="card img-fluid" style="width:500px">
    <img class="card-img-top" src="teresa.png" alt="Card image" style="width:100%;height:100%;">
    <div class="card-img-overlay">
   <a href="#" style="color:black;"><h1>TERESA</h1></a><br><br>
				
      
    </div>
  </div>
			
			
			 <div class="card img-fluid" style="width:500px">
    <img class="card-img-top" src="kalpana.jpg" alt="Card image" style="width:100%;height:100%;">
    <div class="card-img-overlay">
   <a href="#" style="color:black;"><h1>KALPANA</h1></a><br><br>
					
     
    </div>
  </div>

			 <div class="card img-fluid" style="width:500px">
    <img class="card-img-top" src="aryabhatta.jpeg" alt="Card image" style="width:100%;height:100%">
    <div class="card-img-overlay">
     <a href="#" style="color:black;"><h1>ARYABHATTA</h1></a><br><br>
					
      
    </div>
  </div>
		
   
			 <div class="card img-fluid" style="width:500px">
    <img class="card-img-top" src="bose.jpg" alt="Card image" style="width:100%;height:100%;">
    <div class="card-img-overlay">
     <a href="#" style="color:black;"><h1>BOSE</h1></a><br><br>
     
     
    </div>
  </div>
			
		
    </div>
   
	
	<div class="notice"></div>
	

	<footer id="myFooter">
		<div class="container">
			<ul>
				<li><a href="#">Hostel Information</a></li>
				<li><a href="#">Contact us</a></li>
				<li><a href="#">Reviews</a></li>
				<li><a href="#">Terms of service</a></li>
			</ul>
			<p class="footer-copyright">© 2019 Copyright Text</p>
		</div>
		<div class="footer-social">
			<a href="#" class="social-icons"><i class="fa fa-facebook"></i></a> <a
				href="#" class="social-icons"><i class="fa fa-google-plus"></i></a>
			<a href="#" class="social-icons"><i class="fa fa-twitter"></i></a>
		</div>
	</footer>
</body>
</html>
/1