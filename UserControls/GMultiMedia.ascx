<%@ control language="C#" autoeventwireup="true" inherits="COMPONENTS.GMultiMedia, App_Web_a3loaxrw" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Panel runat="server" ID="BorderPanel">
	<asp:Panel runat="server" ID="ImagePanel" Style="text-align: center;">
		<telerik:RadBinaryImage runat="server" ID="Thumbnail" ResizeMode="Fit" Style="top: 0px;
			left: 0px; right: 0px; bottom: 0px; margin: auto; position: absolute;" AlternateText="Thumbnail"
			CssClass="binary-image" />
	</asp:Panel>
	<asp:Panel runat="server" ID="FramePanel" Style="margin-top: 5px;" class="qsf-demo-canvas">
		<telerik:RadAsyncUpload runat="server" ID="AsyncUpload1" MaxFileInputsCount="1" OnClientFileUploaded="fileUploaded"
			OnFileUploaded="AsyncUpload1_FileUploaded" CssClass="FileUploader" OnClientValidationFailed="validationFailed">
			<Localization Select="Abrir" />
		</telerik:RadAsyncUpload>
		<asp:Label runat="server" ID="NameLabel" CssClass="NameLabel"></asp:Label>
		<asp:LinkButton runat="server" ID="DownloadLink" OnClick="DownloadLink_Click" CssClass="DownloadLink"></asp:LinkButton>
		<asp:ImageButton ImageUrl="~/UserControls/close.png" runat="server" ID="CloseLink" OnClick="DeleteImage_Click" CssClass="CloseLink"></asp:ImageButton>
	</asp:Panel>
	<script type="text/javascript">
		function fileUploaded(sender, args) {
			ExecuteCommandRequest("FileUploaded");
		}
		function validationFailed(sender, eventArgs) {
			alert("O arquivo: " + eventArgs.get_fileName() + " é inválido para upload!!!");
			ExecuteCommandRequest("FileUploaded");
		}

	</script>
	<style type="text/css">
		.qsf-demo-canvas .invalid
		{
			display: none;
		}
		
		.ruFileWrap
		{
			float: right;
		}
		
		.qsf-demo-canvas
		{
			width: 100%;
		}
		
		.FileUploader
		{
			width: 100% !important;
			float: right;
		}
		
		.DownloadLink, .NameLabel
		{
			float: left;
			position:absolute;
		}
		
		.CloseLink
		{
			float: right;
			margin-top: -21px;
			margin-right: 67px;			
			cursor:pointer;
		}
		
		/** Customize the input*/
		.qsf-demo-canvas .RadUpload input.ruFakeInput 
		{
			display: none;
		}
		
		.ruButton .ruBrowse .ruButtonHover
		{
			font-weight: bold;
		}
	</style>
</asp:Panel>
