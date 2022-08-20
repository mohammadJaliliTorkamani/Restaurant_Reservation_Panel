function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
    }
    return null;
}

google.load('visualization', '1.0', {
    'packages': ['corechart']
});
google.setOnLoadCallback(drawChart);

function drawChart() {
    intervals = document.getElementById('chart_intervals');
    intervals.addEventListener('change', function (e) {
        clicked_pos = e.target.value
        drawOnPage(clicked_pos)
    });
    drawOnPage(1)
}

function drawOnPage(pos) {
    var barArray = new Array();
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Topping');
    data.addColumn('number', 'تعداد');
    jQuery.ajax({
        type: "GET",
        url: 'https://lexeen-service.ir/api/panel_api/food_api/ordered_foods_chart.php',
        dataType: 'json',
        data: {
            Token: getCookie('Lexin_Token'),
            mode: pos
        },
        success: function (obj, textstatus) {
            if (obj != null) {
                obj.forEach(function (data, index) {
                    barArray.push([data.name, data.total_order_count]);
                });
                data.addRows(barArray);
                var options = {
                    'title': ''
                };
                var pieChart = new google.visualization.PieChart(document.getElementById('pie_chart_div'));
                pieChart.draw(data, options);
                var barChart = new google.visualization.BarChart(document.getElementById('bar_chart_div'));
                barChart.draw(data, options);
            } else if (obj == null) {
                window.location.replace("https://panel.lexeen-service.ir/");
            }
        }
    });
}

$(document).ready(function () {
    if ($.browser.mozilla) {
        $(window).bind('resize', function (e) {
            if (window.RT)
                clearTimeout(window.RT);
            window.RT = setTimeout(function () {
                this.location.reload(false); /* false to get page from cache */
            }, 200);
        });
    } else {
        $(window).resize(function () {
            drawChart();
        });
    }
});