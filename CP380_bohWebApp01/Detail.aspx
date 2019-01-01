<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="CP380_bohWebApp01.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="Black" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal">

            <ItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                SupplierID:
                <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Bind("SupplierID") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Bind("CategoryID") %>' />
                <br />
                QuantityPerUnit:
                <asp:Label ID="QuantityPerUnitLabel" runat="server" Text='<%# Bind("QuantityPerUnit") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                UnitsInStock:
                <asp:Label ID="UnitsInStockLabel" runat="server" Text='<%# Bind("UnitsInStock") %>' />
                <br />
                UnitsOnOrder:
                <asp:Label ID="UnitsOnOrderLabel" runat="server" Text='<%# Bind("UnitsOnOrder") %>' />
                <br />
                ReorderLevel:
                <asp:Label ID="ReorderLevelLabel" runat="server" Text='<%# Bind("ReorderLevel") %>' />
                <br />
                Discontinued:
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" Checked='<%# Bind("Discontinued") %>' Enabled="false" />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />

        </asp:FormView>

        <%-- Product ID uses as Query string parameter instead of product name --%>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="Int32"/>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
