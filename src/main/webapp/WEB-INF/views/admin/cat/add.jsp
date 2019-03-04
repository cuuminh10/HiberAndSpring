<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<form action="" method="post" id="cat">
	<div class="row">
		<div class="col-md-12 panel-info">
			<div class="content-box-header panel-heading">
				<div class="panel-title ">Thêm danh mục</div>
			</div>
			<div class="content-box-large box-with-header">
				<div>
					<div class="row mb-10"></div>

					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label>Danh mục truyện</label> <select name="id_parent"
									class="form-control">
									<c:forEach items="${listOption}" var="option">
                                            			${option}
                                            	</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="name">Tên danh mục</label> <input type="text"
									class="form-control" id="name" name="name"
									placeholder="Nhập tên truyện">
								<form:errors path="cat.cname"></form:errors>
							</div>
						</div>
						<div class="col-sm-6"></div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-12">
							<input type="submit" value="Thêm" class="btn btn-success" /> <input
								type="reset" value="Nhập lại" class="btn btn-default" />
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
				function active() {
					var cname_tmp = $('#cname').val();
					$.ajax({
						url: '${pageContext.request.contextPath}/admin/cats/add',
						type: 'POST',
						cache: false,
						data: {
								//Dữ liệu gửi đi
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
			</script> -->
<!-- Page content -->