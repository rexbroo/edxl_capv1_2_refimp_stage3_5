<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->



<%--<sql:query var="categories" dataSource="jdbc/edxl_cap_v1_2_refimp">
    SELECT * FROM category
</sql:query>--%>

        
            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p style="font-size:larger;padding:10px;text-align:justify">Welcome to the start page for composing
                        your Emergency Data Exchange Language - Common Alerting Protocol (EDXL-CAP) Message.</p>
                            
                    <p style="font-size:smaller;padding:10px;text-align:justify">First choose the EDXL-CAP Data Category you want 
                        compose first from among those shown in the panel to the right. We suggest starting with "alert." Your click 
                        takes you to the page where you start composing your message. </p>
                    
                    <p style="font-size:smaller;padding:10px;text-align:justify">Subsequent pages allow you to review the elements you 
                        add to the category, assemble the overall CAP message, review and approve it. Then you package the CAP Message 
                        with its EDXL-DE header-wrapper.</p>
                    
                </div>
            </div>

            <div id="indexRightColumn">
                <p id="edxlCAPTitle">[ Common Alerting Protocol (CAP) v1.2 ]</p>
                
                <c:forEach var="category" items="${categories}">
                    <div class="edxlBox">
                        <a href="category?${category.id}">
                            <span class="edxlLabelText">${category.name}</span>

                            <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                 alt="${category.name}" class="categoryImage">
                        </a>
                    </div>
                </c:forEach>
            </div>
                
            <%--<div class="edxlBox">
                    <a href="#">
                        <span class="edxlLabelText">alert</span><br>
                        <span class="edxlLabelTextSmall">Alert Information</span><br>
                        <span class="edxlLabelTextSmall">identifier, sender, status,<br> 
                            msgType, source, scope,<br> 
                            code, note, etc.</span>
                    </a>
                </div>
                <div class="edxlBox">
                    <a href="#">
                        <span class="edxlLabelText">info</span><br>
                        <span class="edxlLabelTextSmall">Assorted Information</span><br>
                        <span class="edxlLabelTextSmall">language, category, event,<br> 
                            responseType, urgency,<br> 
                            severity, certainty, audience,<br> 
                            eventCode, etc.</span>
                    </a>
                </div>
                <div class="edxlBox">
                    <a href="#">
                        <span class="edxlLabelText">area</span><br>
                        <span class="edxlLabelTextSmall">Area (Location) Information</span><br>
                        <span class="edxlLabelTextSmall">areaDesc, polygon, circle,<br> 
                            geocode, altitude, ceiling.</span>
                    </a>
                </div>
                <div class="edxlBox">
                    <a href="#">
                        <span class="edxlLabelText">resource</span><br>
                        <span class="edxlLabelTextSmall">Resource Information</span><br>
                        <span class="edxlLabelTextSmall">resource, resourceDesc,<br> 
                            mimeType, size, uri,<br> 
                            derefUri, digest.</span>
                    </a>
                </div>
                --%>
            
        
        