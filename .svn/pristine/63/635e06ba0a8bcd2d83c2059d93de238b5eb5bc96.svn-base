package activemq.publisher;

import javax.jms.Destination;

import org.springframework.jms.core.JmsTemplate;

public class MessageSenderTopic
{
    
    private final JmsTemplate jmsTemplate;
    
    private final Destination destination;
    
    public MessageSenderTopic(final JmsTemplate jmsTemplate, final Destination destination)
    {
        this.jmsTemplate = jmsTemplate;
        this.destination = destination;
    }
    
    public void send(final String text)
    {
        try
        {
            System.out.println("topic发送消息 : " + text);
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
