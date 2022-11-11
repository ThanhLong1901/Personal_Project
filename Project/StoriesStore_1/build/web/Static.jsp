<%-- 
    Document   : Static
    Created on : Mar 16, 2022, 12:54:55 PM
    Author     : elll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống Kê</title>
        <link rel="stylesheet" href="StaticStyle.css"> 

        <!--Biểu đồ tròn-->
        <script src='https://www.gstatic.com/charts/loader.js'></script>
        <script>
            google.charts.load('upcoming', {'packages': ['vegachart']}).then(drawChart);

            function drawChart() {
                const dataTable = new google.visualization.DataTable();
                dataTable.addColumn({type: 'string', 'id': 'category'});
                dataTable.addColumn({type: 'number', 'id': 'amount'});
                dataTable.addRows([
                    ['1', 85],
                    ['2', 55],
                    ['3', 45],
                    ['4', 61],
                    ['5', 65],
                    ['6', 50],
                    ['7', 60],
                    ['8', 47],
                    ['9', 75],
                    ['10', 40],
                    ['11', 65],
                    ['12', 57],
                ]);

                const options = {
                    "vega": {
                        "$schema": "https://vega.github.io/schema/vega/v4.json",
                        "width": 700,
                        "height": 300,
                        "padding": 50,

                        'data': [{'name': 'table', 'source': 'datatable'}],

                        "signals": [
                            {
                                "name": "tooltip",
                                "value": {},
                                "on": [
                                    {"events": "rect:mouseover", "update": "datum"},
                                    {"events": "rect:mouseout", "update": "{}"}
                                ]
                            }
                        ],

                        "scales": [
                            {
                                "name": "xscale",
                                "type": "band",
                                "domain": {"data": "table", "field": "category"},
                                "range": "width",
                                "padding": 0.2,
                                "round": true
                            },
                            {
                                "name": "yscale",
                                "domain": {"data": "table", "field": "amount"},
                                "nice": true,
                                "range": "height"
                            }
                        ],

                        "axes": [
                            {"orient": "bottom", "scale": "xscale"},
                            {"orient": "left", "scale": "yscale"}
                        ],

                        "marks": [
                            {
                                "type": "rect",
                                "from": {"data": "table"},
                                "encode": {
                                    "enter": {
                                        "x": {"scale": "xscale", "field": "category"},
                                        "width": {"scale": "xscale", "band": 1},
                                        "y": {"scale": "yscale", "field": "amount"},
                                        "y2": {"scale": "yscale", "value": 0}
                                    },
                                    "update": {
                                        "fill": {"value": "steelblue"}
                                    },
                                    "hover": {
                                        "fill": {"value": "#ffa500"}
                                    }
                                }
                            },
                            {
                                "type": "text",
                                "encode": {
                                    "enter": {
                                        "align": {"value": "center"},
                                        "baseline": {"value": "bottom"},
                                        "fill": {"value": "#333"}
                                    },
                                    "update": {
                                        "x": {"scale": "xscale", "signal": "tooltip.category", "band": 0.5},
                                        "y": {"scale": "yscale", "signal": "tooltip.amount", "offset": -2},
                                        "text": {"signal": "tooltip.amount"},
                                        "fillOpacity": [
                                            {"test": "datum === tooltip", "value": 0},
                                            {"value": 1}
                                        ]
                                    }
                                }
                            }
                        ]
                    }
                };

                const chart = new google.visualization.VegaChart(document.getElementById('chart-div'));
                chart.draw(dataTable, options);
            }
        </script>

        <!--Biểu đồ đường-->
        <script type="text/javascript">
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Year', 'Sales', 'Expenses'],
                    ['2015', 1300, 700],
                    ['2016', 800, 1300],
                    ['2017', 1200, 800],
                    ['2018', 1800, 500],
                    ['2019', 1100, 760],
                    ['2020', 660, 1200],
                    ['2021', 1350, 600]
                ]);

                var options = {
                    hAxis: {title: 'Year', titleTextStyle: {color: '#333'}},
                    vAxis: {minValue: 0}
                };

                var chart = new google.visualization.AreaChart(document.getElementById('chart_div1'));
                chart.draw(data, options);
            }
        </script>
    </head>
    <body>
        <div class="static">
            <h1>Một số thống kê cơ bản</h1>
        </div>
        <!--Biểu đồ tròn-->
        <div class="static_child_cirlce">
            <div class="cirlce_order">
                <hr/>Biểu đồ số lượng truyện bán của mỗi sản phẩm trong 1 tháng theo thể loại sách<hr/>
            </div>
            <div class="cirlce">
                <div id="piechart"></div>
                <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                <script type="text/javascript">
            // Load google charts
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            // Draw the chart and set the chart values
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Task', 'Hours per Day'],
                    ['Tiên Hiệp', 15],
                    ['Huyền Huyền', 10],
                    ['Dị Giới', 5],
                    ['Kiếm Hiệp', 8],
                    ['Trọng Sinh', 5],
                    ['Tình Cảm', 5]
                ]);

                // Optional; add a title and set the width and height of the chart
                var options = {'width': 1200, 'height': 800};

                // Display the chart inside the <div> element with id="piechart"
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                chart.draw(data, options);
            }
                </script>                         
            </div>                       
        </div>

        <div class="pillar">
            <div class="pillar_static">
                <hr/>Biểu Đồ Số Lượng Sách Bán Được Của Các Tháng<hr/>
            </div>
            <div id="chart-div" style="width: 700px; height: 250px;"></div>  
        </div>
        
<!--        <div class="area">
            <div class="area_static">
                <hr/>Biểu Đồ Số Lượng Sách Trung Bình Bán Được Qua Các Năm<hr/>
            </div>
            <div id="chart_div1" style="width: 65%; height: 500px;"></div>
        </div>-->
    </body>
</html>
