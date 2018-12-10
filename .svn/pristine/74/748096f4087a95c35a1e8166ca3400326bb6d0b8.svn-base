package activemq.consumer;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

public class MessageReceiverQueue implements MessageListener
{
    
    public void onMessage(Message message)
    {
        if (message instanceof TextMessage)
        {
            TextMessage textMessage = (TextMessage)message;
            try
            {
                String text = textMessage.getText();
                System.out.println("队列消费者1接收到队列消息: " + text);
            }
            catch (JMSException e)
            {
                e.printStackTrace();
            }
        }
    }
}
