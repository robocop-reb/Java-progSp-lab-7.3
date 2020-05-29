<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<html>

<head>

    <title>Using JSTL Functions</title>

</head>

<body>

<c:set var = "string1" value = "Far far away, behind the word mountains."/>

<c:set var = "string2" value = "${fn:split(string1,' ')}" />


    <tr>

        <td><c:out value = "${string2[1]}" escapeXml="false"/><br/></td>
        <td><c:out value = "${string2[2]}" escapeXml="false"/><br/></td>
        <td><c:out value = "${string2[3]}" escapeXml="false"/><br/></td>

 
    <c:if test = "${fn:startsWith(string, 'away')}">
         <p>String starts with First</p>
      </c:if>
      
     
      <c:if test = "${fn:startsWith(string, 'Far Far')}">
         <p>this is working</p>
      </c:if>
   
<c:set var="string3" value="${fn:substringBefore(string1, ',')}"/>
Final string:<br/>
<c:out value = "${string3}" escapeXml="false"/>
</body>
</html>
