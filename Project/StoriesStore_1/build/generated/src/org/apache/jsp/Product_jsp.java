package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Product_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_fmt_formatNumber_value_pattern_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.release();
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
      out.write("        <title>Product</title>\n");
      out.write("        <!--link icons and bootstrap-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"HomeStyle.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"HomeTabStyle.css\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"LoginStyle.css\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"SignUpStyle.css\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"UpdateAdminStyle.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"ProductStyle1.css\">\n");
      out.write("\n");
      out.write("        <!--link custom js-->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function buy(id) {\n");
      out.write("                document.f.action = \"buy?id=\" + id;\n");
      out.write("                document.f.submit();\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!--header top-->\n");
      out.write("        <div class=\"header_top\">\n");
      out.write("\n");
      out.write("            <!--header_top_left-->\n");
      out.write("            <div class=\"header_top_left\">\n");
      out.write("                <a class=\"twitter\" href=\"#\"> <i class=\"fa-brands fa-twitter\"></i> </a>\n");
      out.write("                <a class=\"google\" href=\"#\"> <i class=\"fa-brands fa-google\"></i> </a>\n");
      out.write("                <a class=\"facebook\" href=\"#\"> <i class=\"fa-brands fa-facebook\"></i> </a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!--header_top_center-->\n");
      out.write("            <div class=\"header_top_center\">\n");
      out.write("                <div class=\"header_top_center_phone\"><i class=\"phone fa-solid fa-phone\"></i>&nbsp;&nbsp;&nbsp;0123456789</div>\n");
      out.write("                <div class=\"header_top_center_time\"><i class=\"clock fa-solid fa-clock\"></i>&nbsp;&nbsp;&nbsp;9:00AM - 10:00PM</div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <!--header_top_right-->\n");
      out.write("            <div class=\"header_top_right\">\n");
      out.write("                <div class=\"header_top_right_search\">\n");
      out.write("                    <form action=\"search\" method=\"get\">\n");
      out.write("                        <input type=\"text\" placeholder=\"Search here...\" name=\"key\"/>\n");
      out.write("                        <button type=\"submit\" > <i class=\"fas fa-search\"></i> </button>                        \n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!--login & registration-->\n");
      out.write("                ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                <!--logout-->\n");
      out.write("                ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--header_end-->\n");
      out.write("        <div class=\"header_bottom\">\n");
      out.write("            <div class=\"header_bottom_logo\">\n");
      out.write("                <a href=\"home\"> <img src=\"images/Logo_2.png\" /> </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"header_bottom_menu\">\n");
      out.write("                <li><a href=\"home\">Trang chủ</a></li>\n");
      out.write("                <li><a href=\"buyhot\">Truyện Bán Chạy</a></li>\n");
      out.write("                <li><a href=\"readhot\">Truyện Hot</a> </li>\n");
      out.write("                <li><a href=\"#\">Truyện Mới</a> </li>\n");
      out.write("                <li><a href=\"#\">Review Truyện</a></li>               \n");
      out.write("                <li><a href=\"#\">Thư viện Truyện</a> </li>               \n");
      out.write("                <li><a href=\"tab\">Thể Loại Truyện</a></li>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("            <div class=\"icons\">\n");
      out.write("                <a href=\"#\" class=\"heart\"> <i class=\"fa-regular fa-heart\"></i> \n");
      out.write("                    <small class=\"number_cart\">\n");
      out.write("                        10\n");
      out.write("                    </small>\n");
      out.write("                </a>\n");
      out.write("                <a href=\"#\" class=\"bell\"> <i class=\"fa-regular fa-bell\"></i> \n");
      out.write("                    <small class=\"number_cart\">\n");
      out.write("                        12\n");
      out.write("                    </small>\n");
      out.write("                </a>\n");
      out.write("                <a href=\"Cart.jsp\" class=\"cart\"> \n");
      out.write("                    <i class=\"fa-solid fa-cart-arrow-down\"></i> \n");
      out.write("                    <small class=\"number_cart\">\n");
      out.write("                        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${size}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                    </small>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("      \n");
      out.write("            <form name=\"f\" method=\"post\">\n");
      out.write("                <div class=\"information_book\">\n");
      out.write("                    <div class=\"information_book_left\">\n");
      out.write("                        <img src=\"images/");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.bookImage}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"information_book_right\">\n");
      out.write("                        <div class=\"book_name\">\n");
      out.write("                            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.bookName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"sold_eva\">\n");
      out.write("                            <div class=\"eva\">Điểm Đánh Giá: <a>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.bookEvaluate}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></div>\n");
      out.write("                            <div class=\"sold\">Đã Bán: <a>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.q.sold}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></div>           \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"book_info\">\n");
      out.write("                            <div class=\"book_author\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.bookAuthor}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</div>\n");
      out.write("                            ");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"intro\">\n");
      out.write("                            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.p.cententBook}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"book_price\">\n");
      out.write("                            <!--Giá bán: <a>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.bookPrice*1.3}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("$</a>-->\n");
      out.write("                            Đơn Giá: <a>");
      if (_jspx_meth_fmt_formatNumber_0(_jspx_page_context))
        return;
      out.write("$</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"buy\">Số Lượng: \n");
      out.write("                            <div>\n");
      out.write("                                <button><a>-</a></button>\n");
      out.write("                                <input type=\"text\" value=\"1\" name=\"num\"/>\n");
      out.write("                                <button><a>+</a></button>                           \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"book_cart_buy\">\n");
      out.write("                            <div class=\"book_cart\">\n");
      out.write("<!--                                <a href=\"checkadmin?action=buy&id=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.p.bookID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                                --><a href=\"checkadmin?action=buy&id=buy('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.p.bookID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("')\">\n");
      out.write("                                    <i class=\"fa-solid fa-cart-plus\"></i>\n");
      out.write("                                    <input type=\"submit\" value=\"Thêm Vào Giỏ Hàng\" onclick=\"buy('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.p.bookID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("')\"/>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"book_buy\">\n");
      out.write("                                <i class=\"fa-solid fa-basket-shopping\"></i><input type=\"text\" value=\"Mua Hàng\" />\n");
      out.write("                            </div> \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>              \n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div>\n");
      out.write("                <div class=\"logo\"> <img src=\"images/Logo_2.png\" /> </div>\n");
      out.write("                <div class=\"comment\">\n");
      out.write("                    BookStore là nền tảng mở trực tuyến, với nhiều thể loại sách khác nhau, với nội \n");
      out.write("                    dung phong phú; mọi người có thể thảo mãi tìm hiểu và mua các quyến sách mà mình \n");
      out.write("                    yêu thích. Các loại sách trên BookStore đã được chọn lọc để phù hợp với mọi lứa \n");
      out.write("                    tuổi từ trẻ em đến thành niên rồi đến cả vị thành niên. Cuối cùng BookStore xin cảm ơn \n");
      out.write("                    và chi ân chân thành đến tất cả các đến khách hàng đã ghé qua và mua sách của chúng tôi!!! \n");
      out.write("                </div>                \n");
      out.write("            </div>\n");
      out.write("            <br/>\n");
      out.write("\n");
      out.write("            <div class=\"end_1\">\n");
      out.write("                <div>Chính sách bảo mật</div> \n");
      out.write("                <div>Quy chế hoạt động</div>\n");
      out.write("                <div>Chính sách vận chuyển</div>\n");
      out.write("                <div>Chính sách trả hàng và hoàn tiền</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"end_2\">\n");
      out.write("                <div>Địa chỉ: Đại học FPT Hà Nội tọa lạc tại Khu Công nghệ cao Hòa Lạc, Km29 Đại lộ Thăng Long, Huyện Thạch Thất, Hà Nội</div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"contact\">\n");
      out.write("                <a class=\"twitter\" href=\"#\"> <i class=\"fa-brands fa-twitter\"></i> </a>\n");
      out.write("                <a class=\"google\" href=\"#\"> <i class=\"fa-brands fa-google\"></i> </a>\n");
      out.write("                <a class=\"facebook\" href=\"#\"> <i class=\"fa-brands fa-facebook\"></i> </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.admin == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    <div class=\"header_top_right_sign_in\">\n");
        out.write("                        <a href=\"Login.jsp\"> <i class=\"fa-solid fa-arrow-right-to-bracket\"></i> </a>\n");
        out.write("                        <div> <a href=\"Login.jsp\">Login</a> </div>\n");
        out.write("                    </div>\n");
        out.write("                    <div class=\"header_top_right_registration\">\n");
        out.write("                        <a href=\"SignUp.jsp\"> <i class=\"fa-solid fa-key\"></i> </a>\n");
        out.write("                        <div> <a href=\"SignUp.jsp\">Register</a> </div>\n");
        out.write("                    </div>                    \n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.admin != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                    <div class=\"header_top_right_regular\">  \n");
        out.write("                        <a><i class=\"fa-solid fa-bars\"></i></a>\n");
        out.write("                        <div class=\"ul\">\n");
        out.write("                            <ul>\n");
        out.write("                                <li>\n");
        out.write("                                    <a><i class=\"fa-solid fa-circle-user\"></i>&nbsp;&nbsp;&nbsp;Cá Nhân</a>\n");
        out.write("                                </li>\n");
        out.write("                                <li>\n");
        out.write("                                    <a href=\"AddProduct.jsp\"><i class=\"fa-solid fa-upload\"></i>&nbsp;&nbsp;&nbsp;Đăng Sản Phẩm</a>\n");
        out.write("                                </li>\n");
        out.write("                                <li>\n");
        out.write("                                    <a href=\"designproduct\"><i class=\"fa-solid fa-marker\"></i>&nbsp;&nbsp;&nbsp;Design Product</a>\n");
        out.write("                                </li>\n");
        out.write("                                <li>\n");
        out.write("                                    <a href=\"ChangePass.jsp\"><i class=\"fa-solid fa-arrow-rotate-right\"></i>&nbsp;&nbsp;&nbsp;Đổi Password</a>\n");
        out.write("                                </li>\n");
        out.write("                                <li>\n");
        out.write("                                    <a><i class=\"fa-solid fa-gear\"></i>&nbsp;&nbsp;&nbsp;Cài Đặt</a>\n");
        out.write("                                </li>\n");
        out.write("                                <li>\n");
        out.write("                                    <a href=\"logout\" class=\"logout_a\">\n");
        out.write("                                        <i class=\"fa-solid fa-arrow-right-from-bracket\"></i>&nbsp;&nbsp;&nbsp;Đăng Xuất\n");
        out.write("                                    </a>\n");
        out.write("                                </li>\n");
        out.write("                            </ul>                           \n");
        out.write("                        </div>\n");
        out.write("\n");
        out.write("                        <div class=\"div_logout\">\n");
        out.write("                            <a>");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.admin.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</a>\n");
        out.write("                        </div>\n");
        out.write("                    </div>\n");
        out.write("                ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("size");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.size}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_fmt_formatNumber_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  fmt:formatNumber
    org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag _jspx_th_fmt_formatNumber_0 = (org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag) _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.get(org.apache.taglibs.standard.tag.rt.fmt.FormatNumberTag.class);
    _jspx_th_fmt_formatNumber_0.setPageContext(_jspx_page_context);
    _jspx_th_fmt_formatNumber_0.setParent(null);
    _jspx_th_fmt_formatNumber_0.setPattern("##.#");
    _jspx_th_fmt_formatNumber_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP.bookPrice}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_fmt_formatNumber_0 = _jspx_th_fmt_formatNumber_0.doStartTag();
    if (_jspx_th_fmt_formatNumber_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
      return true;
    }
    _jspx_tagPool_fmt_formatNumber_value_pattern_nobody.reuse(_jspx_th_fmt_formatNumber_0);
    return false;
  }
}
