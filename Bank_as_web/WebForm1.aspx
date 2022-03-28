<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Bank_as_web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 570px;
        }
        .auto-style2 {
            width: 109px;
            }
        .auto-style3 {
            width: 692px;
        }
        .auto-style4 {
            width: 159px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BANCK_ACConnectionString %>" ProviderName="<%$ ConnectionStrings:BANCK_ACConnectionString.ProviderName %>" SelectCommand="SELECT [Код клиента] AS Код_клиента, [Название/ФИО] AS column1, [Юридический статус] AS Юридический_статус, [Адрес], [Телефон] FROM [Клиенты]" DeleteCommand="DELETE FROM Клиенты WHERE ([Код клиента] = ?)" InsertCommand="INSERT INTO Клиенты([Название/ФИО], [Юридический статус], Адрес, Телефон) VALUES (?, ?, ?, ?)" UpdateCommand="UPDATE Клиенты SET [Название/ФИО] = ?, [Юридический статус] = ?, Адрес = ?, Телефон = ? WHERE ([Код клиента] = ?)">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox4" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox2" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox3" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox4" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox5" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    &nbsp;&nbsp;
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BANCK_ACConnectionString %>" ProviderName="<%$ ConnectionStrings:BANCK_ACConnectionString.ProviderName %>" SelectCommand="SELECT [Код кредита] AS Код_кредита, [Код клиента] AS Код_клиента, [Сумма кредита] AS Сумма_кредита, [Годовая ставка %] AS column1, [Частота выплат долга в месяц] AS Частота_выплат_долга_в_месяц, [Дата первой выплаты] AS Дата_первой_выплаты FROM [Кредит] WHERE ([Код клиента] = ?)" DeleteCommand="DELETE FROM Кредит WHERE ([Код кредита] = ?)" InsertCommand="INSERT INTO Кредит([Код клиента], [Сумма кредита], [Годовая ставка %], [Частота выплат долга в месяц], [Дата первой выплаты]) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE Кредит SET [Сумма кредита] = ?, [Годовая ставка %] = ?, [Частота выплат долга в месяц] = ?, [Дата первой выплаты] = ? WHERE ([Код кредита] = ?)">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TextBox6" Name="?" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox7" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox8" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox9" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox10" Name="?" PropertyName="Text" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" DefaultValue="" Name="Код_клиента" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox7" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox8" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox9" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox10" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox6" Name="?" PropertyName="Text" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BANCK_ACConnectionString %>" ProviderName="<%$ ConnectionStrings:BANCK_ACConnectionString.ProviderName %>" SelectCommand="SELECT [Код выплаты] AS Код_выплаты, [Код кредита] AS Код_кредита, [Дата выплаты] AS Дата_выплаты, [Сумма по %] AS column1, [Сумма выплаченого долга] AS Сумма_выплаченого_долга, [Остаток по кредиту] AS Остаток_по_кредиту FROM [Выплаты] WHERE ([Код кредита] = ?)" DeleteCommand="DELETE FROM Выплаты WHERE ([Код выплаты] = ?)" InsertCommand="INSERT INTO Выплаты([Код кредита], [Дата выплаты], [Сумма выплаченого долга], [Сумма по %], [Остаток по кредиту]) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE Выплаты SET [Дата выплаты] = ?, [Сумма выплаченого долга] = ?, [Сумма по %] = ?, [Остаток по кредиту] = ? WHERE ([Код выплаты] = ?)">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TextBox11" Name="?" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBox6" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox12" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox13" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox14" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox15" Name="?" PropertyName="Text" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox6" DefaultValue="" Name="Код_кредита" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="TextBox12" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox13" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox14" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox15" Name="?" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TextBox11" Name="?" PropertyName="Text" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_клиента" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="834px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Код_клиента" HeaderText="Код_клиента" InsertVisible="False" ReadOnly="True" SortExpression="Код_клиента" />
                                <asp:BoundField DataField="column1" HeaderText="ФИО/Название" SortExpression="column1" />
                                <asp:BoundField DataField="Юридический_статус" HeaderText="Юридический_статус" SortExpression="Юридический_статус" />
                                <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
                                <asp:BoundField DataField="Телефон" HeaderText="Телефон" SortExpression="Телефон" />
                            </Columns>
                            <SelectedRowStyle BackColor="#0066CC" />
                        </asp:GridView>
                        </td>
                <td class="auto-style4">&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить" CssClass="auto-style8" Width="85px" />
                    <br />
                    <br />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Изменить" Width="85px" />
                    <br />
                    <br />
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Удалить" Width="85px" />
                </td>
                    <td>Код клиента<br />
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                        <br />
                        ФИО/Название<br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        Юридический статус<br />
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <br />
                        Адрес<br />
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <br />
                        Телефон<br />
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="ОК" Width="70px" />
&nbsp;
                        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Отмена" />
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                        -<asp:GridView ID="GridView2" runat="server" AllowSorting="True" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <SelectedRowStyle BackColor="#0066CC" />
                        </asp:GridView>
                        </td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Добавить" Width="85px" />
                    <br />
                    <br />
&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Изменить" Width="85px" />
                    <br />
                    <br />
&nbsp;&nbsp;
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Удалить" Width="85px" />
                </td>
                <td>Код кредита<br />
                    <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True"></asp:TextBox>
                    <br />
                    Сумма кредита<br />
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <br />
                    Годовая ставка<br />
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <br />
                    Частота выплаты в месяцах<br />
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <br />
                    Дата первой выплаты<br />
                    <asp:TextBox ID="TextBox10" runat="server" ReadOnly="True"></asp:TextBox>
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    <br />
                    <br />
                    <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="ОК" Width="70px" />
&nbsp;
                    <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Отмена" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                        <asp:GridView ID="GridView3" runat="server" AllowSorting="True" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="835px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <SelectedRowStyle BackColor="#0066CC" />
                        </asp:GridView>
                        </td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Добавить" Width="85px" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Изменить" Width="85px" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Удалить" Width="85px" />
                </td>
                <td>Код выплат<br />
                    <asp:TextBox ID="TextBox11" runat="server" ReadOnly="True"></asp:TextBox>
                    <br />
                    Дата выплат<br />
                    <asp:TextBox ID="TextBox12" runat="server" ReadOnly="True"></asp:TextBox>
                    <br />
                    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                    <br />
                    Вносимая сумма<br />
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox14" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox15" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="ОК" Width="70px" />
&nbsp;
                    <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Отмена" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
