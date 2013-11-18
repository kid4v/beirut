package beirut;
import com.google.inject.Inject;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.ws.rs.core.UriBuilder;
import javax.ws.rs.core.UriInfo;

import static com.google.common.base.Preconditions.checkNotNull;
@Path("/beirut")
public class BeirutResource {
	private  DataBase db;
	@Inject
	public BeirutResource(DataBase db){
		this.db=db;
	}
	
	
    @GET
    @Path("leaders")
    @Produces(MediaType.APPLICATION_JSON)
    public Response get(@Context UriInfo uriInfo)
    {
    	
    	return Response.status(Response.Status.OK).entity(db.getLeaders()).build();
    	
    	
    }
    @GET
    @Path("/user/{id: \\w++}")
    public Response getPlayerStats(@PathParam("id")String id){
    	if(db.getPerson(id)==null){
    		Response.status(Status.NOT_FOUND).build();
    	}
    	return Response.status(Response.Status.OK).entity(db.getPerson(id).getStats()).build();

    }
    @PUT
    

}
