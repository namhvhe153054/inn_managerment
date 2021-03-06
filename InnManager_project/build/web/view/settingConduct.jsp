<%-- 
    Document   : settingConduct
    Created on : Mar 9, 2022, 9:18:57 PM
    Author     : firem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">

    <head>
        <meta charset="UTF-8">
        <!--<title> Drop Down Sidebar Menu | CodingLab </title>-->
        <link rel="stylesheet" href="../../css/settingConduct.css">
        <!-- Boxiocns CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- boostrap link -->
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .sidebar .nav-links .notification::before{
                content: "${sessionScope.listPaymentToCreate.size()}";
                width: 20px;
                height: 20px;
                border-radius: 50%;
                position: absolute;
                background-color: red;
                color: white;
                top: 50%;
                right: 20px;
                transform: translateY(-50%);
                display: flex;
                align-items: center;
                justify-content: center;
                transition: all 0.5s ease;
            }

            .sidebar .nav-links .bill::before{
                content: "${sessionScope.listPaymentToPay.size()}";
                width: 20px;
                height: 20px;
                border-radius: 50%;
                position: absolute;
                background-color: red;
                color: white;
                top: 50%;
                right: 20px;
                transform: translateY(-50%);
                display: flex;
                align-items: center;
                justify-content: center;
                transition: all 0.5s ease;
            }

            @media (max-width: 768px){
                .sidebar .nav-links .notification::before{
                    width: 20px;
                    height: 20px;
                    border-radius: 50%;
                    position: absolute;
                    background-color: red;
                    color: white;
                    top: 50%;
                    right: 5px;
                    transform: translateY(-50%);
                    display: flex;
                    align-items: center;
                    justify-content: center;
                }

                .sidebar .nav-links .bill::before{
                    width: 20px;
                    height: 20px;
                    border-radius: 50%;
                    position: absolute;
                    background-color: red;
                    color: white;
                    top: 50%;
                    right: 5px;
                    transform: translateY(-50%);
                    display: flex;
                    align-items: center;
                    justify-content: center;
                }
            }
        </style>
    </head>

    <body>
        <div class="sidebar">
            <div class="logo-details">
                <i class='bx bxl-c-plus-plus'></i>
                <span class="logo_name">InnManager</span>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="../home">
                        <i class='bx bx-grid-alt'></i>
                        <span class="link_name">Th???ng k?? chung</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../home">Th???ng k?? chung</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="../room/list">
                            <i class='bx bx-home'></i>
                            <span class="link_name">Ph??ng tr???</span>
                        </a>
                        <i class='bx bxs-chevron-down arrow'></i>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="../room/list">Ph??ng tr???</a></li>
                        <li><a href="../room/add">Th??m ph??ng</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="../roomtype/list">
                            <i class='bx bx-book-alt'></i>
                            <span class="link_name">Lo???i ph??ng</span>
                        </a>
                        <i class='bx bxs-chevron-down arrow'></i>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="../roomtype/list">Lo???i ph??ng</a></li>
                        <li><a href="../roomtype/add">Th??m ph??ng</a></li>
                    </ul>
                </li>
                <li>
                    <a href="../customer/list">
                        <i class='bx bx-pie-chart-alt-2'></i>
                        <span class="link_name">Kh??ch tr???</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../cusotmer/list">Kh??ch tr???</a></li>
                    </ul>
                </li>
                <li 
                    <c:if test="${sessionScope.listPaymentToCreate.size() > 0}">
                        class="notification"
                    </c:if>
                    >
                    <a href="../notification">
                        <i class='bx bx-line-chart'></i>
                        <span class="link_name">Th??ng b??o</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../notification">Th??ng b??o</a></li>
                    </ul>
                </li>
                <li
                    <c:if test="${sessionScope.listPaymentToPay.size() > 0}">
                        class="bill"
                    </c:if>
                    >
                    <a href="../bill/add">
                        <i class='bx bx-compass'></i>
                        <span class="link_name">H??a ????n</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../bill/add">H??a ????n</a></li>
                    </ul>
                </li>
                <li>
                    <a href="../revenue/list">
                        <i class='bx bx-history'></i>
                        <span class="link_name">Doanh thu</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../revenue/list">Doanh thu</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="">
                            <i class='bx bx-book-alt'></i>
                            <span class="link_name">Thi???t l???p</span>
                        </a>
                        <i class='bx bxs-chevron-down arrow'></i>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="">Thi???t l???p</a></li>
                        <li><a href="service">Ti???n d???ch v???</a></li>
                        <li><a href="conduct">Ti???n ????? d??ng</a></li>
                    </ul>
                </li>
                <li>
                    <a href="../../logout">
                        <i class='bx bx-exit'></i>
                        <span class="link_name">????ng xu???t</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../../logout">????ng xu???t</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <section class="home-section">
            <div class="home-content">
                <span class="text">Thi???t l???p ????? d??ng</span>
            </div>
        </section>
        <section class="content-section">
            <c:if test="${requestScope.successfull != null && requestScope.successfull == 1}">
                <div class="successful">
                    <span>Thi???t l???p gi?? ????? d??ng th??nh c??ng</span>
                </div>
            </c:if>
            <div class="detail">
                <form class="detail-content" action="conduct" method="POST">
                    <c:forEach items="${requestScope.listConduct}" var="cd">
                        <div class="detail-container">
                            <label for="conduct${cd.id}">TI???n ${cd.name}</label>
                            <input type="text" name="conduct${cd.id}" id="conduct${cd.id}" class="detail-input" value="${cd.priceLong}">
                        </div>
                    </c:forEach>
                    <div class="detail-container detail-button-link" style="padding-bottom: 20px;">
                        <button class="detail-submit">
                            <i class='bx bx-plus'></i>
                            <input type="submit" value="T???o m???i">
                        </button>
                    </div>
                </form>
            </div>
        </section>



        <script>
            let arrow = document.querySelectorAll(".arrow");
            for (var i = 0; i < arrow.length; i++) {
                arrow[i].addEventListener("click", (e) => {
                    let arrowParent = e.target.parentElement.parentElement;
                    arrowParent.classList.toggle("showMenu");
                });
            }
        </script>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    </body>

</html>
