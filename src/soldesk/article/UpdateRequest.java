package soldesk.article;

public class UpdateRequest {
	
	private int articedId;
	private String title;
	private String content;
	private String password;
	
	public int getArticedId() {
		return articedId;
	}
	public void setArticedId(int articedId) {
		this.articedId = articedId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
