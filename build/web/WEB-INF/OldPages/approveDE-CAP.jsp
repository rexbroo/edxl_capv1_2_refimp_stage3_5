<%-- 
    Document   : approveDE-CAP
    Created on : May 29, 2017, 8:27:08 AM
    Author     : Rex Brooks
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/capv1_2_refimp.css">
        <title>CAPv1.2 Reference Implementation</title>
    </head>
    <body>
        <div id="main">
            <div id="header">
                <div id="widgetBar">

                    <div class="headerWidget">
                        [ approve message package ]
                    </div>

                    <div class="headerWidget">
                        [ assemble message package ]
                    </div>

                    <div class="headerWidget">
                        [ review message ]
                    </div>

                </div>

                <a href="#">
                    <img src="img/edxl-logo-01.jpg" id="logo" alt="EDXL logo">
                    <img src="img/edxlw.jpg" align="center" id="logoText" alt="EMERGENCY DATA EXCHANGE LANGUAGE">
                </a>

            </div>
            
        </div>

        <div id="centerColumn">
            <p id="edxlApproveTitle">[ Approve EDXL-DE & EDXL-CAP Message Package ]</p>
                <br> 

                <form action="approve message package" method="post">

                    <table id="approveMessageTable">
                        <tr>
                        <td align="right"><label for="name">Name:</label></td>
                        <td class="inputField">
                            <input type="text"
                                   size="31"
                                   maxlength="45"
                                   id="name"
                                   name="name"
                                   value="${param.name}">
                        </td>
                        </tr>
                        <tr>
                            <td><label for="titlel">Title:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="45"
                                       id="titlel"
                                       name="title"
                                       value="${param.title}">
                            </td>
                        </tr>
                        <tr>
                            <td><label for="email">Email:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="45"
                                       id="email"
                                       name="email"
                                       value="${param.email}">
                            </td>
                        </tr>
                        <tr>
                            <td><label for="jurisidiction">Jurisidiction:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="16"
                                       id="jurisidiction"
                                       name="jurisidiction"
                                       value="${param.jurisidiction}">
                            </td>
                        </tr>
                        <tr>
                            <td><label for="department">Department:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="45"
                                       id="department"
                                       name="department"
                                       value="${param.department}">
                            </td>
                        </tr>
                        <tr>
                            <td><label for="authorizationcode">Authorization Code:</label></td>
                            <td class="inputField">
                                <input type="text"
                                       size="31"
                                       maxlength="19"
                                       id="authorizationcode"
                                       name="authorizationcode"
                                       value="${param.authorizationcode}">
                            </td>
                        </tr>
                        <tr>
                        <td colspan="2">
                            <input type="submit" value="approve message package">
                        </td>
                    </tr>

                    </table>

                </form>
                
            </div>

            <div id="officialInfoBox">

                <div style="border: black solid 1px; height:100px; padding: 10px">
                    [ legal notice of jurisdiction authority citation and liability disclaimer for emergency public services ]
                </div>
                <br><br>

                <div id="approveMessageBox">
                    [ final approval statement ]
                </div>
                <br>
            </div>

<div id="footer">
                <br>
                <hr id="footerDivider">
                <p id="footerText" class="reallySmallText">
                    <%--<a href="<c:url value='#'/>">--%>Privacy Policy<%--</a>--%>
                    &nbsp;&nbsp;::&nbsp;&nbsp;
                    <%--<a href="<c:url value='#'/>">--%>Contact<%--</a>--%>
                    &nbsp;&nbsp;&copy;&nbsp;&nbsp;
                    2017 OASIS Open</p>
            </div>
        </div>
    </body>
</html>
        
        
