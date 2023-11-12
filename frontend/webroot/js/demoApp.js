document.addEventListener("DOMContentLoaded",pageInitSuccess);

// -------------------------------
// Global Variables for page
// -------------------------------

var tblStocks;

// -------------------------------
// Global Functions
// -------------------------------
function pageInitSuccess()
{
    console.log("Page loaded successfully!");

    tblStocks = new DataTable('#tblStocks',
        {
            paging: false,
            drawCallback: function()
                {
                    $('.sparkline')
                        .map(function() {
                            return $('canvas', this).length ? null : this;
                        })
                        .sparkline('html', {
                            type: 'line',
                            width: '250px'
                        })
                },
            columns: [
                {
                    data: 'name'
                },
                {
                    data: 'symbol'
                },
                {
                    data: null,
                    render: function(data, type, row, meta)
                    {
                        return row.last[row.last.length - 1].toFixed(2);
                    }
                },
                {
                    data: null,
                    render: function(data, type, row, meta)
                    {
                        var val = (row.last[row.last.length - 1] - row.last[row.last.length - 2]).toFixed(2);
                        var colour = val < 0 ? 'red' : 'green'
                        return type === 'display' ?
                            '<span style="color:' + colour + '">' + val + '</span>' :
                            val;
                    }
                },
                {
                    data: 'last',
                    render: function(data, type, row, meta) {
                        return type === 'display' ?
                            '<span class="sparkline">' + data.toString() + '</span>' :
                            data;
                    }
                }]
        });

}