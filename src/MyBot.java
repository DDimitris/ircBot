import org.jibble.pircbot.*;

public class MyBot extends PircBot {
    
    public MyBot() {
        this.setName("Java_Bot");
    }
    
    public void onMessage(String channel, String sender,
                       String login, String hostname, String message) {
        if (message.equalsIgnoreCase("bot time")) {
            String time = new java.util.Date().toString();
            sendMessage(channel, sender + ": The time is now " + time);
        }
    }
}
