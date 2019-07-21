<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<jsp:include page="/pages/plugins/include_javascript_head.jsp" />
<script type="text/javascript" src="js/pages/dept/dept_list.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- 导入头部标题栏内容 -->
		<jsp:include page="/pages/plugins/include_title_head.jsp" />
		<!-- 导入左边菜单项 -->
		<jsp:include page="/pages/plugins/include_menu_item.jsp" />
		<div class="content-wrapper">
			<!-- 此处编写需要显示的页面 -->
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title"><strong>雇员列表</strong></h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body table-responsive no-padding">
							<table class="table table-hover">
								<tr>
									<th>雇员编号</th>
									<th>姓名</th>
									<th>联系电话</th>
									<th>性别</th>
									<th>基本工资</th>
									<th>操作</th>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
								<tr>
									<td>0000</td>
									<td>老李</td>
									<td>110</td>
									<td>男</td>
									<td>8900.00</td>
									<td><a class="btn btn-warning btn-xs" href="pages/emp/emp_edit.jsp">编辑</a></td>
								</tr>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
			</div>
		</div>
		<!-- 导入公司尾部认证信息 -->
		<jsp:include page="/pages/plugins/include_title_foot.jsp" />
		<!-- 导入右边工具设置栏 -->
		<jsp:include page="/pages/plugins/include_menu_sidebar.jsp" />
		<div class="control-sidebar-bg"></div>
	</div>
	<jsp:include page="/pages/plugins/include_javascript_foot.jsp" />
</body>
</html>
