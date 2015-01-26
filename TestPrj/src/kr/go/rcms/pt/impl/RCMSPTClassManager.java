package kr.go.rcms.pt.impl;

import jex.data.IJexDataChecker;
import jex.sys.JexErrorManager;
import jex.web.JexDefaultPTClassManager;

public class RCMSPTClassManager extends JexDefaultPTClassManager
{ 
	private RCMSPTErrorManager _errManager = new RCMSPTErrorManager();
	private RCMSPTDataChecker _dataChecker = new RCMSPTDataChecker();
	
	public RCMSPTClassManager()
	{
	}
	
	@Override
	public IJexDataChecker getJexDataChecker()
    {
	    return _dataChecker;
    }
	
	@Override
    public JexErrorManager getJexErrorManager()
    {
	    return _errManager;
    }	

}
