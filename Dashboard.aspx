<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="waterlevelform_Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Water Level Dashboard</title>
    <script src="../Js/echarts.js"></script>
    <script src="../Js/echarts-liquidfill.js"></script>
    <link href="../css/chart.css" rel="stylesheet" />
    <script src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script>
    <script src="https://www.chartjs.org/samples/latest/utils.js"></script>


    <%--<style>
        input[type=text] {
            font-size:3vw;
            padding-left:19vw;
        }
        body {
            width:100vw;
            height:100vh;
            display:flexbox;
            align-items:center;
        }
    </style>--%>


    <style>
        .dashboardarea {
            width: 48%;
            border-right: 0px solid #808080;
            margin-right: 0;
            float: left;
        }

        #chart1, #chart2, #label1, #label2 {
            width: 48%;
            margin-right: 10px;
            float: left;
            text-align: center;
        }
    </style>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #1d4aa8;
            color: white;
        }
    </style>
   
    <style>
        
    </style>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>--%>
</head>
<body>
   
    <form id="form1" runat="server">
       <div class="col-4 d-flex justify-content-center">
       <div class="col-md-6">
        <div class="dashboardarea" >
            <br/><br/><br/><br/><br/><br/><br/><br/>
            <div class="chart" id="chart1"></div>

            <div class="chart" id="chart2"></div>
            <div id="label1"><b>Tank 1</b></div>
            <%--<div id="label2"><b>Tank 2</b></div>--%>
            <asp:HiddenField ID="chart1value" runat="server" />
            <asp:HiddenField ID="chart2value" runat="server" />
        </div>
        </div>
           </div>
        <div class="dashboardarea" >
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <asp:GridView ID="gvdata" runat="server" Visible="false" AllowPaging="True" PageSize="5"></asp:GridView>
           <table style="width:100%">
              <thead>
                  <tr>
                    <td>Date</td>
                    <td>Percentage</td>
                  </tr>
              </thead>
              <tbody>
                <tr>
                    <td id="tdate"></td>
                    <td id="tper"></td>
                </tr>
              </tbody>
            </table>
        </div>
        
           
        <div class="dashboardarea" style="width: 100%;height:50%;">
            <div style="width: 100%;height:100px;">
                <canvas id="canvas"style="height:33vh; width:80vw"></canvas>
                 <asp:HiddenField ID="chartlabelvalue" runat="server" />
                <asp:HiddenField ID="charttank1" runat="server" />
                <asp:HiddenField ID="charttank2" runat="server" />
            </div>
        </div>
        
         <asp:Button ID="btnRedirect" runat="server" Text="LogOut"  OnClick="btnRedirect_Click" />


           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script>

                function formatDate(date) {
                    var d = new Date(date),
                        month = '' + (d.getMonth() + 1),
                        day = '' + d.getDate(),
                        year = d.getFullYear();

                    hour = d.getHours();
                        min = d.getMinutes();

                    if (month.length < 2)
                        month = '0' + month;
                    if (day.length < 2)
                        day = '0' + day;

                    var fd = day + '-' + month + '-' + year + ' ' + hour + ':' + min;

                    return fd;
                }

               
                $(document).ready(function () {
                    abc();
                });
                function abc(){
                    $.ajax({
                        url: "https://api.thingspeak.com/channels/1407854/feeds.json?results=2",
                        success: function (result) {
                            //console.log(result['feeds'][0].created_at);
                            var date = result['feeds'][0].created_at;
                            document.getElementById("tdate").innerHTML = formatDate(date);

                            var peroftank = result['feeds'][0].field1;
                            document.getElementById("tper").innerHTML = peroftank;
                            //alert(result);
                            document.getElementById("<%=chart1value.ClientID%>").value = peroftank;

                            var val1 = peroftank/100;
                            var val2 = document.getElementById("<%=chart2value.ClientID %>").value;
                            var containers = document.getElementsByClassName('chart');
                            var options = [{
                                series: [{
                                    type: 'liquidFill',
                                    data: [val1],
                                    radius: '55%',

                                }]
                            }//, //{
                               // series: [{
                                 //   type: 'liquidFill',
                                   // data: [val2],
                                    //radius: '55%',
                                //}]
                    //        }
                    ];

                            var charts = [];
                            for (var i = 0; i < options.length; ++i) {
                                var chart = echarts.init(containers[i]);

                                if (i > 0) {
                                    options[i].series[0].silent = true;
                                }
                                chart.setOption(options[i]);
                                chart.setOption({
                                    baseOption: options[i],
                                    media: [{
                                        query: {
                                            maxWidth: 100
                                        },
                                        option: {
                                            series: [{
                                                label: {
                                                    fontSize: 26
                                                }
                                            }]
                                        }
                                    }]
                                });

                                charts.push(chart);
                            }

                            window.onresize = function () {
                                for (var i = 0; i < charts.length; ++i) {
                                    charts[i].resize();
                                }
                            };



                            //Display chart

                            var tankvallavel = document.getElementById("<%=chartlabelvalue.ClientID %>").value.split(',');
            var tank1data = document.getElementById("<%=charttank1.ClientID %>").value.split(',');
                            var tank2data = document.getElementById("<%=charttank2.ClientID %>").value.split(',');
                            var config = {
                                type: 'line',
                                data: {
                                    labels: tankvallavel,
                                    datasets: [{
                                        label: 'Tank 1',
                                        fill: false,
                                        backgroundColor: window.chartColors.red,
                                        borderColor: window.chartColors.red,
                                        data: tank1data,
                                    }
                                    //, {
                                    //    label: 'Tank 2',
                                    //    fill: false,
                                    //    backgroundColor: window.chartColors.blue,
                                    //    borderColor: window.chartColors.blue,
                                    //    data: tank2data,

                                    //}]
                                    ]
                                },
                                options: {
                                    responsive: true,
                                    title: {
                                        display: true,
                                        text: 'Water Level Status'
                                    },
                                    tooltips: {
                                        mode: 'index',
                                        intersect: false,
                                    },
                                    hover: {
                                        mode: 'nearest',
                                        intersect: true
                                    },
                                    scales: {
                                        xAxes: [{
                                            display: true,
                                            scaleLabel: {
                                                display: true,
                                                labelString: 'Date'
                                            }
                                        }],
                                        yAxes: [{
                                            display: true,
                                            scaleLabel: {
                                                display: true,
                                                labelString: 'Value'
                                            }
                                        }]
                                    }
                                }
                            };

                            window.onload = function () {
                                var ctx = document.getElementById('canvas').getContext('2d');
                                window.myLine = new Chart(ctx, config);
                            };
                            }
                    });
                }
                        
               

               // setInterval(abc, 10000);
            </script>




        <%--<script>
           var val1 = document.getElementById("<%=chart1value.ClientID %>").value;
            var val2 = document.getElementById("<%=chart2value.ClientID %>").value;
            var containers = document.getElementsByClassName('chart');
            var options = [{
                series: [{
                    type: 'liquidFill',
                    data: [val1],
                    radius: '55%',

                }]
            }, {
                series: [{
                    type: 'liquidFill',
                    data: [val2],
                    radius: '55%',
                }]
            }];

            var charts = [];
            for (var i = 0; i < options.length; ++i) {
                var chart = echarts.init(containers[i]);

                if (i > 0) {
                    options[i].series[0].silent = true;
                }
                chart.setOption(options[i]);
                chart.setOption({
                    baseOption: options[i],
                    media: [{
                        query: {
                            maxWidth: 100
                        },
                        option: {
                            series: [{
                                label: {
                                    fontSize: 26
                                }
                            }]
                        }
                    }]
                });

                charts.push(chart);
            }

            window.onresize = function () {
                for (var i = 0; i < charts.length; ++i) {
                    charts[i].resize();
                }
            };



            //Display chart

            var tankvallavel = document.getElementById("<%=chartlabelvalue.ClientID %>").value.split(',');
            var tank1data = document.getElementById("<%=charttank1.ClientID %>").value.split(',');
            var tank2data = document.getElementById("<%=charttank2.ClientID %>").value.split(',');
            var config = {
                type: 'line',
                data: {
                    labels: tankvallavel,
                    datasets: [{
                        label: 'Tank 1',
                        fill: false,
                        backgroundColor: window.chartColors.red,
                        borderColor: window.chartColors.red,
                        data: tank1data,
                    }, {
                        label: 'Tank 2',
                        fill: false,
                        backgroundColor: window.chartColors.blue,
                        borderColor: window.chartColors.blue,
                        data: tank2data,

                    }]
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        text: 'Water Level Status'
                    },
                    tooltips: {
                        mode: 'index',
                        intersect: false,
                    },
                    hover: {
                        mode: 'nearest',
                        intersect: true
                    },
                    scales: {
                        xAxes: [{
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: 'Date'
                            }
                        }],
                        yAxes: [{
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: 'Value'
                            }
                        }]
                    }
                }
            };

            window.onload = function () {
                var ctx = document.getElementById('canvas').getContext('2d');
                window.myLine = new Chart(ctx, config);
            };
        </script>--%>
    </form>
</body>
</html>
