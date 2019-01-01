<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CP380_bohWebApp01.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Button ID="btnHideDiscountiue" runat="server" Text="Hide discontinued" OnClick="btnHideDiscountiue_Click" />
        <asp:Button ID="btnShowAll" runat="server" Text="Show all" OnClick="btnShowAll_Click" Visible="False" />
        <br />
        <br />
      <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" DataKeyField="ProductID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            ProductName:
<%--            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />--%>
            <asp:HyperLink ID="HyperLink2" runat="server" Navigateurl='<%# Eval("ProductID","~/Detail.aspx?id={0}") %>' Text='<%# Eval("ProductName") %>' >HyperLink</asp:HyperLink>
            <br />
<%--            CategoryID:
            <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
            <br />--%>
            QuantityPerUnit:
            <asp:Label ID="QuantityPerUnitLabel" runat="server" Text='<%# Eval("QuantityPerUnit") %>' />
            <br />
<%--            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />--%>
            UnitPrice:
            <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
            <br />
            <br />
        </ItemTemplate>
          <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
      </asp:DataList>

        <%-- Just for debugging purpose, retrieved extra column.--%>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductName], [CategoryID], [QuantityPerUnit], [ProductID], [UnitPrice], [Discontinued] FROM [Products] WHERE ([CategoryID] = @CategoryID)">
            <SelectParameters>
<%--                <asp:QueryStringParameter Name="CategoryID" QueryStringField="id" Type="Int32"/>--%>
                <asp:QueryStringParameter Name="CategoryID" QueryStringField="id" Type="Int32" DefaultValue="1"/>
            </SelectParameters>
        </asp:SqlDataSource>

  

   </div>
</asp:Content>
