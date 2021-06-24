/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//importar las siguientes clases
import java.io.File;
import java.io.InputStream;
import java.nio.file.Paths;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Part;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import sistema.dao.UploadDAO;
/***/
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;
//librerias de Apache Commons Upload para subir multiples arhivos
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


@WebServlet("/MultipleUpload") //se pone /Upload por el campo value=Upload en el form(JSP)
/*
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
*/
public class MultipleUploadServlet extends HttpServlet {
    
    String fileNameUploaded = null;//almacenar el nombre del archivo 
    String nombreArchivo=null;//almacena nombre temporalmente
    private static final String UPLOAD_DIRECTORY = "images";//carpeta donde se guardaran los archivos    
    private static final int THRESHOLD_SIZE     = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
    private UploadDAO upObj;//crear un objetos de tipo DAO para realizar algunos querys
    public MultipleUploadServlet()
    {
        super();//invocar métodos de la clase padre
        upObj = new UploadDAO();//crear objetos de tipo AdminDAO
    }
  
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           // comprueba si la solicitud realmente contiene un archivo de carga (upload file)
        if (!ServletFileUpload.isMultipartContent(request)) {
            PrintWriter writer = response.getWriter();
            writer.println("Request: La solicitud no contiene datos de upload");
            writer.flush();
            return;
        }
         
        // configures upload settings
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(THRESHOLD_SIZE);
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
         
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(MAX_FILE_SIZE);
        upload.setSizeMax(MAX_REQUEST_SIZE);
         
        // constructs the directory path to store upload file
        String uploadPath = getServletContext().getRealPath("")
            + File.separator + UPLOAD_DIRECTORY;
        // creates the directory if it does not exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
         
        try {
            // parses the request's content to extract file data
            List formItems = upload.parseRequest(request);
            Iterator iter = formItems.iterator();
             
            // iterates over form's fields
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                // processes only fields that are not form fields
                if (!item.isFormField()) {
                    String fileName = new File(item.getName()).getName();
                    String filePath = uploadPath + File.separator + fileName;                    
                    fileNameUploaded = fileName;
                    File storeFile = new File(filePath);
                    
                    //Almacenar PATH en la BD
                    //fusionar el nombre de la carpeta + nombre-archivo                    
                    nombreArchivo = UPLOAD_DIRECTORY + "/" + fileNameUploaded;                    
                    upObj.addURLfromImageName(nombreArchivo);
                    
                    // saves the file on disk
                    item.write(storeFile);
                    
                }
            }
            request.setAttribute("message", "Upload has been done successfully!" + fileNameUploaded);
        } catch (Exception ex) {
            request.setAttribute("message", "There was an error: " + ex.getMessage());
        }
        getServletContext().getRequestDispatcher("/messageUpload.jsp").forward(request, response);
}
          
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");
        if(action.equalsIgnoreCase("buscarimg"))
        {
           int  imgID = Integer.parseInt(request.getParameter("imageid"));            
           String url = null;
           url = upObj.getImageById(imgID);
           
           request.getSession().setAttribute("urlimg", url);
           request.setAttribute("message", "Path imagen:  " + url);
            getServletContext().getRequestDispatcher("/messageUpload.jsp").forward(
                request, response);
        }else{                
            forward = "index.jsp";
            RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
            //request.getSession().setAttribute("mensaje", "Imagen no encontrada");
        }
    }
    
    /*** metodo que extrae el nombre del archivo del header HTTP content-disposition ***/
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }

}

/*
* Referencias:
* https://www.codejava.net/java-ee/servlet/java-multiple-files-upload-example
* https://www.codejava.net/java-ee/servlet/eclipse-file-upload-servlet-with-apache-common-file-upload
*/