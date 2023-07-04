/*
 *     DuyDuc94
 */
package model;

public class Product {

    private int ID;
    private int CateID;
    private String Name;
    private String Description;
    private String Image;

    public Product() {
    }

    public Product(int ID, int CateID, String Name, String Description, String Image) {
        this.ID = ID;
        this.CateID = CateID;
        this.Name = Name;
        this.Description = Description;
        this.Image = Image;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getCateID() {
        return CateID;
    }

    public void setCateID(int CateID) {
        this.CateID = CateID;
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

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Product{");
        sb.append("ID=").append(ID);
        sb.append(", CateID=").append(CateID);
        sb.append(", Name=").append(Name);
        sb.append(", Description=").append(Description);
        sb.append(", Image=").append(Image);
        sb.append('}');
        return sb.toString();
    }

}
