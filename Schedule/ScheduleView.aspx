<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="ScheduleView.aspx.cs" Inherits="ScheduleDataBaseWebApplication._Default" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView.Export" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">



   
    



    <asp:SqlDataSource ID="SqlDataSourceScheduleView" runat="server" ConnectionString="<%$ ConnectionStrings:rasConnectionString %>" SelectCommand="Schedule_table_Select" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceScheduleView" KeyFieldName="id">
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
        </Columns>
    </dx:ASPxGridView>



   
    



</asp:Content>
