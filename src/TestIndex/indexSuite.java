package TestIndex;

import java.util.ArrayList;
import java.util.HashMap;

public class indexSuite {

	// ArrayList<ArrayList<String>> parameters = new
	// ArrayList<ArrayList<String>>();
	HashMap<String, String> parameter = new HashMap<String, String>();
	ArrayList<Test> tests = new ArrayList<Test>();
	ArrayList<String> listenerName = new ArrayList<String>();
	protected String indexSuiteName;
	
	protected String Parallal;
	
	protected String ThreadCount;

	public String getParallal() {
		return Parallal;
	}

	public void setParallal(String parallal) {
		Parallal = parallal;
	}

	public String getThreadCount() {
		return ThreadCount;
	}

	public void setThreadCount(String threadCount) {
		ThreadCount = threadCount;
	}


	public String getIndexSuiteName() {
		return indexSuiteName;
	}

	public void setIndexSuiteName(String indexSuiteName) {
		this.indexSuiteName = indexSuiteName;
	}

	public HashMap<String, String> getParameter() {
		return parameter;
	}

	public void setParameter(HashMap<String, String> parameter) {
		this.parameter = parameter;
	}

	public ArrayList<Test> getTests() {
		return tests;
	}

	public void setTests(ArrayList<Test> tests) {
		this.tests = tests;
	}

	public ArrayList<String> getListenerName() {
		return listenerName;
	}

	public void setListenerName(ArrayList<String> listenerName) {
		this.listenerName = listenerName;
	}

}
