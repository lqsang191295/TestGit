import moment from 'moment';

// Tạo cấu trúc map data
const dataStruct = new Map();
dataStruct.set('matchId', 'id');
dataStruct.set('status', 'Status_match');
dataStruct.set('updatedAt', 'EndDate');

const MOCK_DATA = [
  {id: 1, Status_match: "finished", EndDate: '2019-07-25T15:24:06.679Z'},
  {id: 1, Status_match: "finished", EndDate: '2019-07-25T12:24:06.679Z'},
  {id: 1, Status_match: "finished", EndDate: '2019-07-25T15:24:06.679Z'},
  {id: 1, Status_match: "finished", EndDate: '2019-07-25T13:24:06.679Z'},
  {id: 2, Status_match: "finished", EndDate: '2019-07-25T14:24:06.679Z'},
  {id: 3, Status_match: "finished", EndDate: '2019-07-25T14:24:06.679Z'},
  {id: 4, Status_match: "finished", EndDate: '2019-07-25T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-25T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-24T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-24T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-24T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-24T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-23T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-23T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-22T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-22T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-22T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-22T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-21T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-21T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-21T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-21T15:24:06.679Z'},
  {id: 5, Status_match: "finished", EndDate: '2019-07-21T15:24:06.679Z'},
]

class APIMapping {
  constructor(resources) {
    this._resources = resources;
  }

  map() {
    var results = [];
    if(this._resources && this._resources.length > 0) {
      this._resources.forEach(valRes => {
        let valueMap = {};
        for (var [key, value] of dataStruct ) {
          valueMap[key] = valRes[value];
        }
        results.push(valueMap);
      });
    }
    return results;
  }
}

class ChartApi extends APIMapping {
  constructor(resources) {
    super(resources)
  }

  getData () {
    return this.map(this._resources);
  }
}

const getDataChartFromApi = () => {
    const dataChartAPI = MOCK_DATA;
    const dataChartAPIMap = new ChartApi(dataChartAPI).getData();
    return dataChartAPIMap;
}

const getDataChartBySevenDayAgo = () => {
    var dataChartFromApi = getDataChartFromApi();
    var labelsChart = [], datasets = [], labelDataset = 'Số lượng người chơi', data = [], backgroundColor = [
        'rgba(255, 99, 132, 0.6)',
        'rgba(54, 162, 235, 0.6)',
        'rgba(255, 206, 86, 0.6)',
        'rgba(75, 192, 192, 0.6)',
        'rgba(153, 102, 255, 0.6)',
        'rgba(255, 159, 64, 0.6)',
        'rgba(255, 99, 132, 0.6)'
      ], dataChart = {};

    for(var i = 6; i >= 0; i --) {
        var dayLabel = moment().subtract(i,'d').format('DD/MM/YYYY');
        labelsChart.push(dayLabel);
        var countDay = dataChartFromApi.filter((val) => {
            return moment(val.updatedAt).format('DD/MM/YYYY') == dayLabel
        }).length;
        data.push(countDay);
    }  
    datasets.push({
        label: labelDataset,
        data: data,
        backgroundColor: backgroundColor
    })

    dataChart.labels = labelsChart;
    dataChart.datasets = datasets;

    return dataChart;
}

const getLabelsChartHour = () => {
    var i = 24;
    var labels = [];
    for(var _i = 0; _i < i; _i++){
        var str = ('0' + _i).slice(-2) + ':00'
        labels.push(str)
    }
    return labels;
}

const compareHour = (hour1, hour2, hour3) => {
  if(hour1 && hour2) {
    return moment(moment(hour1).format("hh:mm"), 'hh:mm').isBefore(moment(hour2, 'hh:mm')) && 
    moment(moment(hour1).format("hh:mm"), 'hh:mm').isAfter(moment(hour3, 'hh:mm'));
  }
  return false;
}

const getRandomNumber = () => {
    var dataChartFromApi = getDataChartFromApi();
    var dataChartDayAgo = dataChartFromApi.filter((val) => {
      return moment().subtract(1,'d').format('DD/MM/YYYY') == moment(val.updatedAt).format('DD/MM/YYYY')
    })

    console.log("dataChartDayAgo", dataChartDayAgo)

    var data = [];
    for(var i = 1; i <= 24; i++) {
      var strHourAfter = ('0' + (i - 1)).slice(-2) + ':00';
      var strHourBefore = ('0' + i).slice(-2) + ':00';
      var countHour = dataChartDayAgo.filter((val) => {
        return compareHour(val.updatedAt, strHourBefore, strHourAfter)
      }).length;
      data.push(countHour);
      //data.push(Math.round(Math.random() * 100))
    }
    return data;
}

var configChartHour = {
    data: {
      labels: getLabelsChartHour(),
      datasets: [{
        label: "Số lượng người chơi",
        data: getRandomNumber(),
      }]
    },
    options: {
      scales: {
        xAxes: [{
          type: 'time',
          time: {
            format: "HH:mm:ss a",
            unit: 'hour',
            unitStepSize: 6,
            displayFormats: {
              'minute': 'HH:mm a',
              'hour': 'HH:mm a',
              min: '00:00',
              max: '24:00'
            },
          }
        }],
      },
    }
  };

const getDataChartByHour = () => {
    return configChartHour;
}


const chartServices = {
    getDataChartBySevenDayAgo, 
    getDataChartByHour
}

export default chartServices;

