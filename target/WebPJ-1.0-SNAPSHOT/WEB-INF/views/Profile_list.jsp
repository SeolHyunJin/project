<%--
  Created by IntelliJ IDEA.
  User: seolhyeonjin
  Date: 2019-04-20
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width-device-width", initial-scale = "1">
    <title>Profile_list</title>
    <style>
        .list{
            border: 1px solid;
            border-radius: 10px;
            text-align: center;
            background-color: #FF6D70;
            color: white;
            height: 30px;
        }

        .table1 {
            width: 50%;
            cellpadding: 0;
            cellspacing: 0;
            border: 0;
            margin: auto;
        }
    </style>
</head>
<body>
    <div style="text-align: center; vertical-align: middle; position: relative; margin-top: 50px; margin-bottom: 50px;">
        <p style="text-align: center; font-weight: bold; font-size: 30pt;">
            ��Ƽ��Ʈ ���
        </p>
    </div>

    <table class="table1">
        <tr height="5"><td width="5"></td></tr>
        <tr class="list">
            <td width="70" style="border-bottom-left-radius: 20px; border-top-left-radius: 20px;">�г���</td>
            <td width="80">ī�װ�</td>
            <td width="70">�۾���</td>
            <td width="130" style="border-bottom-right-radius: 20px; border-top-right-radius: 20px;">������Ʈ ���� Ƚ��</td>
        </tr>
        <%
            //if(total==0) {
        %>
        <tr align="center" bgcolor="#FFFFFF" height="30">
            <td colspan="6">��Ƽ��Ʈ �����ϴ�.</td>
        </tr>
        <%/* ���߿� ������ �κ�1
            } else {

                while(rs.next()) {
                    String nickname = rs.getString(1);
                    String name = rs.getString(2);
                    String title = rs.getString(3);
                    String time = rs.getString(4);
                    int hit = rs.getInt(5);

        */ %>
        <!-- ���߿� ������ �κ�2
        <tr height="25" align="center">
            <td>&nbsp;</td>
            <td><%//=idx %></td>
            <td align="left"><%//=title %></td>
            <td align="center"><//%=name %></td>
            <td align="center"><//%=time %></td>
            <td align="center"><//%=hit %></td>
            <td>&nbsp;</td>
        </tr>
        <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
            -->
        <%/*
                        }
                    }
                    rs.close();
                    stmt.close();
                    conn.close();
                } catch(SQLException e) {
                    out.println( e.toString() );
                }*/
        %>
        <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
    </table>
</body>
</html>
