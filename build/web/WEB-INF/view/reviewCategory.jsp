<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : category
    Created on : May 29, 2017, 8:21:24 AM
    Author     : rexbrooks
--%>

<%--<sql:query var="categories" dataSource="jdbc/edxl_cap_v1_2_refimp">
    SELECT * FROM category
</sql:query>
    
<sql:query var="selectedCategory" dataSource="jdbc/edxl_cap_v1_2_refimp">
    SELECT name FROM category WHERE id = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>
    
<sql:query var="elements" dataSource="jdbc/edxl_cap_v1_2_refimp">
    SELECT * FROM element
</sql:query>
    
<sql:query var="selectedElement" dataSource="jdbc/edxl_cap_v1_2_refimp">
    SELECT name FROM element WHERE id = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>
        
<sql:query var="categoryElements" dataSource="jdbc/edxl_cap_v1_2_refimp">
    SELECT * FROM element WHERE category_id = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>

<sql:query var="elementDatatypes" dataSource="jdbc/edxl_cap_v1_2_refimp">
    SELECT * FROM element WHERE datatype = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>
    
<sql:query var="elementDatatypes" dataSource="jdbc/edxl_cap_v1_2_refimp">
    SELECT * FROM element WHERE datatype_size = ?
    <sql:param value="${pageContext.request.queryString}"/>
</sql:query>--%>

        <div id="edxlLeftColumn">
            <c:forEach var="category" items="${categories}">

                <c:choose>
                    <c:when test="${category.id == pageContext.request.queryString}">
                        <div class="edxlButton" id="selectedCategory">
                            <span class="edxlText">
                                ${category.name}
                            </span>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <a href="category?${category.id}" class="edxlButton">
                            <div class="edxlText">
                                ${category.name}
                            </div>
                        </a>
                    </c:otherwise>
                </c:choose>

            </c:forEach>
        </div>

            <div id="edxlRightColumn">
                
                <p id="edxlCategoryTitle">${selectedCategory.name}</p>
                
                <p style="font-size:x-small;padding:2px;text-align:center">repeat button is for multiple-use elements. * = required</p>
               
                <table id="elementTable" class="smallText">
                    
                    <c:forEach var="dataCategoryElement" items="${dataCategory.elements}" varStatus="iter">
                        
                        <c:set var="element" value="${dataCategoryElement.element}"/>

                        <tr class="${((iter.index % 2) == 0) ? 'lightBlue' : 'white'}">
                            <td>
                                <input type="checkbox" name="start">start
                            </td>
                            <td>
                                &nbsp;&nbsp;element:<br>
                                &nbsp;&nbsp; ${element.name} 
                                <c:choose>
                                    <c:when test="${element.required == 1}">
                                         *
                                    </c:when>
                                    <c:otherwise>&nbsp;&nbsp;
                                    </c:otherwise>
                                </c:choose>
                                &nbsp;&nbsp;
                            </td>
                            <td>
                                <div id="elementInput">
                                    
                                <c:forEach var="element" items="${elements}">
                                    
                                    <c:choose>
                                    <%--<c:when test="${element.datatype == ENUM}">
                                            <div class="edxlDropdownButton" id="selectedElement">
                                                //script to retrieve values from ENUM datatype of selectedElement
                                                ${ENUM(values) = select(options)}
                                                //to populate drop-down list 
                                                <span class="smallText">
                                                    Select&nbsp; ${element.name}
                                                    <select name="selectedElement" id="element.id">
                                                        <option value=""></option>
                                                        <co:forEach items="${element}" var="value">
                                                           <option>${value}</option>
                                                        </co:forEach>
                                                        </>
                                                    </select>--%>
                                                        
                                        <c:when test="${element.name == 'status'}">
                                        <%--<div class="edxlDropDownButton" id="selectedElement">
                                                <span class="smallText">--%>
                                                    Select&nbsp; status
                                                    <select name="status">
                                                        <option>Actual</option>
                                                        <option>Exercise</option>
                                                        <option>System</option>
                                                        <option>Test</option>
                                                        <option>Draft</option>
                                                    </select>
                                            <%--</span>
                                            </div>--%>
                                        </c:when>
                                        <c:when test="${element.name == 'msgType'}">
                                        <%--<div class="edxlDropDownButton" id="selectedElement">
                                                <span class="smallText">--%>
                                                    Select&nbsp; msgType
                                                    <select name="msgType">
                                                        <option>Alert</option>
                                                        <option>Update</option>
                                                        <option>Cancel</option>
                                                        <option>Ack</option>
                                                        <option>Error</option>
                                                    </select>
                                            <%--</span>
                                            </div>--%>
                                        </c:when>
                                        <c:when test="${element.name == 'scope'}">
                                        <%--<div class="edxlDropDownButton" id="selectedElement">
                                                <span class="smallText">--%>
                                                    Select&nbsp; scope
                                                    <select name="scope">
                                                        <option>Public</option>
                                                        <option>Restricted</option>
                                                        <option>Private</option>
                                                    </select>
                                            <%--</span>
                                            </div>--%>
                                        </c:when>
                                        <c:when test="${element.name == 'category'}">
                                        <%--<div class="edxlDropDownButton" id="selectedElement">
                                                <span class="smallText">--%>
                                                    Select&nbsp; category
                                                    <select name="category">
                                                        <option>Geo</option>
                                                        <option>Met</option>
                                                        <option>Safety</option>
                                                        <option>Security</option>
                                                        <option>Rescue</option>
                                                        <option>Fire</option>
                                                        <option>Health</option>
                                                        <option>Env</option>
                                                        <option>Transport</option>
                                                        <option>Infra</option>
                                                        <option>CBRNE</option>
                                                        <option>Other</option>
                                                    </select>
                                            <%--</span>
                                            </div>--%>
                                        </c:when>
                                        <c:when test="${element.name == 'responseType'}">
                                        <%--<div class="edxlDropDownButton" id="selectedElement">
                                                <span class="smallText">--%>
                                                    Select&nbsp; responseType
                                                    <select name="responseType">
                                                        <option>Shelter</option>
                                                        <option>Evacuate</option>
                                                        <option>Prepare</option>
                                                        <option>Execute</option>
                                                        <option>Avoid</option>
                                                        <option>Monitor</option>
                                                        <option>Assess</option>
                                                        <option>AllClear</option>
                                                        <option>None</option>
                                                    </select>
                                            <%--</span>
                                            </div>--%>
                                        </c:when>
                                        <c:when test="${element.name == 'urgency'}">
                                        <%--<div class="edxlDropDownButton" id="selectedElement">
                                                <span class="smallText">--%>
                                                    Select&nbsp; urgency
                                                    <select name="urgency">
                                                        <option>Immediate</option>
                                                        <option>Expected</option>
                                                        <option>Future</option>
                                                        <option>Past</option>
                                                        <option>Unknown</option>
                                                    </select>
                                            <%--</span>
                                            </div>--%>
                                        </c:when>
                                        <c:when test="${element.name == 'severity'}">
                                        <%--<div class="edxlDropDownButton" id="selectedElement">
                                                <span class="smallText">--%>
                                                    Select&nbsp; severity
                                                    <select name="severity">
                                                        <option>Extreme</option>
                                                        <option>Severe</option>
                                                        <option>Moderate</option>
                                                        <option>Minor</option>
                                                        <option>Unknown</option>
                                                    </select>
                                            <%--</span>
                                            </div>--%>
                                        </c:when>
                                        <c:when test="${element.name == 'certainty'}">
                                        <%--<div class="edxlDropDownButton" id="selectedElement">
                                                <span class="smallText">--%>
                                                    Select&nbsp; certainty
                                                    <select name="certainty">
                                                        <option>Observed</option>
                                                        <option>Likely</option>
                                                        <option>Possible</option>
                                                        <option>Unlikely</option>
                                                        <option>Unknown</option>
                                                    </select>
                                            <%--</span>
                                            </div>--%>
                                        </c:when>
                                        <c:otherwise>
                                            <c:choose>
                                                <c:when test="${element.datatype_size < 49}">
                                                    <%--<div class="edxlTextInputButton" id="selectedElement">--%>
                                                        <span class="smallText">Enter ${element.name} value
                                                            <input type="text" name="elementValue" value="" size="25" />
                                                        </span>
                                                <%--</div>--%>
                                                </c:when>
                                                <c:otherwise>
                                                <%--<div class="edxlTextInputButton" id="selectedElement">--%>
                                                        <span class="smallText">Enter ${element.name} value
                                                            <textarea name="elementValue" rows="3" cols="25">
                                                            </textarea>
                                                        </span>
                                                <%--</div>--%>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:otherwise>
                                    </c:choose>

                                </c:forEach>

                            </div>

                        </td>
                        <td>
                            
                        <%--<c:forEach var="element" items="${elements.rows}">--%>

                            <c:choose>
                                <c:when test="${element.repeatable == 1}">
                                    <input type="radio" name="repeatElement" value="" />&nbsp;repeat
                                </c:when>
                                <c:otherwise>&nbsp;&nbsp;
                                </c:otherwise>
                            </c:choose>

                        <%--</c:forEach>--%>
                        </td>
                        <td>
                            <form action="addElement" method="post">
                                <input type="hidden"
                                       name="elementId"
                                       value="${element.id}">
                                <input type="submit"
                                       value="add element">
                            </form>
                        </td>
                    </tr>
            <%--</c:choose>--%>
                        
            </c:forEach>
                        
            </table>
                
                <form action="reviewCategory" method="post">
                    <input type="hidden"
                        name="categoryIDId"
                        value="${category.id}">
                    <input type="submit"
                         value="review category">
                </form>
                    
        </div>