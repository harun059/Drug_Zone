
package dao;

import bean.CompanyProduct;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.DBConnect;

/**
 *
 * @author zakir
 */
public class CompanyProductDAO {
    public List<CompanyProduct> getAllCompanyProduct() {
        List<CompanyProduct> list = new ArrayList<>();
        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery("select * from company_product");
            while (rs.next()) {
                list.add(new CompanyProduct(rs.getInt("cp_id"), rs.getString("cp_brand_name"), rs.getString("cp_group_name"), rs.getString("cp_type"), rs.getString("cp_unit"), rs.getString("cp_company_name")));
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(CompanyProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public CompanyProduct saveCompanyProduct(CompanyProduct cp) {
        String sql = "insert into company_product (cp_brand_name, cp_group_name, cp_type, cp_unit, cp_company_name) values('" + cp.getCp_brand_name()+ "','" + cp.getCp_group_name()+ "','" + cp.getCp_type()+ "','" + cp.getCp_unit()+ "','" + cp.getCp_company_name()+ "')";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return cp;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CompanyProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public CompanyProduct updateCompanyProduct(CompanyProduct cp) {
        String sql = "update company_product set cp_brand_name='" + cp.getCp_brand_name()+ "', cp_group_name='" + cp.getCp_group_name()+ "', cp_type='" + cp.getCp_type()+ "', cp_unit='" + cp.getCp_unit()+ "', cp_company_name='" + cp.getCp_company_name()+ "' where cp_id='" + cp.getCp_id()+ "'";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return cp;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CompanyProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean deleteCompanyProduct(int id) {
        String sql = "delete from company_product where cp_id='" + id + "'";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CompanyProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public CompanyProduct getCompanyProduct(int id) {
        CompanyProduct cp = new CompanyProduct();
        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery("select * from product where pid='" + id + "'");
            while (rs.next()) {
                cp.setCp_id(rs.getInt("cp_id"));
                cp.setCp_brand_name(rs.getString("cp_brand_name"));
                cp.setCp_group_name(rs.getString("cp_group_name"));
                cp.setCp_type(rs.getString("cp_type"));
                cp.setCp_unit(rs.getString("cp_unit"));
                cp.setCp_company_name(rs.getString("cp_company_name"));
            }
            return cp;
        } catch (SQLException ex) {
            Logger.getLogger(CompanyProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    
    
    
    
    
    
    
}
