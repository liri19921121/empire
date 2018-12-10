package activemq;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import activemq.publisher.MessageSenderQueue;
import activemq.publisher.MessageSenderTopic;

@Controller
@RequestMapping("/test")
public class test
{
    /*
     * 队列模式下消费者平均消费信息
     * 主题模式下每个消费者都消费所有信息
     */
    @Autowired
    private MessageSenderQueue messageSenderQueue;
    
    @Autowired
    private MessageSenderTopic messageSenderTopic;
    
    @RequestMapping("/sendQueue")
    public String queue(HttpServletRequest request)
    {
        for (int i = 0; i < 10; i++)
        {
            messageSenderQueue.send("message" + i);
        }
        
        request.setAttribute("message", "success");
        
        return "/WEB-INF/view/showMessage";
    }
    
    @RequestMapping("/sendTopic")
    public String topic(HttpServletRequest request)
    {
        for (int i = 0; i < 10; i++)
        {
            messageSenderTopic.send("message" + i);
        }
        request.setAttribute("message", "success");
        
        return "/WEB-INF/view/showMessage";
    }
    
}
