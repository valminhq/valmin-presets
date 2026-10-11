# Adding a template

1. Build and test the server in Valmin, and make sure it boots with every mod.
2. On the server's **Settings** page, under **Share as a template**, choose **Create
   template code**, then **Copy code**.
3. Add `templates/<slug>/template.yaml`:

   ```yaml
   name: Vanilla QoL
   description: |
     Vanilla progression with less inventory juggling. Hard combat.
   code: valmin1:...
   ```

   `name` and `code` are required. Keep the code on one line, exactly as copied.
4. Optionally add `templates/<slug>/README.md` with what the template changes and why.
5. Add a row to the table in README.md and open a pull request.

## Rules

- The slug is lowercase letters, digits and dashes, such as `vanilla-qol`. It is the
  template's id, so don't rename it later.
- Mods come from Thunderstore or Hexium only. The code pins each version.
- No passwords, keys or webhook URLs in the description or the settings.
- To change a template, update the server in Valmin and copy a new code. Don't edit
  the code by hand.

## Reviewing

Paste the code from the pull request under **New from template → Or paste a template
code** and choose **Check code**. The preview lists the server settings, every pinned
mod and the config files the code changes, without creating anything. Valmin lists a
`template.yaml` it cannot read under **Shared templates**, with the reason.
