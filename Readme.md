<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1330)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Grid View for ASP.NET Web Forms - How to number grid rows
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1330/)**
<!-- run online end -->

This example demonstrates how to number rows (display row visible indices) in a grid.

![](grid-with-numbered-rows.png)

## Implementation Details

1. Create an unbound column.

```aspx
<dxwgv:GridViewDataTextColumn Caption="#" UnboundType="String" />
```
2. Handle the [CustomColumnDisplayText](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridView.CustomColumnDisplayText) event to assign row visible incex to cell  values in the unbound column.

```cs
protected void ASPxGridView1_CustomColumnDisplayText(object sender, DevExpress.Web.ASPxGridViewColumnDisplayTextEventArgs e) {
    if (e.Column.Caption == "#") {
        e.DisplayText = e.VisibleRowIndex.ToString();
    }
}
```

## Files to Review

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
