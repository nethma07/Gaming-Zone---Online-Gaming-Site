package Review;

public class retirveStore {
	private String username;
	private String review;
	
	public retirveStore(String username, String review) {
		super();
		this.username = username;
		this.review = review; 
	}

	public String getUsername() {
		return username;
	}

	public String getReview() {
		return review;
	}
}