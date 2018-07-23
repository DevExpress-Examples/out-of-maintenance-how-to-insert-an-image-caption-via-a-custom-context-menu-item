<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register assembly="DevExpress.Web.ASPxRichEdit.v18.1, Version=18.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRichEdit" tagprefix="dx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script>
        function OnPopupMenuShowing(s, e) {
            if (re.selection.isPictureSelected) {
                 var insertCaptionItem = new ASPxClientRichEditPopupMenuItem();
                 insertCaptionItem.name = "addCaption";
                 insertCaptionItem.text = "Insert Caption";
                 insertCaptionItem.beginGroup = "Insert Caption";
                 e.menuItems.Insert(e.menuItems.length, insertCaptionItem);
            }
        }

        function OnCustomCommandExecuted(s, e) {
            if (e.commandName == "addCaption") {
                var selectedInterval = s.selection.intervals[0];
                re.selection.intervals = [new ASPx.Interval(selectedInterval.start + selectedInterval.length, 0)];
                re.commands.insertParagraph.execute();
                re.commands.insertFiguresCaption.execute();
            }     
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxRichEdit ID="ASPxRichEdit1" runat="server" WorkDirectory="~\App_Data\WorkDirectory" ClientInstanceName="re">
            <ClientSideEvents PopupMenuShowing="OnPopupMenuShowing" CustomCommandExecuted="OnCustomCommandExecuted" />
            <Settings>
                <Behavior Save="Hidden" SaveAs="Hidden" Open="Hidden" />
            </Settings>
        </dx:ASPxRichEdit>
    </form>
</body>
</html>
