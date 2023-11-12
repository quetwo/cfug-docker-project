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
            ajax: '/rest/demo/stocks/',
            drawCallback: function() {
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
                        return row.prices[row.prices.length-1].price.toFixed(2);
                    }
                },
                {
                    data: null,
                    render: function(data, type, row, meta)
                    {
                        if (row.prices.length < 2)
                        {
                            val = 0;
                            return type === 'display' ?
                                '<span style="color:black">0.00</span>' :
                                val;
                        }
                        var val = (row.prices[row.prices.length-1].price - row.prices[row.prices.length-2].price).toFixed(2);
                        var colour = val < 0 ? 'red' : 'green'
                        return type === 'display' ?
                            '<span style="color:' + colour + '">' + val + '</span>' :
                            val;
                    }
                },
                {
                    data: 'prices',
                    render: function(data, type, row, meta)
                    {
                        pricesLog = [];
                        for (stockPriceID in data)
                        {
                            pricesLog.push(data[stockPriceID].price);
                        }
                        return type === 'display' ?
                            '<span class="sparkline">' + pricesLog.toString() + '</span>' :
                            data;
                    }
                }
            ]
        });

}