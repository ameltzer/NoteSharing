<%-- 
    Document   : register
    Created on : Nov 28, 2012, 7:36:56 PM
    Author     : Jonathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="jquery/jquery-1.7.2.js"></script>
        <script type="text/javascript" src="jquery/chooseform.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!-- Need Servlet for Action-->
        <form name="login" action="http://localhost:8080/GetNotedv2/NoteServlet" 
              method="post">
            <fieldset>
                <legend>Registration</legend>
                    <label for="username">Username:</label>
                    <input type="text" name="username" value=""><br />
                    <label for="password">Password:</label>
                    <input type="text" name="password" value=""><br />
                    <label for="firstName">First Name:</label>
                    <input type="text" name="firstName" value=""><br />
                    <label for="lastName">Last Name:</label>
                    <input type="text" name="lastName" value=""><br />
                    <label for="school">School:</label>
                    <select name="school">
                        <c:forEach>
                            <option value="Stony Brook University"> Stony Brook University </option>
                            <option value="John Jay"> John Jay</option>
                        </c:forEach>
                    </select><br />
                    <label for="email">E-Mail:</label>
                    <input type="text" name="email" value=""><br />
            </fieldset>
            <fieldset>
                <legend>User Type</legend>
                <label for="type">Type:</label>
                <select name="type" id="selector" class="selector">
                    <option value="unverified"></option>
                    <option value="student">Student</option>
                    <option value="professor">Professor</option>
                </select>
                <input type="button" value="Show" onClick="showForm()"/>
                    <div class="student">
                        <label for="major">Major:</label>
                        <select name="major">
                            <c:forEach>
                                <option value ="Economics">Economics</option>
                                <option value ="Computer Science">Computer Science</option>
                        </c:forEach>
                        </select><br />
                        <label for="yearOfGraduation">Year of Graduation:</label>
                        <select name="yearOfGraduation">
                            <option value="null">Select one...</option>
                            <option value="2020">2020</option>
                            <option value="2019">2019</option>
                            <option value="2018">2018</option>
                            <option value="2017">2017</option>
                            <option value="2016">2016</option>
                            <option value="2015">2015</option>
                            <option value="2014">2014</option>
                            <option value="2013">2013</option>
                            <option value="2012">2012</option>
                            <option value="2011">2011</option>
                            <option value="2010">2010</option>
                            <option value="2009">2009</option>
                            <option value="2008">2008</option>
                            <option value="2007">2007</option>
                            <option value="2006">2006</option>
                            <option value="2005">2005</option>
                            <option value="2004">2004</option>
                            <option value="2003">2003</option>
                            <option value="2002">2002</option>
                            <option value="2001">2001</option>
                            <option value="2000">2000</option>
                            <option value="1999">1999</option>
                            <option value="1998">1998</option>
                            <option value="1997">1997</option>
                            <option value="1996">1996</option>
                            <option value="1995">1995</option>
                            <option value="1994">1994</option>
                            <option value="1993">1993</option>
                            <option value="1992">1992</option>
                            <option value="1991">1991</option>
                            <option value="1990">1990</option>
                            <option value="1989">1989</option>
                            <option value="1988">1988</option>
                            <option value="1987">1987</option>
                            <option value="1986">1986</option>
                            <option value="1985">1985</option>
                            <option value="1984">1984</option>
                            <option value="1983">1983</option>
                            <option value="1982">1982</option>
                            <option value="1981">1981</option>
                            <option value="1980">1980</option>
                            <option value="1979">1979</option>
                            <option value="1978">1978</option>
                            <option value="1977">1977</option>
                            <option value="1976">1976</option>
                            <option value="1975">1975</option>
                            <option value="1974">1974</option>
                            <option value="1973">1973</option>
                            <option value="1972">1972</option>
                            <option value="1971">1971</option>
                            <option value="1970">1970</option>
                            <option value="1969">1969</option>
                            <option value="1968">1968</option>
                            <option value="1967">1967</option>
                            <option value="1966">1966</option>
                            <option value="1965">1965</option>
                            <option value="1964">1964</option>
                            <option value="1963">1963</option>
                            <option value="1962">1962</option>
                            <option value="1961">1961</option>
                            <option value="1960">1960</option>
                            <option value="1959">1959</option>
                            <option value="1958">1958</option>
                            <option value="1957">1957</option>
                            <option value="1956">1956</option>
                            <option value="1955">1955</option>
                            <option value="1954">1954</option>
                            <option value="1953">1953</option>
                            <option value="1952">1952</option>
                            <option value="1951">1951</option>
                            <option value="1950">1950</option>
                            <option value="1949">1949</option>
                            <option value="1948">1948</option>
                            <option value="1947">1947</option>
                            <option value="1946">1946</option>
                            <option value="1945">1945</option>
                            <option value="1944">1944</option>
                            <option value="1943">1943</option>
                            <option value="1942">1942</option>
                            <option value="1941">1941</option>
                            <option value="1940">1940</option>
                            <option value="1939">1939</option>
                            <option value="1938">1938</option>
                            <option value="1937">1937</option>
                            <option value="1936">1936</option>
                            <option value="1935">1935</option>
                            <option value="1934">1934</option>
                            <option value="1933">1933</option>
                            <option value="1932">1932</option>
                            <option value="1931">1931</option>
                            <option value="1930">1930</option>
                            <option value="1929">1929</option>
                            <option value="1928">1928</option>
                            <option value="1927">1927</option>
                            <option value="1926">1926</option>
                            <option value="1925">1925</option>
                            <option value="1924">1924</option>
                            <option value="1923">1923</option>
                            <option value="1922">1922</option>
                            <option value="1921">1921</option>
                            <option value="1920">1920</option>
                        </select>
                        <br /><br />
                        <input type="submit" value="Submit" /><br />
                    </div>
                    <div class="professor">
                        <label for="department">Department:</label>
                        <select name="department">
                            <c:forEach>
                                <option value ="Economics">Economics</option>
                                <option value ="Computer Science">Computer Science</option>
                        </c:forEach>
                        </select>
                        <br /><br />
                        <input type="submit" value="Submit" /><br />
                    </div>
                </select>
            </fieldset>
        </form>
    </body>
</html>