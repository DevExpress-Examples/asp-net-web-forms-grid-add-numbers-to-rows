<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            oncustomcolumndisplaytext="ASPxGridView1_CustomColumnDisplayText">
            <Columns>
                <dxwgv:GridViewDataTextColumn Caption="№" ReadOnly="True" UnboundType="String" 
                    VisibleIndex="0">
                    <Settings AllowAutoFilter="False" AllowAutoFilterTextInputTimer="False" 
                        AllowDragDrop="False" AllowGroup="False" AllowHeaderFilter="False" 
                        AllowSort="False" />
                </dxwgv:GridViewDataTextColumn>
<dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1"></dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
        </dxwgv:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT [ProductName], [UnitPrice] FROM [Alphabetical list of products]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
