<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
    <form action="" method="post" id="cat" accept-charset="UTF-8">
    	           <div class="row">
                    <div class="col-md-12 panel-info">
                        <div class="content-box-header panel-heading">
                            <div class="panel-title ">Sửa  danh mục</div>
                        </div>
                        <div class="content-box-large box-with-header">
                            <div>
                                <div class="row mb-10"></div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="name">Tên danh mục</label>
                                            <input type="text" class="form-control" id="name" name="name" value="${item.name}" placeholder="Nhập tên truyện">
                                             <p><form:errors path="cat.cname"></form:errors></p>
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

                            </div>
                        </div>
                    </div>
                </div>
    
    </form>      

                <!-- /.row col-size -->

            </div>
            <!-- /.col-md-10 -->
        </div>
        <!-- /.row -->
    </div>
    
    <!--  <script>
				
				
				function active(id) {
					var cname_tmp = $('#cname').val();
					$.ajax({
						url: '${pageContext.request.contextPath}/admin/cats/edit',
						type: 'POST',
						cache: false,
						data: {
								//Dữ liệu gửi đi
								cid:id,
								cname:cname_tmp
								},
						success: function(data){
							// Xử lý thành công
							$('#cat').html(data);
						},
						error: function (){
						// Xử lý nếu có lỗi
						}
					});
				}
				
			</script>  -->
    <!-- Page content -->