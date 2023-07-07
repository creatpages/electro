/*
 *     DuyDuc94
 */
package model;

public class Cart {

    private int ID;
    private int UserID;

    public Cart() {
    }

    public Cart(int ID, int UserID) {
        this.ID = ID;
        this.UserID = UserID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Cart{");
        sb.append("ID=").append(ID);
        sb.append(", UserID=").append(UserID);
        sb.append('}');
        return sb.toString();
    }

}
