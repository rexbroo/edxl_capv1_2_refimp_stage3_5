<%-- 
    Document   : category
    Created on : May 29, 2017, 8:21:24 AM
    Author     : rexbrooks
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

        <div id="edxlLeftColumn">
                <a href="#" class="edxlButton">
                    <span class="edxlText">alert block</span>
                </a>

                <a href="#" class="edxlButton">
                    <span class="edxlText">info block</span>
                </a>

                <a href="#" class="edxlButton">
                    <span class="edxlText">area block</span>
                </a>

                <a href="#" class="edxlButton">
                    <span class="edxlText">resource block</span>
                </a>
            </div>

            <div id="edxlRightColumn">
                <p id="edxlCategoryTitle">[ Select EDXL-CAP Data Category ]</p>
                <br>
                <table id="elementTable" class="smallText"></td>
                    <tr>
                        <td class="lightBlue">
                            <input type="checkbox" name="start">start
                        </td>
                        <td class="lightBlue">
                            &nbsp;&nbsp;element:<br>&nbsp;&nbsp; example&nbsp;&nbsp;
                        </td>
                        <td class="lightBlue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="lightBlue"><span class="smallText"><textarea name="name" rows="4" cols="30">
                            </textarea></span></td>
                        <td class="lightBlue"><input type="radio" name="" value="repeat element" />repeat</td>
                        <td class="lightBlue">
                            <form action="#" method="post">
                                <input type="submit" value="add element">
                            </form>
                        </td>
                    </tr>

                    <tr>
                        <td class="white">
                            <input type="checkbox" name="start">start
                        </td>
                        <td class="white">
                            &nbsp;&nbsp;element:<br>&nbsp;&nbsp; example&nbsp;&nbsp;
                        </td>
                        <td class="white"></td>
                        <td class="white"><input type="text" name="name" cols="30" value="" /></td>
                        <td class="white"></td>
                        <td class="white">
                            <form action="#" method="post">
                                <input type="submit" value="add element">
                            </form>
                        </td>
                    </tr>

                    <tr>
                        <td class="lightBlue">
                            <input type="checkbox" name="start">start
                        </td>
                        <td class="lightBlue">
                            &nbsp;&nbsp;element:<br>&nbsp;&nbsp; example&nbsp;&nbsp;
                        </td>
                        <td class="lightBlue"></td>
                        <td class="lightBlue"><select name="select">
                                <option>Option1</option>
                                <option>Option2</option>
                                <option>Option3</option>
                                <option>Option4</option>
                                <option>Option5</option>
                            </select></td>
                        <td class="lightBlue"><input type="radio" name="" value="repeat element" />repeat</td>
                        <td class="lightBlue">
                            <form action="#" method="post">
                                <input type="submit" value="add element">
                            </form>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="white">
                            <input type="checkbox" name="start">start
                        </td>
                        <td class="white">
                            &nbsp;&nbsp;element:<br>&nbsp;&nbsp; example&nbsp;&nbsp;
                        </td>
                        <td class="white"></td>
                        <td class="white"><input type="text" name="event" value="" /></td>
                        <td class="white"></td>
                        <td class="white">
                            <form action="#" method="post">
                                <input type="submit" value="add element">
                            </form>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="lightBlue">
                            <input type="checkbox" name="start">start
                        </td>
                        <td class="lightBlue">
                            &nbsp;&nbsp;element:<br>&nbsp;&nbsp; example&nbsp;&nbsp;
                        </td>
                        <td class="lightBlue"></td>
                        <td class="lightBlue"><input type="text" name="event" value="" /></td>
                        <td class="lightBlue"></td>
                        <td class="lightBlue">
                            <form action="#" method="post">
                                <input type="submit" value="add element">
                            </form>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="white">
                            <input type="checkbox" name="start">start
                        </td>
                        <td class="white">
                            &nbsp;&nbsp;element:<br>&nbsp;&nbsp; example&nbsp;&nbsp;
                        </td>
                        <td class="white"></td>
                        <td class="white"><input type="text" name="event" value="" /></td>
                        <td class="white"></td>
                        <td class="white">
                            <form action="#" method="post">
                                <input type="submit" value="add element">
                            </form>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="lightBlue">
                            <input type="checkbox" name="start">start
                        </td>
                        <td class="lightBlue">
                            &nbsp;&nbsp;element:<br>&nbsp;&nbsp; example&nbsp;&nbsp;
                        </td>
                        <td class="lightBlue"></td>
                        <td class="lightBlue"><select name="select">
                                <option>Option1</option>
                                <option>Option2</option>
                                <option>Option3</option>
                                <option>Option4</option>
                                <option>Option5</option>
                            </select></td>
                        <td class="lightBlue"><input type="radio" name="" value="repeat element" />repeat</td>
                        <td class="lightBlue">
                            <form action="#" method="post">
                                <input type="submit" value="add element">
                            </form>
                        </td>
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