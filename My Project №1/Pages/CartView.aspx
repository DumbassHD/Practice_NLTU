<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CartView.aspx.cs" Inherits="MyProject1.Pages.CartView" 
    MasterPageFile="~/Pages/Store.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="server">
    <div id="content">
        <h2>Ваша корзина</h2>
        <table id="cartTable">
            <thead>
                <tr>
                    <th>К-ть игр</th>
                    <th>Назва</th>
                    <th>Ціна</th>
                    <th>Загальна вартість</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" ItemType="MyProject1.Models.CartLine"
                    SelectMethod="GetCartLines" runat="server" EnableViewState="false">
                    <ItemTemplate>
                        <tr>
                            <td><%# Item.Quantity %></td>
                            <td><%# Item.Game.Name %></td>
                            <td><%# Item.Game.Price.ToString("c")%></td>
                            <td><%# ((Item.Quantity * 
                                Item.Game.Price).ToString("c"))%></td>
                            <td>
                                <button type="submit" class="actionButtons" name="remove"
                                    value="<%#Item.Game.GameId %>">
                                    Видалити</button>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3">Сума:</td>
                    <td><%= CartTotal.ToString("c") %></td>
                </tr>
            </tfoot>
        </table>
        <p class="actionButtons">
            <a href="<%= ReturnUrl %>">Продовжити покупки</a>
            <a href="<%= CheckoutUrl %>">Оформить заказ</a>
        </p>
    </div>
</asp:Content>