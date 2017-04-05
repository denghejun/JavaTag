<%--
  Created by IntelliJ IDEA.
  User: hjdeng
  Date: 4/1/17
  Time: 8:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="tld" uri="http://www.thoughtworks.com" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="services.BackendService" %>
<%@ page import="java.util.List" %>
<%@ page import="models.PairAtom" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Java Tag</title>
</head>
<body>
    <p>
        <h4>tld</h4>
        <tld:hello who="Hejun" said="I can do this">
            I have no idea form now on.
        </tld:hello>
    </p>
    <p>
        <h4>tag</h4>
        <tag:AdvanceDropdownList
                name="ad"
                selectedValue="value7"
                friendlyFirstOption="--Please Select"
                items="<%= new BackendService().getPairAtoms(10) %>">
        </tag:AdvanceDropdownList>
    </p>
</body>
</html>
