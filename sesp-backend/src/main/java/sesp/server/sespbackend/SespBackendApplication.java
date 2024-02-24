package sesp.server.sespbackend;

import me.paulschwarz.springdotenv.DotenvPropertySource;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SespBackendApplication {

	public static void main(String[] args) {

		SpringApplication.run(SespBackendApplication.class, args);
	}

}
