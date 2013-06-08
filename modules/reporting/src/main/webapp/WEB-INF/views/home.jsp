
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <h1>Reporting</h1>
    <form class="form-horizontal" method="get" action="<%= request.getContextPath( ) + "/frameset" %>" target="_blank">

            <br/>
            <input type='hidden' name='__report' value="report/sample_report.rptdesign">
            <input type='hidden' name='promotion_id' value="">





            <br/>
            <input type="submit" value="Submit" />


    </form>
</body>
</html>