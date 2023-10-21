import java.util.Date;

public class CricketFormPojo {
    private int id;
    private String groundName;
    private double price;
    private String name;
    private String contact;
    private Date date;
    private String time;
    private String email;
 

    public CricketFormPojo() {
    }

    public CricketFormPojo(String groundName, double price, String name, String contact, String email,Date date, String time) {
        this.groundName = groundName;
        this.price = price;
        this.name = name;
        this.email = email;
        this.contact = contact;
        this.date = date;
        this.time = time;
    }

    public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGroundName() {
        return groundName;
    }

    public void setGroundName(String groundName) {
        this.groundName = groundName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    
   
}
