public class UserLogin {
    private String name;
    private String email;


    // Parameterized constructor
    public UserLogin(String name, String email) {
        this.name = name;
        this.email = email;
    }

    // Getter and setter methods for name and email
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    @Override
    public String toString() {
        return "UserLogin [name=" + name + ", email=" + email + "]";
    }
}
