<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Promedexpress</title>
<meta name="keywords"
	content="Chrome Web Design, CSS, HTML, free template, piecemaker" />
<meta name="description"
	content="Chrome Web Design is a free website template integrated with PieceMaker 3D Flash Slider." />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="scripts/swfobject/swfobject.js"></script>
<script type="text/javascript">
	var flashvars = {};
	flashvars.cssSource = "css/piecemaker.css";
	flashvars.xmlSource = "piecemaker.xml";

	var params = {};
	params.play = "true";
	params.menu = "false";
	params.scale = "showall";
	params.wmode = "transparent";
	params.allowfullscreen = "true";
	params.allowscriptaccess = "always";
	params.allownetworking = "all";
	

	swfobject.embedSWF('piecemaker.swf', 'piecemaker', '960', '500', '10',
			null, flashvars, params, null);
</script>
<script type="text/javascript">
 	//int i=0;
        function redirect(){
        	
       window.location = "<%=request.getContextPath()%>/Promedexpress?action=jenkins";
		//i++;

	}
</script>
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="scripts/jquery.min.js"></script>
<script type="text/javascript" src="scripts/ddsmoothmenu.js">
	/***********************************************
	 * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
	 * This notice MUST stay intact for legal use
	 * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
	 ***********************************************/
</script>

<script type="text/javascript">
	ddsmoothmenu.init({
		mainmenuid : "templatemo_menu", //menu DIV id
		orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
		classname : 'ddsmoothmenu', //class added to menu's outer DIV
		//customtheme: ["#1c5a80", "#18374a"],
		contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
	})
</script>

</head>
<%-- <%
HttpSession session1 = request.getSession();
String a="abc";
session1.setAttribute("home",a); %> --%>

<body onLoad="redirect()">

	<form action="<%=request.getContextPath()%>/Promedexpress">

		</form>
</body>
</html>