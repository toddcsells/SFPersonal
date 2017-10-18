public with sharing class ClassController {
    public static void invokeMessageImpl(string MessageCode){
    	
    	string MessageClassName;
    	
    	if(MessageCode == '1')
    		MessageClassName = 'MessageSuccessHandler';
    	else
    		MessageClassName = 'MessageFailureHandler';
    		
    	type msgtype = type.forName(MessageClassName);
    	
    	IMessageHandler mh = (IMessageHandler)msgtype.newInstance();
    	
    	system.debug('The message is: ' + mh.ShowMessage());
    }
}