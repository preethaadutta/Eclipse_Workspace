<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card{
/*box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);*/
box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}
.card{
flex-direction:column;
}
.bg-danger {
    /*background-color: #FFA07A!important;*/
    background: linear-gradient(to right bottom, #cc2b5e 30%, #753a88 )!important;
}
body{
background: linear-gradient(to left bottom, #3494e6 , #ec6ead )!important;
}
.list-group-item{
border:none;
}
.logocolor{
color:#00ffff!important;
}
.nav-link.active:hover{
color:#00ffff!important;
}
/*
.iconcolor{
color:#ca226b !important;
}
*/

.section-title {
	text-align: center;
	padding: 15px 0;
}
.section-title h2 {
	font-size: 30px;
	text-transform: uppercase;
	font-family: oswald;
	font-weight: 700;
	text-shadow: 0 1px 2px rgba(0, 0, 0.1);
}
.section-title h2 span {
	color: yellow;
}
.contact-form {
	background-color: #fff;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	padding: 40px 30px;
}
.form-control{
	background-color: rgb(247, 197, 205)!important;
}
.contact-form .btn {
	background: rgb(246, 101, 125)!important;
	text-transform: uppercase;
	font-weight: 700;
	padding: 10px 30px;
	/*letter-spacing: 1px;*/
}
.map-area {
	/*width: 600px; width: 450px;*/
	height: 465px;
	background: #fff;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
}
.map-area iframe {
	width: 100%;
	height: 100%;
	border: none;
}
.form-group {
    margin-bottom: 6px;/*margin-bottom: 15px;*/
}
/*responsive*/

@media (max-width: 991px) {
	.contact-form {
		margin-bottom: 30px;
	}
	.map-area {
		width: 100%;
		/*height:400px;*/
		height: 465px;
	}
}

</style>
</head>
<body>
   <%@include file="component/navbar.jsp"%>
   <!-- <%Connection conn=DBConnect.getConn();
   out.print(conn);%> //used for checking only-->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/main1.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="image/doctor care.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
    <div class="carousel-item">
      <img src="image/Doctor-Appointment.jpg" class="d-block w-100" alt="..." height="600px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

	<div class="container p-3">
		<p class="text-center fs-2 ">What We Offer?</p>
		
		<div class="row">
            <div class="col-lg-6 box-1">
                <div class="row">
                    <div class="col-md-6 box-3">
                        <div class="card mt-4 text-center paint-card"><!--mt-3 means margin-top-->
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Pathology lab</li>
                                <li class="list-group-item">Cardiology</li>
                                <li class="list-group-item">24*7 Emergency Care</li>
                                <li class="list-group-item">Dietetics</li>
                                <li class="list-group-item">Physiotherapy</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 box-4">
                        <div class="card mt-4 text-center paint-card"><!--mt-3 means margin-top-->
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Pharmacy</li>
                                <li class="list-group-item">ECG-ECHO</li>
                                <li class="list-group-item">Operation Theatre</li>
                                <li class="list-group-item">CT-Scan</li>
                                <li class="list-group-item">MRI</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 box-2">
                <div class="card mt-2 text-center"><!--mt-3 means margin-top-->
                    <img src="image/services.jpg" alt="" width="100%" height="230px">
                </div>
            </div>
        </div>
        
	</div>
	<div class="container p-4">
		<p class="text-center fs-2 ">Our Consultants</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="image/doctor image1.jpg" width="120px" height="200px">
						<p class="fw-bold fs-5">Samuani Simi</p>
						<p class="fs-7">(CEO)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="image/doctor image2.jpg" width="120px" height="200px">
						<p class="fw-bold fs-5">Dr.Siva Kumar</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="image/doctor image3.jpg" width="120px" height="200px">
						<p class="fw-bold fs-5">Dr. Niuise Paule</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="image/doctor image4.jpg" width="120px" height="200px">
						<p class="fw-bold fs-5">Dr. Mathue Roy</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="contact-area">
		<div class="container p-4">
		    <p class="text-center fs-2 ">Get In Touch</p>
			<!-- <div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-title">
						<h2><span>Contact</span> Us</h2>
					</div>
				</div>
			</div> -->
			<div class="row">
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="contact-form">
						<form>
							<div class="form-group">
								<input class="form-control" placeholder="Enter Your Name" type="text" required>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Enter Your Phone Number" type="text" required>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Enter Your Email" type="email" required>
							</div>
							<div class="form-group">
								<textarea class="form-control" cols="30" placeholder="Enter Your Query" rows="8" required></textarea>
							</div>
							<button class="btn" type="submit">Send</button>
						</form>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="map-area">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723109.0028528688!2d83.49698698770923!3d24.316914307486627!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fa16ff1397e887%3A0x71543a3dc3e7a20a!2sWest%20Bengal!5e0!3m2!1sen!2sin!4v1673263182312!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="component/footer.jsp"%>
</body>
</html>
