<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
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


<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="scripts/jquery.min.js"></script>
<script src="scripts/swfobject/bootstrap.min.js"></script>
<script type="text/javascript" src="scripts/swfobject/swfobject.js"></script>
<script type="text/javascript" src="scripts/jquery.min.js"></script>



<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap.min.js"></script>
<script type="text/javascript" src="scripts/swfobject/swfobject.js"></script>
<script type="text/javascript" src="/scripts/jquery.min.js"></script> --%>


<!-- <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="scripts/swfobject/swfobject.js"></script>

<script type="text/javascript" language="javascript">
<%Object objVal = request.getAttribute("value");
			System.out.println("-----strValue====" + objVal);%>
if(<%=objVal%>==null)
{
function testcheck()
{

	$('[name="tc0"]:checked').length;
	var x = document.forms["vid"]["testURL"].value;
	
	   
	 if (x == null || x == "" || x==" " || x=="  " || x=="   "|| x=="    "|| x=="     "|| x=="      "|| x=="       "|| x=="        "|| x=="         "|| x=="         "|| x=="          "|| x=="           " || x=="            ") 
	 {
	        alert("Test URL must be filled out");
	        return false;
	
    
	//alert($('[name="tc0"]:checked').length);
	 }else 
		 {
		 if($('[name="tc0"]:checked').length!=0){
		alert("Test Case Generated Successfully.");	

		 /* document.forms[0].submit(); */
		 
		return true;
		
		//valthis();
	}
	
	
	else
		{
		alert("Please select any Testcase to run.");
		return false;
		}
	
		 }
}


function testcheck1()
{
	
	$('[name="tc1"]:checked').length;
	if($('[name="tc1"]:checked').length!=0){
		alert("Group suite Generated Successfully.");	
		
		return true;
		
		//valthis();
	}else
		{
		alert("Please select any Groups to run.");
		return false;
		}
	
	}


function testcheckfordelete()
{
	
	$('[name="tc1"]:checked').length;
	if($('[name="tc1"]:checked').length!=0){
		alert("Group suite Deleted Successfully.");	

		return true;
		
		//valthis();
	}else
		{
		alert("Please select any Groups to delete.");
		return false;
		}
	
	}

function blankCreateGroup()
{
	 var x = document.forms["vid"]["gname"].value;
	   
	 if (x == null || x == "") 
	 {
	        alert("Name must be filled out");
	        return false;
	
     }else
    	 {
    	 
    	 if($('[name="tc0"]:checked').length!=0){
    		    			return true;
    		}
    		else
    			{
    			alert("Please select any Testcase for adding into group.");
    			return false;
    			}
    		 }

}


$(document).ready(function(){
    $("#selecctall").change(function(){
      $(".checkbox1").prop('checked', $(this).prop("checked"));
      });
});
}

/* function validateForm() {
    var x = document.forms["vid"]["tc0"].value;
    if (x == null || x == "") {
        alert("Please select any test cases.");
        return false;
    }
    else
    	{
    	  alert("Test cases are selected.");
    	}
} */

</script>

<script type="text/javascript" language="javascript">
function valthis()
{

/* if ($('[name="tc0"]:checked').length!=0)
{ */
	this.form.document.getElementById("b2").disabled = false;
    this.form.document.getElementById("b3").disabled = false;
//}
/* else
{
	alert ("please check at least one checkbox")
	return false;
} */
	};


</script>

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
<%--  <script type="text/javascript">
 	//int i=0;
        function jenkins(){
        	
        window.location = "<%=request.getContextPath() %>\ZingHR?j=jenkins";
        		//i++;
        alert("jenkins");
        }
</script> --%>
<script type="text/javascript">
 	//int i=0;
        function sau(){
        	var a=document.getElementsByName(elementName).value;
        	if(a=="mac" || a=="Android" || a=="saucelabiphone")
        		{
        		alert(a);
        		  this.form.document.getElementById("b4").disabled = false;
        		
        		}
        	else
        		{
        		alert(a);
        		}
 
        }
</script>
<%-- <script type="text/javascript">
 	//int i=0;
        function Jenkins(){
        	
        window.location = "<%=request.getContextPath()%>/Videogram?action=Jenkins";
		//i++;
		/* alert("jenkins"); */
	}
</script> --%>
<script type="text/javascript">
 	//int i=0;
        function Report(){
        	
      <%--   window.location = "<%=request.getContextPath()%>/Videogram?action=Report"; --%>
       /*  window.location.href = " file:///mnt/jenkins/jobs/VideogramAutomation/workspace/test-output/index.html"; */
 		//i++;
		/* alert("jenkins"); */
	}
</script>

<script type="text/javascript">
	//int i=0;
	function Jenkins() {
		window.location.href = "http://localhost:8080";
		//i++;

		//alert("report");
	}
</script>

<%-- <script type="text/javascript">
 	//int i=0;
        function Saucelabs(){
        	
        window.location = "<%=request.getContextPath()%>
	/ZingHR?action=saucelabs";
		//i++;
		//alert("jenkins");
	}
</script> --%>
<script type="text/javascript">
	//int i=0;
	function enable() {

	}
</script>
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<script type="text/javascript" src="scripts/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="scripts/jquery.min.js"></script>
<script type="text/javascript" src="scripts/ddsmoothmenu.js">
	/***********************************************
	 * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
	 * This notice MUST stay intact for legal use
	 * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
	 ***********************************************/
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#checkAll").click(function() {
			$(".checkBoxClass").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll1").click(function() {
			$(".checkBoxClass1").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll2").click(function() {
			$(".checkBoxClass2").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll3").click(function() {
			$(".checkBoxClass3").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll4").click(function() {
			$(".checkBoxClass4").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll5").click(function() {
			$(".checkBoxClass5").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll6").click(function() {
			$(".checkBoxClass6").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll7").click(function() {
			$(".checkBoxClass7").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll8").click(function() {
			$(".checkBoxClass8").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll9").click(function() {
			$(".checkBoxClass9").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll10").click(function() {
			$(".checkBoxClass10").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll11").click(function() {
			$(".checkBoxClass11").prop('checked', $(this).prop('checked'));
		});
	});

	$(document).ready(function() {
		$("#checkAll12").click(function() {
			$(".checkBoxClass12").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll13").click(function() {
			$(".checkBoxClass13").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll14").click(function() {
			$(".checkBoxClass14").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll15").click(function() {
			$(".checkBoxClass15").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll16").click(function() {
			$(".checkBoxClass16").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll17").click(function() {
			$(".checkBoxClass17").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll18").click(function() {
			$(".checkBoxClass18").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll19").click(function() {
			$(".checkBoxClass19").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll20").click(function() {
			$(".checkBoxClass20").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll21").click(function() {
			$(".checkBoxClass21").prop('checked', $(this).prop('checked'));
		});
	});
	
	$(document).ready(function() {
		$("#checkAll22").click(function() {
			$(".checkBoxClass22").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll23").click(function() {
			$(".checkBoxClass23").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll24").click(function() {
			$(".checkBoxClass24").prop('checked', $(this).prop('checked'));
		});
	});
	
	$(document).ready(function() {
		$("#checkAll25").click(function() {
			$(".checkBoxClass25").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll26").click(function() {
			$(".checkBoxClass26").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll27").click(function() {
			$(".checkBoxClass27").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll28").click(function() {
			$(".checkBoxClass28").prop('checked', $(this).prop('checked'));
		});
	});
	
	$(document).ready(function() {
		$("#checkAll29").click(function() {
			$(".checkBoxClass29").prop('checked', $(this).prop('checked'));
		});
	});
	
	$(document).ready(function() {
		$("#checkAll30").click(function() {
			$(".checkBoxClass30").prop('checked', $(this).prop('checked'));
		});
	});
	
	$(document).ready(function() {
		$("#checkAll31").click(function() {
			$(".checkBoxClass32").prop('checked', $(this).prop('checked'));
		});
	});
	$(document).ready(function() {
		$("#checkAll33").click(function() {
			$(".checkBoxClass33").prop('checked', $(this).prop('checked'));
		});
	});
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

<style>
fieldset {
	padding: 5px !important;
	margin: 15px !important;
	border: 1px solid silver !important;
}

legend {
	padding: 2px !important;
	border: none !important;
	white-space: nowrap;
	margin: 5px !important;
	font-size: 14px !important;
	font-weight: bold !important;
}
</style>

</head>

<body>


	<input type="hidden" value="post" name="pr">
	<div id="templatemo_wrapper">


		<div style="height: 65px; width: 100%; background-color: white">
			<table border="0" style="padding: 0px; margin: 0px; width: 100%"
				cellpadding="0" cellspacing="0" width="100%">
				<tr>
					<td ><img src="http://accorin.com/wp-content/uploads/2015/08/accorin_logo_bw.png"
						alt="" style=" float: left; padding: 10px" height="70px" /></td>
						
					<td style="float: left;"><h2>Test Automation Suite</h2></td>
					<td ></td>
					<td >
					</tr>
										
			</table>

		</div>
		
		
		<div id="templatemo_header">
		
	<div style="float: left; width: 100%; padding-top: 30px !important;">
	<!-- <div class="col_fw" style="float: left; width: 50%">
	
				<fieldset >
				
					<legend>Full-Build Execution</legend>


<h5 align=left style="font-weight: bold; padding-right: 30px !important; font-color:#0000FF" >
<a href=" http://automation.videogram.com:8080/jenkins/view/Videogram%20Automation/job/VideogramAutomation_Full" title="Open Jenkins" target="_blank"><u>Go To Jenkins</u></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href=" http://automation.videogram.com:8080/jenkins/view/Videogram%20Automation/job/VideogramAutomation_Full/HTML_Report/" title="Click to open latest report" target="_blank"><u>Open Report</u></a> 
</h5>
					</fieldset>
					</div>
					<div class="col_fw" style="float: left; width: 50%">
					<fieldset >
					<legend>UploadFeatures_TestCases-Build Execution</legend>


<h5 align=left style="font-weight: bold; padding-right: 30px !important; font-color:#0000FF" >
<a href=" http://automation.videogram.com:8080/jenkins/view/Videogram%20Automation/job/UploadFeatures_TestCases_Build/" title="Open Jenkins" target="_blank"><u>Go To Jenkins</u></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href=" http://automation.videogram.com:8080/jenkins/view/Videogram%20Automation/job/UploadFeatures_TestCases_Build/HTML_Report/" title="Click to open latest report" target="_blank"><u>Open Report</u></a> 
</h5>
					
				</fieldset>
				</div>
				
				 -->
		 
		</div>
	
			<div class="col_fw" style="float: left; width: 70%">
				<form action="<%=request.getContextPath()%>/Promedexpress" method="post"
					name="vid">
					<fieldset>
					<!-- 	<legend>All Test cases</legend> -->
					<legend>Selected-Build Execution</legend>

<h5 align="right" style="font-weight: bold; padding-right: 30px !important; font-color:#0000FF" >
<a href="http://localhost:8080" title="Open Jenkins" target="_blank"><u>Go To Jenkins</u></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!-- <a href="http://localhost:8080/job/Kleenex/HTML_Report/" title="Click to open latest report" target="_blank"><u>Open Report</u></a>  -->
</h5>

<!-- <a href=" http://localhost:8080/job/BrandShop/" title="Open Jenkins" target="_blank"><u>Go To Jenkins</u></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href=" http://localhost:8080/job/BrandShop/HTML_Report/" title="Click to open latest report" target="_blank"><u>Open Report</u></a> 
</h5> -->

						<table cellpadding="10px">
							<tr>
												<%
									/* String dashURL="https://stage.videogram.com/dashboard/create/";
												String stageURL="https://stage.videogram.com/"; */
												//String dashURL="http://34.208.59.166/kleenex";
												String stageURL="http://34.208.59.166/kleenex";
								%>
													
													<td width="15px"></td>
													<%-- <td style="font-weight: bold; padding-right: 10px !important;"> <b>Enter test Dashboard URL: &nbsp;</b></td>
													<td width="50px" colspan="2"><input type="text" id="testDashURL"
														name="testDashURL" style="width: 300px;" value="<%=dashURL%>"></td>
													<td width="15px"></td> --%>
													</tr>
													<tr>
													<td height="15px" colspan="2"></td>
													<td height="15px" ></td>
													</tr>

							<tr>
								 <td width="150px" style="font-weight: bold; padding-right: 10px !important;visibility:hidden;display:none;">Select
									Browser:</td>
								<td style="visibility:hidden;display:none;"><input type="radio" name="browser" value="chrome"
									checked="checked" >&nbsp; Chrome</td> 
								<!-- <td><input type="radio" name="browser" value="androidMobile"
									style="margin-left: 10px">&nbsp;Android</td>
									
								<td><input type="radio" name="browser" value="iphoneMobile"
									style="margin-left: 10px">&nbsp;iPhone</td> -->

								<!-- 	<td width="41px"><input type="radio" name="browser"
									value="ie11" style="margin-left: 10px">&nbsp;IE</td>

								<td width="65px"><input type="radio" name="browser"
									value="safari" style="margin-left: 10px">&nbsp;Safari</td>

								<td width="100px"><input type="radio" name="browser"
									value="opera" style="margin-left: 10px">&nbsp;Opera</td> -->
							</tr>
							
							
						</table>



						<div style="margin-top: 25px">

							<div>
								<%
									int i = 1, k = 0;
								%>
								<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

								<c:forEach items="${sessionScope.suiteload1}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>

										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload1}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k %>"
															class="checkBoxClass" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>
											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload2}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll1" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload2}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass1" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload3}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll2" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload3}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass2" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload4}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll3" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload4}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass3" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload5}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll4" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload5}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass4" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload6}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll5" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload6}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass5" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload7}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll6" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload7}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass6" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload8}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll7" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload8}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass7" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload9}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll8" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload9}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass8" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload10}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll9" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload10}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass9" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload11}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll10" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload11}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass10" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload12}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll11" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload12}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass11" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								<c:forEach items="${sessionScope.suiteload13}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll12" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload13}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass12" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>

								
								<c:forEach items="${sessionScope.suiteload14}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll13" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload14}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass13" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload15}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll14" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload15}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass14" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload16}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll15" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload16}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass15" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload17}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll16" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload17}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass16" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload18}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll17" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload18}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass17" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload19}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll18" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload19}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass18" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								
								<c:forEach items="${sessionScope.suiteload20}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll19" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload20}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass19" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload21}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll20" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload21}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass20" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload22}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll21" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload22}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass21" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload23}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll22" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload23}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass22" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload24}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll23" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload24}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass23" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload25}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll24" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload25}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass24" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload26}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll25" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload26}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass25" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload27}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll26" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload27}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass26" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload28}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll27" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload28}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass27" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload29}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll28" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload29}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass28" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload30}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll29" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload30}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass29" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload31}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll30" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload31}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass30" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload32}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll31" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload32}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass31" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload33}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll32" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload33}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass32" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>
								
								<c:forEach items="${sessionScope.suiteload34}" var="j">
									<div class="panel panel-default">
										<div class="panel-heading panel-title">
											<input type="checkbox" id="checkAll33" style="float: left;" />&nbsp;&nbsp;
											<div href="#collapse<%=i%>" data-toggle="collapse"
												data-parent="#accordion"
												style="width: 94%; float: left; margin-left: 5px;">
												<a href="#">${j}</a>
											</div>
										</div>
										<div id="collapse<%=i++%>" class="panel-collapse collapse ">
											<c:forEach items="${sessionScope.testload34}" var="i">
												<div class="panel-body">
													<p>
														<input type="checkbox" name="tc<%=k  %>"
															class="checkBoxClass33" value="${i.getTestcaseName()}" />&nbsp;&nbsp;${i.getTestcaseName()}
													</p>
												</div>

											</c:forEach>
										</div>
									</div>
								</c:forEach>								
								
								

							</div>
							<table cellpadding="0" cellspacing="0" width="97%"
								style="width: 5%;">
								<tr>
									<td>
										
											
											<br>
											<table>
											<tr align="center">										
												<tr>
													<td><input type="submit" name="b1"
														value="Generate Suites" align="left" id="b1"
														onclick="return testcheck();"></td>

												</tr>
											</table>
										</fieldset>
									</td>
									
								</tr>
							</table>

				</form>

			</div>
			</div>

			
			<div class="col_fw" style="float: left; width: 30%; background-color:#ffffcc;">
				<fieldset>
					<legend>Steps to execute selected Build</legend>



<table style="font-size: 90%">

<tbody>

<tr>
<td>
<b>&nbsp;Step 1:</b>  &nbsp;&nbsp;Enter Test URL into "Test URL" textbox, URL like "${sessionScope.URL}". &nbsp;</td></tr><tr><td>
<b>&nbsp;Step 2: </b>&nbsp;&nbsp;Select any browser.&nbsp;</td></tr><tr><td>
<b>&nbsp;Step 3: </b>&nbsp;&nbsp;Select test cases as per your choice.&nbsp;</td></tr><tr><td>
<b>&nbsp;Step 4: </b>&nbsp;&nbsp;Click on "Generate Suites" button.&nbsp;</td></tr><tr><td>
<b>&nbsp;Step 5: </b>&nbsp;&nbsp;Click on "Go To Jenkins" link.&nbsp;</td></tr><tr><td>
<b>&nbsp;Step 6: </b>&nbsp;&nbsp;Do login if you are not logged in Jenkins.&nbsp;</td></tr><tr><td>
<b>&nbsp;Step 7: </b>&nbsp;&nbsp;Click on "Build Now" link from Jenkins. &nbsp;</td></tr><tr><td>
<b>&nbsp;Step 8: </b>&nbsp;&nbsp;After Build execution, you will get email of build status.&nbsp;</td></tr><tr><td>
<b>&nbsp;Step 9: </b>&nbsp;&nbsp;If you want to see whole build report then Click on "Open Report" link from "Promedxpress Automation Selected-Build Execution" section.&nbsp;</td></tr><tr><td>
</td>
</tr>
<tr>
<td><br>
<b>Please follow link to know selenium Hub/Node status : </b>
<a href=" http://localhost:4444/grid/console" data-toggle="tooltip" title="Click here to know selenium Hub/Node status" target="_blank"><u>Selenium Grid</u></a>


</td>
</tr></tbody>

</table>

</fieldset>

		</div>

		<div class="cleaner"></div>
	</div>
	<div class="col_fw_last"></div>
	<!-- <table> -->

	<div class="cleaner h20"></div>
	<div class="float_r"></div>
	<div class="cleaner"></div>
	</div>
	<div class="cleaner"></div>
	</div>


	<div class="cleaner"></div>

	<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
		</div>
	</div>

	<!-- 	</table> -->
	</div>


</body>
</html>
