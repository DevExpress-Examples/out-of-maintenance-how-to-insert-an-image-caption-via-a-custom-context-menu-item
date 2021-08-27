<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/141300991/18.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T830559)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
# ASPxRichEdit - How to add a caption to a selected image by clicking a custom context menu item
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/141300991/)**
<!-- run online end -->

This example illustrates how to add a caption to the currently selected image once a user clicks the corresponding context menu item.

<p>A custom "Insert Caption" item was added to the ASPxRichEdit control's context menu in the client-side <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.ASPxClientRichEdit.PopupMenuShowing.event">PopupMenuShowing</a> event handler. Use the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.RichEditSelection.isPictureSelected.property">selection.isPictureSelected</a> property to ensure that an image object is selected.</p>

<p>The custom item's click is processed in the client-side <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.ASPxClientRichEdit.CustomCommandExecuted.event">CustomCommandExecuted</a> event handler after analyzing the e.commandName property value.</p>

<p>To add a custom caption to the currently selected image, use the client-side <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.RichEditCommands.insertFiguresCaption.property">insertFiguresCaption</a> command.</p>
