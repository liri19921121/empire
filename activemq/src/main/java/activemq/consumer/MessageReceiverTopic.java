package activemq.consumer;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

public class MessageReceiverTopic implements MessageListener
{
    
    public void onMessage(Message message)
    {
        if (message instanceof TextMessage)
        {
            TextMessage textMessage = (TextMessage)message;
            try
            {
                String text = textMessage.getText();
                System.out.println("主题消费者1接收到主题消息: " + text);
            }
            catch (JMSException e)
            {
                e.printStackTrace();
            }
        }
    }
    
}
