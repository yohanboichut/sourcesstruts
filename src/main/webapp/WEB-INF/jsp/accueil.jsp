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
    <title><s:text name="accueil.titre"/></title>
</head>
<body>
<h1><s:text name="accueil.h1.liens"/></h1>

<h2><s:text name="accueil.h2.liensavecparametres"/></h2>

<s:url var="getcheval" action="recuperationcheval">
    <s:param name="id" value="1"/>
</s:url>

<s:a href="%{#getcheval}"><s:text name="accueil.a.cheval1"/></s:a>


<h2><s:text name="accueil.h2.generationliens"/></h2>


<ul>
    <s:iterator value="%{chevaux}" var="cheval">
        <s:url var="ycheval" action="recuperationcheval">
            <s:param name="id" value="%{#cheval.idCheval}"/>
        </s:url>
        <li> <s:a href="%{#ycheval}"><s:property value="#cheval.nom"/> </s:a></li>
    </s:iterator>
</ul>


<h1><s:text name="accueil.h1.formulaires"/></h1>


<s:form action="ajouterCheval">
    <s:textfield name="nomCheval" key="accueil.nomCheval"/>
    <s:textfield name="ageCheval" key="accueil.ageCheval"/>
    <s:submit/>
</s:form>



<h1><s:text name="accueil.h1.select"/></h1>

<s:if test="chevaux.size() > 0">
<s:form action="recuperationcheval">
    <s:select name="id" list="%{chevaux}" listKey="idCheval" listValue="%{idCheval + '- ' + nom}" key="accueil.select"/>
    <s:submit/>
</s:form>
</s:if>
<s:else>
    <s:text name="accueil.select.defaut"/>
</s:else>


<h1><s:text name="accueil.h1.radio"/></h1>
<s:if test="chevaux.size() > 0">

    <s:form action="recuperationcheval">
        <s:radio name="id" list="%{chevaux}" listKey="idCheval" listValue="%{idCheval + '- ' + nom}" key="accueil.select"/>
        <s:submit/>
    </s:form>
</s:if>
<s:else>
    <s:text name="accueil.select.defaut"/>
</s:else>



</body>
</html>
