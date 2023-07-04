<%-- Created on : Jul 4, 2023, 4:41:55 PM by DuyDuc94--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${product.sold > 10}">
    <div class="product">
        <div class="product-img">
            <img src="templates/img${product.getImage()}" alt="">
            <!--Sale or New-->
        </div>
        <div class="product-body">
            <p class="product-category">${product.getCategoryName()}</p>
            <h3 class="product-name"><a href="#">${product.getName()}</a></h3>
            <h4 class="product-price">$${product.getPrice()} 
                <!--<del class="product-old-price">$990.00</del>-->
            </h4>
            <!--Rating star-->
            <div class="text-center">
                ${product.getSold()} sold
            </div>
            <div class="product-btns">
                <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
                <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
            </div>
        </div>
        <div class="add-to-cart">
            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>add to cart</button>
        </div>
    </div>
</c:if>
