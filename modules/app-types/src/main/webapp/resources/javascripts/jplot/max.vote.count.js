var maxVotesReceived = 0;
var timePeriod = 6000;


function getMaxVotesCount (votes) {
    for (var i = 0; i < votes.length; i++) {
        if (maxVotesReceived < votes [i]){
            maxVotesReceived = votes[i];
        }
    }
    return maxVotesReceived;
}

function createBarChartOptions() {
    var chart;
    chart = new Highcharts.Chart({
        chart: {
            renderTo: 'chartDiv',
            defaultSeriesType: 'column',
            margin: [ 15, 50, 50, 80],
            width:490
        },
        title: {
            text: ''
        },
        xAxis: {
            categories: jsonObj.xAxis,
            labels: {
                rotation: -45,
                align: 'right',
                style: {
                    font: 'normal 13px Verdana, sans-serif'
                }
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Votes'
            }
        },
        legend: {
            enabled: false
        },
        tooltip: {
            formatter: function() {
                return '<b>'+ this.x +'</b>'+ ' : ' + this.y + ' Votes';
            }
        },
        series: [{
            name: 'Votes',
            data : jsonObj.pageHits,
            dataLabels: {
                enabled: true,
                rotation: -90,
                color: '#FFFFFF',
                align: 'right',
                x: -3,
                y: 10,
                formatter: function() {
                    return this.y;
                },
                style: {
                    font: 'normal 13px Verdana, sans-serif'
                }
            }
        }]
    });


    //    });


}


function autoRefreshChart () {
    //      clearTimer ();
    var timeoutID = setInterval(function() { createPieChart(); }, timePeriod);
    //        var timeoutID = setInterval("createPieChart()" ,timePeriod);
}

function drawPieChart (pieChartData) {
    var chart;
    chart = new Highcharts.Chart({
        chart: {
            renderTo: 'chartDiv',
            margin: [ -15, 30, 50, -50]
            //            width:490
        },
        title: {
            text: ''
        },
        plotArea: {
            shadow: null,
            borderWidth: null,
            backgroundColor: null
        },
        tooltip: {
            formatter: function() {
                return '<b>'+ this.point.name +'</b>: '+ this.y;
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    formatter: function() {
                        if (this.y > 5) return this.point.name;
                    },
                    color: 'white',
                    style: {
                        font: '13px Trebuchet MS, Verdana, sans-serif'
                    }
                }
            }
        },
        legend: {
            layout: 'vertical',
            style: {
                left: '390px',
                bottom: 'auto',
                right: 'auto',
                top: '20px'
            }
        },
        series: [{
            type: 'pie',
            name: 'Browser share',
            data:pieChartData
        }]
    });
}