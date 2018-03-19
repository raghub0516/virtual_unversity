<%
/*
To Generate a Image using JSP :
1, Change the content type to image/jpeg 
2, Reset the output stream
*/
%>

<%@ page contentType="image/jpeg" %>        <% //Use this to so that the Browser can identify the Image Format %>                                             
<%@ page import="java.awt.*" %>                 <% // To use Graphics2D  class    %>
<%@ page import="java.awt.image.*" %>           <% // To use BufferedImage class  %>
<%@ page import="com.sun.image.codec.jpeg.*" %> <% // To use JPEGImageEncoder class %>


 
<%
response.reset();

// ServletOutputStream class meant for sending the output to the Browser
ServletOutputStream jOut = response.getOutputStream(); 

// BufferedImage class meant to create and store the image in memory
BufferedImage lineImage = new BufferedImage(300,400, BufferedImage.TYPE_INT_RGB);
// Parameter width,height and type of Image to be stored in memory

Graphics2D gra = (Graphics2D) lineImage.getGraphics();
gra.setBackground(Color.white);
gra.setColor(Color.cyan);
gra.drawLine(20,20,100,100);

// This class meant to convert the image to the JPEG format and send it to the Browser using ServletOutput stream
JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(jOut);
encoder.encode(lineImage);

jOut.close();
%>