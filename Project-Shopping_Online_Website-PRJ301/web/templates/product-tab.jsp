<%-- Created on : Jul 4, 2023, 4:41:55 PM by DuyDuc94--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- product tab -->
<div class="product">
    <div class="product-img">
        <img src="templates/img${product.getImage()}" alt="">
        <!--Sale or New-->
    </div>
    <div class="product-body">
        <p class="product-category">${product.getCategoryName()}</p>
        <h3 class="product-name"><a href="#">${product.getName()}</a></h3>
        <h4 class="product-price">$${product.getPrice()}</h4>
        <div class="text-center">
            ${product.getSold()} sold
        </div>
        <!--Add to wishlist-->
        <form action="wishlist" method="post">
            <div class="product-btns">
                <input type="hidden" name="proID" value="${product.getID()}">
                <button type="submit" class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
            </div>
        </form>
        <!--Add to wishlist-->
    </div>
    <!--View product-->
    <form action="view-product" method="get">
        <div class="add-to-cart">
            <input type="hidden" name="proID" value="${product.getID()}">
            <button type="submit" class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>View product</button>
        </div>
    </form>
    <!--View product-->
</div>
<!-- /product tab -->