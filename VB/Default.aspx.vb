Imports DevExpress.Web.Office
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If Not IsPostBack Then
            DocumentManager.CloseAllDocuments()
            ASPxRichEdit1.Open(Server.MapPath("TextWithImages.rtf"))
        End If
    End Sub
End Class