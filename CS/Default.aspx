<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" onCustomColumnDisplayText="ASPxGridView1_CustomColumnDisplayText">
            <Columns>
                <dxwgv:GridViewDataTextColumn Caption="#" UnboundType="String" />
                <dxwgv:GridViewDataTextColumn FieldName="ProductName" />
                <dxwgv:GridViewDataTextColumn FieldName="UnitPrice">
                    <PropertiesTextEdit DisplayFormatString="c" />
                </dxwgv:GridViewDataTextColumn>
            </Columns>
        </dxwgv:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT [ProductName], [UnitPrice] FROM [Alphabetical list of products]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
