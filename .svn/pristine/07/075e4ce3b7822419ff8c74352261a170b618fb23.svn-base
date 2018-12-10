package com.tom.lemenintl.common.utils;

import com.tom.lemenintl.common.config.DefaultSetting;
import com.tom.lemenintl.common.utils.TokenDetail.Scope;
import io.jsonwebtoken.*;
import org.springframework.beans.factory.annotation.Value;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;

public class TokenUtils {

	@Value("${token.secret}")
	private static String secret = "sec123";

	/**
	 * 根据 TokenDetail 生成 Token
	 *
	 * @param tokenDetail
	 * @return
	 * @throws Exception
	 */
	public static String generateToken(TokenDetail tokenDetail, Date expirationDate) throws Exception {
		Map<String, Object> claims = new TreeMap<String, Object>();
		claims.put("VerifyId", tokenDetail.getVerifyId());
		claims.put("VerifyScope", tokenDetail.getVerifyScope());
		claims.put("SessionKey", tokenDetail.getSessionKey());
		claims.put("CreateTime", tokenDetail.getCreateTime());

		if (expirationDate == null) {
			return Jwts.builder().setClaims(claims)
					.signWith(SignatureAlgorithm.HS512, secret.getBytes(DefaultSetting.CHARSET.name())).compact();
		} else {
			return Jwts.builder().setClaims(claims).setExpiration(expirationDate)
					.signWith(SignatureAlgorithm.HS512, secret.getBytes(DefaultSetting.CHARSET.name())).compact();
		}

	}

	/**
	 * 解析 token 的主体 Claims
	 *
	 * @param token
	 * @return
	 * @throws UnsupportedEncodingException
	 * @throws IllegalArgumentException
	 * @throws SignatureException
	 * @throws MalformedJwtException
	 * @throws UnsupportedJwtException
	 * @throws ExpiredJwtException
	 */
	public static Claims getClaimsFromToken(String token) throws ExpiredJwtException, UnsupportedJwtException,
			MalformedJwtException, SignatureException, IllegalArgumentException, UnsupportedEncodingException {
		return Jwts.parser().setSigningKey(secret.getBytes(DefaultSetting.CHARSET.name())).parseClaimsJws(token)
				.getBody();
	}

	/**
	 * 解析 token
	 * 
	 * @param token
	 * @return
	 * @throws ExpiredJwtException
	 * @throws UnsupportedJwtException
	 * @throws MalformedJwtException
	 * @throws SignatureException
	 * @throws IllegalArgumentException
	 * @throws UnsupportedEncodingException
	 */
	public static TokenDetail getTokenDetailFromToken(String token) throws ExpiredJwtException, UnsupportedJwtException,
			MalformedJwtException, SignatureException, IllegalArgumentException, UnsupportedEncodingException {
		Claims claims = getClaimsFromToken(token);
		TokenDetail tokenDetail = new TokenDetail();

		tokenDetail.setVerifyId(Long.valueOf(claims.get("VerifyId").toString()));
		tokenDetail.setVerifyScope(Scope.valueOf((String) claims.get("VerifyScope")));
		tokenDetail.setCreateTime(Long.valueOf(claims.get("CreateTime").toString()));
		tokenDetail.setSessionKey(String.valueOf(claims.get("SessionKey")));

		return tokenDetail;
	}

}
