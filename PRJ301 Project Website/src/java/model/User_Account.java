/*
 *     DuyDuc94
 */
package model;

public class User_Account {

    private int ID;
    private String Username;
    private String Password;
    private boolean Role;
    private boolean Status;
    private String Phone;
    private String Email;

    public User_Account() {
    }

    public User_Account(int ID, String Username, String Password, boolean Role, boolean Status, String Phone, String Email) {
        this.ID = ID;
        this.Username = Username;
        this.Password = Password;
        this.Role = Role;
        this.Status = Status;
        this.Phone = Phone;
        this.Email = Email;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public boolean isRole() {
        return Role;
    }

    public void setRole(boolean Role) {
        this.Role = Role;
    }

    public boolean isStatus() {
        return Status;
    }

    public void setStatus(boolean Status) {
        this.Status = Status;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("User_Account{");
        sb.append("ID=").append(ID);
        sb.append(", Username=").append(Username);
        sb.append(", Password=").append(Password);
        sb.append(", Role=").append(Role);
        sb.append(", Status=").append(Status);
        sb.append(", Phone=").append(Phone);
        sb.append(", Email=").append(Email);
        sb.append('}');
        return sb.toString();
    }

}