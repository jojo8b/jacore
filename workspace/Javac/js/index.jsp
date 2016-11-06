<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="zh" xmlns:ice="http://ns.adobe.com/incontextediting">
<head>
<title>无线传感网络数据监测</title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body onLoad="onLoad()">
	<div id="d1" style="display: none">
		<form id="form1" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Wsn"> <input
				type="submit" value="三峡野猫面">
		</form>
		<form id="form2" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Sy"> <input
				type="submit" value="抚顺西露天">
		</form>
		<form id="form3" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Water_Quality"> <input
				type="hidden" name="code" value="84811"> <input
				type="submit" value="弥苴河">
		</form>
		<form id="form4" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Water_Quality"> <input
				type="hidden" name="code" value="84812"> <input
				type="submit" value="罗莳江">
		</form>
		<form id="form5" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Water_Quality"> <input
				type="hidden" name="code" value="84813"> <input
				type="submit" value="永安江">
		</form>
		<form id="form6" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Water_Quality"> <input
				type="hidden" name="code" value="84814"> <input
				type="submit" value="波罗江">
		</form>
		<form id="form7" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Water_Level"> <input
				type="hidden" name="code" value="84811"> <input
				type="submit" value="弥苴河">
		</form>
		<form id="form8" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Water_Level"> <input
				type="hidden" name="code" value="84812"> <input
				type="submit" value="罗莳江">
		</form>
		<form id="form9" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Water_Level"> <input
				type="hidden" name="code" value="84813"> <input
				type="submit" value="永安江">
		</form>
		<form id="form10" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Water_Level"> <input
				type="hidden" name="code" value="84814"> <input
				type="submit" value="波罗江">
		</form>
		<form id="form11" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Yunnanremote"> <input
				type="hidden" name="code" value="84802"> <input
				type="submit" value="大理大学">
		</form>
		<form id="form12" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Yunnanremote"> <input
				type="hidden" name="code" value="84803"> <input
				type="submit" value="喜洲">
		</form>
		<form id="form13" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Yunnanremote"> <input
				type="hidden" name="code" value="84804"> <input
				type="submit" value="双廊">
		</form>
		<form id="form14" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Yunnanremote"> <input
				type="hidden" name="code" value="84805"> <input
				type="submit" value="小关邑">
		</form>
		<form id="form15" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Yunnan"> <input
				type="submit" value="武大电信院">
		</form>
		<form id="form16" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Baoxie"> <input
				type="submit" value="武汉豹懈">
		</form>
		<form id="form17" action="<%=path%>/User/Data_query.action"
			method="post">
			<input type="hidden" name="dbname" value="Wuhan"> <input
				type="submit" value="电信院">
		</form>
		<form id="form18" action="<%=path%>/User/Admin_select.action"
			method="post">
			<input type="submit" value="用户管理">
		</form>
		<form id="form19" action="<%=path%>/User/Login_exit.action"
			method="post">
			<input type="submit" value="退出">
		</form>
	</div>

	<script type="text/javascript">
		function href1() {
			document.getElementById("form1").submit();
		}
		function href2() {
			document.getElementById("form2").submit();
		}
		function href3() {
			document.getElementById("form3").submit();
		}
		function href4() {
			document.getElementById("form4").submit();
		}
		function href5() {
			document.getElementById("form5").submit();
		}
		function href6() {
			document.getElementById("form6").submit();
		}
		function href7() {
			document.getElementById("form7").submit();
		}
		function href8() {
			document.getElementById("form8").submit();
		}
		function href9() {
			document.getElementById("form9").submit();
		}
		function href10() {
			document.getElementById("form10").submit();
		}
		function href11() {
			document.getElementById("form11").submit();
		}
		function href12() {
			document.getElementById("form12").submit();
		}
		function href13() {
			document.getElementById("form13").submit();
		}
		function href14() {
			document.getElementById("form14").submit();
		}
		function href15() {
			document.getElementById("form15").submit();
		}
		function href16() {
			document.getElementById("form16").submit();
		}
		function href17() {
			document.getElementById("form17").submit();
		}
		function href18() {
			document.getElementById("form18").submit();
		}
		function href19() {
			document.getElementById("form19").submit();
		}
		function index() {
			window.location.href = "index.jsp";
		}
		function sub() {
			window.location.href = "subscribe.jsp";
		}
		function tend() {
			window.location.href = "tendency.jsp";
		}
	</script>

	<div class="wrap">
		<nav>
		<ul class="menu">
			<li><a onclick="javascript:index()">主页</a>
			</li>
			<li style="z-index:70000"><a href="#">监测数据</a>
				<ul >
					<li style="z-index:80000" ><a href="#">地质</a>
						<ul>
							<li style="z-index:80000"><a onclick="javascript:href1()">三峡</a>
							</li>
							<li><a onclick="javascript:href2()">沈阳</a>
							</li>
						</ul></li>
					<li style="z-index:80000"><a href="#">水质</a>
						<ul>
							<li ><a href="#">云南</a>
								<ul>
									<li><a onclick="javascript:href3()">弥苴河</a>
									</li>
									<li><a onclick="javascript:href4()">罗莳江</a>
									</li>
									<li><a onclick="javascript:href5()">永安江</a>
									</li>
									<li><a onclick="javascript:href6()">波罗江</a>
									</li>
								</ul></li>
							<li><a href="#">武汉</a>
							</li>
						</ul></li>
					<li style="z-index:80000"><a href="#">水文</a>
						<ul>
							<li><a href="#">云南</a>
								<ul>
									<li><a onclick="javascript:href7()">弥苴河</a>
									</li>
									<li><a onclick="javascript:href8()">罗莳江</a>
									</li>
									<li><a onclick="javascript:href9()">永安江</a>
									</li>
									<li><a onclick="javascript:href10()">波罗江</a>
									</li>
								</ul></li>
							<li><a href="#">武汉</a>
							</li>
						</ul></li>
						
			</li>
			<li style="z-index:80000"><a href="#">气象</a>
				<ul>
					<li><a href="#">云南</a>
						<ul>
							<li><a onclick="javascript:href11()">大理大学</a>
							</li>
							<li><a onclick="javascript:href12()">喜洲</a>
							</li>
							<li><a onclick="javascript:href13()">双廊</a>
							</li>
							<li><a onclick="javascript:href14()">小关邑</a>
							</li>
						</ul></li>
					<li><a href="#">武汉</a>
						<ul>
							<li><a onclick="javascript:href15()">电信院</a>
							</li>
							<li><a onclick="javascript:href16()">豹懈</a>
							</li>
						</ul></li>
				</ul></li>
			<li style="z-index:80000"><a href="#">环境</a>
				<ul>
					<li><a href="#">武汉</a>
						<ul>
							<li><a onclick="javascript:href17()">电信院</a>
							</li>
						</ul></li>
				</ul></li>
		</ul>
		
		<li><a onclick="javascript:tend()">气象趋势分析</a>
		</li>
		<li><a onclick="javascript:sub()">数据订阅</a>
		</li>
		<%
			if (session.getAttribute("property").equals("admin")) {
		%>
		<li><a onclick="javascript:href18()">用户管理</a>
		</li>
		<%
			}
		%>
		<li><a onclick="javascript:href19()">退出</a>
		</li>
		<li><a>Hello,<%=session.getAttribute("user")%>!</a>
		</li>
		</ul>
		<div class="clearfix"></div>
		</nav>
	</div>

</body>



</html>
