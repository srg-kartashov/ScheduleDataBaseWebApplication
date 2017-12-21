<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="ScheduleEdit.aspx.cs" Inherits="ScheduleDataBaseWebApplication._Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView.Export" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceScheduleEdit" KeyFieldName="id">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="id" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_Subject" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_Group" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_UniversityTeachers" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_LectureHall" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_Day" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_UniversityTime" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_TypeWeek" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_TypeOfSubject" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn FieldName="isFlow" VisibleIndex="9">
            </dx:GridViewDataCheckColumn>
            <dx:GridViewDataTextColumn FieldName="id1" ReadOnly="True" VisibleIndex="10">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NameOfGroup" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_UniversityTeachers1" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="YearStart" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="YearFinish" VisibleIndex="14">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_UniversityPulpit" VisibleIndex="15">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Subgroup" VisibleIndex="16">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="id_Faculty" VisibleIndex="17">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Course" ReadOnly="True" VisibleIndex="18">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="nameGroup" ReadOnly="True" VisibleIndex="19">
            </dx:GridViewDataTextColumn>
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
    <asp:SqlDataSource ID="SqlDataSource_Subject" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [Subject_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Group" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [Group_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_University_Teachers" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [UniversityTeachers_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Lecture_Hall" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [LectureHall_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Day" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [Day_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_University_Time" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [UniversityTime_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Type_Week" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [TypeWeek_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource_Type_Of_Subject" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [TypeOfSubject_table]"></asp:SqlDataSource>
    


   
    



   
   
    



</asp:Content>
