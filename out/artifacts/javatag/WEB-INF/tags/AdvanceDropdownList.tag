<%@ tag pageEncoding="utf-8" %>
<%@ attribute name="name" type="java.lang.String" required="true" %>
<%@ attribute name="selectedValue" type="java.lang.String" required="false" %>
<%@ attribute name="friendlyFirstOption" type="java.lang.String" required="false" %>
<%@ attribute name="items" type="java.util.List<models.PairAtom>" required="false" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<select name="${name}">
    <core:if test="${not empty friendlyFirstOption}">
        <option>${friendlyFirstOption}</option>
    </core:if>
    <core:forEach var="item" items="${items}">
        <core:choose>
            <core:when test="${item.value eq selectedValue}">
                <option value="${item.value}" selected="selected">${item.text}</option>
            </core:when>
            <core:otherwise>
                <option value="${item.value}">${item.text}</option>
            </core:otherwise>
        </core:choose>
    </core:forEach>
</select>