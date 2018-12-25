<%--
  Created by IntelliJ IDEA.
  User: kamesh
  Date: 30/1/18
  Time: 4:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="graphLayout"/>
</head>

<body>
<div class="ex-page-content">
    <div class="container">
        <div class="row">

            <div class="col-lg-4" style="align-content: lef">
            </div>

            <div class="col-lg-4" style="align-content: lef">

                <div class="message-box" style="padding-top: 30%;">
                    <h1 class="m-b-0">
                        <center>
                            <i class="ti-lock" style="color: deepskyblue;"></i>
                        </center>
                    </h1>
                    <br/>
                    <div class="buttons-con">
                        <div class="action-link-wrap">
                            <form>
                                <div class="form-group">

                                    <input type="text" class="form-control" id="username" placeholder="username">
                                </div>
                                <div class="form-group">

                                    <input type="password" class="form-control" id="password" placeholder="password">
                                </div>

                                <div class="form-group">
                                    <select class="form-control" id="userRole">
                                        <option>ADMIN</option>
                                        <option>DELAER</option>
                                        <option>RETAILER</option>
                                        <option>SALES</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                <center><button class="btn btn-info waves-effect waves-light m-b-5"> <i class="ti-lock"></i><span> Login</span>  </button></center>
                                </div>




                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>