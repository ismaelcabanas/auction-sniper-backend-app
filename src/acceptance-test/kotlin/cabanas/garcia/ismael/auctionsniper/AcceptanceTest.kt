package cabanas.garcia.ismael.auctionsniper

import cabanas.garcia.ismael.auctionsniper.infrastructure.Application
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest(
  classes = [Application::class]
)
abstract class AcceptanceTest {
}
