library(covid19.analytics)

#data
ag<-covid19.data(case="aggregated")
tsc<-covid19.data(case="ts-confirmed")
#summary
report.summary(Nentries = 20,
               graphical.output = TRUE)


#total cases as per location
tots.per.location(tsc,geo.loc = "ukraine")
tots.per.location(tsc,geo.loc = "india","ukraine","italy")
tots.per.location(tsc,geo.loc = "netherlands","peru")
tots.per.location(tsc,geo.loc = c("india","france","peru","netherlands","italy","iraq","turkey"))

#growth rate as per location
growth.rate(tsc,geo.loc="india")
#world map
live.map(tsc)

#sir model (healthy but susceptible to disease)
generate.SIR.model(tsc,"india",tot.population = 170000000)
generate.SIR.model(tsc,"us",tot.population = 38820000000)
