<%-- 
    Document   : addCustomer
    Created on : Mar 5, 2022, 5:24:38 PM
    Author     : firem
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">

    <head>
        <meta charset="UTF-8">
        <!--<title> Drop Down Sidebar Menu | CodingLab </title>-->
        <link rel="stylesheet" href="../../css/addCustomer.css">
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
                        <span class="link_name">Thống kê chung</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../home">Thống kê chung</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="../room/list">
                            <i class='bx bx-home'></i>
                            <span class="link_name">Phòng trọ</span>
                        </a>
                        <i class='bx bxs-chevron-down arrow'></i>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="../room/list">Phòng trọ</a></li>
                        <li><a href="../room/list">Thêm phòng</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="../roomtype/list">
                            <i class='bx bx-book-alt'></i>
                            <span class="link_name">Loại phòng</span>
                        </a>
                        <i class='bx bxs-chevron-down arrow'></i>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="../roomtype/list">Loại phòng</a></li>
                        <li><a href="../roomtype/add">Thêm phòng</a></li>
                    </ul>
                </li>
                <li>
                    <a href="list">
                        <i class='bx bx-pie-chart-alt-2'></i>
                        <span class="link_name">Khách trọ</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="list">Khách trọ</a></li>
                    </ul>
                </li>
                <li
                    <c:if test="${sessionScope.listPaymentToCreate.size() > 0}">
                        class="notification"
                    </c:if>
                    >
                    <a href="../notification">
                        <i class='bx bx-line-chart'></i>
                        <span class="link_name">Thông báo</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../notification">Thông báo</a></li>
                    </ul>
                </li>
                <li
                    <c:if test="${sessionScope.listPaymentToPay.size() > 0}">
                        class="bill"
                    </c:if>
                    >
                    <a href="../bill/add">
                        <i class='bx bx-compass'></i>
                        <span class="link_name">Hóa đơn</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../bill/add">Hóa đơn</a></li>
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
                            <span class="link_name">Thiết lập</span>
                        </a>
                        <i class='bx bxs-chevron-down arrow'></i>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="">Thiết lập</a></li>
                        <li><a href="../setting/service">Tiền dịch vụ</a></li>
                        <li><a href="../setting/conduct">Tiền đồ dùng</a></li>
                    </ul>
                </li>
                <li>
                    <a href="../../logout">
                        <i class='bx bx-exit'></i>
                        <span class="link_name">Đăng xuất</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../../logout">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <section class="home-section">
            <div class="home-content">
                <span class="text">Tạo khách hàng phòng trọ ${requestScope.room.name}</span>
            </div>
        </section>
        <section class="content-section">
            <div class="detail">
                <form class="detail-content" action="add" method="POST">
                    <div class="detail-block">
                        <div class="detail-tittle">
                            <p>Người trọ</p>
                        </div>
                        <div class="detail-container">
                            <label for="nameCustomer">Tên khách hàng</label>
                            <input type="text" name="nameCustomer" id="nameCustomer" class="detail-input">
                            <c:if test="${requestScope.errorNameCustomer != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorNameCustomer}</p>
                            </c:if>
                        </div>
                        <div class="detail-container detail-container-line">
                            <label for="genderCustomer">Giới tính:</label>
                            <input type="radio" name="genderCustomer" id="genderCustomer" value="1">Nam
                            <input type="radio" name="genderCustomer" id="genderCustomer" value="0">Nữ
                            <c:if test="${requestScope.errorGender != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorGender}</p>
                            </c:if>
                        </div>
                        <div class="detail-container detail-container-line">
                            <label for="dobCustomer">Ngày sinh:</label>
                            <input type="date" name="dobCustomer" id="dobCustomer" class="detail-input-date">
                            <c:if test="${requestScope.errorDob != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorDob}</p>
                            </c:if>
                        </div>
                        <div class="detail-container">
                            <label for="phoneCustomer">Số điện thoại:</label>
                            <input type="text" name="phoneCustomer" id="phoneCustomer" class="detail-input">
                            <c:if test="${requestScope.errorPhone != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorPhone}</p>
                            </c:if>
                        </div>
                        <div class="detail-container">
                            <label for="identityCustomer">CMND/CCCD:</label>
                            <input type="text" name="identityCustomer" id="identityCustomer" class="detail-input">
                            <c:if test="${requestScope.errorIdentity != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorIdentity}</p>
                            </c:if>
                        </div>
                        <div class="detail-container">
                            <label for="addressCustomer">Nơi ở:</label>
                            <input type="text" name="addressCustomer" id="addressCustomer" class="detail-input">
                            <c:if test="${requestScope.errorAddress != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorAddress}</p>
                            </c:if>
                        </div>
                        <div class="detail-container">
                            <label for="emailCustomer">Email:</label>
                            <input type="text" name="emailCustomer" id="emailCustomer" class="detail-input">
                            <c:if test="${requestScope.errorEmail != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorEmail}</p>
                            </c:if>
                        </div>
                        <div class="detail-container">
                            <label for="username">Tên tài khoản:</label>
                            <input type="text" name="username" id="username" class="detail-input">
                            <c:if test="${requestScope.errorUsername != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorUsername}</p>
                            </c:if>
                        </div>
                        <div class="detail-container">
                            <label for="password">Mật khẩu:</label>
                            <input type="text" name="password" id="password" class="detail-input">
                            <c:if test="${requestScope.errorPassword != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorPassword}</p>
                            </c:if>
                            <c:if test="${requestScope.errorAccount != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorAccount}</p>
                            </c:if>
                        </div>
                        <div class="detail-container detail-container-line">
                            <label for="hireDate">Ngày thuê:</label>
                            <input type="date" name="hireDate" id="hireDate" class="detail-input-date">
                            <c:if test="${requestScope.errorHireDate != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorHireDate}</p>
                            </c:if>
                            <c:if test="${requestScope.errorDate != null}">
                                </br>
                                <p class="detail-name-error">${requestScope.errorDate}</p>
                            </c:if>
                        </div>
                    </div>
                    <div class="detail-block">
                        <div class="detail-container detail-button-link">
                            <button class="detail-submit">
                                <i class='bx bx-plus'></i>
                                <input type="hidden" name="idRoom" value="${requestScope.room.id}">
                                <input type="submit" value="Tạo mới">
                            </button>
                            <div class="check-out">
                                <a class="btn btn-danger button-checkOut" href="../room/information?id=${requestScope.room.id}&status=1" role="button">
                                    <span>Hủy</span>
                                </a>
                            </div>
                        </div>
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