
package restfulservice;

import bean.CompanyProduct;
import dao.CompanyProductDAO;
import java.util.List;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/companyProducts")
public class CompanyProductRS {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<CompanyProduct> getAllCompanyProduct() {
        List<CompanyProduct> list = new CompanyProductDAO().getAllCompanyProduct();
        return list;
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public CompanyProduct saveCompanyProduct(CompanyProduct cp) {
        CompanyProduct companyProduct = new CompanyProductDAO().saveCompanyProduct(cp);
        System.out.println("gr"+cp.getCp_group_name());
        return companyProduct;
    }

    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public CompanyProduct updateCompanyProduct(CompanyProduct cp) {
        CompanyProduct companyProduct = new CompanyProductDAO().updateCompanyProduct(cp);
        return companyProduct;
    }

    @DELETE
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public CompanyProduct deleteCompanyProduct(@PathParam("id") int id) {
        boolean status = new CompanyProductDAO().deleteCompanyProduct(id);
        if (status) {
            CompanyProduct cp = new CompanyProduct();
            return cp;
        }
        return null;
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public CompanyProduct getCompanyProduct(@PathParam("id") int id) {
        CompanyProduct cp = new CompanyProductDAO().getCompanyProduct(id);
        return cp;
    }
}
