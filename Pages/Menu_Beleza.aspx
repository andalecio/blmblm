﻿<%@ page language="C#" validaterequest="false" enableeventvalidation="True" autoeventwireup="true" inherits="PROJETO.DataPages.Menu_Beleza, App_Web_rursx3cf" culture="auto" uiculture="auto" %>
<%@ Register Src="..\UserControls\GMultiMedia.ascx" TagName="GMultiMedia" TagPrefix="gas" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<%=PROJETO.Utility.CurrentSiteLanguage%>">
<head id="Head1" runat="server">
	<title><asp:Literal runat="server" Text="<%$ Resources: Form1 %>" /></title>
	<link rel="stylesheet" href="../Styles/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
	<link rel="stylesheet" href="../Styles/Menu_Beleza.css?sv=1.0" type="text/css" media="screen" title="no title" charset="utf-8" />


</head>
<body onload="InitializeClient();" id="Form1_body" style="margin-left:auto;margin-right:auto;">
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.js" ></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Page.js?sv=1.0"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Common.js?sv=1.0"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Functions.js?sv=1.0"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/Mask.js?sv=1.0"></script>
	<script type="text/javascript" src="../JS/Menu_Beleza_USER.js?sv=1.0" language="JavaScript"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.validationEngine-pt_BR.js"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/jquery.validationEngine.js"></script>
	<script language="JavaScript" type="text/javascript" src="../JS/validation.js"></script>
	
	<script type="text/javascript">	   

		function RegisterClientValidateScript()
		{
			var $j = jQuery.noConflict();
			$j(document).ready(function() 
			{
				$j("#Form1").validationEngine()
			});
		}
		RegisterClientValidateScript();
		
	</script>
    <script type="text/javascript">	    
		var HasValidation = true;

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
	<script language="JavaScript" type="text/javascript">
		function RadTextBox1_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
		function RadTextBox2_Validation(field, rules, i, options) {
			if (!(validateCall(field, "required", options))) {
				return field.attr('data-validation-message');
			}
		}
	</script>
		
		<form id="Form1" runat="server">
			<asp:ScriptManager ID="MainScriptManager" runat="server"/>
			<telerik:RadAjaxPanel id="MainAjaxPanel" runat="server" class="c_MainAjaxPanel" ClientEvents-OnRequestStart="OnRequestStart" ClientEvents-OnResponseEnd="OnResponseEnd" LoadingPanelID="___Form1_AjaxLoading">
				<div id="__MainDiv" class="c_MainDiv" FitToContent="True" MarginToContent="0">
					<div id="Div1" runat="server" AutoExpandToContent="False" AutoExpandToContentMargin="10">
						<asp:Label id="labModuleTitle" runat="server" Text="<%$ Resources: Form1 %>" />
					</div>
					<telerik:RadTextBox id="RadTextBox1" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox1_Validation]]"
						data-validation-message="id não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="10" onkeydown="onTextChanged"
						ReadOnly="False" RenderMode="Classic" TabIndex="3" TextMode="SingleLine" WrapperCssClass="c_RadTextBox1_wrapper" />
					<telerik:RadLabel id="Label1" runat="server" Text="<%$ Resources: Label1 %>" />
					<telerik:RadTextBox id="RadTextBox2" runat="server" AutoPostBack="False" data-validation-engine="validate[funcCall[RadTextBox2_Validation]]"
						data-validation-message="titulo não pode ser vazio!" EnableSingleInputRendering="True" ForeColor="#000000" MaxLength="30"
						onkeydown="onTextChanged" ReadOnly="False" RenderMode="Classic" TabIndex="1" TextMode="SingleLine" WrapperCssClass="c_RadTextBox2_wrapper" />
					<telerik:RadLabel id="Label2" runat="server" Text="<%$ Resources: Label2 %>" />
					<gas:GMultiMedia id="GMultiMedia1" runat="server" BorderWidth="1" CanDownloadFile="True" CanUploadFile="True" enabled="true"
						EncryptedFile="False" Height="170px" Left="30px" MaxFileSize="0" SaveAsFile="False" SessionHandlerObjectName="fttitulo27307"
						ShowDownloadLink="False" ShowImage="True" TabIndex="2" Top="158px" Visible="true" Width="200px" />
					<asp:Label id="labError" runat="server" class="Error" />
				</div>
			<telerik:RadAjaxLoadingPanel ID="___Form1_AjaxLoading" runat="server">
			</telerik:RadAjaxLoadingPanel>
			</telerik:RadAjaxPanel>
		</form>
		
	</body>
	<script type="text/javascript">
		var $j = jQuery.noConflict();
		$j(document).ready(SetFocusFirstField());
		function SetFocusFirstField()
		{
			try
			{
				{
					window.focus();
					setTimeout("var $j = jQuery.noConflict();$j('#RadTextBox2').first().focus();", 200);
				}
			}
			catch (e)
			{
			}
		}
		function id() { return document.getElementById("RadTextBox1").value; }
		function titulo() { return document.getElementById("RadTextBox2").value; }
		function ShowClientFormulas(ShowServerFormulas)
		{
		}

	</script>
</html>
