package activemq.publisher;

import javax.jms.Destination;

import org.springframework.jms.core.JmsTemplate;

public class MessageSenderQueue
{
    
    private final JmsTemplate jmsTemplate;
    
    private final Destination destination;
    
    public MessageSenderQueue(final JmsTemplate jmsTemplate, final Destination destination)
    {
        this.jmsTemplate = jmsTemplate;
        this.destination = destination;
    }
    
    public void send(final String text)
    {
        try
        {
            System.out.println("queue发送消息 : " + text);
            Thread.sleep(10);
            jmsTemplate.setDefaultDestination(destination);
            jmsTemplate.convertAndSend(text);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
