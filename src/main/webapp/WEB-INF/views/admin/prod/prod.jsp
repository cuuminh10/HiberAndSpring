<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/templates/taglib.jsp"%>

                
				<%-- 	<c:if test="${not empty msg}">
							<div class="alert alert-warning">
						  		<strong>Warning!</strong> ${msg}.
							</div>
					</c:if> --%>
			
                    <div class="row">
                        <div class="panel-heading">
                            <div class="panel-title ">Quản lí sản phẩmc</div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-8">
                            <a href="${pageContext.request.contextPath}/admin/prod/add" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;ThÃªm</a>

                        </div>
                        <div class="col-md-4">
                            <div class="input-group form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                         <button class="btn btn-primary" type="button">Search</button>
                       </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel-body">
                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên</th>
                                        <th>Danh mục</th>
                                        <th>Hình ảnh</th>
                                      	<th>ngay dang</th>
                                        <th>Chức năng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listProds}" var="item">
                                	<c:set var="editUrl" value="${pageContext.request.contextPath}/admin/news/edit/${item.id}"></c:set>
                                	<c:set var="delUrl" value="${pageContext.request.contextPath}/admin/news/del/${item.id}"></c:set>
                                	<tr class="odd gradeX">
                                        <td>${item.id}</td>
                                        <td>${item.name}</td>
                                        <td>${item.cname}</td>
                                         <td class="center text-center">
                                         <c:choose>
                                         	<c:when test="${not empty item.picture}">
                                         		<img alt="" src="${pageContext.request.contextPath}/files/${item.picture}"/>
                                         	</c:when>
                                         	<c:otherwise>
                                         			<p>k co hinh anh</p>
                                         		</c:otherwise>
                                         </c:choose>
                                        </td>
                                       		 <td>
                                       		 	<fmt:formatDate value="${item.date_create}" pattern="HH:mm:ss dd/MM/yyyy"/>
                                       		 </td>
                                        <td class="center text-center">
                                            <a href="${editUrl}" title="" class="btn btn-primary"><span class="glyphicon glyphicon-pencil "></span> Sửa</a>
                                            <a href="${delUrl}" title="" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Xóa</a>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                           <%--  <!-- Pagination -->
                            <nav class="text-center" aria-label="...">
                                <ul class="pagination">
                                   <ul class="pagination">
										<c:if test="${currentPage > 1 && sumPages > 0}">
											<span><a
												href="${pageContext.request.contextPath}/admin/news/${currentPage-1}"><z</a></span>
												<li ><a href="${pageContext.request.contextPath}/admin/news/${currentPage-1}"> << <span class="sr-only">(current)</span></a></li>
										</c:if>
							
							
										<c:forEach var="i" begin="${pageStart}" end="${pageEnd}" step="1">
											
												<li <c:if test="${currentPage == i}">class="active"</c:if>><a href="${pageContext.request.contextPath}/admin/news/${i}">${i}<span class="sr-only">(current)</span></a></li>
										</c:forEach>
							
										<c:if test="${currentPage < sumPages && sumPages > 1}">
											<li ><a href="${pageContext.request.contextPath}/admin/news/${currentPage+1}">>> <span class="sr-only">(current)</span></a></li>
										</c:if>
									</ul>
                                </ul>
                            </nav>
                            <!-- /.pagination --> --%>

                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.content-box-large -->
<p style="border-style: dotted;text-align:center;width:50px;height:50px;}"><span style="top:50%;";>+</span></p>


            </div>
        </div>
    </div>

    