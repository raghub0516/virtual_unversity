
<%@ page contentType="image/jpeg" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.awt.image.*" %>
<%@ page import="com.sun.image.codec.jpeg.*" %>

<html>
<body text="red" bgColor="cyan">
<font color="#ff3366">
<center>

</center>
</font>
<%
response.reset();
ServletOutputStream jOut = response.getOutputStream();
BufferedImage servletImage = new BufferedImage(750,60, BufferedImage.TYPE_INT_RGB);
Graphics2D graphics = (Graphics2D) servletImage.getGraphics();
graphics.setColor(Color.cyan);
Font font = new Font("Trebuchet MS",Font.BOLD, 40);
graphics.setFont(font);
graphics.drawString("** VISION INFOTECH **",200,40);
JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(jOut);
encoder.encode(servletImage);
out.println( "<a href=First1JSP.jsp>Login</a>");
jOut.close();
%>

<b>


</b>

</body>

</html>