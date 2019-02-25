<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="pspfai.Chart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pension Charts</title>
    <style>
        #chartdiv {
  width: 100%;
  max-height: 600px;
  height: 100vh;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            function drawGraph(x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, z1, z2, z3, z4, z5, mode) {



                am4core.useTheme(am4themes_animated);

                var chart = am4core.create("chartdiv", am4charts.XYChart3D);


                //var chart = am4core.create("chartdiv", am4charts.XYChart);
                chart.numberFormatter.numberFormat = "#,###.##";

                if (mode == "1") {
chart.data = [{
                    "salary": x1,
                    "pension": y1
                }, {
                    "salary": x2,
                    "pension": y2
                }, {
                    "salary": x3,
                    "pension": y3
                }, {
                    "salary": x4,
                    "pension": y4
                }, {
                    "salary": x5,
                    "pension": y5
                }];
                } else {

                chart.data = [{
                    "salary": x1,
                    "pension": y1,
                    "gratuity": z1
                }, {
                    "salary": x2,
                    "pension": y2,
                    "gratuity": z2
                }, {
                    "salary": x3,
                    "pension": y3,
                    "gratuity": z3
                }, {
                    "salary": x4,
                    "pension": y4,
                    "gratuity": z4
                }, {
                    "salary": x5,
                    "pension": y5,
                    "gratuity": z5
                }];
}
                

                chart.padding(40, 40, 40, 40);

                var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
                categoryAxis.renderer.grid.template.location = 0;
                categoryAxis.dataFields.category = "salary";
                categoryAxis.renderer.minGridDistance = 60;

                chart.legend = new am4charts.Legend();
                chart.legend.useDefaultMarker = true;
                var marker = chart.legend.markers.template.children.getIndex(0);
                marker.cornerRadius(12, 12, 12, 12);
                marker.strokeWidth = 2;
                marker.strokeOpacity = 1;
                marker.stroke = am4core.color("#ccc");

                var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());

                //var series = chart.series.push(new am4charts.ColumnSeries());
                //series.dataFields.categoryX = "country";
                //series.dataFields.valueY = "visits";
                //series.tooltipText = "{valueY.value}"
                //series.columns.template.strokeOpacity = 0;

                chart.cursor = new am4charts.XYCursor();



                var series = chart.series.push(new am4charts.ColumnSeries3D());
                series.dataFields.categoryX = "salary";
                series.dataFields.valueY = "pension";
                series.tooltipText = "{valueY.value}";
                series.name = "Pension";
                series.columns.template.strokeOpacity = 0;

                if (mode =="2") {

                var series2 = chart.series.push(new am4charts.ColumnSeries3D());
                series2.dataFields.valueY = "gratuity";
                series2.dataFields.categoryX = "salary";
                series2.name = "Gratuity";
                    series2.clustered = false;

                }
                //series2.columns.template.tooltipText = "GDP grow in {category} (2017): [bold]{valueY}[/]";

                chart.cursor = new am4charts.XYCursor();

                // as by default columns of the same series are of the same color, we add adapter which takes colors from chart.colors color set
                //series.columns.template.adapter.add("fill", function (fill, target) {
                //    return chart.colors.getIndex(target.dataItem.index);
                //});

                //series2.columns.template.adapter.add("fill", function (fill, target) {
                //    return chart.colors.getIndex(target.dataItem.index);
                //});



            }
        </script>

        <% 

            double s1 = Convert.ToDouble(Request.QueryString["salary"]);
            double pension1 = Convert.ToDouble(Request.QueryString["pension1"]);
            double pension2 = Convert.ToDouble(Request.QueryString["pension2"]);
            double factor = Math.Floor(s1 / 3);

            double x1 = 0;
            double y1 = 0;
            double z1 = 0;
            double x2 = 0;
            double y2 = 0;
            double z2 = 0;
            double x3 = 0;
            double y3 = 0;
            double z3 = 0;
            double x4 = 0;
            double y4 = 0;
            double z4 = 0;
            double x5 = 0;
            double y5 = 0;
            double z5 = 0;



            if (Request.QueryString["mode"] == "1")
            {

                x1 = factor;
                y1 = (Convert.ToDouble(Request.QueryString["prior04"]) / 600 * x1) + (Convert.ToDouble(Request.QueryString["post04"]) / 960 * x1);

                x2 = factor * 2;
                y2 = (Convert.ToDouble(Request.QueryString["prior04"]) / 600 * x2) + (Convert.ToDouble(Request.QueryString["post04"]) / 960 * x2);

                x3 = s1;
                y3 = pension1 + pension2;

                x4 = factor * 4;
                y4 = (Convert.ToDouble(Request.QueryString["prior04"]) / 600 * x4) + (Convert.ToDouble(Request.QueryString["post04"]) / 960 * x4);

                x5 = factor * 5;
                y5 = (Convert.ToDouble(Request.QueryString["prior04"]) / 600 * x5) + (Convert.ToDouble(Request.QueryString["post04"]) / 960 * x5);

            }
            else if (Request.QueryString["mode"] == "2")
            {

                double p1 = 0;
                double p2 = 0;

                x1 = factor;
                p1 = Convert.ToDouble(Request.QueryString["prior04"]) / 600 * x1;
                p2 = Convert.ToDouble(Request.QueryString["post04"]) / 960 * x1;
                y1 = (p1 * 3 / 4) + (p2 * 3 / 4);
                z1 = (p1 / 4 * 12.5) + (p2 / 4 * 12.5);

                x2 = factor * 2;
                p1 = Convert.ToDouble(Request.QueryString["prior04"]) / 600 * x2;
                p2 = Convert.ToDouble(Request.QueryString["post04"]) / 960 * x2;
                y2 = (p1 * 3 / 4) + (p2 * 3 / 4);
                z2 = (p1 / 4 * 12.5) + (p2 / 4 * 12.5);

                x3 = s1;
                p1 = Convert.ToDouble(Request.QueryString["prior04"]) / 600 * x3;
                p2 = Convert.ToDouble(Request.QueryString["post04"]) / 960 * x3;
                y3 = (p1 * 3 / 4) + (p2 * 3 / 4);
                z3 = (p1 / 4 * 12.5) + (p2 / 4 * 12.5);

                x4 = factor * 4;
                p1 = Convert.ToDouble(Request.QueryString["prior04"]) / 600 * x4;
                p2 = Convert.ToDouble(Request.QueryString["post04"]) / 960 * x4;
                y4 = (p1 * 3 / 4) + (p2 * 3 / 4);
                z4 = (p1 / 4 * 12.5) + (p2 / 4 * 12.5);

                x5 = factor * 5;
                p1 = Convert.ToDouble(Request.QueryString["prior04"]) / 600 * x5;
                p2 = Convert.ToDouble(Request.QueryString["post04"]) / 960 * x5;
                y5 = (p1 * 3 / 4) + (p2 * 3 / 4);
                z5 = (p1 / 4 * 12.5) + (p2 / 4 * 12.5);

            }
        %>
        <div style="width:800px;">
        <div id="chartdiv"></div>
        <script src="assets/amcharts4/core.js"></script>
        <script src="assets/amcharts4/charts.js"></script>
        <script src="assets/amcharts4/themes/animated.js"></script>
        <script type="text/javascript">
            drawGraph(<%=x1%>,<%=y1%>,<%=x2%>,<%=y2%>,<%=x3%>,<%=y3%>,<%=x4%>,<%=y4%>,<%=x5%>,<%=y5%>,
                                                    <%=z1%>, <%=z2%>, <%=z3%>, <%=z4%>, <%=z5%>,<%=Request.QueryString["mode"]%>);
        </script>

</div>

    </form>
</body>
</html>
