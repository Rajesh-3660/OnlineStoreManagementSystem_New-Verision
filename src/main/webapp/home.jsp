<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>E-commerce</title>
    <link rel="stylesheet" href="cssFiles/home.css">
</head>

<body>

    <%
       if(session.getAttribute("uname")==null)
       {
    	   response.sendRedirect("index.html");
       }
    
    %>

    <header class="top-container">
        <div class="top-bar">

            <img class="mainlogo" src="pictures/logo.jpeg" alt="image">       
            <div class="search-bar">
                <input type="text" class="search">
                <img src="pictures/searchbaricon.jpg" class="searchicon">
            </div>         
            <div class="userName">
                <%
                     String uname=(String)session.getAttribute("uname");
                     out.print(uname);
                %>
            </div>
        </div>        
    </header>

	<header class="top2-container">
		<div class="navbars">
			<div class="menu">
				<div class="dropdown">
					<img src="pictures/menuicon.png" class="menuicon">
					<div class="dropdown-content">
						<menu class="parentUl">
							<li>
							    Electronics
								<ul>
									<li>Phones</li>
									<li>Laptops</li>
								</ul>
							</li>
							
							<li class="childLi">
							    Clothes
								<ul>
									<li>Male
										<ul>
											<li>Shirt</li>
											<li>Pant</li>
										</ul>
									</li>
									<li>Female
										<ul>
											<li>Pants</li>
											<li>Sarees</li>
										</ul>
									</li>
								</ul>
							</li>
						</menu>
						
					</div>
				</div>
			</div>
			
				<div class="contactus">
				     <a href="AboutUs.jsp"><span>About Us</span></a>
				</div>
				
				<div class="aboutus">
				     <a href="ContactUs.jsp"><span>Contact US</span></a>
				</div>
				
				<form action="logout">
				     <input type="submit" class="logout" value="Logout">
				</form>
		</div>
	</header>
	<header class="products">
	
		<form action="Payment.jsp" class="electronics">
	       	<h1 class="productTitle">Electronics</h1> 
	        <div class="alignProducts">
	        	<div class="product">
	            	<img class="productImg" src="pictures/LenovoIdeaPad.jpg">
	            	<div class="productDescrip">
		               	<p>
	                      	Lenovo IdeaPad Slim 5 Intel Core Ultra 5 125H Built-in AI 14" (35.5cm) WUXGA-OLED 400Nits Thin & Light Laptop (16GB/1TB SSD/Win 11/MSO 21/FHD+IR
	                    </p>
	           		</div>
	            <div class="productPrice">
	                 <p>1,50,000 Rs</p>
	            </div>
	            <input type="submit" class="buybutton" value="Buy Now !">
	      		</div>	
		       <div class="product">
		            <img class="productImg" src="pictures/AcerAspire3.png">
		            <div class="productDescrip">
		               <p>
	                      Acer Aspire 3 Laptop Intel Core Celeron N4500 Processor Laptop (8 GB LPDDR4X SDRAM/512 GB SSD/Win11 Home/38 Whr/HD Webcam) A325-45 with 39.63 cm (15.6") HD Display, Pure Silver, 1.5 KG
	                    </p>
		            </div>
		            <div class="productPrice">
		                 <p>23,999 Rs</p>
		            </div>
		          <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
		       <div class="product">
		            <img class="productImg" src="pictures/AcerAspireLiteAMD.jpg">
		            <div class="productDescrip">
		               <p>
	                     Acer Aspire 3 Laptop Intel Core Celeron N4500 Processor Laptop (8 GB LPDDR4X SDRAM/512 GB SSD/Win11 Home/38 Whr/HD Webcam) A325-45 with 39.63 cm (15.6") HD Display, Pure Silver, 1.5 KG                    </p>
		            </div>
		            <div class="productPrice">
		                 <p>23,699 Rs</p>
		            </div>
		           <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
		      <div class="product">
		            <img class="productImg" src="pictures/RedmiNote13Pro.jpg">
		            <div class="productDescrip">
		               <p>
	                     Redmi Note 13 Pro+ (Fusion Purple, 8GB RAM, 256GB Storage) | World's first Mediatek 7200 Ultra 5G | 200MP Hi-Res Camera | 1.5K Curved AMOLED | 120W HyperCharge                     </p>
		            </div>
		            <div class="productPrice">
		                 <p>30,699 Rs</p>
		            </div>
		           <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
		       <div class="product">
		            <img class="productImg" src="pictures/Headset.jpg">
		            <div class="productDescrip">
		               <p>
	                   Portronics Conch Tune C in Ear Type C Wired Earphones with Mic,10mm Driver, 1.2m Nylon Braided Anti Tangle Wire, in line Controls, Metal Alloy Body, Wide Compatibility(Grey)</p>
		            </div>
		            <div class="productPrice">
		                 <p>699 Rs</p>
		            </div>
		            <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
		       <div class="product">
		            <img class="productImg" src="pictures/LenovoIdeaPadSlim3.jpg">
		            <div class="productDescrip">
		               <p>
	                     Lenovo IdeaPad Slim 3 Intel Core i7 12th Gen 15.6inch (39.62cm) FHD Thin & Light Laptop (8GB/512GB SSD/Windows 11/Office 2021/1Yr ADP Free/3months Game Pass/Grey/1.63Kg), 82RK011GIN
	                     </p>
		            </div>
		            <div class="productPrice">
		                 <p>62,699 Rs</p>
		            </div>
		            <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
	      </div>
	   </form>
	   
	   <!-- clothes  -->
	   <form action="Payment.jsp" class="clothes">
	       	<h1 class="productTitle">Clothes</h1> 
	        <div class="alignProducts">
	        	<div class="product">
	            	<img class="productImg" src="pictures/POSHAX.jpg">
	            	<div class="productDescrip">
		               	<p>
                           POSHAX Dresses for Women || Western Dresses for Women || Dress for Women || Dresses (710-M) Maroon</p>
	           		</div>
	            <div class="productPrice">
	                 <p>422 Rs</p>
	            </div>
	            <input type="submit" class="buybutton" value="Buy Now !">
	      		</div>	
		       <div class="product">
		            <img class="productImg" src="pictures/Fashion2wear.jpg">
		            <div class="productDescrip">
		               <p>
                      Fashion2wear Women's Georgette Floral Digital Print Short Sleeve Full-Length Fit & Flare Long Gown Dress for Girls (ET-CYWN-E1LE)	</p>
		            </div>
		            <div class="productPrice">
		                 <p>500 Rs</p>
		            </div>
		            <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
		       <div class="product">
		            <img class="productImg" src="pictures/KurtaShirt.jpg">
		            <div class="productDescrip">
		               <p>
                              Bellstone Men Solid Cotton Blend Straight Kurta Shirt	 </p>
                    </div>
		            <div class="productPrice">
		                 <p>799 Rs</p>
		            </div>
		            <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
		      <div class="product">
		            <img class="productImg" src="pictures/FitShirt.jpg">
		            <div class="productDescrip">
		               <p>
                        LookMark Men's Cotton Blend Printed Stitched Half Sleeve Regular Fit Shirt</p>
		            </div>
		            <div class="productPrice">
		                 <p>1299 Rs</p>
		            </div>
		            <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
		       <div class="product">
		            <img class="productImg" src="pictures/Cargos.jpg">
		            <div class="productDescrip">
		               <p>
                       Lymio Men Cargo || Men Cargo Pants || Men Cargo Pants Cotton || Cargos for Men (Cargo-38-41)</p></div>
		            <div class="productPrice">
		                 <p>1699 Rs</p>
		            </div>
		            <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
		       <div class="product">
		            <img class="productImg" src="pictures/Trousers.jpg">
		            <div class="productDescrip">
		               <p>
						Amazon Brand - Symbol Men's Stretchable Casual Pants | Scoop Pocket Chinos | Trousers (Slim Fit)
					   </p>
		            </div>
		            <div class="productPrice">
		                 <p>749 Rs</p>
		            </div>
		            <input type="submit" class="buybutton" value="Buy Now !">
		      </div>
	      </div>
	   </form>
	</header>
</body>

</html>