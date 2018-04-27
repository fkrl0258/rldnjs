package soldesk.article;

public class ReplyingRequest extends WritingRequest{
		
	public int parentArticleId;
	
	public int getParentArticleId() {
		return parentArticleId;
	}
	public void setParentArticleId(int parentArticleId) {
		this.parentArticleId = parentArticleId;
	}

}
