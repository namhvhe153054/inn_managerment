<%-- 
    Document   : notification
    Created on : Mar 7, 2022, 11:21:44 AM
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
        <link rel="stylesheet" href="../css/notification.css">
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
                    <a href="home">
                        <i class='bx bx-grid-alt'></i>
                        <span class="link_name">Th???ng k?? chung</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="home">Th???ng k?? chung</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="room/list">
                            <i class='bx bx-home'></i>
                            <span class="link_name">Ph??ng tr???</span>
                        </a>
                        <i class='bx bxs-chevron-down arrow'></i>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="room/list">Ph??ng tr???</a></li>
                        <li><a href="room/add">Th??m ph??ng</a></li>
                    </ul>
                </li>
                <li>
                    <div class="iocn-link">
                        <a href="roomtype/list">
                            <i class='bx bx-book-alt'></i>
                            <span class="link_name">Lo???i ph??ng</span>
                        </a>
                        <i class='bx bxs-chevron-down arrow'></i>
                    </div>
                    <ul class="sub-menu">
                        <li><a class="link_name" href="roomtype/list">Lo???i ph??ng</a></li>
                        <li><a href="roomtype/add">Th??m ph??ng</a></li>
                    </ul>
                </li>
                <li>
                    <a href="customer/list">
                        <i class='bx bx-pie-chart-alt-2'></i>
                        <span class="link_name">Kh??ch tr???</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="cusotmer/list">Kh??ch tr???</a></li>
                    </ul>
                </li>
                <li 
                    <c:if test="${sessionScope.listPaymentToCreate.size() > 0}">
                        class="notification"
                    </c:if>
                    >
                    <a href="notification">
                        <i class='bx bx-line-chart'></i>
                        <span class="link_name">Th??ng b??o</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="notification">Th??ng b??o</a></li>
                    </ul>
                </li>
                <li
                    <c:if test="${sessionScope.listPaymentToPay.size() > 0}">
                        class="bill"
                    </c:if>
                    >
                    <a href="bill/add">
                        <i class='bx bx-compass'></i>
                        <span class="link_name">H??a ????n</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="bill/add">H??a ????n</a></li>
                    </ul>
                </li>
                <li>
                    <a href="revenue/list">
                        <i class='bx bx-history'></i>
                        <span class="link_name">Doanh thu</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="revenue/list">Doanh thu</a></li>
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
                        <li><a href="setting/service">Ti???n d???ch v???</a></li>
                        <li><a href="setting/conduct">Ti???n ????? d??ng</a></li>
                    </ul>
                </li>
                <li>
                    <a href="../logout">
                        <i class='bx bx-exit'></i>
                        <span class="link_name">????ng xu???t</span>
                    </a>
                    <ul class="sub-menu blank">
                        <li><a class="link_name" href="../logout">????ng xu???t</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <section class="home-section">
            <div class="home-content">
                <span class="text">Th??ng b??o</span>
            </div>
        </section>
        <section class="content-section">
            <div class="detail">
                <!-- <div class="detail-container-search">
                    <form action="" class="detail-search">
                        <input type="text" name="" class="search-input" placeholder="Nh???p t??n ph??ng...">
                        <button type="submit" class="search-button">
                            <i class='bx bx-search'></i>
                        </button>
                    </form>
                </div> -->
                <div class="table-responsive detail-container-information">
                    <table class="table detail-information">
                        <tr class="table-light">
                            <th class="text-center">T??n ph??ng</th>
                            <th class="text-center">N???i dung</th>
                            <th class="text-center">T??? ng??y</th>
                            <th class="text-center">?????n ng??y</th>
                            <th class="text-center">Thao t??c</th>
                        </tr>
                        <c:forEach items="${sessionScope.listPaymentToCreate}" var="pm">
                            <tr>
                                <td class="text-center">${pm.contract.room.name}</td>
                                <td class="text-center">Thu ti???n ph??ng th??ng ${pm.fromDate.toLocalDate().getMonthValue().toString()}</td>
                                <td class="text-center">${pm.fromDate}</td>
                                <td class="text-center">${pm.toDate}</td>
                                <td class="text-center"><button class="btn btn-primary" href="#" role="button" onclick="openFunctionModal(${pm.id})">T???o h??a ????n</button></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </section>

        <div class="model-delete">
            <div class="model-form hidden">
                <button class="btn_close" type="button" onclick="closeFunctionModal()">&times;</button>
            </div>
            <div class="overlay hidden"></div>
        </div>


        <script>
            let arrow = document.querySelectorAll(".arrow");
            for (var i = 0; i < arrow.length; i++) {
                arrow[i].addEventListener("click", (e) => {
                    let arrowParent = e.target.parentElement.parentElement;
                    arrowParent.classList.toggle("showMenu");
                });
            }
            const modal = document.querySelector('.model-form');
            const overlay = document.querySelector('.overlay');
//            const btnOpen = document.querySelectorAll('.btn_open');


            //*Modal window
//            const openModal = function (e) {
//                e.preventDefault();
//                modal.classList.remove('hidden');
//                overlay.classList.remove('hidden');
//            };
            function openFunctionModal(idPayment) {
                modal.classList.remove('hidden');
                overlay.classList.remove('hidden');
                $.ajax({
                    url: "/InnManager_project/loadForm",
                    type: "get",
                    data: {
                        idPayment: idPayment
                    },
                    success: function (response) {
                        modal.innerHTML += response;
                    }
                });
            }

            function closeFunctionModal() {
                modal.classList.add('hidden');
                overlay.classList.add('hidden');
                var child = document.getElementById("model-change");
                modal.removeChild(child);
            }


            const closeModal = function () {
                modal.classList.add('hidden');
                overlay.classList.add('hidden');
                var child = document.getElementById("model-change");
                modal.removeChild(child);
            };

//            for (var i = 0; i < btnOpen.length; i++) {
//                btnOpen[i].addEventListener('click', openModal);
//            }
//            const btnClose = document.querySelector('.btn_close');
//            btnClose.addEventListener('click', closeModal);
            overlay.addEventListener('click', closeModal);

            document.addEventListener('keydown', function (e) {
                if (e.key === 'Escape' && !modal.classList.contains('hidden')) {
                    closeModal();
                }
            });
        </script>
        <!--JQuery-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    </body>

</html>
