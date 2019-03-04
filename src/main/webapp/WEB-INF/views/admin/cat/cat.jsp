<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
 <%@include file="/templates/taglib.jsp"%>
<div class="content-box-large">

			 <c:if test="${not empty msg}">
				<div class="alert alert-warning">
			  		<strong>Warning!</strong> ${msg}.
				</div>
			</c:if>
			<c:if test="${not empty err}">
				<div class="alert alert-warning">
			  		<strong>Warning!</strong> ${err}.
				</div>
			</c:if>
			
                    <div class="row">
                        <div class="panel-heading">
                            <div class="panel-title ">Quản lí danh mục</div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-md-8">
                            <a href="${pageContext.request.contextPath}/admin/cat/add" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>&nbsp;Thêm</a>

                        </div>
                        <form action="${pageContext.request.contextPath}/admin/cats/search" method="post">
                        	<div class="col-md-4">
                            <div class="input-group form">
                                <input type="text" onkeyup="myFunction()" name="search" class="form-control" placeholder="Search..." id="search-bar">
                                <span class="input-group-btn">
                        			 <button class="btn btn-primary" type="button">Search</button>
                      		    </span>
                            </div>
                            <ul id="myUL" style="display: none; list-style-type: none;padding: 0;margin: 0;padding: 0px;max-height: 7.5em;overflow-y: auto;">
                            	
									<li><a>132</a></li>                            
                           		
                            </ul>
                            
                        </div>
                        </form>
                        
                        <script>
						function myFunction() {
						    var input, filter, ul, li, a, i;
						    input = document.getElementById("search-bar");
						    filter = input.value.toUpperCase();
						    ul = document.getElementById("myUL");
						    li = ul.getElementsByTagName("li");
						    if(input.value === ''){
							    	
						    		ul.style.display="none";
						    		
						    	}else{
						    		ul.style.display="block";
						    		 for (i = 0; i < li.length; i++) {
						    			 
									        a = li[i].getElementsByTagName("a")[0];
									        
									        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
									            
									        	li[i].style.display = "block";
									           	
									           
									        } else {
									            li[i].style.display = "none";
									
									        }
									       
									    }
						    	}
						    }
					</script>
                    </div>

                    <div class="row">
                        <div class="panel-body">
                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tên</th>
                                        <th>Chức Năng</th>
                                    </tr>
                                </thead>
                                <tbody>
                               <c:forEach items="${listmenu}" var="cat1">
                               		${cat1}
                                </c:forEach>
                                
                                    
                                </tbody>
                            </table>

                            <!-- Pagination -->
                            <nav class="text-center" aria-label="...">
                                <ul class="pagination">
                                    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                </ul>
                            </nav>
                            <!-- /.pagination -->

                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.content-box-large -->



            </div>
        </div>
    </div>
    
   
