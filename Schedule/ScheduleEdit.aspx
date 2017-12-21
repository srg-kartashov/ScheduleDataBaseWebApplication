<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="ScheduleEdit.aspx.cs" Inherits="ScheduleDataBaseWebApplication._Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView.Export" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">



   
    



   
   
    



    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceScheduleEdit" KeyFieldName="id">
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_Subject" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_Group" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_UniversityTeachers" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_LectureHall" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_Day" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_UniversityTime" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_TypeWeek" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_TypeOfSubject" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="isFlow" VisibleIndex="10">
            </dx:GridViewDataCheckColumn>
        </Columns>
        <Settings ShowFilterRow="True" />
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSourceScheduleEdit" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" DeleteCommand="Schedule_table_Delete" DeleteCommandType="StoredProcedure" InsertCommand="Schedule_table_Insert" InsertCommandType="StoredProcedure" SelectCommand="Schedule_table_Select" SelectCommandType="StoredProcedure" UpdateCommand="Schedule_table_Update" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_Subject" Type="Int32" />
            <asp:Parameter Name="id_Group" Type="Int32" />
            <asp:Parameter Name="id_UniversityTeachers" Type="Int32" />
            <asp:Parameter Name="id_LectureHall" Type="Int32" />
            <asp:Parameter Name="id_Day" Type="Int32" />
            <asp:Parameter Name="id_UniversityTime" Type="Int32" />
            <asp:Parameter Name="id_TypeWeek" Type="Int32" />
            <asp:Parameter Name="id_TypeOfSubject" Type="Int32" />
            <asp:Parameter Name="isFlow" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="id_Subject" Type="Int32" />
            <asp:Parameter Name="id_Group" Type="Int32" />
            <asp:Parameter Name="id_UniversityTeachers" Type="Int32" />
            <asp:Parameter Name="id_LectureHall" Type="Int32" />
            <asp:Parameter Name="id_Day" Type="Int32" />
            <asp:Parameter Name="id_UniversityTime" Type="Int32" />
            <asp:Parameter Name="id_TypeWeek" Type="Int32" />
            <asp:Parameter Name="id_TypeOfSubject" Type="Int32" />
            <asp:Parameter Name="isFlow" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource10" runat="server"></asp:SqlDataSource>



   
    



   
   
    



</asp:Content>
