<%-- 
    Document   : approveDE-CAP
    Created on : May 29, 2017, 8:25:11 AM
    Author     : rexbrooks
--%>




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
        
        