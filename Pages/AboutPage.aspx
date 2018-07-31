<%@ page language="C#" autoeventwireup="true" enableeventvalidation="True" validaterequest="false" inherits="PROJETO.AboutPage, App_Web_rursx3cf" culture="auto" uiculture="auto" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=PROJETO.Utility.CurrentSiteLanguage%>">
<head runat="server">
	  <title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../Styles/AboutPage.css?sv=1.0" type="text/css" media="screen" title="no title" charset="utf-8" />
</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.0"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.0"></script>
	<script language="JavaScript" src='../JS/Mask.js?sv=1.0' type="text/javascript"></script>
		
		<script type="text/javascript" src="../JS/AboutPage_USER.js?sv=1.0" language="JavaScript"></script>
	<script type="text/javascript">
		function OnLoginSucceded()
		{
			if(getParentPage() != self && getParentPage() != null)
			{
				getParentPage().OnLoginSucceded();
			}
		}
		function TryLogin(PageToRedirect, RefreshControlsID)
		{
			TryParentLogin(PageToRedirect, RefreshControlsID);
		}
	</script>
		<form id="Form1" runat="server">
			<div id="__MainDiv" class="c_MainDiv" FitToContent="True" MarginToContent="0">
				<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
					<div id="Div4" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Label id="labSolutionTitle" runat="server" Text="BLMBLM" />
						<asp:Label id="ProjectVersion" runat="server" Text="1.0" />
					</div>
					<asp:Panel id="Panel1" runat="server" BorderStyle="Solid" BorderWidth="1" ScrollBars="Auto">
						<asp:Label id="labProjectTitle" runat="server" Text="Título do projeto" />
						<asp:Label id="CompanyName" runat="server" Text="Empresa" />
						<asp:Label id="DeveloperName" runat="server" Text="Analista" />
					</asp:Panel>
					<asp:Label id="ProjectCopyright" runat="server" Text="Todos os direitos reservados" />
				</div>
			</div>
		</form>
		
</body>
<script type="text/javascript">
	ShowClientFormulas();

	function ShowClientFormulas()
	{
	}

</script>

</html>
