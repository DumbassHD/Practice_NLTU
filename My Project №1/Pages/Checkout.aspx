<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" 
    Inherits="MyProject1.Pages.Checkout" 
    MasterPageFile="~/Pages/Store.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">

        <div id="checkoutForm" class="checkout" runat="server">
            <h2>Оформити замовлення</h2>
            Будь-ласка, введіть свої данні, і ми відправимо Ваш товар прямо зараз!

        <div id="errors" data-valmsg-summary="true">
            <ul>
                <li style="display:none"></li>
            </ul>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>

            <h3>Замовник</h3>
            <div>
                <label for="name">ПІБ:</label>
                <SX:VInput Property="Name" runat="server" />
            </div>

            <h3>Адрес доставки</h3>
            <div>
                <label for="line1">Адрес 1:</label>
                <SX:VInput Property="Line1" runat="server" />
            </div>
            <div>
                <label for="line2">Адрес 2:</label>
                <SX:VInput Property="Line2" runat="server" />
            </div>
            <div>
                <label for="line3">Адрес 3:</label>
                <SX:VInput Property="Line3" runat="server" />
            </div>
            <div>
                <label for="city">Місто:</label>
                <SX:VInput Property="City" runat="server" />
            </div>

            <h3>Деталі замовлення:</h3>
            <input type="checkbox" id="giftwrap" name="giftwrap" value="true" />
            Використати подарункову упаковку?
        
        <p class="actionButtons">
            <button class="actionButtons" type="submit">Оформити замовлення</button>
        </p>
        </div>
        <div id="checkoutMessage" runat="server">
            <h2>Дякуємо!</h2>
            Дякуємо що ви обрали наш магазин! Ми постараємось максимально швидко відправити ваше замовлення
        </div>
    </div>
</asp:Content>
