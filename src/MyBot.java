import org.jibble.pircbot.*;

public class MyBot extends PircBot {
    
    public MyBot() {
        this.setName("Java_Bot");
    }
    
    public void onMessage(String channel, String sender,
                       String login, String hostname, String message) {
       if (message.matches("^Java_Bot\\sdate")){
		String time = new java.util.Date().toString();
                sendMessage(channel, sender + ": The date and time is: " + time);
		}
       else if (message.matches("Java_Bot\\shelp")){
		sendMessage(channel, sender + ": The only thing i can do right now is:");
		sendMessage(channel, "'Java_Bot date' and 'Java_Bot help' sorry!!");
		}
       else if (message.matches("^Java_Bot.*")) { 
                 sendMessage(channel, sender + ": I'm under construction. Leave me alone! Type Java_Bot help for more info!!");
         	}	
    }
}
