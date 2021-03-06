<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/header.jsp" />

<div class="docAll">
<h1 class="whatsUpDoc"> <strong>Welcome</strong> Dr. ${doctor.lastName} </h1>
<div class="buttonsDoc">
<a href="/appointment">Office Appointments</a>
<c:if test="${doctor.doctorId == '1'}">
	<!-- MANTIS AVAILABILITY BUTTON -->
	<a target="_blank" href="https://secure.acuityscheduling.com/preferences.php?tab=schedule&calendar=2473471">Change Availability</a>
</c:if>
<c:if test="${doctor.doctorId == '2'}">
	<!-- JACK AVAILABILITY BUTTON -->
	<a target="_blank" href="https://secure.acuityscheduling.com/preferences.php?tab=schedule&calendar=2473523">Change Availability</a>
</c:if>
<c:if test="${doctor.doctorId == '3'}">
	<!-- BARB AVAILABILITY BUTTON -->
	<a target="_blank" href="https://secure.acuityscheduling.com/preferences.php?tab=schedule&calendar=2487129">Change Availability</a>
</c:if>
<!-- <button>Message A Patient</button> -->
<a href="https://www.spotify.com/us/">Listen to Spotify</a>
</div>
<div class ="docImage">
<img src="/img/Doctor${doctor.doctorId}.jpg">
</div>

<div class="infoDoc">
	<h3><strong>Practice</strong> Type:</h3> 
</div>
	<div class="practice">
		<h2>${doctor.practice}</h2>
	</div>


<div class="appointmentsDoc">
	<c:if test="${doctor.doctorId == '1'}">
		<iframe src="https://calendar.google.com/calendar/b/2/embed?title=Dr.%20Toboggan&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23666666&amp;src=mantistob1%40gmail.com&amp;color=%231B887A&amp;ctz=America%2FNew_York" 
		style="border-width:0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
		<br/>
	</c:if>
	<c:if test="${doctor.doctorId == '2'}">
		<iframe src="https://calendar.google.com/calendar/b/3/embed?title=Dr.%20Kevorkian&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23666666&amp;src=jackkevorks%40gmail.com&amp;color=%231B887A&amp;ctz=America%2FNew_York" 
		style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
		<br/>
	</c:if>
	<c:if test="${doctor.doctorId == '3'}">
		<iframe src="https://calendar.google.com/calendar/b/4/embed?title=Dr.%20Hooks&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23666666&amp;src=barbhooks3%40gmail.com&amp;color=%231B887A&amp;ctz=America%2FNew_York" 
		style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
		<br/>
	</c:if>
	</div>
<div class="drInfo">
<h4>NAME: <em>${doctor.firstName} ${doctor.lastName}</em></h4>
<%-- <h4>EMAIL: ${doctor.email}</h4> --%>
</div>
</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />