<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128542121/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1330)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# Grid View for ASP.NET Web Forms - How to add numbers to grid rows

This example demonstrates how to add row numbers (display row visible indices) in a grid.

![](grid-with-numbered-rows.png)

## Implementation Details

1. Create an unbound column.

```aspx
<dxwgv:GridViewDataTextColumn Caption="#" UnboundType="String" />
```
2. Handle the [CustomColumnDisplayText](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridView.CustomColumnDisplayText) event to assign row visible indices to cell values in the unbound column.

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
