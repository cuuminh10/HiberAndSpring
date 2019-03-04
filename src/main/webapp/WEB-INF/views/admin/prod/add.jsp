<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="/templates/taglib.jsp"%>
 	<form action="" method="post" enctype='multipart/form-data' >
 		<div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="name">Tên Tin tức</label>
                                            <input type="text" class="form-control" id="name" name="name" placeholder="Nhập tên truyện">
                                        </div>
										
                                        <div class="form-group">
                                            <label>Danh mục truyện</label>
                                            <select name="id_cat" class="form-control">
                                            	<c:forEach items="${listMenu}" var="item">
                                            			${item}
                                            	</c:forEach>
											 
											</select>
                                        </div>
										 <div class="form-group">
                                            <label>Thêm hình ảnh</label>
                                            <input type="file" class="btn btn-default"  id="hinhanh" name="hinhanh"  multiple>
                                            <p class="help-block"><em>Định dạng: jpg, png, jpeg,...</em></p>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="name">Giá gốc</label>
                                            <input type="text" class="form-control" id="price" name=""price"" placeholder="Nhập tên truyện">
                                        </div>
                                        
										<div class="form-group">
                                            <label for="name">Giá giảm</label>
                                            <input type="text" class="form-control" id="sale" name="sale" placeholder="Nhập tên truyện">
                                        </div>
										
																	
                                        <div class="form-group">
                                            <label>Mô tả</label>
                                            <textarea name="description" class="form-control" rows="3"></textarea>
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
 <!-- <script>
				
				
				function active() {
					var hinhanh_tmp = $('#hinhanh').val();
					alert(hinhanh_tmp)
					$.ajax({
						url: '${pageContext.request.contextPath}/admin/news/add2',
						type: 'POST',
						cache: false,
						data: {
								//Dữ liệu gửi đi
								hinhanh:hinhanh_tmp 
								},
						success: function(data){
							// Xử lý thành công
							//$('#cat').html(data);
							alert('vao')
						},
						error: function (){
						// Xử lý nếu có lỗi
						}
					});
				}
				
			</script> -->
                                