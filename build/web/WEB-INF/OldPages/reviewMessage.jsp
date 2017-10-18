<%-- 
    Document   : reviewMessage
    Created on : May 29, 2017, 8:26:28 AM
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
            <p id="edxlReviewTitle">[ Review EDXL-CAP Message ]</p>
                <br>

                <p>Your EDXL-CAP Message contains x elements.</p>

                <table id="reviewTable">

                    <tr class="header">
                        <th>category</th>
                        <th>element</th>
                        <th>element value</th>
                        <th>confirm</th>
                    </tr>

                    <tr>
                        <td class="lightBlue">[ category name ]</td></td>
                        <td class="lightBlue">[ element name ]</td>
                        <td class="lightBlue">[ element value ]</td>
                        <td class="lightBlue">

                            <form action="confirmElement" method="post">
                                <input type="submit"
                                       name="submit"
                                       value="confirm">
                            </form>
                        </td>
                    </tr>

                     <tr>
                        <td class="lightBlue">[ category name ]</td></td>
                        <td class="lightBlue">[ element name ]</td>
                        <td class="lightBlue">[ element value ]</td>
                        <td class="lightBlue">

                            <form action="updateCart" method="post">
                                <input type="submit"
                                       name="submit"
                                       value="confirm">
                            </form>
                        </td>
                    </tr>

                    <tr>
                        <td class="lightBlue">[ category name ]</td></td>
                        <td class="lightBlue">[ element name ]</td>
                        <td class="lightBlue">[ element value ]</td>
                        <td class="lightBlue">
                            <form action="updateCart" method="post">
                                <input type="submit"
                                       name="submit"
                                       value="confirm">
                            </form>
                        </td>
                    <tr>
                        <td class="lightBlue"></td>
                        <td class="lightBlue"></td>
                        <td class="lightBlue">
                            <form action="returnToCategory" method="post">
                                <input type="submit"
                                       name="submit"
                                       value="returnToCategory">
                            </form>
                        </td>
                        <td class="lightBlue">
                            <form action="proceedToAssembleDE-CAP" method="post">
                                <input type="submit"
                                       name="submit"
                                       value="ProceedToAssembleMessage">
                                </form>
                            </td>
                        </tr>
                    </tr>

                </table>

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
        
        