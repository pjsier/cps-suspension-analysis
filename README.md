# CPS Suspension Data Analysis

Working with CPS suspension data from https://github.com/hunterowens/cps-suspension

docker build -t cps . 
docker run -v /Users/pjsier/Code/cps-suspension-analysis:/home/jupyter -p 80:8888 cps
