
package restfulservice;

import bean.DrugDetail;
import bean.Product;
import dao.DrugDetailDAO;
import dao.ProductDAO;
import java.util.List;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author zakir
 */
@Path("/drugDetails")
public class DrugDetailRS {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<DrugDetail> getAllDrugDetail() {
        List<DrugDetail> list = new DrugDetailDAO().getAllDrugDetail();
        return list;
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public DrugDetail saveDrugDetail(DrugDetail dd) {
        DrugDetail drugDetail = new DrugDetailDAO().saveDrugDetail(dd);
        return drugDetail;
    }

    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public DrugDetail buyDrug(DrugDetail dd) {
        DrugDetail drugDetail = new DrugDetailDAO().buyDrug(dd);
        return drugDetail;
    }
    
    @PUT
    @Path("/saleDrug")
    @Produces(MediaType.APPLICATION_JSON)
    public DrugDetail saleDrug(DrugDetail dd) {
        DrugDetail drugDetail = new DrugDetailDAO().saleDrug(dd);
        return drugDetail;
    }

    @DELETE
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public DrugDetail deleteDrugDetail(@PathParam("id") int id) {
        boolean status = new DrugDetailDAO().deleteDrugDetail(id);
        if (status) {
            DrugDetail dd = new DrugDetail();
            return dd;
        }
        return null;
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public DrugDetail getDrugDetail(@PathParam("id") int id) {
        DrugDetail dd = new DrugDetailDAO().getDrugDetail(id);
        return dd;
    }
    
    
//    @PUT
//    @Path("/{id}")
//    @Produces(MediaType.APPLICATION_JSON)
//    public DrugDetail saleDrugDetail(@PathParam("id") int id) {
//        DrugDetail dd = new DrugDetailDAO().saleDrug(id);
//        return dd;
//    }
}
