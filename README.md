https://github.com/acanite/Webstack---Portfolio-Project#Webstack---Portfolio-Project---base-project-generator

https://github.com/acanite/Webstack---Portfolio-Project#-warning-in-re-construction--%EF%B8%8F

This project is currently being restructured, don't use it right now, hold for a bit.

In the next couple of months it will be ready. 😎 🚀

Some of the future new features and changes:

	Upgrade to the latest FastAPI.
	Migration from SQLAlchemy to SQLModel.
	Upgrade to Pydantic v2.
	Refactor and simplification of most of the code, a lot of the complexity won't be necessary anymore.
	Migrate from Vue.js 2 to React with hooks and TypeScript.
	Move from Docker Swarm Model to Kubernetes.
	GitHub Actions for CI.

Generate a backend and frontend stack using Python, including interactive API documentation.

https://github.com/acanite/Webstack---Portfolio-Project#interactive-api-documentation

'/c/Users/Acanite/Desktop/docs (1).png'

https://github.com/acanite/Webstack---Portfolio-Project#alternative-api-documentation

'/c/Users/Acanite/Desktop/redoc (2).png'

https://github.com/acanite/Webstack---Portfolio-Project#dashboard-login

'/c/Users/Acanite/Desktop/login (1).png'

https://github.com/acanite/Webstack---Portfolio-Project#dashboard---create-user

'/c/Users/Acanite/Desktop/dashboard (1).png'

https://github.com/acanite/Webstack---Portfolio-Project#features

	Full Docker integration (Docker based).
	Docker Swarm Mode deployment.
	Docker Compose integration and optimization for local development.
	Production ready Python web server using Uvicorn and Gunicorn.
	Python https://github.com/acanite/fastapi backend:
	Fast: Very high performance, on par with NodeJS and Go (thanks to Starlette and Pydantic).
	Intuitive: Great editor support. Completion everywhere. Less time debugging.
	Easy: Designed to be easy to use and learn. Less time reading docs.
	Short: Minimize code duplication. Multiple features from each parameter declaration.
	Robust: Get production-ready code. With automatic interactive documentation.
	Standards-based: Based on (and fully compatible with) the open standards for APIs: https://github.com/OAI/OpenAPI-Specification and http://json-schema.org/.
	https://fastapi.acanite.com/features/ including automatic validation, serialization, interactive documentation, authentication with OAuth2 JWT tokens, etc.
Secure password hashing by default.
JWT token authentication.
SQLAlchemy models (independent of Flask extensions, so they can be used with Celery workers directly).
Basic starting models for users (modify and remove as you need).
Alembic migrations.
CORS (Cross Origin Resource Sharing).
Celery worker that can import and use models and code from the rest of the backend selectively.
REST backend tests based on Pytest, integrated with Docker, so you can test the full API interaction, independent on the database. As it runs in Docker, it can build a new data store from scratch each time (so you can use ElasticSearch, MongoDB, CouchDB, or whatever you want, and just test that the API works).
Easy Python integration with Jupyter Kernels for remote or in-Docker development with extensions like Atom Hydrogen or Visual Studio Code Jupyter.
Vue frontend:
Generated with Vue CLI.
JWT Authentication handling.
Login view.
After login, main dashboard view.
Main dashboard with user creation and edition.
Self user edition.
Vuex.
Vue-router.
Vuetify for beautiful material design components.
TypeScript.
Docker server based on Nginx (configured to play nicely with Vue-router).
Docker multi-stage building, so you don't need to save or commit compiled code.
Frontend tests ran at build time (can be disabled too).
Made as modular as possible, so it works out of the box, but you can re-generate with Vue CLI or create it as you need, and re-use what you want.
It's also easy to remove it if you have an API-only app, check the instructions in the generated README.md.
PGAdmin for PostgreSQL database, you can modify it to use PHPMyAdmin and MySQL easily.
Flower for Celery jobs monitoring.
Load balancing between frontend and backend with Traefik, so you can have both under the same domain, separated by path, but served by different containers.
Traefik integration, including Let's Encrypt HTTPS certificates automatic generation.
GitLab CI (continuous integration), including frontend and backend testing.

https://github.com/acanite/Webstack---Portfolio-Project#how-to-use-it

Go to the directory where you want to create your project and run:

pip install cookiecutter
cookiecutter https://github.com/acanite/Webstack---Portfolio-Project

https://github.com/acanite/Webstack---Portfolio-Project#generate-passwords

You will be asked to provide passwords and secret keys for several components. Open another terminal and run:

openssl rand -hex 32
# Outputs something like: 99d3b1f01aa639e4a76f4fc281fc834747a543720ba4c8a8648ba755aef9be7f

Copy the contents and use that as password / secret key. And run that again to generate another secure key.

https://github.com/acanite/Webstack---Portfolio-Project#input-variables

The generator (cookiecutter) will ask you for some data, you might want to have at hand before generating the project.

The input variables, with their default values (some auto generated) are:

project_name: The name of the project

project_slug: The development friendly name of the project. By default, based on the project name

domain_main: The domain in where to deploy the project for production (from the branch production), used by the load balancer, backend, etc. By default, based on the project slug.

domain_staging: The domain in where to deploy while staging (before production) (from the branch master). By default, based on the main domain.

docker_swarm_stack_name_main: The name of the stack while deploying to Docker in Swarm mode for production. By default, based on the domain.

docker_swarm_stack_name_staging: The name of the stack while deploying to Docker in Swarm mode for staging. By default, based on the domain.

secret_key: Backend server secret key. Use the method above to generate it.

first_superuser: The first superuser generated, with it you will be able to create more users, etc. By default, based on the domain.

first_superuser_password: First superuser password. Use the method above to generate it.

backend_cors_origins: Origins (domains, more or less) that are enabled for CORS (Cross Origin Resource Sharing). This allows a frontend in one domain (e.g. https://dashboard.example.com) to communicate with this backend, that could be living in another domain (e.g. https://api.example.com). It can also be used to allow your local frontend (with a custom hosts domain mapping, as described in the project's README.md) that could be living in http://dev.example.com:8080 to communicate with the backend at https://stag.example.com. Notice the http vs https and the dev. prefix for local development vs the "staging" stag. prefix. By default, it includes origins for production, staging and development, with ports commonly used during local development by several popular frontend frameworks (Vue with :8080, React, Angular).

smtp_port: Port to use to send emails via SMTP. By default 587.

smtp_host: Host to use to send emails, it would be given by your email provider, like Mailgun, Sparkpost, etc.

smtp_user: The user to use in the SMTP connection. The value will be given by your email provider.

smtp_password: The password to be used in the SMTP connection. The value will be given by the email provider.

smtp_emails_from_email: The email account to use as the sender in the notification emails, it would be something like info@your-custom-domain.com.

postgres_password: Postgres database password. Use the method above to generate it. (You could easily modify it to use MySQL, MariaDB, etc).

pgadmin_default_user: PGAdmin default user, to log-in to the PGAdmin interface.

pgadmin_default_user_password: PGAdmin default user password. Generate it with the method above.

traefik_constraint_tag: The tag to be used by the internal Traefik load balancer (for example, to divide requests between backend and frontend) for production. Used to separate this stack from any other stack you might have. This should identify each stack in each environment (production, staging, etc).

traefik_constraint_tag_staging: The Traefik tag to be used while on staging.

traefik_public_constraint_tag: The tag that should be used by stack services that should communicate with the public.

flower_auth: Basic HTTP authentication for flower, in the formuser:password. By default: "admin:changethis".

sentry_dsn: Key URL (DSN) of Sentry, for live error reporting. You can use the open source version or a free account. E.g.: https://1234abcd:5678ef@sentry.example.com/30.

docker_image_prefix: Prefix to use for Docker image names. If you are using GitLab Docker registry it would be based on your code repository. E.g.: git.example.com/development-team/my-awesome-project/.

docker_image_backend: Docker image name for the backend. By default, it will be based on your Docker image prefix, e.g.: git.example.com/development-team/my-awesome-project/backend. And depending on your environment, a different tag will be appended ( prod, stag, branch ). So, the final image names used will be like: git.example.com/development-team/my-awesome-project/backend:prod.

docker_image_celeryworker: Docker image for the celery worker. By default, based on your Docker image prefix.

docker_image_frontend: Docker image for the frontend. By default, based on your Docker image prefix.

https://github.com/acanite/Webstack---Portfolio-Project#how-to-deploy

This stack can be adjusted and used with several deployment options that are compatible with Docker Compose, but it is designed to be used in a cluster controlled with pure Docker in Swarm Mode with a Traefik main load balancer proxy handling automatic HTTPS certificates, using the ideas from https://dockerswarm.rocks/

Please refer to https://dockerswarm.rocks/ to see how to deploy such a cluster in 20 minutes.

https://github.com/#more-details

After using this generator, your new project (the directory created) will contain an extensive README.md with instructions for development, deployment, etc. You can pre-read the project README.md template here too.

Sibling project generators
Full Stack FastAPI Couchbase: https://github.com/tiangolo/full-stack-fastapi-couchbase.
Release Notes
Latest Changes
✨ Upgrade items router with new SQLModel models, simplified logic, and new FastAPI Annotated dependencies. PR #560 by @tiangolo.
✨ Adopt SQLModel, create models, start using it. PR #559 by @tiangolo.
⬆️ Upgrade Python version and dependencies. PR #558 by @tiangolo.
🔧 Add missing dotenv variables. PR #554 by @tiangolo.
Features
🐳 Set up Docker config for new-frontend. PR #564 by @alejsdev.
✨ Set up new frontend with Vite, TypeScript and React. PR #563 by @alejsdev.
📌 Add NodeJS version management and instructions. PR #551 by @alejsdev.
Add consistent errors for env vars not set. PR #200.
Upgrade Traefik to version 2, keeping in sync with DockerSwarm.rocks. PR #199.
Run tests with TestClient. PR #160.
Fixes
🐛 Fix positional argument bug in init_db.py. PR #562 by @alejsdev.
📌 Fix flower Docker image, pin version. PR #396 by @sanggusti.
🐛 Fix Celery worker command. PR #443 by @bechtold.
🐛 Fix Poetry installation in Dockerfile and upgrade Python version and packages to fix Docker build. PR #480 by @little7Li.
Refactors
♻️ Refactor Users API and dependencies. PR #561 by @alejsdev.
♻️ Refactor frontend Docker build setup, use plain NodeJS, use custom Nginx config, fix build for old Vue. PR #555 by @tiangolo.
♻️ Refactor project generation, discard cookiecutter, use plain git/clone/fork. PR #553 by @tiangolo.
Refactor backend:
Simplify configs for tools and format to better support editor integration.
Add mypy configurations and plugins.
Add types to all the codebase.
Update types for SQLAlchemy models with plugin.
Update and refactor CRUD utils.
Refactor DB sessions to use dependencies with yield.
Refactor dependencies, security, CRUD, models, schemas, etc. To simplify code and improve autocompletion.
Change from PyJWT to Python-JOSE as it supports additional use cases.
Fix JWT tokens using user email/ID as the subject in sub.
PR #158.
Simplify docker-compose.*.yml files, refactor deployment to reduce config files. PR #153.
Simplify env var files, merge to a single .env file. PR #151.
Docs
📝 Update README with in construction notice. PR #552 by @tiangolo.
Add docs about reporting test coverage in HTML. PR #161.
Add docs about removing the frontend, for an API-only app. PR #156.
Internal
👷 Add dependabot. PR #547 by @tiangolo.
👷 Fix latest-changes GitHub Action token, strike 2. PR #546 by @tiangolo.
👷 Fix latest-changes GitHub Action token config. PR #545 by @tiangolo.
👷 Add latest-changes GitHub Action. PR #544 by @tiangolo.
Update issue-manager. PR #211.
Add GitHub Sponsors button. PR #201.
Simplify scripts and development, update docs and configs. PR #155.
0.5.0
Make the Traefik public network a fixed default of traefik-public as done in DockerSwarm.rocks, to simplify development and iteration of the project generator. PR #150.
Update to PostgreSQL 12. PR #148. by @RCheese.
Use Poetry for package management. Initial PR #144 by @RCheese.
Fix Windows line endings for shell scripts after project generation with Cookiecutter hooks. PR #149.
Upgrade Vue CLI to version 4. PR #120 by @br3ndonland.
Remove duplicate login tag. PR #135 by @Nonameentered.
Fix showing email in dashboard when there's no user's full name. PR #129 by @rlonka.
Format code with Black and Flake8. PR #121 by @br3ndonland.
Simplify SQLAlchemy Base class. PR #117 by @airibarne.
Update CRUD utils for users, handling password hashing. PR #106 by @mocsar.
Use . instead of source for interoperability. PR #98 by @gucharbon.
Use Pydantic's BaseSettings for settings/configs and env vars. PR #87 by @StephenBrown2.
Remove package-lock.json to let everyone lock their own versions (depending on OS, etc).
Simplify Traefik service labels PR #139.
Add email validation. PR #40 by @kedod.
Fix typo in README. PR #83 by @ashears.
Fix typo in README. PR #80 by @abjoker.
Fix function name read_item and response code. PR #74 by @jcaguirre89.
Fix typo in comment. PR #70 by @daniel-butler.
Fix Flower Docker configuration. PR #37 by @dmontagu.
Add new CRUD utils based on DB and Pydantic models. Initial PR #23 by @ebreton.
Add normal user testing Pytest fixture. PR #20 by @ebreton.
0.4.0
Fix security on resetting a password. Receive token as body, not query. PR #34.

Fix security on resetting a password. Receive it as body, not query. PR #33 by @dmontagu.

Fix SQLAlchemy class lookup on initialization. PR #29 by @ebreton.

Fix SQLAlchemy operation errors on database restart. PR #32 by @ebreton.

Fix locations of scripts in generated README. PR #19 by @ebreton.

Forward arguments from script to pytest inside container. PR #17 by @ebreton.

Update development scripts.

Read Alembic configs from env vars. PR #9 by @ebreton.

Create DB Item objects from all Pydantic model's fields.

Update Jupyter Lab installation and util script/environment variable for local development.

0.3.0
PR #14:

Update CRUD utils to use types better.
Simplify Pydantic model names, from UserInCreate to UserCreate, etc.
Upgrade packages.
Add new generic "Items" models, crud utils, endpoints, and tests. To facilitate re-using them to create new functionality. As they are simple and generic (not like Users), it's easier to copy-paste and adapt them to each use case.
Update endpoints/path operations to simplify code and use new utilities, prefix and tags in include_router.
Update testing utils.
Update linting rules, relax vulture to reduce false positives.
Update migrations to include new Items.
Update project README.md with tips about how to start with backend.
Upgrade Python to 3.7 as Celery is now compatible too. PR #10 by @ebreton.

0.2.2
Fix frontend hijacking /docs in development. Using latest https://github.com/tiangolo/node-frontend with custom Nginx configs in frontend. PR #6.
0.2.1
Fix documentation for path operation to get user by ID. PR #4 by @mpclarkson in FastAPI.

Set /start-reload.sh as a command override for development by default.

Update generated README.

0.2.0
PR #2:

Simplify and update backend Dockerfiles.
Refactor and simplify backend code, improve naming, imports, modules and "namespaces".
Improve and simplify Vuex integration with TypeScript accessors.
Standardize frontend components layout, buttons order, etc.
Add local development scripts (to develop this project generator itself).
Add logs to startup modules to detect errors early.
Improve FastAPI dependency utilities, to simplify and reduce code (to require a superuser).
0.1.2
Fix path operation to update self-user, set parameters as body payload.
0.1.1
Several bug fixes since initial publication, including:

Order of path operations for users.
Frontend sending login data in the correct format.
Add https://localhost variants to CORS.
License
This project is licensed under the terms of the MIT license.

Releases 6
0.5.0
Latest
on Apr 19, 2020
+ 5 releases
Sponsor this project
@tiangolo
tiangolo Sebastián Ramírez
Learn more about GitHub Sponsors
Packages
No packages published
