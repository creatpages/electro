/*
 *     DuyDuc94
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

public class ProductDAO extends DBContext {

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select * from Product";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> search(String info) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select p.ID, p.CateID, p.BrandID, p.Name, p.Description, p.Image, p.Sold from Product p\n"
                    + "join Brand b on p.BrandID = b.ID\n"
                    + "where p.Name like ? or b.Name like ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, "%" + info + "%");
            ps.setString(2, "%" + info + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> searchProOfCate(String cateName, String info) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select p.ID, p.CateID, p.BrandID, p.Name, p.Description, p.Image, p.Sold from Product p\n"
                    + "join Category c on p.CateID = c.ID\n"
                    + "where p.Name like ? and c.Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, "%" + info + "%");
            ps.setString(2, cateName);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Return all product of selected Category
    public List<Product> getListProOfCate(String categoryName) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select p.ID, p.CateID, p.BrandID, p.Name, p.[Description], p.[Image], p.Sold from Product p\n"
                    + "join Category c on p.CateID = c.ID\n"
                    + "where c.Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, categoryName);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Product getProductsByID(int ID) {
        try {
            String SQL = "select * from Product where ID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, ID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                ps.close();
                rs.close();
                return new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getListProOfBrand(String brandName) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select p.ID, p.CateID, p.BrandID, p.Name, p.[Description], p.[Image], p.Sold from Product p\n"
                    + "join Brand b on p.BrandID = b.ID\n"
                    + "where b.Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, brandName);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getRelatedProduct(int brandID) {
        List<Product> list = new ArrayList<>();
        int numberRelated = 4;
        try {
            String SQL = "select * from Product where BrandID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, brandID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
                if (list.size() == numberRelated) {
                    return list;
                }
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getListProOfBrandInCate(String categoryName, String brandName) {
        List<Product> list = new ArrayList<>();
        try {
            String SQL = "select * from Product where cateID = ? and brandID = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            CategoryDAO cateDAO = new CategoryDAO();
            BrandDAO brandDAO = new BrandDAO();
            ps.setInt(1, cateDAO.getID(categoryName));
            ps.setInt(2, brandDAO.getID(brandName));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                list.add(temp);
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    //Return list of product of a category has sold > numberTopSell
    public List<Product> getBestSellProducts(String categoryName) {
        List<Product> list = new ArrayList<>();
        int numberTopSell = 10;
        try {
            String SQL = "select p.ID, p.CateID, p.BrandID, p.Name, p.Description, p.Image, p.Sold from Product p\n"
                    + "join Category c on p.CateID = c.ID\n"
                    + "where c.Name = ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, categoryName);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String Name = rs.getString("Name");
                String Description = rs.getString("Description");
                String Image = rs.getString("Image");
                String Price = calculatePrice(ID);
                int Sold = rs.getInt("Sold");
                int CateID = rs.getInt("CateID");
                int BrandID = rs.getInt("BrandID");
                if (Sold > numberTopSell) {
                    Product temp = new Product(ID, Name, Description, Image, Price, Sold, BrandID, CateID);
                    list.add(temp);
                }
            }
            ps.close();
            rs.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(Product_DetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> sort(List<Product> list, String sortBy, String sortType) {
        if (sortType.compareTo("ascending") == 0) {
            Collections.sort(list, new Comparator<Product>() {
                @Override
                public int compare(Product o1, Product o2) {
                    switch (sortBy) {
                        case "name":
                            return o1.getName().compareTo(o2.getName());
                        case "price":
                            double o1Price = Double.parseDouble(o1.getPrice().split("-")[0]);
                            double o2Price = Double.parseDouble(o2.getPrice().split("-")[0]);
                            return o1Price < o2Price ? -1 : 1;
                        case "sold":
                            return o1.getSold() < o2.getSold() ? -1 : 1;
                    }
                    return 0;
                }
            });
        } else {
            Collections.sort(list, new Comparator<Product>() {
                @Override
                public int compare(Product o1, Product o2) {
                    switch (sortBy) {
                        case "name":
                            return o2.getName().compareTo(o1.getName());
                        case "price":
                            double o1Price = Double.parseDouble(o1.getPrice().split("-")[0]);
                            double o2Price = Double.parseDouble(o2.getPrice().split("-")[0]);
                            return o2Price < o1Price ? -1 : 1;
                        case "sold":
                            return o2.getSold() < o1.getSold() ? -1 : 0;
                    }
                    return 0;
                }
            });
        }
        return list;
    }

    //Return the price range of a product
    public String calculatePrice(int proID) {
        Product_DetailDAO proDetailDAO = new Product_DetailDAO();
        List<Double> prices = proDetailDAO.getPrices(proID);
        if (!prices.isEmpty()) {
            Collections.sort(prices);
            if (prices.get(0).compareTo(prices.get(prices.size() - 1)) == 0) {
                return prices.get(0) + "";
            } else {
                return prices.get(0) + "-" + prices.get(prices.size() - 1);
            }
        }
        return "Unknown";
    }
}
