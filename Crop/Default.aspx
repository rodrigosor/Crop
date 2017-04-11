<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Crop.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Jcrop.min.css" rel="stylesheet" />
    <link href="css/crop.css" rel="stylesheet" />
</head>
<body>
    <form id="ASPX" runat="server">

        <div>
            <label>Selecione:</label>
            <input type="file" id="imageLoader" name="imageLoader" />
        </div>

        <div class="previews">
            <div class="source">
                <h3>Imagem</h3>
                <div id="image_input"></div>
            </div>
            <div class="crop">
                <h3>Preview</h3>
                <img alt="" title="" id="image_output" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=" />
            </div>
        </div>

    </form>
    <script src="js/jquery.min.js"></script>
    <script src="js/Jcrop.min.js"></script>
    <script src="js/crop.js"></script>
</body>
</html>
