<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/templates/taglib.jsp"%>
	  <form action="" method="post" enctype="multipart/form-data" id="news">
   
     	   					<div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="name">Tên</label>
                                            <input type="text" class="form-control" value="${getItem.lname}" id="lname" name="lname" placeholder="Nhập tên truyện">
                                        </div>

                                        <div class="form-group">
                                            <label>Danh mục truyện</label>
                                            <select id="cid" name="cid" class="form-control">
                                            	<c:forEach items="${getItems}" var="item">
                                            		
                                            		 <option <c:if test="${getItem.cid == item.cid}">selected</c:if> value="${item.cid}">${item.cname}</option>
                                            	</c:forEach>
											  
											</select>
                                        </div>

                                        <div class="form-group">
                                            <label>Thêm hình ảnh</label>
                                            <input type="file" name="hinhanh" class="btn btn-default" id="exampleInputFile1" multiple>
                                            <c:if test="${not empty getItem.picture}">
	                                           <div class="row">
	                                           	<div class="col-sm-12">
	                                           		 <c:forEach items="${fn:split(getItem.picture,';')}" var="item">
	                                         				<p class="col-sm-2" style="display: inline;position: relative;margin-right: 10px;"><span style="width: 40px; position: absolute; right: -30px; height: 20px;"><a href="#" style="text-decoration:none;" onclick="delAjax(${getItem.lid},'${item}')"><img alt="" src="${pageContext.request.contextPath}/templates/admin/images/delete.png" width="20",height="1"></a></span><img alt="" src="${pageContext.request.contextPath}/files/${item}" width="100" height="100"/></p>	
	                                         		</c:forEach>
													<p class="col-sm-2" href="#" style="position: relative;display:inline;width: 90px; height: 90px; line-height: 30px; text-align: center;" > 
													 <img alt="" src="${pageContext.request.contextPath}/templates/admin/images/upload.png" width="100" height="100"/>
													    <input  type="file" id="file" name="file" style="opacity: 0.0; position: absolute; top:0; left: 0; bottom: 0; right:0; width: 100%; height:100%;" onchange="saveMedia(${getItem.lid})" multiple/>
													</p>
	                                           	</div>
	                                           </div>
												
												
												
                                            </c:if>
                                            <p class="help-block"><em>Định dạng: jpg, png, jpeg,...</em></p>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="name">Diện tích</label>
                                            <input type="text" class="form-control" value="${getItem.area}" id="area" name="area" placeholder="Nhập tên truyện">
                                        </div>
                                        
                                          <div class="form-group">
                                            <label for="name">Địa chỉ</label>
                                            <input type="text" class="form-control" value="${getItem.address}" id="address" name="address" placeholder="Nhập tên truyện">
                                        </div>

                                        <div class="form-group">
                                            <label>Mô tả</label>
                                            <textarea class="form-control"  id="description" name="description" rows="3">${getItem.description}</textarea>
                                        </div>


                                    </div>

                                    <div class="col-sm-6"></div>

                                </div>

                                <hr>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <input type="submit" value="Thêm" class="btn btn-success" />
                                        <input type="reset" value="Nhập lại" class="btn btn-default" />
                                    </div>
                                </div>

</form>



		<script>
				
				function delAjax(id,ItenPicture) {
					alert(ItenPicture)
					$.ajax({
						url: '${pageContext.request.contextPath}/admin/news/delAjax',
						type: 'POST',
						cache: false,
						data: {
								//Dữ liệu gửi đi
								lid:id,
								picture:ItenPicture
								},
						success: function(data){
							// Xử lý thành công
							$('#news').html(data);
						},
						error: function (){
							alert('123')
						}
					});
				}
			</script>



<script type="text/javascript">
		        function saveMedia(id) {
		            var formData = new FormData();
		            formData.append('file', $('#file')[0].files[0]);
		            formData.append('lid',id);
		            console.log("form data " + formData);
		            $.ajax({
		                url : '${pageContext.request.contextPath}/admin/news/plus',
		                data : formData,
		                processData : false,
		                contentType : false,
		                type : 'POST',
		                success : function(data) {
		                	$('#news').html(data);
		                },
		                error : function(err) {
		                    alert(err);
		                }
		            });
		        }
   		 	</script>
			
			
			
			
			