<%-- 
    Document   : checkout
    Created on : Aug 3, 2015, 12:17:13 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>The Cycle Store</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div id="header">
            <div>
                <div id="navigation">
                    <div class="infos">
                        <a href="cartprocess.jsp">Cart</a> <a href="checkout.jsp">CheckOut</a>
                    </div>
                    <div>
                        <a href="login.jsp">Login</a> <a href="signup.jsp">Register</a>
                        <a href="logout.jsp">Logout</a>
                    </div>
                    <ul id="primary">
                        <li>
                            <a href="index.html"><span>Home</span></a>
                        </li>
                        <li>
                            <a href="about.html"><span>About</span></a>
                        </li>
                    </ul>
                    <ul id="secondary">
                       
                       <li>
                            <a href="cartprocess.jsp"><span>Cycles</span></a>
                        </li>
                        <li class="selected">
                            <a href="contactus.jsp"><span>Contact</span></a>
                        </li>
                    </ul>
                </div>
                <a href="index.html" id="logo"><img src="images/logo.png" alt="LOGO"></a>
            </div>
        </div>
        <div id="body">
            <div id="contents">
                <h1>Order Placement</h1>
                <div id="sidebar">
                    <h4>Contact Information</h4>
                    <ul class="contacts">
                        <li>
                            <span>Address:</span>
                            <a href="http://yatin.branded.me/">
                                #802 Finch Drive, Sarnia, Ontario, CA N7S 4T7
                            </a>
                        </li>
                        <li>
                            <span>Phone Number:</span>
                            <a href="http://yatin.branded.me/" class="num">
                                1-(226)886-2735
                            </a>
                        </li>
                        <li>
                            <span>Fax Number:</span>
                            <a href="http://yatin.branded.me/" class="num">
                                1-800-222-2222
                            </a>
                        </li>
                    </ul>
                </div>
                <div id="main">
                    <h4 class="uppercase">Payment Information</h4>
                    <form action="checkout" method="post" id="contacts">
                        <table>
                            <tbody>
                                <tr>
                                    <td><label>Name:</label></td>
                                    <td><input type="text" value="" name="name" required=""></td>
                                </tr> <tr>
                                    <td><label>Email Address:</label></td>
                                    <td><input type="text" value="" name="mail" placeholder="xyz@example.ca/com" required=""></td>
                                </tr> <tr>
                                    <td><label>Phone:</label></td>
                                    <td><input type="text" value="" name="phn" placeholder="(123)266-1234" required=""></td>
                                </tr> <tr>
                                    <td><label>Card Number:</label></td>
                                    <td><input type="text" value="" name="cno" placeholder="Please enter 16-digit" required=""></td>
                                </tr><tr>
                                    <td><label>CVV number:</label></td>
                                    <td><input type="text" value="" name="cvv" placeholder="3-digit" required=""></td>
                                </tr> <tr>
                                    <td><label>Shipping Address:</label></td>
                                    <td><textarea name="add" required=""></textarea></td>
                                </tr><tr>
                                    <td colspan="2"><input type="submit" value="Send" class="button"></td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <div id="footer">
		<div class="background">
			<div class="body">
				
				<div class="connect">
					<h3>Follow Us:</h3>
					<a href="https://www.facebook.com/yatin5" target="_blank" class="facebook"></a> <a href="https://mobile.twitter.com/account" target="_blank" class="twitter"></a> <a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" class="googleplus"></a>
				</div>
			</div>
		</div>
		<span id="footnote"> <a href="index.html">The Cycle Store</a> &copy; 2015 | All Rights Reserved.</span>
	</div>
</body>
</html>