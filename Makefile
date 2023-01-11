build:
	docker build -t asami1234/centos:7 .

run:
	docker run --cap-add NET_ADMIN -d asami1234/centos:7

show:
	iptables-save

save:
	iptables-save > iptables

restore:
	iptables-restore < iptables

clean:
	iptables -F && iptables -X
