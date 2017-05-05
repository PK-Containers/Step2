Some learnings and best practices
 
1. App/Services should not run in background for containers.
2. Do not try to put more than one service per container.
3. Docker compose can be used for local testing, but pick an orchestration tool for production.
4. List down the use case requirements and pick the orchestration tool that will support the requirements as an easy integration or out of the box functionality.
5. By Default, unless specified, docker runs on bridge network. https://docs.docker.com/engine/userguide/networking/


			HQSML-151665:database pkrish00c$ docker network ls
			NETWORK ID          NAME                DRIVER              SCOPE
			fd17950c0070        bridge              bridge              local
			3cabb1536063        host                host                local
			f83110bd255c        none                null                local
			HQSML-151665:database pkrish00c$ docker ps
			CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS                    NAMES
			ef6013dcc2f2        testhello           "python hello.py"   39 seconds ago      Up 38 seconds       0.0.0.0:8080->8080/tcp   unruffled_borg
			HQSML-151665:database pkrish00c$ docker network inspect bridge
			[
			    {
			        "Name": "bridge",
			        "Id": "fd17950c0070f92803d86503ac7b7e32a049ae2c6098eb09f968c2b549092864",
			        "Created": "2017-05-05T18:38:01.495913845Z",
			        "Scope": "local",
			        "Driver": "bridge",
			        "EnableIPv6": false,
			        "IPAM": {
			            "Driver": "default",
			            "Options": null,
			            "Config": [
			                {
			                    "Subnet": "172.17.0.0/16",
			                    "Gateway": "172.17.0.1"
			                }
			            ]
			        },
			        "Internal": false,
			        "Attachable": false,
			        "Containers": {
			            "ef6013dcc2f2fa5415d275f9132c470dae5ff931c0c92d5e2fc31773c8aed12a": {
			                "Name": "unruffled_borg",
			                "EndpointID": "b41e435aa86db20a5a2fb72c6529ef8fed0a584d25e991937d615fef16586340",
			                "MacAddress": "02:42:ac:11:00:02",
			                "IPv4Address": "172.17.0.2/16",
			                "IPv6Address": ""
			            }
			        },
			        "Options": {
			            "com.docker.network.bridge.default_bridge": "true",
			            "com.docker.network.bridge.enable_icc": "true",
			            "com.docker.network.bridge.enable_ip_masquerade": "true",
			            "com.docker.network.bridge.host_binding_ipv4": "0.0.0.0",
			            "com.docker.network.bridge.name": "docker0",
			            "com.docker.network.driver.mtu": "1500"
			        },
			        "Labels": {}
			    }
			]
		 
		
