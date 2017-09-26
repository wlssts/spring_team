package spring.model.photofolio;

public class PhotofolioDTO {
	private int photofoliono;
	private String title;
	private String fnameview;
	private String content;
	private String wdate;
	private String types;
	private String viewcnt;

	public int getPhotofoliono() {
		return photofoliono;
	}
	public void setPhotofoliono(int photofoliono) {
		this.photofoliono = photofoliono;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFnameview() {
		return fnameview;
	}
	public void setFnameview(String fnameview) {
		this.fnameview = fnameview;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getTypes() {
		return types;
	}
	public void setTypes(String types) {
		this.types = types;
	}
	public String getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(String viewcnt) {
		this.viewcnt = viewcnt;
	}


}
