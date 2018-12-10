package com.research.netty.WebSocketChatRoomPrimordial;

import com.google.gson.Gson;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

//用于创建和配置服务端点
@ServerEndpoint("/websocket")
public class Socket {
    public static Map<String, Session> sessionMap = new HashMap<String, Session>();

    //与某个客户端的连接会话，需要通过它来给客户端发送数据
    private Session session;

    // 一个新的连接建立时被调用
    @OnOpen
    public void startSocket(Session session) {
        this.session = session;
        System.out.println("链接成功");
        if (sessionMap.size() == 0) {
            return;
        }
        Set userIds = sessionMap.keySet();
        StringBuffer sBuffer = new StringBuffer();
        for (Object str : userIds) {
            sBuffer.append(str.toString() + ":");
        }
        Gson gson = new Gson();
        try {
            Message message = new Message();
            message.setFrom("系统");
            message.setMsg(sBuffer.toString());
            session.getBasicRemote().sendText(gson.toJson(message), true);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // 收到消息触发事件
    @OnMessage
    public void getMessgae(Session session, String str, boolean last) {
        if (session.isOpen()) {
            try {
                System.out.println(str);
                Gson gson = new Gson();
                Message msg = gson.fromJson(str, Message.class);
                Message toMessage = msg;
                toMessage.setFrom(msg.getId());
                toMessage.setTo(msg.getTo());

                if (msg.getMsg().equals("newUser")) {
                    if (sessionMap.containsKey(msg.getId())) {
                        sessionMap.remove(msg.getId());
                    }
                    sessionMap.put(msg.getId(), session);
                } else {
                    Session toSession = sessionMap.get(msg.getTo());
                    if (toSession != null && toSession.isOpen()) {
                        toSession.getBasicRemote().sendText(gson.toJson(toMessage).toString(), last);
                    } else {
                        toMessage.setMsg("用户不存在");
                        toMessage.setFrom("系统");
                        session.getBasicRemote().sendText(gson.toJson(toMessage).toString(), last);
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }

        } else {
            System.out.println("session is closed");
        }
    }

    // 关闭连接触发事件
    @OnClose
    public void onClose(Session session, CloseReason closeReason) {
        System.out.println(session.getId() + "关闭连接");
    }

    // 传输消息错误触发事件
    @OnError
    public void onError(Throwable error) {
        System.out.println(error);
    }
}
