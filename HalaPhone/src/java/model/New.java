
package model;

public class New {
	private int NewId;
	private String NameNew, ImageNew, Link;

	public New() {
	}

	public New(int NewId, String NameNew, String ImageNew, String Link) {
		this.NewId = NewId;
		this.NameNew = NameNew;
		this.ImageNew = ImageNew;
		this.Link = Link;
	}

	public int getNewId() {
		return NewId;
	}

	public void setNewId(int NewId) {
		this.NewId = NewId;
	}

	public String getNameNew() {
		return NameNew;
	}

	public void setNameNew(String NameNew) {
		this.NameNew = NameNew;
	}

	public String getImageNew() {
		return ImageNew;
	}

	public void setImageNew(String ImageNew) {
		this.ImageNew = ImageNew;
	}

	public String getLink() {
		return Link;
	}

	public void setLink(String Link) {
		this.Link = Link;
	}
	@Override
	public String toString() {
		return "New [NewId=" + NewId + ", NameNew=" + NameNew + ", ImageNew=" + ImageNew + ", Link=" + Link + "]";
	}

}
