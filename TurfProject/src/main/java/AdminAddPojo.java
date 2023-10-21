public class AdminAddPojo {
    private String name;
    private String password;
    private String contact;
    private String email;
    public AdminAddPojo() {
       
    }

    public AdminAddPojo(String name, String password, String contact, String email) {
        this.name = name;
        this.password = password;
        this.contact = contact;
        this.email = email;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
