<%@ page pageEncoding="UTF-8"%>
<%--
	实现数据搜索条的控制
<jsp:include page="split_page_plugin_search.jsp"/>
--%>
<%
	request.setCharacterEncoding("UTF-8") ;
	String url = (String)request.getAttribute("url") ;
	String columnData = (String)request.getAttribute("columnData") ;
	String keyWord = (String)request.getAttribute("keyWord") ;
	String column = (String)request.getAttribute("column") ;
%>
<div class="row">
	<form action="xx.action" method="post" class="form-group"
		id="splitSearchForm">
		<fieldset>
			<div class="form-group">
				<div class="col-md-2">&nbsp;</div>
				<%
					if (columnData != null) {
				%>
					<div class="col-md-3">
						<select id="col" name="col" class="form-control">
				<%
							String result [] = columnData.split("\\|") ;
							for (int x = 0 ; x < result.length ; x ++) {
								String temp[] = result[x].split(":") ;
				%>
								<option value="<%=temp[1]%>" <%=column.equals(temp[1])?"selected":""%>><%=temp[0]%></option>
				<%
							}
				%>
						</select>
					</div>
				<%
					}
				%>
				<div class="col-md-5">
					<input type="text" name="kw" id="kw" class="form-control input-sm"
						value="${keyWord}" placeholder="请输入检索关键字">
				</div>
				<div class="col-md-2">
					<button type="button" onclick="goSplit(1)" class="btn btn-primary">检索</button>
					<input type="hidden" name="${paramName}" value="${paramValue}">
					<input type="hidden" name="cp" value="1">
				</div>
			</div>
		</fieldset>
	</form>
</div>
<div class="row">
	<div class="col-md-7 col-md-push-5"> 
		<p class="text-info">满足查询条件的数据量：${allRecorders}</p>
	</div>
</div>