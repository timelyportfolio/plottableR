HTMLWidgets.widget({

  name: 'plottableR',

  type: 'output',

  initialize: function(el, width, height) {

    return {  };

  },

  renderValue: function(el, x, instance) {
    d3.select(el).append("svg")

    var scales = {};
    var axes = {};
    var plots = {};

    Object.keys(x.scales).forEach(function(d){
      scales[d] = new Plottable.Scale[x.scales[d].type]();
    })

    Object.keys(x.axes).forEach(function(d){
      axes[d] = new Plottable.Axis[x.axes[d].type](
        scales[x.axes[d].scale],
        x.axes[d].location
      );
    })

    Object.keys(x.plots).forEach(function(d){
      plots[d] = new Plottable.Plot[x.plots[d].type](
        scales.xScale,
        scales.yScale,
        true
      )
        .addDataset( HTMLWidgets.dataframeToD3( x.data ) )
        .project( "x", "name", scales["xScale"] )
        .project( "y", "height", scales["yScale"] )
    })

    var plot = new Plottable.Component.Table([
      [ axes.yAxis, plots.bar ],
      [ null, axes.xAxis ]
    ])

    plot.renderTo( d3.select(el).select("svg") );

  },

  resize: function(el, width, height, instance) {

  }

});
