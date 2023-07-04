/*
 *     DuyDuc94
 */
package model;

public class Cart_Item {

    private int ID;
    private int CartID;
    private int ProDetailID;
    private int Quantity;
    private double Price;

    public Cart_Item() {
    }

    public Cart_Item(int ID, int CartID, int ProDetailID, int Quantity, double Price) {
        this.ID = ID;
        this.CartID = CartID;
        this.ProDetailID = ProDetailID;
        this.Quantity = Quantity;
        this.Price = Price;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getCartID() {
        return CartID;
    }

    public void setCartID(int CartID) {
        this.CartID = CartID;
    }

    public int getProDetailID() {
        return ProDetailID;
    }

    public void setProDetailID(int ProDetailID) {
        this.ProDetailID = ProDetailID;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Cart_Item{");
        sb.append("ID=").append(ID);
        sb.append(", CartID=").append(CartID);
        sb.append(", ProDetailID=").append(ProDetailID);
        sb.append(", Quantity=").append(Quantity);
        sb.append(", Price=").append(Price);
        sb.append('}');
        return sb.toString();
    }

}
