package cabanas.garcia.ismael.auctionsniper.helper

import org.testcontainers.containers.DockerComposeContainer
import java.io.File

class DockerComposeHelper {

  private val container: DockerComposeContainer<*>

  init {
    container = DockerComposeContainer<Nothing>(File("docker-compose.yml"))
      .apply { withLocalCompose(true) }
  }

  fun start() {
    container.start()
  }

  fun stop() {
    container.stop()
  }
}
