Converted to containers

*Converted to containers

**Multiple Services, Single Instance, with docker compose (no docker registry, no SD)**

This is a very simple step to understand basics involved in converting multiple stateless microservice into a container service.

The scope of this step is to just understand how to build a docker image, run and view logs.

	1. git clone https://github.com/PK-Containers/Step2.git
	
	2. cd Step2
	
	3. To build and run using docker compose

	   docker-compose down && docker-compose build && docker-compose up -d 
	
	4. To check if the container is running
	    docker-compose ps

	     Name         Command       State           Ports
		----------------------------------------------------------
		mytodo    python todo.py    Up      0.0.0.0:5001->5001/tcp
		myusers   python users.py   Up      0.0.0.0:5000->5000/tcp
			
	5. To validate results in browser ->
	    http://localhost:5000/users/aniket/lists
	        displays, 
	        { "school": [ "Complete homework", "Prepare for test" ] }
	        
	7. To view logs
	    docker-compose logs 
		 docker-compose logs <container_id> or <container_name> => this does not work, 
		 		not sure why
	    docker logs mytodo
	    
	8. To view network details
	   docker network ls
	   
	   NETWORK ID          NAME                DRIVER              SCOPE
		fd17950c0070        bridge              bridge              local
		3cabb1536063        host                host                local
		f83110bd255c        none                null                local
		f52d3fb7f908        step2_default       bridge              local
	
	9. To inspect the container network
	   docker inspect step2_default
	   
	10. To get container IP
	   docker inspect <container id>
	   
	   
	       
	    
