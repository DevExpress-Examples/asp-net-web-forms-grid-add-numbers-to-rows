Imports Microsoft.VisualBasic
Imports System
Namespace WebApplication1
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub ASPxGridView1_CustomColumnDisplayText(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridViewColumnDisplayTextEventArgs)
			If e.Column.Caption = "?" Then
				e.DisplayText = e.VisibleRowIndex.ToString()
			End If
		End Sub
	End Class
End Namespace