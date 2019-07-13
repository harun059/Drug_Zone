
package bean;


public class DrugDetail {
    private int dd_id;
    private String dd_brand_name;
    private String dd_group_name;
    private String dd_type;
    private String dd_company_name;
    private String dd_unit;
    private Double dd_qty;
    private Double dd_unit_buy;
    private Double dd_unit_sale;
    private Double dd_total_buy;
    private Double dd_total_sale;

    public DrugDetail() {
    }

    public DrugDetail(int dd_id, String dd_brand_name, String dd_group_name, String dd_type, String dd_company_name, String dd_unit, Double dd_qty, Double dd_unit_buy, Double dd_unit_sale, Double dd_total_buy, Double dd_total_sale) {
        this.dd_id = dd_id;
        this.dd_brand_name = dd_brand_name;
        this.dd_group_name = dd_group_name;
        this.dd_type = dd_type;
        this.dd_company_name = dd_company_name;
        this.dd_unit = dd_unit;
        this.dd_qty = dd_qty;
        this.dd_unit_buy = dd_unit_buy;
        this.dd_unit_sale = dd_unit_sale;
        this.dd_total_buy = dd_total_buy;
        this.dd_total_sale = dd_total_sale;
    }

  
   

    public int getDd_id() {
        return dd_id;
    }

    public void setDd_id(int dd_id) {
        this.dd_id = dd_id;
    }

    public String getDd_brand_name() {
        return dd_brand_name;
    }

    public void setDd_brand_name(String dd_brand_name) {
        this.dd_brand_name = dd_brand_name;
    }

    public String getDd_group_name() {
        return dd_group_name;
    }

    public void setDd_group_name(String dd_group_name) {
        this.dd_group_name = dd_group_name;
    }

    public String getDd_type() {
        return dd_type;
    }

    public void setDd_type(String dd_type) {
        this.dd_type = dd_type;
    }

    public String getDd_company_name() {
        return dd_company_name;
    }

    public void setDd_company_name(String dd_company_name) {
        this.dd_company_name = dd_company_name;
    }

    public String getDd_unit() {
        return dd_unit;
    }

    public void setDd_unit(String dd_unit) {
        this.dd_unit = dd_unit;
    }

    public Double getDd_qty() {
        return dd_qty;
    }

    public void setDd_qty(Double dd_qty) {
        this.dd_qty = dd_qty;
    }

    public Double getDd_unit_buy() {
        return dd_unit_buy;
    }

    public void setDd_unit_buy(Double dd_unit_buy) {
        this.dd_unit_buy = dd_unit_buy;
    }

    public Double getDd_unit_sale() {
        return dd_unit_sale;
    }

    public void setDd_unit_sale(Double dd_unit_sale) {
        this.dd_unit_sale = dd_unit_sale;
    }

    public Double getDd_total_buy() {
        return dd_total_buy;
    }

    public void setDd_total_buy(Double dd_total_buy) {
        this.dd_total_buy = dd_total_buy;
    }

    public Double getDd_total_sale() {
        return dd_total_sale;
    }

    public void setDd_total_sale(Double dd_total_sale) {
        this.dd_total_sale = dd_total_sale;
    }
    
    
    
}
