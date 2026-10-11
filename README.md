# Valmin presets

Ready-made Valheim server setups for [Valmin](https://github.com/valminhq/valmin).
Each one is a template code: launch settings, mods pinned to a version, and the config
settings the template changes.

## Use a template

**In Valmin.** Choose **New from template** on the server list. Every template here is
listed under **Shared templates**. Choose **Use**, check the preview, then choose
**Create server**.

**By hand.** Open a template's `template.yaml`, copy the `code` value, and paste it under
**Or paste a template code** on the same page.

## Templates

| Template | What it is |
| -------- | ---------- |
| default-server-QoL | My vanila-compatible server with no client-required mods. QoL features from ArgusMagnus and optimizations |

## Layout

```
templates/
  <slug>/
    template.yaml   name, description (optional), code
    README.md       optional notes for readers; Valmin ignores it
```

To add a template, see [CONTRIBUTING.md](CONTRIBUTING.md).
