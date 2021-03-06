<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="soldesk.article.ReadArticleService" %>
<%@ page import="soldesk.article.ArticleNotFoundException"  %>
<%@ page import="soldesk.article.Article" %>

<%
	int articleId = Integer.parseInt(request.getParameter("articleId"));
	String viewPage = null;
	try{
		Article  article = ReadArticleService.getInstance().readArticle(articleId);
		request.setAttribute("article", article);
		viewPage = "read_view.jsp";
	}catch(ArticleNotFoundException ex) {
		viewPage = "article_not_found.jsp";
	}
%>
<jsp:forward page="<%= viewPage%>" />
