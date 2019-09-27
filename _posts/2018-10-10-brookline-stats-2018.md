---
layout: post
title:  "Brookline Stats 2018"
date:   2100-10-10 16:30:00 -0400
---

Intro

* [Population](#population)
  * [Total population](#total-population)
  * [Age groups](#age-groups)
* [Income](#income)
  * [Median income](#median-income)
* [Housing](#housing)
  * [Housing starts](#housing-starts)
  * [Affordability](#affordability)
* [Taxes](#taxes)
* [Schools](#schools)
  * [Student population](#student-population)
  * [Total spending](#total-spending)
  * [Spending per student](#spending-per-student)
* [Voting](#voting)
  * [Primary elections](#primary-elections)
  * [General elections](#general-elections)

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>

---

# Population

## Total population

<canvas id="chart_total_population" style="width:100%; height:10em;"></canvas>
<script>
  var ctx = document.getElementById("chart_total_population").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: [
            "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016"
          ],
          datasets: [{
              label: 'Total population',
              backgroundColor: 'rgba(0,0,102,0.2)',
              data: [
                56166, // 2009
                57953, // 2010
                58371, // 2011
                58634, // 2012
                58738, // 2013
                59016, // 2014
                59132, // 2015
                59180, // 2016
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
                      min: 50000,
                      max: 65000
                  }
              }]
          }
      }
  });
</script>

> Source: [US Census American Community Survey 5-Year Estimates](https://factfinder.census.gov/bkmk/table/1.0/en/ACS/09_5YR/S0101/1600000US2509210)

## Population by age

<canvas id="chart_age_groups" style="width:100%; height:30em;"></canvas>
<script>
  var ctx = document.getElementById("chart_age_groups").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016"
          ],
          datasets: [
            {
                label: 'Under 5',
                backgroundColor: 'rgba(136,87,117,0.8)',
                data: [
                  Math.round((5.6 / 100) * 56166), // 2009
                  Math.round((5.5 / 100) * 57953), // 2010
                  Math.round((5.2 / 100) * 58371), // 2011
                  Math.round((5.1 / 100) * 58634), // 2012
                  Math.round((5.1 / 100) * 58738), // 2013
                  Math.round((5.2 / 100) * 59016), // 2014
                  Math.round((5.3 / 100) * 59132), // 2015
                  Math.round((4.8 / 100) * 59180), // 2016
                ]
            },
            {
                label: '5-14',
                backgroundColor: 'rgba(75,124,149,0.8)',
                data: [
                  Math.round((9.5 / 100) * 56166), // 2009
                  Math.round((10.1 / 100) * 57953), // 2010
                  Math.round((10.6 / 100) * 58371), // 2011
                  Math.round((10.2 / 100) * 58634), // 2012
                  Math.round((10.7 / 100) * 58738), // 2013
                  Math.round((9.9 / 100) * 59016), // 2014
                  Math.round((10.0 / 100) * 59132), // 2015
                  Math.round((10.5 / 100) * 59180), // 2016
                ]
            },
            {
                label: '15-17',
                backgroundColor: 'rgba(60,150,116,0.8)',
                data: [
                  Math.round((2.9 / 100) * 56166), // 2009
                  Math.round((3.0 / 100) * 57953), // 2010
                  Math.round((3.5 / 100) * 58371), // 2011
                  Math.round((3.4 / 100) * 58634), // 2012
                  Math.round((3.2 / 100) * 58738), // 2013
                  Math.round((3.3 / 100) * 59016), // 2014
                  Math.round((3.2 / 100) * 59132), // 2015
                  Math.round((2.9 / 100) * 59180), // 2016
                ]
            },
            {
                label: '18-59',
                backgroundColor: 'rgba(152,156,67,0.8)',
                data: [
                  Math.round((64 / 100) * 56166), // 2009
                  Math.round((63.1 / 100) * 57953), // 2010
                  Math.round((61.5 / 100) * 58371), // 2011
                  Math.round((61.8 / 100) * 58634), // 2012
                  Math.round((60.6 / 100) * 58738), // 2013
                  Math.round((60.8 / 100) * 59016), // 2014
                  Math.round((60.6 / 100) * 59132), // 2015
                  Math.round((61.3 / 100) * 59180), // 2016
                ]
            },
            {
                label: '60 and over',
                backgroundColor: 'rgba(241,143,97,0.8)',
                data: [
                  Math.round((18.1 / 100) * 56166), // 2009
                  Math.round((18.3 / 100) * 57953), // 2010
                  Math.round((19.1 / 100) * 58371), // 2011
                  Math.round((19.6 / 100) * 58634), // 2012
                  Math.round((20.5 / 100) * 58738), // 2013
                  Math.round((20.8 / 100) * 59016), // 2014
                  Math.round((20.9 / 100) * 59132), // 2015
                  Math.round((20.5 / 100) * 59180), // 2016
                ]
            }
          ]
      },
      options: {
          legend: {
            display: true
          },
          scales: {
            xAxes: [{
              stacked: true
            }],
            yAxes: [{
              stacked: true,
              ticks: {
                // min: 0,
                // max: 100,
              }
            }]
          }
      }
  });
</script>

> Source: [US Census American Community Survey 5-Year Estimates](https://factfinder.census.gov/bkmk/table/1.0/en/ACS/09_5YR/S0101/1600000US2509210)

# Schools

## Student population

<canvas id="chart_students" style="width:100%; height:20em;"></canvas>
<script>
  var ctx = document.getElementById("chart_students").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
          labels: [
            "1990", "1991", "1992", "1993", "1994", "1995", "1996", "1997", "1998", "1999",
            "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009",
            "2010", "2011", "2012", "2013", "2014", "2015", "2016"
          ],
          datasets: [{
              label: 'K-8',
              backgroundColor: 'rgba(60,150,116,0.8)',
              data: [
                3722, // 1990  
                3900, // 1991
                4109, // 1992
                4259, // 1993
                4246, // 1994
                4328, // 1995
                4364, // 1996
                4336, // 1997
                4271, // 1998
                4220, // 1999
                4184, // 2000
                4059, // 2001
                4017, // 2002
                3914, // 2003
                3888, // 2004
                3904, // 2005
                4062, // 2006
                4098, // 2007
                4299, // 2008
                4473, // 2009
                4643, // 2010
                4825, // 2011
                5067, // 2012
                5227, // 2013
                5353, // 2014
                5465, // 2015
                5437, // 2016
              ]
          }, {
              label: '9-12',
              backgroundColor: 'rgba(241,143,97,0.8)',
              data: [
                1800, // 1990  
                1750, // 1991
                1679, // 1992
                1652, // 1993
                1703, // 1994
                1712, // 1995
                1700, // 1996
                1739, // 1997
                1710, // 1998
                1771, // 1999
                1857, // 2000
                1903, // 2001
                1870, // 2002
                1920, // 2003
                1891, // 2004
                1881, // 2005
                1840, // 2006
                1810, // 2007
                1773, // 2008
                1744, // 2009
                1722, // 2010
                1773, // 2011
                1769, // 2012
                1802, // 2013
                1891, // 2014
                1946, // 2015
                1980, // 2016
              ]
          }]
      },
      options: {
          legend: {
            display: true
          },
          scales: {
              xAxes: [{
                stacked: true,
              }],
              yAxes: [{
                stacked: true,
                ticks: {
                  min: 0,
                  callback: function(value) {
                    return (value).toLocaleString();
                  }
                }
              }]
          }
      }
  });
</script>

> Source: [2016 Preliminary Enrollment
Projection](https://www.brooklinema.gov/DocumentCenter/View/11476/2016-Enrollment-Report-PDF?bidId=)

## Total spending

<canvas id="chart_total_spending" style="width:100%; height:10em;"></canvas>
<script>
  var ctx = document.getElementById("chart_total_spending").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: [
            "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"
          ],
          datasets: [{
              label: 'Total spending',
              backgroundColor: 'rgba(0,0,102,0.2)',
              data: [
                93272896.44, // 2008
                102706167.50, // 2009
                104842739.47, // 2010
                106054331.09, // 2011
                109975529.84, // 2012
                115095344.52, // 2013
                121245291.73, // 2014
                128747803.00, // 2015
                140397405.00, // 2016
                146378463.00, // 2017
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
                      // min: 50000,
                      // max: 65000
                    callback: function(value) {
                      return "$" + (value).toLocaleString();
                    }
                  }
              }]
          }
      }
  });
</script>

> Source: [Massachusetts DOE](http://profiles.doe.mass.edu/profiles/finance.aspx?orgcode=00460000&orgtypecode=5&&fycode=2008)

## Spending per student

<canvas id="chart_per_student" style="width:100%; height:10em;"></canvas>
<script>
  var ctx = document.getElementById("chart_per_student").getContext('2d');
  var myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: [
            "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017"
          ],
          datasets: [{
              label: 'Spending per student',
              backgroundColor: 'rgba(0,0,102,0.2)',
              data: [
                14949.74, // 2008
                16232.41, // 2009
                16024.14, // 2010
                15873.31, // 2011
                15999.47, // 2012
                16272.72, // 2013
                16680.69, // 2014
                17165.46, // 2015
                18376.38, // 2016
                19101.23, // 2017
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
                      // min: 50000,
                      // max: 65000
                    callback: function(value) {
                      return "$" + (value).toLocaleString();
                    }
                  }
              }]
          }
      }
  });
</script>

> Source: [Massachusetts DOE](http://profiles.doe.mass.edu/profiles/finance.aspx?orgcode=00460000&orgtypecode=5&&fycode=2008)
