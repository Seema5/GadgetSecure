<%--
  Created by IntelliJ IDEA.
  User: kamesh
  Date: 31/1/18
  Time: 11:20 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="graphLayout"/>
    <asset:javascript src="Chart.bundle.js" />
    <asset:javascript src="utils.js" />
</head>

<body>
<div class="container">
    <div class="row">
        %{--<div class="col-6" style="border: 1px solid;">--}%

        %{--</div>--}%
        %{--<div class="col-6" style="border: 1px solid;">--}%

        %{--</div>--}%

        <div class="col-6" style="height: auto;">
            <div style="width:100%;">
                <br/>
                <center><h3>SALE</h3></center>
                <canvas id="lineGraph"></canvas>

                <script>
                    var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
                    var config = {
                        type: 'line',
                        data: {
                            labels: ["January", "February", "March", "April", "May", "June", "July"],
                            datasets: [{
                                label: "Mobile",
                                backgroundColor: window.chartColors.red,
                                borderColor: window.chartColors.red,
                                data: [
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor()
                                ],
                                fill: false,
                            }, {
                                label: "Laptops",
                                fill: false,
                                backgroundColor: window.chartColors.blue,
                                borderColor: window.chartColors.blue,
                                data: [
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor()
                                ],
                            }, {
                                label: "Tablet",
                                fill: false,
                                backgroundColor: window.chartColors.green,
                                borderColor: window.chartColors.green,
                                data: [
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor()
                                ],
                            }
                            ,{
                                label: "Camera",
                                fill: false,
                                backgroundColor: window.chartColors.orange,
                                borderColor: window.chartColors.orange,
                                data: [
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor(),
                                    randomScalingFactor()
                                ],
                            }
                            ]
                        },
                        options: {
                            responsive: true,
                            title:{
                                display:true,
                                text:''
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
                                        labelString: 'Month'
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




                </script>
            </div>
        </div>
        <div class="col-6">
            <div style="width:100%;">
                <br/>
                <center><h3>TARGET</h3></center>
                <canvas id="barGraph"></canvas>

                <script>
                    var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
                    var color = Chart.helpers.color;
                    var barChartData = {
                        labels: ["January", "February", "March", "April", "May", "June", "July"],
                        datasets: [{
                            label: 'Achievement %',
                            backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                            borderColor: window.chartColors.red,
                            borderWidth: 1,
                            data: [
                                randomScalingFactor(),
                                randomScalingFactor(),
                                randomScalingFactor(),
                                randomScalingFactor(),
                                randomScalingFactor(),
                                randomScalingFactor(),
                                randomScalingFactor()
                            ]
                        }]

                    };

                    window.onload = function() {

                        var ctx = document.getElementById("lineGraph").getContext("2d");
                        window.myLine = new Chart(ctx, config);


                        var ctx = document.getElementById("barGraph").getContext("2d");
                        window.myBar = new Chart(ctx, {
                            type: 'bar',
                            data: barChartData,
                            options: {
                                responsive: true,
                                legend: {
                                    position: 'top',
                                },
                                title: {
                                    display: true,
                                    text: ''
                                }
                            }
                        });

                    };

                </script>
            </div>
        </div>

        <div class="col-12" style="border-top: 1px solid; margin-top: 2%;">

        </div>

        </div>
    </div>
</div>
</body>
</html>