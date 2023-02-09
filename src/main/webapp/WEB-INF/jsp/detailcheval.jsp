<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: yoh
  Date: 03/04/2020
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><s:text name="detailcheval.titre"/></title>
</head>
<body>
<h1><s:text name="detailcheval.h1"/></h1>

<s:text name="detailcheval.message1"/> <b><s:property value="cheval.nom"/></b>. <s:text name="detailcheval.message2"/> <b><s:property value="cheval.idCheval"/></b> <s:text name="detailcheval.message3"/>
<b><s:property value="cheval.age"/></b> <s:text name="detailcheval.message4"/>.

<br>
<s:a action="index"><s:text name="detailcheval.menu"/></s:a>




</body>
</html>
