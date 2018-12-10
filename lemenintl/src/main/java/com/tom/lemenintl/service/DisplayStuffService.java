package com.tom.lemenintl.service;

import com.tom.lemenintl.entity.TransDisplayContent;
import com.tom.lemenintl.entity.TransHealthArticle;
import com.tom.lemenintl.repo.TransDisplayContentRepo;
import com.tom.lemenintl.repo.TransHealthArticleRepo;
import com.tom.lemenintl.utils.RecordCodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.Optional;

/**
 * 文章资讯、页面显示类服务
 * @author tommy
 *
 */
@Service
public class DisplayStuffService {

	@Autowired
	TransHealthArticleRepo TransHealthArticleRepo;

	@Transactional
	public void T2403(Long id, String articleType, String title, Integer orderNum, Boolean enable, String contentHtml,
			Long coverFileId) {

		TransHealthArticle article;

		if (id == null)
			article = new TransHealthArticle();
		else
			article = TransHealthArticleRepo.findById(id).get();

		article.setArticleType(articleType);
		article.setTitle(title);
		article.setOrderNum(orderNum);
		article.setEnable(enable);
		article.setContentHtml(contentHtml);
		article.setCoverFileId(coverFileId);

		article.setUpdateTime(LocalDateTime.now());

		TransHealthArticle savedArticle = TransHealthArticleRepo.save(article);

		if (id == null) {
			RecordCodeUtils.genCode(savedArticle);
			TransHealthArticleRepo.save(savedArticle);
		}
	}

	@Autowired
	TransDisplayContentRepo TransDisplayContentRepo;

	@Transactional
	public void T2502(String vipShowHtml, Long zhukangtangCoverFileId, String zhukangtangShowHtml) {
		Optional<TransDisplayContent> optional = TransDisplayContentRepo.findById(1l);
		TransDisplayContent content;
		if (optional.isPresent()) {
			content = optional.get();
		} else {
			content = new TransDisplayContent();
		}

		if (!StringUtils.isEmpty(vipShowHtml)) {
			content.setVipShowHtml(vipShowHtml);
		}
		if (!StringUtils.isEmpty(zhukangtangCoverFileId)) {
			content.setZhukangtangCoverFileId(zhukangtangCoverFileId);
		}
		if (!StringUtils.isEmpty(zhukangtangShowHtml)) {
			content.setZhukangtangShowHtml(zhukangtangShowHtml);
		}

		TransDisplayContentRepo.save(content);
	}

	@Transactional
	public void T1207(Long articleId) {
		TransHealthArticle article = TransHealthArticleRepo.findById(articleId).get();
		article.setShearCount(article.getShearCount() + 1);

		TransHealthArticleRepo.save(article);
	}

	public void T1203(Long articleId) {
		TransHealthArticle article = TransHealthArticleRepo.findById(articleId).get();
		article.setReadCount(article.getReadCount() + 1);

		TransHealthArticleRepo.save(article);
	}
}
