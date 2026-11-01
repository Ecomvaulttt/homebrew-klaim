# KLAIM Amsterdam agent CLI — official Homebrew tap

Read public KLAIM catalog data, inspect MCP documentation resources and use the fictional developer sandbox. This CLI never creates carts, orders, checkouts or payments. Public reads are free and need no account or key. Node.js is installed as a Homebrew dependency.

## Install

```sh
brew install ecomvaulttt/klaim/klaim-agent
klaim-agent sandbox-product demo-hoodie
klaim-agent resources
klaim-agent product yeezy-slide-black
```

The full formula name selects this official tap and avoids unrelated packages. The formula downloads the exact versioned release and verifies SHA-256 before installation. It installs a symlink to the unmodified Node executable from the public package.

## Optional scoped keys

The developer portal offers free optional keys restricted to live or sandbox and catalog:read/resources:read. Keys expire after 90 days and cannot access private customer data or commerce actions. Store a key privately as KLAIM_AGENT_API_KEY. `klaim-agent key-revoke` revokes only that supplied key. Never use Shopify Admin credentials with this client.

## Verify

```sh
brew test ecomvaulttt/klaim/klaim-agent
```

The Homebrew test checks executable startup and invalid-handle rejection without network calls. The macOS verification workflow also checks the real disconnected sandbox and MCP resource list. No purchase or real order is used.

Documentation: https://klaimamsterdam.com/developers
API and policies: https://klaim-agent-api.still-wind-6f53.workers.dev/openapi.json

This is a custom official tap; it is not a Homebrew core formula or an npm registry publication. The downloadable package is also available from https://klaimamsterdam.com/klaim-agent-cli.tgz.
