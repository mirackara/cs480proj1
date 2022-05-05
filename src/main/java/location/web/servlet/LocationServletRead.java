package location.web.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import location.dao.LocationDao;
import location.domain.Location;
//import location.service.LocationService;


/**
 * Servlet implementation class UserServlet
 */

public class LocationServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LocationServletRead() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Location location = null;
		try {
			location = LocationDao.findByID(request.getParameter("location_id"));
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		
		if(location.getlocation_id()!=null){
					System.out.println(location);
					request.setAttribute("location", location);
					request.setAttribute("location_id", location.getlocation_id());
					request.setAttribute("location_city", location.getlocation_city());
					request.setAttribute("location_state", location.getlocation_state());

					request.getRequestDispatcher("/jsps/location/location_read_output.jsp").forward(request, response);
				
			}
			else{
			request.setAttribute("msg", "Entity not found");
			request.getRequestDispatcher("/jsps/location/location_read_output.jsp").forward(request, response);
		}
	}
}



