public with sharing class MessageFailureHandler implements IMessageHandler {
    public string LoadMessage(string MessageType){
    	return '';
    }
    
    public string ShowMessage(){
    	string message = 'Failure';
    	return message;
    }    
}