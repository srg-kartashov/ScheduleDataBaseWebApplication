<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="UniversityTeachers.aspx.cs" Inherits="ScheduleDataBaseWebApplication._Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView.Export" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" DeleteCommand="UniversityTeachers_table_Delete" DeleteCommandType="StoredProcedure" InsertCommand="UniversityTeachers_table_INSERT" InsertCommandType="StoredProcedure" SelectCommand="UniversityTeachers_table_Select" SelectCommandType="StoredProcedure" UpdateCommand="UniversityTeachers_table_Update" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TeachersSurname" Type="String" />
            <asp:Parameter Name="TeachersName" Type="String" />
            <asp:Parameter Name="TeachersPatronymic" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="TeachersSurname" Type="String" />
            <asp:Parameter Name="TeachersName" Type="String" />
            <asp:Parameter Name="TeachersPatronymic" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceAcademic" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [AcademicTitle_table]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourcePulpit" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="SELECT * FROM [UniversityPulpit_table]"></asp:SqlDataSource>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="id">
        <Columns>
             <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" ButtonType="Image">
                <NewButton Text="Додати">
                    <Image AlternateText="Додати" Height="16px" Width="16px" Url="~/_Иконки/Add.ico">
                    </Image>
                </NewButton>
                <EditButton Text="Змінити">
                    <Image AlternateText="Змінити" Height="16px" Width="16px" Url="~/_Иконки/Edit.ico">
                    </Image>
                </EditButton>
                <CancelButton Text="Відмінити">
                    <Image AlternateText="Відмінити" Height="16px" Url="~/_Иконки/Knob Snapback.ico" Width="16px" />
                </CancelButton>
                <DeleteButton Text="Видалити">
                    <Image Height="16" Width="16" Url="~/_Иконки/Delete 2.ico" />
                </DeleteButton>
                <UpdateButton Text="Зберегти">
                    <Image AlternateText="Зберегти" Height="16px" Url="~/_Иконки/Ok.ico" Width="16px" />
                </UpdateButton>
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="TeachersSurname" VisibleIndex="1" Caption="Фамилия">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TeachersName" VisibleIndex="2" Caption="Имя">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TeachersPatronymic" VisibleIndex="3" Caption="Отчество">
            </dx:GridViewDataTextColumn>
             <dx:GridViewDataComboBoxColumn Caption="Академическое звание" FieldName="id_AcademicDegree" VisibleIndex="5">
                 <PropertiesComboBox DataSourceID="SqlDataSourceAcademic" TextField="AcademicTitle" ValueField="id">
                 </PropertiesComboBox>
             </dx:GridViewDataComboBoxColumn>
             <dx:GridViewDataComboBoxColumn Caption="Кафедра" FieldName="id_UniversityPulpit" VisibleIndex="6">
                 <PropertiesComboBox DataSourceID="SqlDataSourcePulpit" TextField="NamePulpit" ValueField="id">
                 </PropertiesComboBox>
             </dx:GridViewDataComboBoxColumn>
        </Columns>
    </dx:ASPxGridView>



</asp:Content>
