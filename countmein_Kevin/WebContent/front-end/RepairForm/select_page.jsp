<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>維修單首頁</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="<%=request.getContextPath()%>/front-end/css/template.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
      
      
<style>
	
.button{                               /*設定按鈕初始狀態*/
  background-color:#ff8738;      /*按鈕背景色*/
  border: 1px #ff6600 outset;     /*按鈕邊現顏色，並往外凸*/
  padding: 1px 2px 2px 2px;     /*按鈕內緣與文字的距離*/
  color: white;                         /*文字顏色*/
  text-decoration: none;           /*不要顯示下底線*/
  font: bold 30px Verdana;       /*設定文字：粗體  字體大小  字型*/
}

.button:hover{                    /*滑鼠經過時，按鈕的變化*/
  color: white;
  border-style: inset;               /*邊框變成內凹*/
  background-color:#FFE4CA;
  padding: 1px 1px 1px 3px;   /*改變按鈕內緣與文字的距離，做出往下按的視覺效果*/
}
 

</style>   
</head>







<!-- ↓是HEADER========================================================================================================== -->


<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">CountMEIn</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href='<%=request.getContextPath()%>/front-end/RepairForm/select_page.jsp'>維修服務</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                客服中心
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">檢舉商品</a></li>
                                <li><a class="dropdown-item" href="#">檢舉賣家</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">查看更多</a></li>
                            </ul>
                        </li>
    
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-success btn-sm me-md-4" type="submit">註冊</button>
                        <button class="btn btn-outline-success btn-sm" type="submit">登入會員</button>
                    </form>
                </div>
            </div>
        </nav>
        <div class="MallTop">
            <div style="margin-top:56px">
                <div class="container">
                    <div class="row">
                        <div class="col" style="height:50px;">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-3">
                            <a href="#page-top">
                                <img src="<%=request.getContextPath()%>/front-end/images/logo.png" alt="logo" style="height:100px;" margin-bottom=10px;>
                            </a>
                        </div>
                        <div class="col-6">
                            <div class="row ">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Search Product"
                                        aria-label="Search Product" aria-describedby="button-addon2">
                                    <button class="btn btn-outline-warning" type="button" id="button-addon2">
                                        <span class="material-icons-outlined">search</span>
                                    </button>
                                </div>
                            </div>
                            <div class="row align-items-end" style="height:80px;">
                                <div class="col">
                                    <button type="button" class="btn btn-outline-warning btn-md">主要商城</button>
                                </div>
                                <div class="col">
                                    <button type="button" class="btn btn-outline-warning btn-md">二手商城</button>
                                </div>
                                <div class="col">
                                    <button type="button" class="btn btn-outline-warning btn-md">拍賣商城</button>
                                </div>
                                <div class="col">
                                    <button type="button" class="btn btn-outline-warning btn-md">討論交流</button>
                                </div>
                            </div>
                        </div>
                        <br>
                    </div>
                    <div class="row" style="height:20px"></div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <session>
        <div class="container">
            <div class="prod" style="width:100%;">
                <div class="row">
                    <div class="col-3">
                        <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 220px;">
                            <a href=""
                                class="d-flex align-items-center mb-5 mb-md-0 me-md-0 cornflowerblue text-decoration-none">
                                <i class="bi bi-house fs-3 mb-3"></i> &nbsp; <h4> &nbsp;Category</h4>
                            </a>
                            <hr>
                            <ul class="nav nav-pills flex-column mb-auto ">
                                <li class="nav-item">
                                    <a href="#" class="nav-link link-dark">
                                        <i class="bi bi-phone fs-2 mb-3"> &nbsp;</i>Phone</i><br>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="nav-link link-dark">
                                        <i class="bi bi-laptop fs-2 mb-3"> &nbsp;</i>Computer</i><br>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="nav-link link-dark">
                                        <i class="bi bi-camera fs-2 mb-3"> &nbsp;</i>Camera</i><br>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="nav-link link-dark">
                                        <i class="bi bi-smartwatch fs-2 mb-3"> &nbsp;</i>Watch</i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="nav-link link-dark">
                                        <i class="bi bi-headset fs-2 mb-3"> &nbsp;</i>Others</i>
                                    </a>
                                </li>
                            </ul>
                            <hr>
                            <div class="dropdown">
                                <a href="#" class="d-flex align-items-center link-dark">
                                </a>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-9">
                       <h2>商品維修單查詢:</h2>
<br>
<br>
	
	
<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>
  
  
  <li>
    <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/RepairForm/RepairForm.do" >
        <b>輸入維修單編號 (如1001):</b>
        <input type="text" name="repairformno">
        <input type="hidden" name="action" value="getOne_For_Displayf">
        <input type="submit" value="送出">
    </FORM>
  </li>

  <jsp:useBean id="repairformSvc" scope="page" class="com.repairform.model.RepairFormService" />
   
  <br>

  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/RepairForm/RepairForm.do" >
       <b>輸入會員編號:</b>
       <select size="1" name="repairformno">
         <c:forEach var="repairformVO" items="${repairformSvc.all}" > 
          <option value="${repairformVO.repairformno}">${repairformVO.memno}
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Displayf">
       <input type="submit" value="送出">
     </FORM>
  </li>
  
 

  <br>
  <br>
 


<ul>
  <li><a href='<%=request.getContextPath()%>/front-end/RepairForm/addRepairForm.jsp' class="button">點擊新增維修單</a> </li>
</ul>


  <br>
  <br>
  <br>
  <br>
 

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </session>
<!-- ↑是HEADER========================================================================================================== -->        
 
  


<!-- ↓是footer========================================================================================================== -->        
  <br>
  <br>
  <br>
 
 <footer>
        <div class="foot">
            <div class="container">
                <div class="row" style="height:200px;">
                    <div class="col-3"></div>
                    <div class="col-9"></div>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>