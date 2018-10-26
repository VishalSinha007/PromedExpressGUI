package TestIndex;
import java.util.ArrayList;
import java.util.HashMap;

import javax.swing.JCheckBox;

public class Test
{
	
	HashMap<String,String> parameter = new HashMap<String, String>();
	String testClass="";
	public ArrayList<String> methodName = new ArrayList<String>();
	String TestcaseName="";

	public JCheckBox chkboxTc = new JCheckBox();
	
	public String getTestcaseName() {
		return TestcaseName;
	}
	public void setTestcaseName(String testcaseName) {
		TestcaseName = testcaseName;
	}
	                            
    public HashMap<String, String> getParameter() {
		return parameter;
	}
	public void setParameter(HashMap<String, String> parameter) {
		this.parameter = parameter;
	}
	public String getTestClass() {
		return testClass;
	}
	public void setTestClass(String testClass) {
		this.testClass = testClass;
	}
	
	public ArrayList<String> getMethodName() {
		return methodName;
	}
	public void setMethodName(ArrayList<String> methodName) {
		this.methodName = methodName;
	}
	public JCheckBox getChkboxTc() {
		return chkboxTc;
	}
	public void setChkboxTc(JCheckBox chkboxTc) {
		this.chkboxTc = chkboxTc;
	}
	

}