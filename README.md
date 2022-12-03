# Ansilo

Ansilo is a stateless postgres container with JWT auth and an universal foreign data wrapper, making it simple to build interoperable data products on top of your existing databases.

The vision for Ansilo is to massively reduce the burden of having data spread across multiple databases or vendors by leveraging postgres and SQL/MED to provide a simple and standards-compliant interface to query, copy or move data across disparate systems.

To read more, check out [our documentation](https://docs.ansilo.io).

## Getting started

In order to get access to Ansilo please [submit this form](https://ansilo.io/access) and we will get back you within 48 hours.

To run Ansilo locally, run start the container using [`docker compose`](https://docs.docker.com/compose/).

```sh
# Start ansilo in development mode on your local
docker compose up
```

To open the browser-based workbench go to http://localhost:65432.

Connect via CLI using `PGPASSWORD=pleasechangeme psql -h localhost -p 65432 -U app`.

## Development process

Any changes to `ansilo.yml` or `*.sql` scripts will automatically reload the instance with the changes.

See [development guides](https://docs.ansilo.io/category/development-guides/) for next steps.

## Troubleshooting

The container will output all logging to stdout/stderr, the logging output will be your first
diagnostic for any errors or issues.

To enable verbose logging you can set `RUST_LOG` environment variable to `DEBUG` or `TRACE` to increase
the verbosity of the logging.

```sh
RUST_LOG=DEBUG docker compose up
```

## Deployment

In order to build a production-ready image build the `Dockerfile`.

```sh
# Build a production-ready image
docker build -t my-ansilo-node .
```

```sh
# Verify the image is runnable
docker run --rm -p 65432:65432 my-ansilo-node
```

