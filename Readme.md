# ASPxRichEdit - How to add a caption to a selected image by clicking a custom context menu item
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/141300991/)**
<!-- run online end -->

This example illustrates how to add a caption to the currently selected image once a user clicks the corresponding context menu item.

<p>A custom "Insert Caption" item was added to the ASPxRichEdit control's context menu in the client-side <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.ASPxClientRichEdit.PopupMenuShowing.event">PopupMenuShowing</a> event handler. Use the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.RichEditSelection.isPictureSelected.property">selection.isPictureSelected</a> property to ensure that an image object is selected.</p>

<p>The custom item's click is processed in the client-side <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.ASPxClientRichEdit.CustomCommandExecuted.event">CustomCommandExecuted</a> event handler after analyzing the e.commandName property value.</p>

<p>To add a custom caption to the currently selected image, use the client-side <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.RichEditCommands.insertFiguresCaption.property">insertFiguresCaption</a> command.</p>
