<h3 align="center">SSR Docker</h3>
<h4 align="center">Quickly deploy shadowsocksr based on docker</h4>



```
git clone https://github.com/362227/ssr-docker
cd ssr-docker
docker build -t ssr-docker .

docker run -d  --restart unless-stopped  -p 9002:443/tcp -p 9002:443/udp -it ssr-docker
```


