package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Static_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Thống Kê</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"StaticStyle1.css\"> \n");
      out.write("        \n");
      out.write("        <!--Biểu đồ tròn-->\n");
      out.write("        <script src='https://www.gstatic.com/charts/loader.js'></script>\n");
      out.write("        <script>\n");
      out.write("            google.charts.load('upcoming', {'packages': ['vegachart']}).then(drawChart);\n");
      out.write("\n");
      out.write("            function drawChart() {\n");
      out.write("                const dataTable = new google.visualization.DataTable();\n");
      out.write("                dataTable.addColumn({type: 'string', 'id': 'category'});\n");
      out.write("                dataTable.addColumn({type: 'number', 'id': 'amount'});\n");
      out.write("                dataTable.addRows([\n");
      out.write("                    ['1', 85],\n");
      out.write("                    ['2', 55],\n");
      out.write("                    ['3', 45],\n");
      out.write("                    ['4', 61],\n");
      out.write("                    ['5', 65],\n");
      out.write("                    ['6', 50],\n");
      out.write("                    ['7', 60],\n");
      out.write("                    ['8', 47],\n");
      out.write("                    ['9', 75],\n");
      out.write("                    ['10', 40],\n");
      out.write("                    ['11', 65],\n");
      out.write("                    ['12', 57],\n");
      out.write("                ]);\n");
      out.write("\n");
      out.write("                const options = {\n");
      out.write("                    \"vega\": {\n");
      out.write("                        \"$schema\": \"https://vega.github.io/schema/vega/v4.json\",\n");
      out.write("                        \"width\": 700,\n");
      out.write("                        \"height\": 300,\n");
      out.write("                        \"padding\": 50,\n");
      out.write("\n");
      out.write("                        'data': [{'name': 'table', 'source': 'datatable'}],\n");
      out.write("\n");
      out.write("                        \"signals\": [\n");
      out.write("                            {\n");
      out.write("                                \"name\": \"tooltip\",\n");
      out.write("                                \"value\": {},\n");
      out.write("                                \"on\": [\n");
      out.write("                                    {\"events\": \"rect:mouseover\", \"update\": \"datum\"},\n");
      out.write("                                    {\"events\": \"rect:mouseout\", \"update\": \"{}\"}\n");
      out.write("                                ]\n");
      out.write("                            }\n");
      out.write("                        ],\n");
      out.write("\n");
      out.write("                        \"scales\": [\n");
      out.write("                            {\n");
      out.write("                                \"name\": \"xscale\",\n");
      out.write("                                \"type\": \"band\",\n");
      out.write("                                \"domain\": {\"data\": \"table\", \"field\": \"category\"},\n");
      out.write("                                \"range\": \"width\",\n");
      out.write("                                \"padding\": 0.2,\n");
      out.write("                                \"round\": true\n");
      out.write("                            },\n");
      out.write("                            {\n");
      out.write("                                \"name\": \"yscale\",\n");
      out.write("                                \"domain\": {\"data\": \"table\", \"field\": \"amount\"},\n");
      out.write("                                \"nice\": true,\n");
      out.write("                                \"range\": \"height\"\n");
      out.write("                            }\n");
      out.write("                        ],\n");
      out.write("\n");
      out.write("                        \"axes\": [\n");
      out.write("                            {\"orient\": \"bottom\", \"scale\": \"xscale\"},\n");
      out.write("                            {\"orient\": \"left\", \"scale\": \"yscale\"}\n");
      out.write("                        ],\n");
      out.write("\n");
      out.write("                        \"marks\": [\n");
      out.write("                            {\n");
      out.write("                                \"type\": \"rect\",\n");
      out.write("                                \"from\": {\"data\": \"table\"},\n");
      out.write("                                \"encode\": {\n");
      out.write("                                    \"enter\": {\n");
      out.write("                                        \"x\": {\"scale\": \"xscale\", \"field\": \"category\"},\n");
      out.write("                                        \"width\": {\"scale\": \"xscale\", \"band\": 1},\n");
      out.write("                                        \"y\": {\"scale\": \"yscale\", \"field\": \"amount\"},\n");
      out.write("                                        \"y2\": {\"scale\": \"yscale\", \"value\": 0}\n");
      out.write("                                    },\n");
      out.write("                                    \"update\": {\n");
      out.write("                                        \"fill\": {\"value\": \"steelblue\"}\n");
      out.write("                                    },\n");
      out.write("                                    \"hover\": {\n");
      out.write("                                        \"fill\": {\"value\": \"#ffa500\"}\n");
      out.write("                                    }\n");
      out.write("                                }\n");
      out.write("                            },\n");
      out.write("                            {\n");
      out.write("                                \"type\": \"text\",\n");
      out.write("                                \"encode\": {\n");
      out.write("                                    \"enter\": {\n");
      out.write("                                        \"align\": {\"value\": \"center\"},\n");
      out.write("                                        \"baseline\": {\"value\": \"bottom\"},\n");
      out.write("                                        \"fill\": {\"value\": \"#333\"}\n");
      out.write("                                    },\n");
      out.write("                                    \"update\": {\n");
      out.write("                                        \"x\": {\"scale\": \"xscale\", \"signal\": \"tooltip.category\", \"band\": 0.5},\n");
      out.write("                                        \"y\": {\"scale\": \"yscale\", \"signal\": \"tooltip.amount\", \"offset\": -2},\n");
      out.write("                                        \"text\": {\"signal\": \"tooltip.amount\"},\n");
      out.write("                                        \"fillOpacity\": [\n");
      out.write("                                            {\"test\": \"datum === tooltip\", \"value\": 0},\n");
      out.write("                                            {\"value\": 1}\n");
      out.write("                                        ]\n");
      out.write("                                    }\n");
      out.write("                                }\n");
      out.write("                            }\n");
      out.write("                        ]\n");
      out.write("                    }\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                const chart = new google.visualization.VegaChart(document.getElementById('chart-div'));\n");
      out.write("                chart.draw(dataTable, options);\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"static\">\n");
      out.write("            <h1>Một số thống kê cơ bản</h1>\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("        </div> \n");
      out.write("        \n");
      out.write("        <!--Biểu đồ tròn-->\n");
      out.write("        <div class=\"static_child_cirlce\">\n");
      out.write("            <div class=\"cirlce_order\">\n");
      out.write("                <hr/>Biểu đồ số lượng sách bán của mỗi sản phẩm trong 1 tháng<hr/>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"cirlce\">\n");
      out.write("                <div id=\"piechart\"></div>\n");
      out.write("                <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\n");
      out.write("                <script type=\"text/javascript\">\n");
      out.write("            // Load google charts\n");
      out.write("            google.charts.load('current', {'packages': ['corechart']});\n");
      out.write("            google.charts.setOnLoadCallback(drawChart);\n");
      out.write("\n");
      out.write("            // Draw the chart and set the chart values\n");
      out.write("            function drawChart() {\n");
      out.write("                var data = google.visualization.arrayToDataTable([\n");
      out.write("                    ['Task', 'Hours per Day'],\n");
      out.write("                    ['Tiên Hiệp', 15],\n");
      out.write("                    ['Huyền Huyền', 10],\n");
      out.write("                    ['Dị Giới', 5],\n");
      out.write("                    ['Kiếm Hiệp', 8],\n");
      out.write("                    ['Trọng Sinh', 5],\n");
      out.write("                    ['Tình Cảm', 5]\n");
      out.write("                ]);\n");
      out.write("\n");
      out.write("                // Optional; add a title and set the width and height of the chart\n");
      out.write("                var options = {'width': 1200, 'height': 800};\n");
      out.write("\n");
      out.write("                // Display the chart inside the <div> element with id=\"piechart\"\n");
      out.write("                var chart = new google.visualization.PieChart(document.getElementById('piechart'));\n");
      out.write("                chart.draw(data, options);\n");
      out.write("            }\n");
      out.write("                </script>                         \n");
      out.write("            </div>                       \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"pillar\">\n");
      out.write("            <div class=\"pillar_static\">\n");
      out.write("                <hr/>Biểu Đồ Số Lượng Sách Bán Được Của Các Tháng<hr/>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"chart-div\" style=\"width: 700px; height: 250px;\"></div>  \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
