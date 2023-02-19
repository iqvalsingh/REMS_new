/**
 * 
 */
package com.rems.filter;

/**
 * @author Satbir Kaur
 *
 */
//@Component
public class REMSFilter // implements Filter
{

	/*
	 * @Override public void doFilter(ServletRequest request, ServletResponse
	 * response, FilterChain chain) throws IOException, ServletException {
	 * HttpServletRequest httpRequest = (HttpServletRequest) request;
	 * HttpServletResponse httpResponse = (HttpServletResponse) response;
	 * HttpSession session = httpRequest.getSession(); User user = (User)
	 * session.getAttribute("user"); Admin admin = (Admin)
	 * session.getAttribute("adminUser"); String requestURI =
	 * httpRequest.getRequestURI();
	 * 
	 * 
	 * if (!requestURI.contains(".html")) { chain.doFilter(request, response); }
	 * else if (admin == null && requestURI.contains("admin") &&
	 * !requestURI.contains("login.html")) {
	 * httpResponse.sendRedirect("index.html"); } else if (user == null &&
	 * (requestURI.contains("user-profile.html") ||
	 * requestURI.contains("change-password.html") ||
	 * requestURI.contains("my-properties.html") ||
	 * requestURI.contains("enquries.html") ||
	 * requestURI.contains("edit-property.html") ||
	 * requestURI.contains("view-enquiry-detail.html"))) {
	 * httpRequest.getRequestURI().replace(requestURI, "/rems/index.html");
	 * httpResponse.sendRedirect("index.html"); } else { chain.doFilter(request,
	 * response); }
	 * 
	 * chain.doFilter(request, response); }
	 */

}
