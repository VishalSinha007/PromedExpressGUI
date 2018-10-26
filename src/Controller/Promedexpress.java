package Controller;

import java.awt.Desktop;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import TestIndex.Test;
import TestIndex.indexSuite;

/**
 * Servlet implementation class ZingHR
 */
@WebServlet("/Promedexpress")
public class Promedexpress extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Promedexpress() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public Process p1;
	public Process p2; 
	public Process p3; 
	public Process p4;
	public Process p5;
	
	indexSuite indexsuiteName = new indexSuite();
	indexSuite indexsuiteNameforGroup = new indexSuite();

	Test testcase = new Test();

	ArrayList<indexSuite> indexSuiteList = new ArrayList<indexSuite>();

	ArrayList<indexSuite> indexSuiteListforgroup = new ArrayList<indexSuite>();

	List<String> suit = new ArrayList<String>();
	List<String> teTest = new ArrayList<String>();

	List<String> suitforgroup = new ArrayList<String>();
	List<String> teTestforgroup = new ArrayList<String>();

	int filecount;
	DocumentBuilderFactory dbFactory;
	DocumentBuilder dBuilder;
	Test test = new Test();
	String FilePath = "";
	String lbl1;
	String lbl2;
	String lbl3;
	String URL="";
	Document doc;
	
	String WorkspacePath = "D:\\Workspace\\Promedxpress";
	File f1 = new File(WorkspacePath+"\\build\\index.xml");
	
	
	
	
	//File[] suiteFilesForGroup ;
	//File[] Suitefiles = { f1,f2,f3};
	/*File[] Suitefiles = {f1, f2, f3, f4, f6, f7, f8, f9, f10, f11, f12, f13, f14};*/
	
	File[] Suitefiles = {f1};

	//String groupFolederPath = "D:/Videogram/workspace/Videogram/build/NewIndexSuites/Group";
	
	/*String pomFilePath = "D:/Videogram/workspace/Videogram/pom.xml";
	String indexsuitefilePath = "D:/Videogram/workspace/Videogram/build/NewIndexSuites";*/
	String pomFilePath = WorkspacePath+"\\pom.xml";
	String indexsuitefilePath = WorkspacePath+"\\build\\Promedxpress\\NewIndexSuites";

	public ArrayList<String> sessionList = new ArrayList<String>();
	public ArrayList<String> sessiontestList = new ArrayList<String>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

	
		data();

		int i = 1;
		int j = 1;

		for (indexSuite suits : indexSuiteList) {

			suit.add(suits.getIndexSuiteName());
			HttpSession httpSession = request.getSession();
			/* httpSession.setAttribute("suiteload"+j, suit); */
			httpSession.setAttribute("suiteload" + j, suits.getIndexSuiteName());
			j++;

			for (Test tes : suits.getTests()) {

				teTest.add(tes.getTestcaseName());

			}
			HttpSession httpSession1 = request.getSession();

			httpSession1.setAttribute("URL", URL);
			httpSession1.setAttribute("testload" + i, suits.getTests());
			i++;
		}

		

		System.out.println(
				"++++++++++++++++++++++++++++++++++++++++++++++++++++++++DATA FOR GROUP++++++++++++++++++++++");

	

		response.sendRedirect("Homepage.jsp");

		/*if (action.equals("Jenkins")) {
			Jenkins();
		}
		if (action.equalsIgnoreCase("Report")) {
			Report();
		}
		if (action.equalsIgnoreCase("saucelabs")) {
			Saucelab();
		}
		*/
		

	}
	
	public static String getValueFromConfig(String Datafile, String value) throws IOException {
		String result="";
		File file = new File(Datafile);
		FileInputStream fileInput = null;
		try {
			fileInput = new FileInputStream(file);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		Properties prop = new Properties();
		try {
				prop.load(fileInput);
				result = prop.getProperty(value);
		} catch (Exception e) {
			System.out.println("Exception: " + e);
		} finally {
		}
		return result;
	}

	indexSuite is = new indexSuite();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		//String groupName = request.getParameter("gname");
		

		//is.setGroupName(groupName);
		/*is.setTestURL(testURL);
		is.setTestDashURL(testDashURL);*/
		
		if (request.getParameter("b1") != null && request.getParameterValues("tc0") != null) {
			String[] chName = request.getParameterValues("tc0");
			System.out.println("CH NAME  " + chName);
			if (chName == null) {
				request.getRequestDispatcher("Homepage.jsp").forward(request, response);
			}

			String browserName = request.getParameter("browser");
			String testURL = request.getParameter("testURL");
			String testDashURL = request.getParameter("testDashURL");

			@SuppressWarnings("rawtypes")
			List list = Arrays.asList(chName);

			request.setAttribute("tc0", list);
			request.setAttribute("value", "enableJenkins");

			actionPerform(list, chName, browserName, testURL,testDashURL);

		}

		
		System.out.println("request.getParameter(delsuit) " + request.getParameter("delsuit"));

		

		if (request.getParameter("loadsuit") != null) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}

		if (request.getParameter("b2") != null) {
			request.setAttribute("value", "enableReportBtn");
			Jenkins();
		}
		if (request.getParameter("b3") != null) {
			Report();
		}
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
		 //response.sendRedirect("Homepage.jsp");

	}

	public void data() {

		indexSuiteList = new ArrayList<indexSuite>();

		for (filecount = 0; filecount < Suitefiles.length; filecount++) {
			indexsuiteName = new indexSuite();
			ArrayList<Test> testcaseList = new ArrayList<Test>();

			try {

				dbFactory = DocumentBuilderFactory.newInstance();
				dBuilder = dbFactory.newDocumentBuilder();

				doc = dBuilder.parse(Suitefiles[filecount].getAbsolutePath());

				FilePath = Suitefiles[filecount].getParent();

				doc.getDocumentElement().normalize();

				indexsuiteName.setIndexSuiteName(doc.getDocumentElement().getAttribute("name"));
				lbl1 = new String(doc.getDocumentElement().getAttribute("name"));

				indexsuiteName.setParallal(doc.getDocumentElement().getAttribute("parallel"));
				lbl2 = new String(doc.getDocumentElement().getAttribute("parallel"));
				
				indexsuiteName.setThreadCount(doc.getDocumentElement().getAttribute("thread-count"));
				lbl3 = new String(doc.getDocumentElement().getAttribute("thread-count"));
				
				
				NodeList paramList = doc.getElementsByTagName("parameter");
				HashMap<String, String> parameterName = new HashMap<String, String>();
				for (int count = 0; count < paramList.getLength(); count++) {

					Node node1 = paramList.item(count);
					if (node1.getNodeType() == node1.ELEMENT_NODE) {
						Element car = (Element) node1;

						if (car.getParentNode().getNodeName().contains("suite")) {
							parameterName.put(car.getAttribute("name"), car.getAttribute("value"));

						}

					}
				}

				NodeList listenersList = doc.getElementsByTagName("listener");
				ArrayList<String> listenerName = new ArrayList<String>();
				for (int count = 0; count < listenersList.getLength(); count++) {

					Node node1 = listenersList.item(count);
					if (node1.getNodeType() == node1.ELEMENT_NODE) {
						Element car = (Element) node1;

						if (car.getParentNode().getNodeName().contains("listeners")) {
							listenerName.add(car.getAttribute("class-name"));

						}

					}
				}

				indexsuiteName.setParameter(parameterName);
				indexsuiteName.setListenerName(listenerName);
				NodeList nList = doc.getElementsByTagName("test");

				Element eElement;

				System.out.println("----------------------------");
				for (int temp = 0; temp < nList.getLength(); temp++) {

					testcase = new Test();
					Node nNode = nList.item(temp);

					if (nNode.getNodeType() == Node.ELEMENT_NODE) {
						eElement = (Element) nNode;

						testcase.setTestcaseName(eElement.getAttribute("name"));

						NodeList carNameList = eElement.getElementsByTagName("class");
						for (int count = 0; count < carNameList.getLength(); count++) {
							Node node1 = carNameList.item(count);

							if (node1.getNodeType() == node1.ELEMENT_NODE) {
								Element car = (Element) node1;

								testcase.setTestClass(car.getAttribute("name"));

							}
						}

						NodeList paramList1 = eElement.getElementsByTagName("parameter");
						HashMap<String, String> testParameter = new HashMap<String, String>();

						for (int count = 0; count < paramList1.getLength(); count++) {

							Node node1 = paramList1.item(count);

							if (node1.getNodeType() == node1.ELEMENT_NODE) {
								Element car = (Element) node1;

								testParameter.put(car.getAttribute("name"), car.getAttribute("value"));
							}
						}
						testcase.setParameter(testParameter);

						NodeList mathodNameList = eElement.getElementsByTagName("include");
						ArrayList<String> methodName = new ArrayList<String>();
						for (int count = 0; count < mathodNameList.getLength(); count++) {
							Node node1 = mathodNameList.item(count);
							if (node1.getNodeType() == node1.ELEMENT_NODE) {
								Element car = (Element) node1;

								methodName.add(car.getAttribute("name"));

							}

						}
						testcase.setMethodName(methodName);
						testcaseList.add(testcase);
					}

				}

			} catch (Exception ex) {
				ex.printStackTrace();
			}
			try {
				URL = getValueFromConfig(WorkspacePath+"//config.properties","URL");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			indexsuiteName.setTests(testcaseList);
			indexSuiteList.add(indexsuiteName);
		}

	}

	@SuppressWarnings("rawtypes")
	public void actionPerform(List list, String[] chName, String browserName, String testURL, String testDashURL) {
		try {

			/*FileWriter fw = new FileWriter(new File("/mnt/jenkins/jobs/VideogramAutomation_Selected/workspace/TestCaseWrite.txt"));*/
			FileWriter fw = new FileWriter(new File("C:/TestCaseWrite.txt"));
			StringBuilder sb = new StringBuilder();
			for (indexSuite is : indexSuiteList) {
				int writeflag = 0;

				for (int i = 0; i < list.size(); i++) {

					for (Test te : is.getTests()) {

						if (list.get(i).toString().trim().contains(te.getTestcaseName().trim())) {

							if (writeflag == 0) {
								sb.append("<suiteXmlFile>build\\Promedxpress\\NewIndexSuites\\" + is.getIndexSuiteName() + ".xml"
										+ "</suiteXmlFile>\n");

								System.err.println(
										"File Path : " + indexsuitefilePath + "/" + is.getIndexSuiteName() + ".xml");

								fw = new FileWriter(
										new File(indexsuitefilePath + "/" + is.getIndexSuiteName() + ".xml"));
								System.out.println("New file Path======================" + FilePath
										+ is.getIndexSuiteName() + ".xml");

								fw.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?> \n" + "<suite name=\""
										+ is.getIndexSuiteName()
										+ "\" verbose=\"10\" parallel=\""+is.getParallal()+"\" thread-count=\""+is.getThreadCount()+"\">\n");

								@SuppressWarnings("rawtypes")
								Iterator ia = is.getParameter().entrySet().iterator();
								
								// Display elements
								while (ia.hasNext()) {
									@SuppressWarnings("rawtypes")
									Map.Entry me = (Map.Entry) ia.next();

									if (me.getKey().toString().contains("selenium.browser")) {
										System.err.println("Browser : " + me.getKey().toString());

										fw.write("<parameter name=\"" + me.getKey() + "\" value=\"" + browserName
												+ "\" />\n");

									} 
									else if (me.getKey().toString().contains("selenium.url")) {
										String str=is.getIndexSuiteName();
										if(str.equalsIgnoreCase("New_Dashboard_Module"))
										{
											String urld="https://stage.videogram.com/dashboard/create/";
											if(testDashURL.isEmpty())
											
												fw.write("<parameter name=\"selenium.url\" value=\"" + urld
														+ "\" />\n");
											else
												fw.write("<parameter name=\"selenium.url\" value=\"" + testDashURL
														+ "\" />\n");
										}
										else
										{
										fw.write("<parameter name=\"selenium.url\" value=\"" + testURL
												+ "\" />\n");
										}
									} 
									else {
										fw.write("<parameter name=\"" + me.getKey() + "\" value=\"" + me.getValue()
												+ "\" />\n");
									}

								}

								fw.write("<listeners>\n");
								for (String listn : is.getListenerName()) {

									fw.write("<listener class-name=\"" + listn + "\"/>\n");

								}
								fw.write("</listeners>\n");
								writeflag++;
							}

							fw.write("<test name=\"" + list.get(i).toString().trim() + "\"> \n");

							@SuppressWarnings("rawtypes")
							Iterator i1 = te.getParameter().entrySet().iterator();

							// Display elements
							while (i1.hasNext()) {
								@SuppressWarnings("rawtypes")
								Map.Entry me1 = (Map.Entry) i1.next();
								fw.write("<parameter name=\"" + me1.getKey() + "\" value=\"" + me1.getValue()
										+ "\"/>\n");

							}
							fw.write("<classes>\n" + "<class name=\"" + te.getTestClass() + "\">\n" + "<methods>\n");

							for (String methodn : te.methodName) {
								fw.write("<include name=\"" + methodn + "\" />\n");

							}

							fw.write("</methods>\n" + "</class>\n" + "</classes>\n" + "</test>\n");

						}

					}

				}

				System.out.println(sb);

				writePOM(sb);

				if (writeflag != 0) {
					fw.write("</suite>\n");
					// lblTestCaseGenerated.setVisible(true);
					fw.close();
				}

			}

		} catch (Exception e1) {
			System.out.println("Exception : " + e1);
			e1.printStackTrace();
		}
	}


	public void Jenkins() {
		Desktop d = Desktop.getDesktop();

		try {

			d.browse(new URI("http://52.41.122.52:8080/jenkins/view/Videogram%20Automation/job/VideogramAutomation_Selected/"));

		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (URISyntaxException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	public void Report() throws IOException {

		/*File absolute = new File("/mnt/jenkins/jobs/VideogramAutomation/workspace/test-output/index.html");
		//File absolute = new File("D:/Videogram/workspace/Videogram/test-output/index.html");
		if (!Desktop.isDesktopSupported()) {
			System.out.println("Desktop is not supported");
			return;
		}

		Desktop desktop = Desktop.getDesktop();
		if (absolute.exists()) {
			try {

				desktop.open(new File(absolute.getAbsolutePath()));
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}*/
	Runtime.getRuntime().exec("sh /mnt/jenkins/jobs/VideogramAutomation_Selected/workspace/lib/FileOpen.sh");
		
	}

	public void writePOM(StringBuilder sb) {

		System.out.println("String builder : " + sb);

		FileWriter pomWriter;
		try {
			pomWriter = new FileWriter(new File(pomFilePath));

			pomWriter.write(
					"<project xmlns=\"http://maven.apache.org/POM/4.0.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n");
			pomWriter.write(
					"xsi:schemaLocation=\"http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd\">\n");
			pomWriter.write("<modelVersion>4.0.0</modelVersion>\n");

			pomWriter.write("<groupId>Promedexpress</groupId>\n");
			pomWriter.write("<artifactId>Promedexpress</artifactId>\n");
			pomWriter.write("<version>0.0.1-SNAPSHOT</version>\n");
			pomWriter.write("<packaging>jar</packaging>\n");

			pomWriter.write("<name>Promedexpress</name>\n");
			pomWriter.write("<url>http://maven.apache.org</url>\n");

			/*pomWriter.write("<repositories>\n");
			pomWriter.write("<repository>\n");
			pomWriter.write(" <id>projectrepo</id>\n");
			pomWriter.write(" <url>file://C:\\Users\\KSPL08\\.m2\\repository</url>\n");
			pomWriter.write(" </repository>\n");
			pomWriter.write("</repositories>\n");*/

			pomWriter.write("<properties>\n");
			pomWriter.write("<version.testng>6.8.8</version.testng>\n");
			pomWriter.write("<version.selenium>2.53.1</version.selenium>\n");
			pomWriter.write("<version.maven.failsafe>2.17</version.maven.failsafe>\n");
			pomWriter.write("<version.commons.lang>2.6</version.commons.lang>\n");
			pomWriter.write("<version.maven.antrun>1.7</version.maven.antrun>\n");
			pomWriter.write("<version.ant.javamail>1.8.1</version.ant.javamail>\n");
			pomWriter.write("<version.activation>1.1</version.activation>\n");
			pomWriter.write("<version.commons.cli>1.2</version.commons.cli>\n");
			pomWriter.write("<version.poi>3.7</version.poi>\n");
			pomWriter.write("<version.httpclient>4.2.1</version.httpclient>\n");
			pomWriter.write("<version.logback>1.0.6</version.logback>\n");
			pomWriter.write("<version.velocity>1.5</version.velocity>\n");
			pomWriter.write("<failsafe.report>test-output</failsafe.report><!-- target/failsafe-reports/firefox -->\n");
			pomWriter.write("</properties>\n");

			pomWriter.write("<dependencies>\n");
			pomWriter.write("<!-- <dependency> <groupId>net.sf.opencsv</groupId> <artifactId>opencsv</artifactId>\n");
			pomWriter.write("<version>2.3</version> </dependency> --> <!-- for reading data from csv -->\n");

			pomWriter.write("<dependency>");
			pomWriter.write("<groupId>io.appium</groupId>");
			pomWriter.write("<artifactId>java-client</artifactId>\n");
			pomWriter.write("<version>1.6.1</version>\n");
			pomWriter.write("</dependency>\n");

			pomWriter.write("<dependency>");
			pomWriter.write("<groupId>com.opera</groupId>");
			pomWriter.write("<artifactId>operadriver</artifactId>");
			pomWriter.write("<version>1.5</version>");
			pomWriter.write("</dependency>");

			pomWriter.write("<dependency>");
			pomWriter.write("<groupId>com.oakfusion</groupId>");
			pomWriter.write("<artifactId>iedriver-dep</artifactId>");
			pomWriter.write("<version>2.40.0</version>");
			pomWriter.write("</dependency>");

			pomWriter.write("<dependency>");
			pomWriter.write("<groupId>org.seleniumhq.selenium</groupId>");
			pomWriter.write("<artifactId>selenium-safari-driver</artifactId>");
			pomWriter.write("<version>2.48.2</version>");
			pomWriter.write("</dependency>");

			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.apache.poi</groupId>\n");
			pomWriter.write("<artifactId>poi</artifactId>\n");
			pomWriter.write("<version>${version.poi}</version>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.apache.poi</groupId>\n");
			pomWriter.write("<artifactId>poi</artifactId>\n");
			pomWriter.write("<version>3.13</version>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.apache.poi</groupId>\n");
			pomWriter.write("<artifactId>poi-ooxml</artifactId>\n");
			pomWriter.write("<version>3.13</version>\n");
			pomWriter.write("</dependency>\n");

			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.apache.velocity</groupId>\n");
			pomWriter.write("<artifactId>velocity</artifactId>\n");
			pomWriter.write("<version>${version.velocity}</version>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.seleniumhq.selenium</groupId>\n");
			pomWriter.write("<artifactId>selenium-java</artifactId>\n");
			pomWriter.write("<version>${version.selenium}</version>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>commons-lang</groupId>\n");
			pomWriter.write("<artifactId>commons-lang</artifactId>\n");
			pomWriter.write("<version>${version.commons.lang}</version>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>commons-cli</groupId>\n");
			pomWriter.write("<artifactId>commons-cli</artifactId>\n");
			pomWriter.write("<version>${version.commons.cli}</version>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.testng</groupId>\n");
			pomWriter.write("<artifactId>testng</artifactId>\n");
			pomWriter.write("<version>${version.testng}</version>\n");
			pomWriter.write("<scope>test</scope>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>ch.qos.logback</groupId>\n");
			pomWriter.write("<artifactId>logback-classic</artifactId>\n");
			pomWriter.write("<version>${version.logback}</version>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.seleniumhq.selenium</groupId>\n");
			pomWriter.write("<artifactId>selenium-firefox-driver</artifactId>\n");
			pomWriter.write("<version>${version.selenium}</version>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.seleniumhq.selenium</groupId>\n");
			pomWriter.write("<artifactId>selenium-chrome-driver</artifactId>\n");
			pomWriter.write("<version>${version.selenium}</version>\n");
			pomWriter.write("</dependency>\n");
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.seleniumhq.selenium</groupId>\n");
			pomWriter.write("<artifactId>selenium-remote-driver</artifactId>\n");
			pomWriter.write("<version>${version.selenium}</version>\n");
			pomWriter.write("</dependency>\n");
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>org.seleniumhq.selenium</groupId>\n");
			pomWriter.write("<artifactId>selenium-ie-driver</artifactId>\n");
			pomWriter.write("<version>${version.selenium}</version>\n");
			pomWriter.write("</dependency>\n");
			pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>com.google.code.gson</groupId>\n");
			pomWriter.write("<artifactId>gson</artifactId>\n");
			pomWriter.write("<version>2.2.4</version>\n");
			pomWriter.write("</dependency>\n");
			
			pomWriter.write("<!-- <dependency> <groupId>org.apache.maven.plugins</groupId> <artifactId>maven-compiler-plugin</artifactId>\n");
			pomWriter.write("<version>3.2</version> </dependency> -->\n");
			pomWriter.write("<dependency>\n");
			
			pomWriter.write("<groupId>bouncycastle</groupId>\n");
			pomWriter.write("<artifactId>bcprov-jdk14</artifactId>\n");
			pomWriter.write("<version>138</version>\n");
			pomWriter.write("</dependency>\n");
		/*	pomWriter.write("<dependency>\n");
			pomWriter.write("<groupId>ViGo-Reports</groupId>\n");
			pomWriter.write("<artifactId>ViGo-Reports</artifactId>\n");
			pomWriter.write("<version>1.5.0</version>\n");
			pomWriter.write("</dependency>\n");*/

			pomWriter.write("</dependencies>\n");
			
			pomWriter.write("<build>\n");
			pomWriter.write("<!-- <sourceDirectory>src</sourceDirectory> -->\n");
			pomWriter.write("<plugins>\n");
				pomWriter.write("<plugin>\n");
					pomWriter.write("<groupId>org.apache.maven.plugins</groupId>\n");
					pomWriter.write("<artifactId>maven-compiler-plugin</artifactId>\n");
					pomWriter.write("<version>2.3.2</version>\n");
					pomWriter.write("<configuration>\n");
						pomWriter.write("<encoding>Cp1252</encoding>\n");
						pomWriter.write("</configuration>\n");
			pomWriter.write("</plugin>\n");
			
			pomWriter.write("<plugin>\n");
			pomWriter.write("<groupId>org.codehaus.mojo</groupId>\n");
			pomWriter.write("<artifactId>exec-maven-plugin</artifactId>\n");
			pomWriter.write("<version>1.2.1</version>\n");
			pomWriter.write("<executions>\n");
			pomWriter.write("<execution>\n");
			pomWriter.write("<goals>\n");
			pomWriter.write("<goal>java</goal>\n");
			pomWriter.write("</goals>\n");
			pomWriter.write("</execution>\n");
			pomWriter.write("</executions>\n");
			pomWriter.write("</plugin>\n");
			
			pomWriter.write("<plugin>\n");
			pomWriter.write("<groupId>org.apache.maven.plugins</groupId>\n");
			pomWriter.write("<artifactId>maven-surefire-plugin</artifactId>\n");
			pomWriter.write("<version>2.17</version>\n");
			pomWriter.write("<configuration>\n");
			pomWriter.write("<forkMode>never</forkMode>\n");
			pomWriter.write("<suiteXmlFiles>\n");

			/* Insert Suite file here */

			// pomWriter.write("<suiteXmlFile>build\\NewIndexSuites\\"+suiteFileName.getIndexSuiteName()+".xml"+"</suiteXmlFile>\n");
			pomWriter.write(sb.toString());

			pomWriter.write("</suiteXmlFiles>\n");
			pomWriter.write("<reportsDirectory>test-output</reportsDirectory>\n");
			pomWriter.write("<properties>\n");
			pomWriter.write("<property>\n");
			pomWriter.write("<name>usedefaultlisteners</name>\n");
			pomWriter.write("<value>true</value>\n");
			pomWriter.write("</property>\n");
			pomWriter.write("<property>\n");
			pomWriter.write("<name>reporter</name>\n");
			pomWriter.write("<value>listenReport.Reporter</value>\n");
			pomWriter.write("</property>\n");
			pomWriter.write("</properties>\n");
			pomWriter.write("</configuration>\n");
			pomWriter.write("</plugin>\n");
			
			/*pomWriter.write("	<plugin>\n");
			pomWriter.write("	<artifactId>maven-compiler-plugin</artifactId>\n");
			pomWriter.write("	<configuration>\n");
			pomWriter.write("	<source>1.6</source>\n");
			pomWriter.write("		<target>1.6</target>\n");
			pomWriter.write("		</configuration>\n");
			pomWriter.write("	</plugin>\n");*/

			pomWriter.write("</plugins>");
			pomWriter.write("</build>");
			pomWriter.write("</project>");

			pomWriter.close();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void Saucelab() {
		Desktop d = Desktop.getDesktop();

		// Browse a URL, for example http://localhost:8080
		try {

			d.browse(new URI("https://saucelabs.com/login"));
			// System.err.println(FilePath.replace("\build","/test-output/index.html")+"==================");
			// d.browse(new
			// URI("file:///"+FilePath.replace("\\build","/test-output/index.html")));
			// d.browse(new URI("file:///C:/ZingHR/test-output/index.html"));
			// d.browse(new URI("http://localhost:8080/job/ZingHR/"));

		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (URISyntaxException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
}