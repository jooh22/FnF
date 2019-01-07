package store.fnfm.vo;

public class FaqVO {
	private int idx, readnum;
	private String user_id, title, contents, writedate, qaa;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getReadnum() {
		return readnum;
	}
	public void setReadnum(int readnum) {
		this.readnum = readnum;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getQaa() {
		return qaa;
	}
	public void setQaa(String qaa) {
		this.qaa = qaa;
	}
	
	@Override
	public String toString() {
		return "FaqVO [idx=" + idx + ", readnum=" + readnum + ", user_id=" + user_id + ", title=" + title
				+ ", contents=" + contents + ", writedate=" + writedate + ", qaa=" + qaa + "]";
	}

}
