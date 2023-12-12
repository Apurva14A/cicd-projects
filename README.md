### cicd-projects

## Integration of  Sonarqube(Postgres as Backend DB) with Jenkins 

We have used Sonarqube and Jenkins docker images by configuring both inside docker-compose.yml file to run the tools.


We can integrate **Sonarqube** with **Jenkins** for code analysis and generate a report to review and make changes based on the report.

#-----------------------------------------------------------------------------------------------------------------------------------------------

# Docker Image Build and Push Workflow

This GitHub Actions workflow automates the process of building a Docker image and pushing it to the Docker Hub registry. The workflow triggers on pushes to the main branch.

## Workflow Overview

1. **Checkout Repository**: Checks out the repository to the runner.

2. **Set up Docker Buildx**: Configures Docker Buildx, a builder for Docker images with support for multiple platforms.

3. **Docker Login**: Logs in to the Docker Hub registry using Docker Hub credentials stored in GitHub Secrets.

4. **Build and Push**: Builds a Docker image from the repository and pushes it to the Docker Hub registry.

## Workflow Configuration

The workflow is configured to trigger on pushes to the main branch. The Docker image is tagged with the latest version.

### Secrets

Make sure to set up the following secrets in your GitHub repository:

- `DOCKERHUB_USERNAME`: Your Docker Hub username.
- `DOCKERHUB_TOKEN`: Your Docker Hub access token or password.

### Workflow Execution

The workflow will run automatically on each push to the main branch.

## Customize Workflow

Feel free to customize the workflow according to your specific requirements. You can modify the Dockerfile, Docker image name, or add additional build and push configurations as needed.

## License

This project is licensed under the [MIT License](LICENSE).
