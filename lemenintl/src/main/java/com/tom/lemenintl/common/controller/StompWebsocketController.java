package com.tom.lemenintl.common.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tom.lemenintl.common.RestHttpReply;
import com.tom.lemenintl.common.utils.CommonUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.HtmlUtils;

@Slf4j
@RestController
public class StompWebsocketController {

	@Autowired
	ObjectMapper objectMapper;


	@Autowired
	private SimpMessagingTemplate template;
	
	@MessageMapping("/stompMessage")
	@SendTo("/subscribe")
	public String stompMessage(String message) throws Exception {
		return new String(HtmlUtils.htmlEscape(message));
	}
	
	@MessageMapping("/app/hello")
	@SendTo("/topic/greetings")
	public String greeting(String message) throws Exception {
		return new String(HtmlUtils.htmlEscape(message));
	}

	@RequestMapping(value = "/brodcast")
	public void sendMessage() throws Exception {
		this.template.convertAndSend("/topic/greetings", "This is Send From Server" + (int) Math.random());
	}

	@RequestMapping("/app/files")
	@SendTo("/topic/greetings")
	public String uploadFile() throws Exception {
		RestHttpReply reply = new RestHttpReply();
		try {
			// Long fileId = fileStorageService.storeFile(file);
			// Map<String, Object> resultMap = new HashMap<>();
			// resultMap.put("fileId", fileId);
			// reply.setData(resultMap);
		} catch (Exception e) {
			CommonUtils.wrapException(reply, e);
		}
		log.info("1-------");
		return "111111111111";
	}
}
