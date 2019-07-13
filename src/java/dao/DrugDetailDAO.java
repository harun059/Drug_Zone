package dao;

import bean.DrugDetail;
import bean.Product;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import util.DBConnect;

public class DrugDetailDAO {

    public List<DrugDetail> getAllDrugDetail() {
        List<DrugDetail> list = new ArrayList<>();
        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery("select * from drug_detail");
            while (rs.next()) {
                list.add(new DrugDetail(rs.getInt("dd_id"), rs.getString("dd_brand_name"), rs.getString("dd_group_name"), rs.getString("dd_type"), rs.getString("dd_company_name"), rs.getString("dd_unit"), rs.getDouble("dd_qty"), rs.getDouble("dd_unit_buy"), rs.getDouble("dd_unit_sale"), rs.getDouble("dd_total_buy"), rs.getDouble("dd_total_sale")));
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(DrugDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public DrugDetail saveDrugDetail(DrugDetail dd) {
        String sql = "insert into drug_detail (dd_brand_name, dd_group_name, dd_type, dd_company_name, dd_unit, dd_qty, dd_unit_buy, dd_unit_sale, dd_total_buy, dd_total_sale) values('" + dd.getDd_brand_name() + "','" + dd.getDd_group_name() + "','" + dd.getDd_type() + "','" + dd.getDd_company_name() + "','" + dd.getDd_unit() + "','" + dd.getDd_qty() + "','" + dd.getDd_unit_buy() + "','" + dd.getDd_unit_sale() + "','" + dd.getDd_total_buy() + "','" + dd.getDd_total_sale() + "')";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return dd;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DrugDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

//    public DrugDetail updateDrugDetail(DrugDetail dd) {
//        String sql = "update drug_detail set dd_brand_name='" + dd.getDd_brand_name() + "', dd_group_name='" + dd.getDd_group_name() + "',dd_type='" + dd.getDd_type() + "',dd_company_name='" + dd.getDd_company_name() + "',dd_unit='" + dd.getDd_unit() + "',dd_qty='" + dd.getDd_qty() + "',dd_unit_buy='" + dd.getDd_unit_buy() + "',dd_unit_sale='" + dd.getDd_unit_sale() + "',dd_total_buy='" + dd.getDd_total_buy() + "',dd_total_sale='" + dd.getDd_total_sale() + "' where dd_id='" + dd.getDd_id() + "'";
//        try {
//            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
//            if (value > 0) {
//                return dd;
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(DrugDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//    }
    public boolean deleteDrugDetail(int id) {
        String sql = "delete from drug_detail where dd_id='" + id + "'";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DrugDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public DrugDetail getDrugDetail(int id) {
        DrugDetail dd = new DrugDetail();
        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery("select * from product where pid='" + id + "'");
            while (rs.next()) {
                dd.setDd_id(rs.getInt("dd_id"));
                dd.setDd_brand_name(rs.getString("dd_brand_name"));
                dd.setDd_group_name(rs.getString("dd_group_name"));
                dd.setDd_type(rs.getString("dd_type"));
                dd.setDd_company_name(rs.getString("dd_company_name"));
                dd.setDd_unit(rs.getString("dd_unit"));
                dd.setDd_qty(rs.getDouble("dd_qty"));
                dd.setDd_unit_buy(rs.getDouble("dd_unit_buy"));
                dd.setDd_unit_sale(rs.getDouble("dd_unit_sale"));
                dd.setDd_total_buy(rs.getDouble("dd_total_buy"));
                dd.setDd_total_sale(rs.getDouble("dd_total_sale"));
            }
            return dd;
        } catch (SQLException ex) {
            Logger.getLogger(DrugDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public DrugDetail buyDrug(DrugDetail dd) {
        double preqty = 0, newqty = 0, finalqty = 0;
        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery("select dd_qty from drug_detail where dd_id='" + dd.getDd_id() + "'");
            while (rs.next()) {
                preqty = rs.getDouble("dd_qty");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        newqty = dd.getDd_qty();
        finalqty = preqty + newqty;
        String sql = "update drug_detail set dd_qty='" + finalqty + "' where dd_id='" + dd.getDd_id() + "'";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return dd;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DrugDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public DrugDetail saleDrug(DrugDetail dd) {
        double preqty = 0, newqty = 0, finalqty = 0;
        try {
            ResultSet rs = DBConnect.getConnection().createStatement().executeQuery("select dd_qty from drug_detail where dd_id='" + dd.getDd_id() + "'");
            while (rs.next()) {
                preqty = rs.getDouble("dd_qty");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        newqty = dd.getDd_qty();
        finalqty = preqty - newqty;
        String sql = "update drug_detail set dd_qty='" + finalqty + "' where dd_id='" + dd.getDd_id() + "'";
        try {
            int value = DBConnect.getConnection().createStatement().executeUpdate(sql);
            if (value > 0) {
                return dd;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DrugDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
