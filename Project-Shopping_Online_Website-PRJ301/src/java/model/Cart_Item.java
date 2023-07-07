/*
 *     DuyDuc94
 */
package model;

import dal.Product_DetailDAO;

public class Cart_Item {

    private int ID;
    private int UserID;
    private int ProDetailID;
    private int Quantity;

    public Cart_Item() {
    }

    public Cart_Item(int ID, int CartID, int ProDetailID, int Quantity) {
        this.ID = ID;
        this.UserID = CartID;
        this.ProDetailID = ProDetailID;
        this.Quantity = Quantity;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getCartID() {
        return UserID;
    }

    public void setCartID(int CartID) {
        this.UserID = CartID;
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
    
    public String getProductName(){
        Product_DetailDAO proDetailDAO = new Product_DetailDAO();
        return proDetailDAO.getName(this.ProDetailID);
    }
    
    public double getPrice(){
        Product_DetailDAO proDetailDAO = new Product_DetailDAO();
        return (double)this.Quantity * proDetailDAO.getProductDetail(ProDetailID).getPrice();
    }
    
}
