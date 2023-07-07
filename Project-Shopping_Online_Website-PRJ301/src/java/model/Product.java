/*
 *     DuyDuc94
 */
package model;

import dal.BrandDAO;
import dal.CategoryDAO;

public class Product {

    private int ID;
    private String Name;
    private String Description;
    private String Image;
    private String Price;
    private int Sold;
    private int BrandID;
    private int CateID;

    public Product() {
    }
    
    public Product(int ID, String Name, String Description, String Image, String Price, int Sold, int BrandID, int CateID) {
        this.ID = ID;
        this.Name = Name;
        this.Description = Description;
        this.Image = Image;
        this.Price = Price;
        this.Sold = Sold;
        this.BrandID = BrandID;
        this.CateID = CateID;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public String getPrice() {
        return Price;
    }

    public void setPrice(String Price) {
        this.Price = Price;
    }

    public int getSold() {
        return Sold;
    }

    public void setSold(int Sold) {
        this.Sold = Sold;
    }

    public int getBrandID() {
        return BrandID;
    }

    public void setBrandID(int BrandID) {
        this.BrandID = BrandID;
    }

    public int getCateID() {
        return CateID;
    }

    public void setCateID(int CateID) {
        this.CateID = CateID;
    }
    
    public String getBrandName() {
        BrandDAO brandDAO = new BrandDAO();
        return brandDAO.getName(this.BrandID);
    }
    
    public String getCategoryName() {
        CategoryDAO categoryDAO = new CategoryDAO();
        return categoryDAO.getName(this.CateID);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Product{");
        sb.append("ID=").append(ID);
        sb.append(", Name=").append(Name);
        sb.append(", Description=").append(Description);
        sb.append(", Image=").append(Image);
        sb.append(", Price=").append(Price);
        sb.append(", Sold=").append(Sold);
        sb.append(", BrandID=").append(BrandID);
        sb.append(", CateID=").append(CateID);
        sb.append('}');
        return sb.toString();
    }
    
    
    
    
}
