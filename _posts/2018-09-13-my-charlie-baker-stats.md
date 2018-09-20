---
layout: post
title:  "My Charlie Baker Stats"
description: "After four years with Governor Baker, what are the data trends for the issues I care about?"
date:   2018-09-13 22:00:00 -0400
---

With state elections approaching in November, I thought I'd look at the data of
some of the issues I care about, trended over the last 4 years under Charlie Baker.

* [Healthcare](#healthcare)
  * [Costs](#costs)
  * [Quality: Readmission rates](#quality-readmission-rates)
  * [Percent Uninsured](#percent-uninsured)
  * [Opioid deaths](#opioid-deaths)
  * [Opioid emergencies](#opioid-emergencies)
* [Transit](#transit)
  * [Commuter rail reliability](#commuter-rail-reliability)
  * [Subway reliability](#subway-reliability)
  * [Key bus route](#key-bus-route-reliability)
  * [Structurally deficient bridges](#structurally-deficient-bridges)
* [Housing](#housing)
  * [Average price of a single-family home](#average-price-of-a-single-family-home)
  * [Another bubble?](#another-bubble)
* [Economy](#economy)
  * [Real median household income](#real-median-household-income)
  * [Income inequality](#income-inequality)
* [Education](#education)
  * [In-state tuition: UMass Amherst](#in-state-tuition-umass-amherst)
  * [In-state tuition: UMass Boston](#in-state-tuition-umass-boston)
* [Ethics](#ethics)
  * [State Police crisis](#state-police-crisis)
  * [Hate crimes](#hate-crimes)

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>

---

# Healthcare

## Costs

Total health care expenditures, public and private combined, increased 10.7%
during Baker's term, with per-capita costs rising $860 in 3 years.

> "[Commercial insurance] members and employers saw
cost-sharing and premium obligations rise faster than the
benchmark, inflation, and wages."

<canvas id="chart_healthcare" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_healthcare").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "2014", "2015", "2016", "2017"
          ],
          datasets: [{
              label: 'Healthcare spending per capita',
              backgroundColor: 'rgba(102,0,0,0.6)',
              data: [
                8042, 8429, 8663, 8907
              ]
          }]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 6000
                  }
              }]
          }
      }
  });
</script>

> Source: [2018 Annual Report on the Performance of the Massachusetts Health Care System](http://www.chiamass.gov/annual-report/)

## Quality: Readmission rates

Readmission rates, or how often someone discharged from a hospital be readmitted
within 30 days, is a key indicator of how well our health system takes
care of us. After slight improvements during the Patrick administration,
these largely-preventable readmissions under Baker are inching back up.

<canvas id="chart_healthcare-readmission" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_healthcare-readmission").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "2011", "2012", "2013", "2014", "2015", "2016"
          ],
          datasets: [{
              label: 'Readmission rate',
              backgroundColor: 'rgba(0,0,102,0.6)',
              data: [
                16.2, 15.7, 15.3, 15.4, 15.9, 15.9
              ]
          }]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 14,
                      max: 17
                  }
              }]
          }
      }
  });
</script>

## Percent Uninsured

After steady decreases in residents without health insurance, the ranks of
the uninsured are rising again.

<canvas id="chart_health_coverage" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_health_coverage").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"
          ],
          datasets: [{
              label: 'Percent uninsured',
              backgroundColor: 'rgba(0,0,102,0.6)',
              data: [
                (271090 / 6495905) * 100,
                (285717 / 6478067) * 100,
                (276940 / 6507596) * 100,
                (254295 / 6566851) * 100,
                (246666 / 6613654) * 100,
                (218722 / 6668348) * 100,
                (189273 / 6718090) * 100,
                (171059 / 6736017) * 100,
                (189801 / 6785622) * 100
              ]
          }]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0
                  }
              }]
          }
      }
  });
</script>

> Source: [SELECTED CHARACTERISTICS OF THE UNINSURED IN THE UNITED STATES](https://factfinder.census.gov/faces/tableservices/jsf/pages/productview.xhtml?pid=ACS_17_1YR_S2702&prodType=table)

## Opioid deaths

It's hard to live in Massachusetts and not have family members affected by
the opioid crisis. After a serious increase in opioid deaths during Baker's
second year in office, there was a slight dip in 2017, but 2018 isn't looking
much better.

<canvas id="chart_opioids" style="width:100%; height:20em;"></canvas>
<script>
  Chart.defaults.global.defaultFontFamily = 'Rubik';
  var ctx = document.getElementById("chart_opioids").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "1H 2015", "2H 2015",
            "1H 2016", "2H 2016",
            "1H 2017", "2H 2017",
            "1H 2018"
          ],
          datasets: [{
              label: 'Deaths',
              backgroundColor: 'rgba(0,0,0,0.6)',
              data: [
                451 + 392, 425 + 417,
                507 + 539, 551 + 557,
                515 + 460, 568 + 526,
                519 + 498
              ]
          }]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  ticks: {
                      beginAtZero: true
                  }
              }]
          }
      }
  });
</script>

> Source: [Data Brief: Opioid‐Related Overdose Deaths Among Massachusetts Residents](https://www.mass.gov/files/documents/2018/08/24/Opioid-related%20Overdose%20Deaths%20among%20MA%20Residents%20-%20August%202018_0.pdf), Massachusetts Department of Public Health

## Opioid emergencies

We can also look at opioid-related emergency incidents: the trend continues to increase.

<canvas id="chart_opioids_ems" style="width:100%; height:20em;"></canvas>
<script>
  Chart.defaults.global.defaultFontFamily = 'Rubik';
  var ctx = document.getElementById("chart_opioids_ems").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "2014", "2015", "2016", "2017"
          ],
          datasets: [{
              label: 'Opioid-Related Incidents',
              backgroundColor: 'rgba(0,0,0,0.6)',
              data: [
                13226, 17252, 20978, 21814
              ]
          }]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 4000
                  }
              }]
          }
      }
  });
</script>

> Source: [MA Opioid-Related EMS Incidents
2013-2017](https://www.mass.gov/files/documents/2018/05/22/Emergency%20Medical%20Services%20Data%20-%20May%202018.pdf), Massachusetts Department of Public Health

---

# Transit

All the visualizations below are from data provided by the MBTA, which is
limited in both what they measure and the months for which data is available.

## Commuter Rail Reliability

6 out of 15 lines have worse performance in 2018 than in 2016. 13 out of 15
still do not meet 90% reliability, what I'd call "only late to work once
every two weeks." (Higher numbers are better.)

<canvas id="chart_trains_year" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_trains_year").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "Fairmount", "Fitchburg", "Franklin", "Greenbush", "Haverhill", "Kingston", "Lowell", "Middleboro", "Needham", "Newburyport", "Providence", "Rockport", "Stoughton", "Worcester"
          ],
          datasets: [
            {
              label: '2016',
              backgroundColor: 'rgba(51,0,0,0.6)',
              data: [ 95.2, 75.2, 85.6, 95.9, 85.7, 94.0, 89.1, 91.9, 85.7, 85.0, 86.5, 87.5, 80.2, 70.2 ]
            },
            {
              label: '2017',
              backgroundColor: 'rgba(153,0,0,0.6)',
              data: [ 96.95254680017415, 84.18381731040316, 83.51358480611975, 92.37455551165547, 85.47430830039525, 92.03849518810149, 89.47368421052632, 89.58415841584159, 83.86714116251483, 84.5943482224248, 85.46986048960252, 84.85207100591717, 79.20792079207921, 75.79462102689487 ]
            },
            {
              label: '2018',
              backgroundColor: 'rgba(255,0,0,0.6)',
              data: [ 95.35175879396985, 84.07437348423605, 81.77358490566039, 91.0582908885116, 88.71196036801132, 88.23899371069183, 86.00528102602792, 87.49292586304472, 86.75721561969439, 85.60175054704595, 84.87933634992459, 88.73159682899208, 80.79320113314448, 86.14928590676368 ]
            }
          ]
      },
      options: {
          legend: {
            display: true
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 60,
                      max: 100
                  }
              }]
          }
      }
  });
</script>

> Source: [MBTA reliability data](http://www.mbtabackontrack.com/performance/index.html#/download)

## Subway Reliability

The only MBTA data available for the subway is an estimate of how many
people "wait too long" for a train to arrive at each station, each day. (This,
of course, doesn't capture my most frustrating criticism: the trains which
arrive and are so full that I can't get on&mdash;but it's something.)

After slight improvements in 2017, wait times are increasing
again in 2018. The Red Line is worse today than in 2016. The Green Line,
despite any improvement,is still way behind the other lines. (Lower numbers are
better.)

<canvas id="chart_subway_year" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_subway_year").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "Blue", "Orange", "Red", "Green-B", "Green-C", "Green-D", "Green-E"
          ],
          datasets: [
            {
              label: '2016',
              backgroundColor: 'rgba(0,0,51 ,0.6)',
              data: [
                7.203523853697166, 6.631610277462581, 8.509444494188516, 22.918853624907452, 28.75003194988685, 25.816507361087677, 28.074129550079128
              ]
            },
            {
              label: '2017',
              backgroundColor: 'rgba(0,0,153,0.6)',
              data: [ 4.542209259614028, 6.047730960829798, 6.543453832736461, 19.19233601195048, 23.801357162252547, 22.446044877264278, 22.727505513214833 ]
            },
            {
              label: '2018',
              backgroundColor: 'rgba(0,0,255,0.6)',
              data: [ 6.2816064831485425, 6.7839707165992635, 9.323984713125611, 21.29824315201901, 24.146905967131925, 23.39854733118081, 23.552484047747665 ]
            }
          ]
      },

      options: {
          legend: {
            display: true
          },
          scales: {
              yAxes: [{
                  ticks: {

                  }
              }]
          }
      }
  });
</script>

> Source: [MBTA reliability data](http://www.mbtabackontrack.com/performance/index.html#/download)

## Key Bus Route Reliability

Buses, like commuter rail, are measured by on-time percentage at each stop. Only
3 lines had worse reliability in 2018 compared to 2016, but only two key routes
reach even 80% reliability. [The Globe created a great interactive piece](https://apps.bostonglobe.com/metro/graphics/2018/08/111-bus/) about
the continuing agony of the 111 bus.

<canvas id="chart_bus_year" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_bus_year").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [ 57, 66, 71, 73, 77, 15, 22, 23, 28, 32, 39, 1, 111, 116, 117 ],
          datasets: [
            {
              label: '2016',
              backgroundColor: 'rgba(51 ,0,0,0.6)',
              data: [ 75.4641877024254, 73.63120208303197, 76.70420603137377, 83.38556458720987, 73.01898472967395, 71.37667304015297, 71.69448010269576, 73.86945155189676, 70.48113810741688, 80.3840897443198, 78.3129364585494, 71.74389540472987, 77.65762918482065, 70.73509015256589, 73.57554740110488 ]
            },
            {
              label: '2017',
              backgroundColor: 'rgba(153,0,0,0.6)',
              data: [ 75.57202133965619, 73.1402429405269, 79.11973057716874, 82.57912094881715, 74.95350787056591, 74.83058674833504, 74.04115477412019, 74.338658209896, 71.31524802293492, 78.86550484347448, 78.75138879039312, 71.45463880331918, 77.26630279177782, 70.87564075556492, 74.20192131360295 ]
            },
            {
              label: '2018',
              backgroundColor: 'rgba(255,0,0,0.6)',
              data: [ 74.20501654549703, 73.92246568745485, 80.32075471698114, 84.09233461618875, 75.65967114206438, 76.36142292937728, 76.0488990534013, 76.33522300779939, 72.82957183694742, 78.45276952306718, 75.91396193662638, 71.15411955378215, 77.94358548571685, 71.81516062668145, 73.62291150046751 ]
            }
          ]
      },
      options: {
          legend: {
            display: true
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 60,
                      max: 100
                  }
              }]
          }
      }
  });
</script>

> Source: [MBTA reliability data](http://www.mbtabackontrack.com/performance/index.html#/download)

## Structurally deficient bridges

In August, the [Globe reported on the 473 bridges rated in "poor" condition](https://www.bostonglobe.com/metro/2018/08/15/map-here-are-bridges-poor-condition-mass/USklBTgC4d3f4Pm60XXsQN/story.html)
in Massachusetts. Using both the FHA's "poor" and "structurally deficient"
classifications, the trends below are not improving.

<canvas id="chart_bridges" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_bridges").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [ 2014, 2015, 2016, 2017 ],
          datasets: [
            {
              label: '"Poor" bridges',
              backgroundColor: 'rgba(51 ,0,0,0.6)',
              data: [ 446, 450, 468, 473 ]
            },
            {
              label: '"Structurally deficient" bridges',
              backgroundColor: 'rgba(153 ,0,0,0.6)',
              data: [ 459, 461, 483, 482 ]
            },
          ]
      },
      options: {
          legend: {
            display: true
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 300
                  }
              }]
          }
      }
  });
</script>

> Source: [Federal Highway Administration National Bridge Inventory](https://www.fhwa.dot.gov/bridge/britab.cfm)

---

# Housing

## Average price of a single-family home

I often joke that Skokie, IL is Boston's affordable western suburb, given
the number of our friends who have resettled there from Massachusetts in search
of modest family housing. Is it getting any easier to buy a house? Home prices
that continue to rise, while median income drops, suggests not.

<canvas id="chart_housing" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_housing").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "June 2014", "June 2015", "June 2016", "June 2017", "June 2018"
          ],
          datasets: [{
              label: 'Average home price',
              backgroundColor: 'rgba(0,102,0,0.6)',
              data: [
                359900, 365000, 372000, 395000, 420000
              ]
          }]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 200000
                  }
              }]
          }
      }
  });
</script>

> Source: [Warren Group](https://www.thewarrengroup.com/category/press-releases/) press releases, 2015-2018

## Another bubble?

If we look at the longer historical trend in House Price Index, we may be on our
way to another housing bubble.

<canvas id="chart_hpi" style="width:100%; height:15em;"></canvas>
<script>
  var ctx = document.getElementById("chart_hpi").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          datasets: [{
              label: 'House Price Index',
              pointRadius: 0,
              borderWidth: 2,
              backgroundColor: 'rgba(0,0,0,0.6)',
              data: [
                { t: "1980-01-01", y: "100.00" },
                { t: "1980-04-01", y: "104.29" },
                { t: "1980-07-01", y: "108.80" },
                { t: "1980-10-01", y: "109.34" },
                { t: "1981-01-01", y: "113.01" },
                { t: "1981-04-01", y: "119.40" },
                { t: "1981-07-01", y: "122.00" },
                { t: "1981-10-01", y: "122.32" },
                { t: "1982-01-01", y: "124.06" },
                { t: "1982-04-01", y: "125.25" },
                { t: "1982-07-01", y: "127.32" },
                { t: "1982-10-01", y: "128.52" },
                { t: "1983-01-01", y: "130.85" },
                { t: "1983-04-01", y: "136.83" },
                { t: "1983-07-01", y: "143.87" },
                { t: "1983-10-01", y: "148.92" },
                { t: "1984-01-01", y: "157.26" },
                { t: "1984-04-01", y: "165.53" },
                { t: "1984-07-01", y: "175.40" },
                { t: "1984-10-01", y: "181.55" },
                { t: "1985-01-01", y: "191.24" },
                { t: "1985-04-01", y: "205.69" },
                { t: "1985-07-01", y: "218.79" },
                { t: "1985-10-01", y: "233.15" },
                { t: "1986-01-01", y: "242.56" },
                { t: "1986-04-01", y: "254.62" },
                { t: "1986-07-01", y: "267.07" },
                { t: "1986-10-01", y: "279.81" },
                { t: "1987-01-01", y: "289.29" },
                { t: "1987-04-01", y: "296.44" },
                { t: "1987-07-01", y: "305.54" },
                { t: "1987-10-01", y: "307.87" },
                { t: "1988-01-01", y: "311.11" },
                { t: "1988-04-01", y: "316.60" },
                { t: "1988-07-01", y: "315.42" },
                { t: "1988-10-01", y: "317.67" },
                { t: "1989-01-01", y: "314.98" },
                { t: "1989-04-01", y: "312.89" },
                { t: "1989-07-01", y: "317.62" },
                { t: "1989-10-01", y: "318.37" },
                { t: "1990-01-01", y: "314.15" },
                { t: "1990-04-01", y: "305.27" },
                { t: "1990-07-01", y: "299.96" },
                { t: "1990-10-01", y: "292.97" },
                { t: "1991-01-01", y: "289.92" },
                { t: "1991-04-01", y: "286.91" },
                { t: "1991-07-01", y: "283.60" },
                { t: "1991-10-01", y: "286.33" },
                { t: "1992-01-01", y: "285.42" },
                { t: "1992-04-01", y: "281.96" },
                { t: "1992-07-01", y: "283.54" },
                { t: "1992-10-01", y: "284.17" },
                { t: "1993-01-01", y: "282.26" },
                { t: "1993-04-01", y: "283.97" },
                { t: "1993-07-01", y: "285.00" },
                { t: "1993-10-01", y: "286.72" },
                { t: "1994-01-01", y: "286.93" },
                { t: "1994-04-01", y: "284.12" },
                { t: "1994-07-01", y: "283.87" },
                { t: "1994-10-01", y: "281.58" },
                { t: "1995-01-01", y: "283.21" },
                { t: "1995-04-01", y: "288.52" },
                { t: "1995-07-01", y: "293.19" },
                { t: "1995-10-01", y: "294.83" },
                { t: "1996-01-01", y: "298.46" },
                { t: "1996-04-01", y: "298.86" },
                { t: "1996-07-01", y: "300.19" },
                { t: "1996-10-01", y: "304.02" },
                { t: "1997-01-01", y: "306.72" },
                { t: "1997-04-01", y: "311.32" },
                { t: "1997-07-01", y: "315.84" },
                { t: "1997-10-01", y: "320.72" },
                { t: "1998-01-01", y: "324.98" },
                { t: "1998-04-01", y: "331.84" },
                { t: "1998-07-01", y: "340.09" },
                { t: "1998-10-01", y: "345.08" },
                { t: "1999-01-01", y: "352.06" },
                { t: "1999-04-01", y: "363.62" },
                { t: "1999-07-01", y: "378.67" },
                { t: "1999-10-01", y: "387.47" },
                { t: "2000-01-01", y: "404.01" },
                { t: "2000-04-01", y: "416.98" },
                { t: "2000-07-01", y: "432.24" },
                { t: "2000-10-01", y: "442.62" },
                { t: "2001-01-01", y: "454.54" },
                { t: "2001-04-01", y: "468.30" },
                { t: "2001-07-01", y: "484.05" },
                { t: "2001-10-01", y: "493.82" },
                { t: "2002-01-01", y: "508.16" },
                { t: "2002-04-01", y: "526.82" },
                { t: "2002-07-01", y: "542.23" },
                { t: "2002-10-01", y: "554.47" },
                { t: "2003-01-01", y: "565.39" },
                { t: "2003-04-01", y: "574.54" },
                { t: "2003-07-01", y: "585.25" },
                { t: "2003-10-01", y: "610.26" },
                { t: "2004-01-01", y: "620.52" },
                { t: "2004-04-01", y: "635.04" },
                { t: "2004-07-01", y: "665.60" },
                { t: "2004-10-01", y: "676.62" },
                { t: "2005-01-01", y: "691.03" },
                { t: "2005-04-01", y: "707.36" },
                { t: "2005-07-01", y: "718.32" },
                { t: "2005-10-01", y: "723.38" },
                { t: "2006-01-01", y: "724.21" },
                { t: "2006-04-01", y: "715.25" },
                { t: "2006-07-01", y: "709.82" },
                { t: "2006-10-01", y: "711.77" },
                { t: "2007-01-01", y: "706.17" },
                { t: "2007-04-01", y: "695.83" },
                { t: "2007-07-01", y: "682.37" },
                { t: "2007-10-01", y: "682.62" },
                { t: "2008-01-01", y: "679.17" },
                { t: "2008-04-01", y: "657.78" },
                { t: "2008-07-01", y: "641.55" },
                { t: "2008-10-01", y: "642.43" },
                { t: "2009-01-01", y: "642.50" },
                { t: "2009-04-01", y: "626.77" },
                { t: "2009-07-01", y: "615.99" },
                { t: "2009-10-01", y: "617.07" },
                { t: "2010-01-01", y: "613.54" },
                { t: "2010-04-01", y: "611.63" },
                { t: "2010-07-01", y: "615.23" },
                { t: "2010-10-01", y: "614.97" },
                { t: "2011-01-01", y: "606.00" },
                { t: "2011-04-01", y: "599.25" },
                { t: "2011-07-01", y: "602.43" },
                { t: "2011-10-01", y: "603.12" },
                { t: "2012-01-01", y: "599.39" },
                { t: "2012-04-01", y: "597.85" },
                { t: "2012-07-01", y: "601.56" },
                { t: "2012-10-01", y: "604.47" },
                { t: "2013-01-01", y: "606.48" },
                { t: "2013-04-01", y: "611.81" },
                { t: "2013-07-01", y: "620.07" },
                { t: "2013-10-01", y: "623.94" },
                { t: "2014-01-01", y: "628.00" },
                { t: "2014-04-01", y: "641.86" },
                { t: "2014-07-01", y: "649.37" },
                { t: "2014-10-01", y: "654.01" },
                { t: "2015-01-01", y: "658.25" },
                { t: "2015-04-01", y: "666.71" },
                { t: "2015-07-01", y: "679.20" },
                { t: "2015-10-01", y: "684.20" },
                { t: "2016-01-01", y: "691.15" },
                { t: "2016-04-01", y: "701.27" },
                { t: "2016-07-01", y: "712.63" },
                { t: "2016-10-01", y: "720.94" },
                { t: "2017-01-01", y: "727.78" },
                { t: "2017-04-01", y: "749.40" },
                { t: "2017-07-01", y: "761.27" },
                { t: "2017-10-01", y: "766.81" },
                { t: "2018-01-01", y: "777.56" },
                { t: "2018-04-01", y: "792.67" }
              ]
          }]
      },
      options: {
        legend: {
          display: false
        },
        scales: {
          xAxes: [{
            type: "time"
          }]
        }
      }
  });
</script>

> Source: [All-Transactions House Price Index for Massachusetts](https://fred.stlouisfed.org/series/MASTHPI)

---

# Economy

## Real median household income

My sense is that politicians' economic measures too often describe how well
businesses or investors are doing, rather than average workers. Real median
income takes into account the cost of living and inflation. After a couple
years of income gains, we saw a drop last year in median income.

<canvas id="chart_wages" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_wages").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "2014", "2015", "2016", "2017"
          ],
          datasets: [{
              label: 'Real median household income',
              backgroundColor: 'rgba(0,102,0,0.6)',
              data: [
                65454, 70214, 73820, 73227
              ]
          }]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 50000
                  }
              }]
          }
      }
  });
</script>

> Source: [Real Median Household Income in Massachusetts](https://fred.stlouisfed.org/series/MEHOINUSMAA672N)

## Income inequality

Even a rising average incomes mean little if the overwhelming share of that
money stays among the top earners. Boston continues to have considerably
higher [income inequality](http://inequality.is/) than the rest
of the state, and it continues to rise. Most other counties also saw rising
income inequality&mdash;with Barnstable, Plymouth, and Middlesex instead showing
some improvement.

<canvas id="chart_inequality" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_inequality").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "Plymouth", "Barnstable", "Worcester", "Bristol", "Middlesex", "Norfolk", "Essex", "Suffolk"
          ],
          datasets: [
            {
              label: '2013',
              data: [ 13.03, 13.76, 13.88, 15.00, 16.40, 16.72, 16.68, 27.34 ]
            },
            {
              label: '2014',
              data: [ 13.19, 14.15, 14.45, 15.09, 16.80, 16.75, 16.96, 28.64 ]
            },
            {
              label: '2015',
              data: [ 13.66, 13.84, 14.70, 15.06, 17.06, 16.90, 17.15, 28.83 ]
            },
            {
              label: '2016',
              data: [ 13.60, 13.79, 14.90, 15.33, 16.95, 17.31, 17.65, 29.10 ]
            },
          ]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 12.5,
                      max: 29.5
                  }
              }]
          }
      }
  });
</script>

> Source: [US Census via FRED](https://fred.stlouisfed.org/search?st=income+inequality+ma)

---

# Education

## In-state tuition: UMass Amherst

During Baker's term, annual tuition has increased $2,629 and room & board has
increased $1,669&mdash;almost 18% since 2014.

<canvas id="chart_tuition" style="width:100%; height:15em;"></canvas>
<script>
  var ctx = document.getElementById("chart_tuition").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "2014-2015", "2015-2016", "2016-2017", "2017-2018", "2018-2019"
          ],
          datasets: [
            {
              stack: 1,
              label: 'Tuition Cost',
              backgroundColor: 'rgba(102,0,0,0.6)',
              data: [ 13258, 14171, 14971, 15411, 15887 ]
            },
            {
              stack: 1,
              label: 'Room & Board Cost',
              backgroundColor: 'rgba(102,0,0,0.4)',
              data: [ 10957, 11503, 11897, 12258, 12626 ]
            }]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  stacked: true,
                  ticks: {
                      min: 0
                  }
              }]
          }
      }
  });
</script>

> Source: [Undergraduate Student Charges: Tuition, Required Fees, and Room and Board Expenses, Academic Years 1983-84 through 2017-18](https://www.umass.edu/oir/sites/default/files/publications/factsheets/student_charges/FS_chg_01.pdf), University of Massachusetts Amherst

## In-state tuition: UMass Boston

UMass Boston's annual tuition saw a similar 18% jump in Baker's term, up $2,201.

<canvas id="chart_tuition-boston" style="width:100%; height:15em;"></canvas>
<script>
  var ctx = document.getElementById("chart_tuition-boston").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "2014-2015", "2015-2016", "2016-2017", "2017-2018", "2018-2019"
          ],
          datasets: [
            {
              label: 'Tuition Cost',
              backgroundColor: 'rgba(102,0,0,0.6)',
              data: [ 11966, 12682, 13435, 13828, 14167 ]
            }
          ]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  ticks: {
                      min: 0
                  }
              }]
          }
      }
  });
</script>

> Source: [UMass Boston At A Glance](https://www.umb.edu/oirap/umass_boston_at_a_glance) 2014-2018

---

# Ethics

## State Police crisis

[As the Globe has covered extensively](https://www.bostonglobe.com/news/nation/2018/03/20/scandals-scar-state-police/G8BiuDUHUE6cz1OAWDpI7H/story.html), the State Police has been immersed in
scandal over payroll fraud, overtime theft, falsified reports, and racism for the last three years. I wanted to get a sense for whether there was any end in sight,
so I reorganized the Globe's data into a timeline. (Hover for a description,
click for the underlying news article.)

<div id="state-police-timeline"></div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.21.0/vis.css" rel="stylesheet" />
<script>
  // DOM element where the Timeline will be attached
  var container = document.getElementById('state-police-timeline');

  // Create a DataSet (allows two way data-binding)
  var items = new vis.DataSet([
    {
      id: 1,
      type: 'box',
      title: 'Alleged theft of overtime pay',
      content: "💰",
      group: "Financial Issues",
      url: 'https://www.bostonglobe.com/metro/2018/07/03/former-mass-state-police-trooper-pleads-guilty-overtime-fraud-case/OSHDZKfhnPhrotlORFu70N/story.html',
      start: '2018-07-03'
    },
    {
      id: 2,
      type: 'box',
      title: 'Grand jury investigation of overtime pay',
      content: "🔎",
      group: "Investigations",
      url: 'https://www.bostonglobe.com/metro/2018/06/01/federal-grand-jury-targets-massachusetts-state-police-overtime-abuse/tLOUy5s8Z8JtxIW2wsgdMJ/story.html',
      start: '2018-06-01'
    },
    {
      id: 3,
      type: 'box',
      title: 'Conspiracy allegations against DA',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2018/06/22/lawsuit-alleges-worcester-district-attorney-directed-conspiracy-state-police-scandal-over-arrest-judge-daughter/omeNQP0vA39QPx5dukkZ0M/story.html',
      start: '2018-06-22'
    },
    {
      id: 4,
      type: 'box',
      title: 'Continued secret use of overtime',
      content: "💰",
      group: "Financial Issues",
      url: 'https://www.bostonglobe.com/metro/massachusetts/2018/06/23/despite-claims-reform-all-overtime-all-time-these-costly-state-police-postings/6b4LAsNYJnTMrCPhS3toRL/story.html',
      start: '2018-06-23'
    },
    {
      id: 5,
      type: 'box',
      title: 'Head of payroll pleads guilty to theft',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2018/06/25/former-head-payroll-for-mass-state-police-pleads-guilty-stealing-from-agency/DjzEfcP3aSqq2DpudVjy1I/story.html',
      start: '2018-06-25'
    },
    {
      id: 6,
      type: 'box',
      title: 'Three troopers arrested for fraud',
      content: "💰",
      group: "Financial Issues",
      url: 'https://www.bostonglobe.com/metro/2018/06/27/three-massachusetts-state-troopers-arrested-federal-authorities-overtime-fraud-probe/xOTZAMVI80WF11ZAIO8R4K/story.html',
      start: '2018-06-27'
    },
    {
      id: 10,
      type: 'box',
      title: 'Discovery of 2016 Troop E irregularities',
      content: "🔎",
      group: "Investigations",
      url: 'https://www.bostonglobe.com/metro/2018/04/06/overtime-scandal-not-first-time-state-police-unit-under-scrutiny/J8UGFSyGSYZrlo7vMCsr3H/story.html',
      start: '2018-04-06'
    },
    {
      id: 11,
      type: 'box',
      title: 'Hidden records show personal car per-diems',
      content: "💰",
      group: "Financial Issues",
      url: 'https://www.bostonglobe.com/metro/2018/04/17/more-hidden-mass-state-police-pay-surfaces-this-time-millions-perks/LkhhEu3uHl8eBVqYMGwWzO/story.html',
      start: '2018-04-17'
    },
    {
      id: 12,
      type: 'box',
      title: 'Head of payroll charged with theft',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2018/04/18/state-police-payroll-head-under"🔎"for-allegedly-stealing-funds/FX4RnPW7ja7jvuCULE3omI/story.html',
      start: '2018-04-18'
    },
    {
      id: 13,
      type: 'box',
      title: 'State failed to pay taxes on millions in per-diems',
      content: "💰",
      group: "Financial Issues",
      url: 'https://www.bostonglobe.com/metro/2018/04/26/for-decades-mass-state-police-troopers-weren-taxed-millions-perks-taxpayers-may-have-foot-bill/vKXK0W6XM2GLIBaozreO8J/story.html',
      start: '2018-04-26'
    },
    {
      id: 14,
      type: 'box',
      title: 'State Police withholds details of drunk driver',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2018/04/28/the-fact-that-she-could-have-been-stopped-that-morning-heartbreaking/hXJaaiD4PPMOpmZdulrKhO/story.html',
      start: '2018-04-28'
    },
    {
      id: 15,
      type: 'box',
      title: 'Racist trooper shoots Cape Verdean driver',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2018/03/01/state-trooper-involved-shooting-has-history-racist-online-posts/0l1bJhMSvNM69RBN30R6RJ/story.html',
      start: '2018-03-01'
    },
    {
      id: 16,
      type: 'box',
      title: '12% of force makes over $200K',
      content: "💰",
      group: "Financial Issues",
      url: 'https://www.bostonglobe.com/metro/2018/03/12/state-police-troopers-earned-more-than-last-year/1LM2sE7Z5OJLujXQv9ZXyK/story.html',
      start: '2018-03-12'
    },
    {
      id: 17,
      type: 'box',
      title: 'Trooper caught drunk on job',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2018/03/18/state-trooper-accused-being-drunk-work-placed-leave/WIrqKMWb5XO3j8UPYRXryH/story.html',
      start: '2018-03-18'
    },
    {
      id: 18,
      type: 'box',
      title: '21 troopers investigated for overtime theft',
      content: "🔎",
      group: "Investigations",
      url: 'https://www.bostonglobe.com/metro/2018/03/20/state-troopers-face-possible-discipline-overtime-scam-probe/uwrRzXj94gfQPIYKKa2B7L/story.html',
      start: '2018-03-20'
    },
    {
      id: 19,
      type: 'box',
      title: '9 accused troopers retire, 9 suspended',
      content: "🔎",
      group: "Investigations",
      url: 'https://www.bostonglobe.com/metro/2018/03/23/nine-state-police-troopers-suspended-without-pay-nine-more-retire-amid-internal-affairs-probe/4dlOigIcguXvqckRVOsVdI/story.html',
      start: '2018-03-23'
    },
    {
      id: 20,
      type: 'box',
      title: '140-trooper division hidden from public',
      content: "💰",
      group: "Financial Issues",
      url: 'https://www.bostonglobe.com/metro/2018/03/25/state-police-pay-higher-than-reported-data-hidden-for-years/pl9kAs38FTIy4pOydr08bJ/story.html',
      start: '2018-03-25'
    },
    {
      id: 21,
      type: 'box',
      title: 'Trooper suspended for drug conspiracy',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2018/02/22/state-trooper-placed-paid-leave-after-internal-affairs"🔎"owfaUIlKzFQqT2xGKEMCpM/story.html',
      start: '2018-02-22'
    },
    {
      id: 22,
      type: 'box',
      title: '2 accused leaders suddenly retire',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2018/02/23/two-more-high-ranking-officials-massachusetts-state-police-retire/yx9u6GMvfLca3EL8oc0buI/story.html',
      start: '2018-02-23'
    },
    {
      id: 23,
      type: 'box',
      title: 'AG investigates payroll discrepancies',
      content: "🔎",
      group: "Investigations",
      url: 'https://www.bostonglobe.com/metro/2018/01/22/audit-reveals-state-police-officers-may-have-been-paid-for-unworked-shifts/gBZgwDKu23uI9xhbTwxIqL/story.html',
      start: '2018-01-22'
    },
    {
      id: 24,
      type: 'box',
      title: 'Accused officials leave with hefty payouts',
      content: "💰",
      group: "Financial Issues",
      url: 'https://www.bostonglobe.com/metro/2017/12/14/state-police-officials-who-retired-amid-arrest-report-scandal-collected-big-payouts/Nk4yZzzj27LlODyVESrO7L/story.html',
      start: '2017-12-14'
    },
    {
      id: 25,
      type: 'box',
      title: 'Commanders accused of forcing report changes',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2017/11/12/second-trooper-sues-over-arrest-report-for-judge-daughter/YBKnBgM2qsBxSOOjJpHYfO/story.html',
      start: '2017-11-12'
    },
    {
      id: 26,
      type: 'box',
      title: 'AG, governor announce altered report investigation',
      content: "🔎",
      group: "Investigations",
      url: 'https://www.bostonglobe.com/metro/2017/11/09/baker-launches"🔎"into-why-trooper-was-ordered-change-report-judge-daughter/6pTgFhqFAPCEwJzsLZN27I/story.html',
      start: '2017-11-09'
    },
    {
      id: 27,
      type: 'box',
      title: '2 leaders abruptly announce retirements',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2017/11/10/chief-state-police-mckeon-steps-down-amid-questions-about-altered-arrest-report/MDi1xTkNsQjL9fI3I02ffM/story.html',
      start: '2017-11-10'
    },
    {
      id: 28,
      type: 'box',
      title: 'New superintendent launches altered report probe',
      content: "🔎",
      group: "Investigations",
      url: 'https://www.bostonglobe.com/metro/2017/11/16/new-state-police-boss-orders-probe-into-altered-police-report-involving-judge-daughter/gYj92Jk9PeWDIBAEMMbBJO/story.html',
      start: '2017-11-10'
    },
    {
      id: 29,
      type: 'box',
      title: 'Judge\'s daughter pleads guilty',
      content: "🚨",
      group: "Misconduct",
      url: 'https://www.bostonglobe.com/metro/2017/11/17/woman-center-state-police-scandal-pleads-guilty-drunk-driving-charge/9qvEv2ETmSOZVIWrFTBAjJ/story.html',
      start: '2017-11-17'
    },
    {
      id: 30,
      type: 'box',
      title: 'WCVB finds troopers collect pay without work',
      content: "💰",
      group: "Financial Issues",
      url: 'http://www.wcvb.com/article/5-investigates-probe-uncovers-possible-fraud-in-state-police-overtime/13099088',
      start: '2017-10-26'
    }
  ]);

  var groups = [
    {
      id: "Financial Issues",
      content: 'Financial Issues'
    },
    {
      id: "Misconduct",
      content: "Misconduct"
    },
    {
      id: "Investigations",
      content: "Investigations"
    }
  ];

  var options = {
    selectable: false,
    zoomable: false,
    template: function(item, element, data) {
      var html = "<a target='_blank' href='"+data.url+"'>" + data.content + "</a>";
      return html;
    }
  };

  var timeline = new vis.Timeline(container, items, groups, options);
</script>

## Hate crimes

I'd seen headlines about rising hate crimes in Massachusetts since Trump declared
his candidacy in 2015. I pulled out data for hate crimes perpetrated against
those targeted by Trump and his supporters. Sure enough, the trend is there (2017 data not available yet).
Could fiercer critique of the White House from the State House help this problem?

<canvas id="chart_hate" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_hate").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "2014", "2015", "2016"
          ],
          datasets: [
            {
              stack: 1,
              label: 'Anti-Black Crimes',
              backgroundColor: 'rgba(102,0,0,0.7)',
              data: [ 99, 110, 117 ]
            },
            {
              stack: 1,
              label: 'Anti-Jewish Crimes',
              backgroundColor: 'rgba(204,0,0,0.7)',
              data: [ 39, 56, 62 ]
            },
            {
              stack: 1,
              label: 'Anti-Hispanic Crimes',
              backgroundColor: 'rgba(0,102,0,0.7)',
              data: [ 15, 19, 25 ]
            },
            {
              stack: 1,
              label: 'Anti-Arab Crimes',
              backgroundColor: 'rgba(0,0,102,0.7)',
              data: [ 0, 9, 9 ]
            },
            {
              stack: 1,
              label: 'Anti-Muslim Crimes',
              backgroundColor: 'rgba(0,0,204,0.7)',
              data: [ 7, 13, 13 ]
            }]
      },
      options: {
          legend: {
            display: true
          },
          scales: {
              yAxes: [{
                  stacked: true,
                  ticks: {
                      min: 0
                  }
              }]
          }
      }
  });
</script>

> Source: [MA EOPSS Hate Crime Report](https://www.mass.gov/files/documents/2017/11/20/MA_Hate_Crime_2016.pdf)

### Per capita hate crimes

Massachusetts and Washington lead the nation in hate crimes per capita. (Only
the 20 highest-offending states shown for legibility.)

<canvas id="chart_hate_rank" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_hate_rank").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "WA", "MA", "KY", "MI", "OH", "VT", "AZ", "CT", "NJ", "ME", "NY", "NH", "MN", "OR", "CA", "TN", "WV", "IN", "SD", "KS"
            // "UT", "CO", "ID", "NC", "DE", "MT", "MO", "NE", "VA", "AK", "NM", "NV", "RI", "ND", "IL", "OK", "TX", "WI", "LA", "WY", "IA", "MD", "FL", "PA", "AR", "SC", "GA", "AL", "MS"
          ],
          datasets: [
            {
              label: 'Hate crimes per capita',
              backgroundColor: 'rgba(0,0,0,0.6)',
              data: [
                0.000065, 0.000065, 0.000054, 0.000046, 0.000044, 0.000042, 0.000041, 0.000035, 0.000034, 0.000034, 0.000030, 0.000030, 0.000030, 0.000029, 0.000029, 0.000028, 0.000026, 0.000024, 0.000024, 0.000024
                // 0.000023, 0.000022, 0.000020, 0.000020, 0.000020, 0.000019, 0.000019, 0.000018, 0.000018, 0.000018, 0.000017, 0.000016, 0.000012, 0.000011, 0.000010, 0.000009, 0.000008, 0.000007, 0.000007, 0.000007, 0.000007, 0.000007, 0.000005, 0.000005, 0.000005, 0.000005, 0.000004, 0.000003, 0.000003
              ]
            }]
      },
      options: {
          legend: {
            display: false
          },
          scales: {
              yAxes: [{
                  stacked: true,
                  ticks: {
                      min: 0
                  }
              }]
          }
      }
  });
</script>

> Source: [FBI 2016 Hate Crime Statistics](https://ucr.fbi.gov/hate-crime/2016/tables/table-11)

### Town participation in hate crime reporting

The number of towns who do not report hate crime data, or report zero hate
crimes, is also worrisome: it is statistically unlikely, especially in large
communities, that hate crimes don't exist. What are we doing to improve the
collection of this critical data?

![Map of hate crime reports](/assets/images/map-hate-reporting.png)

> Source: ["Most Mass. agencies report no hate crimes, but is it accurate?"](https://www.bostonglobe.com/metro/2017/12/26/most-mass-municipalities-report-zero-hate-crimes-raising-questions-about-data/4nVkGjaq4TmdR5jJxWjLGN/story.html), _Boston Globe_

---

# Thank you!

If you've gotten this far, thank you for reading. If there's any mistaken
data, I apologize and please let me know -- this is merely an after-hours project!
If you have your own state performance visualizations or new data to share, please post
a link in the comments below, or tweet [@jonabbett](https://twitter.com/jonabbett).
