package Backend;

import Data.clsQuerys;
import java.sql.ResultSet;

public class clsBread {

    public String codBread;
    public String name;
    public String description;
    public Double price;
    public String img1;
    public String img2;
    public int isActive;
    public int stock;

    public clsBread() {
    }

    public clsBread(String codBread, String name, String description, Double price, String img1, String img2, int isActive, int stock) {
        this.codBread = codBread;
        this.name = name;
        this.description = description;
        this.price = price;
        this.img1 = img1;
        this.img2 = img2;
        this.isActive = isActive;
        this.stock = stock;
    }

    public String getCodBread() {
        return codBread;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public Double getPrice() {
        return price;
    }

    public String getImg1() {
        return img1;
    }

    public String getImg2() {
        return img2;
    }

    public int getIsActive() {
        return isActive;
    }

    public int getStock() {
        return stock;
    }

    public void setCodBread(String codBread) {
        this.codBread = codBread;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public ResultSet fncQueryBread() throws Exception {
        ResultSet resp = null;

        clsQuerys objQuery = new clsQuerys();
        resp = objQuery.fncBreadQuery();

        return resp;
    }
    
    public ResultSet fncQuerySpecificBread(int breadCode) throws Exception{
        ResultSet resp = null;
        clsQuerys objQuery = new  clsQuerys();
        resp = objQuery.fncBreadDetailsQuery(breadCode);
        
        return resp;
    }

}
