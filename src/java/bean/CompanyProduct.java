
package bean;


public class CompanyProduct {
    private int cp_id;
    private String cp_brand_name;
    private String cp_group_name;
    private String cp_type;
    private String cp_unit;
    private String cp_company_name;

    public CompanyProduct() {
    }

    public CompanyProduct(int cp_id, String cp_brand_name, String cp_group_name, String cp_type, String cp_unit, String cp_company_name) {
        this.cp_id = cp_id;
        this.cp_brand_name = cp_brand_name;
        this.cp_group_name = cp_group_name;
        this.cp_type = cp_type;
        this.cp_unit = cp_unit;
        this.cp_company_name = cp_company_name;
    }

    public int getCp_id() {
        return cp_id;
    }

    public void setCp_id(int cp_id) {
        this.cp_id = cp_id;
    }

    public String getCp_brand_name() {
        return cp_brand_name;
    }

    public void setCp_brand_name(String cp_brand_name) {
        this.cp_brand_name = cp_brand_name;
    }

    public String getCp_group_name() {
        return cp_group_name;
    }

    public void setCp_group_name(String cp_group_name) {
        this.cp_group_name = cp_group_name;
    }

    public String getCp_type() {
        return cp_type;
    }

    public void setCp_type(String cp_type) {
        this.cp_type = cp_type;
    }

    public String getCp_unit() {
        return cp_unit;
    }

    public void setCp_unit(String cp_unit) {
        this.cp_unit = cp_unit;
    }

    public String getCp_company_name() {
        return cp_company_name;
    }

    public void setCp_company_name(String cp_company_name) {
        this.cp_company_name = cp_company_name;
    }
    
    
}
