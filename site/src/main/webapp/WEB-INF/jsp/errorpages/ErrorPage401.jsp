<%--
  Copyright 2008-2013 Hippo B.V. (http://www.onehippo.com)
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="org.hippoecm.hst.core.container.ContainerSecurityException" %>
<%@ page import="org.hippoecm.hst.core.container.ContainerSecurityNotAuthenticatedException" %>
<%@ page import="org.hippoecm.hst.core.container.ContainerSecurityNotAuthorizedException" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.hippoecm.org/jsp/hst/core" prefix="hst"%>

<fmt:setBundle basename="org.hippoecm.hst.security.servlet.LoginServlet" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String destination = (String) request.getAttribute("org.hippoecm.hst.security.servlet.destination");
if (destination == null) destination = "";

int autoRedirectSeconds = 2;

%>

<hst:link var="loginFormUrl" path="/login/form" mount="site">
  <hst:param name="destination" value="<%=destination%>" />
</hst:link>
<hst:link var="loginProxyUrl" path="/login/proxy" mount="site" >
  <hst:param name="destination" value="<%=destination%>" />
</hst:link>

<html>
  <head>
    <title>
       <fmt:message key="label.authen.required" />
    </title>
    <meta http-equiv='refresh' content='<%=autoRedirectSeconds%>;url=${loginFormUrl}' />
    <link rel="stylesheet" type="text/css" href="<hst:link path='/login/hst/security/skin/screen.css' mount='site'/>" />
  </head>
  <body class="hippo-root">
    <div>
      <div class="hippo-login-panel">
        <form class="hippo-login-panel-form" name="signInForm" method="post" action="${loginProxyUrl}">
          <h2><div class="hippo-global-hideme"><span>Hippo CMS 7</span></div></h2>
          <div class="hippo-login-form-container">
            <table>
              <tr>
                <td>
                  <p>
                    <fmt:message key="message.authen.required">
                      <fmt:param value="<%=destination%>" />
                    </fmt:message>
                </td>
              </tr>
              <tr>
                <td>
                  <p>
                    <a href="${loginFormUrl}"><fmt:message key="message.try.again"/></a>
                    <br/><br/>
                    <fmt:message key="message.page.auto.redirect.in.seconds">
                      <fmt:param value="<%=autoRedirectSeconds%>" />
                    </fmt:message>
                  </p>
                </td>
              </tr>
            </table>
          </div>
        </form>
        <div class="hippo-login-panel-copyright">
          &copy; 1999-2012 Hippo B.V.
        </div>
      </div>
    </div>
  </body>
</html>