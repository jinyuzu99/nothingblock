# Contributing

## Feedback

If you want to:

- Ask questions
- Report bugs
- Request features
- Vote for feature requests

Please create or check [issues](https://github.com/sayo-melu/nothingblock/issues/new/choose) to make contribution.

If you want to chat with other users, please join our [Telegram Group](https://t.me/nothingblock).

## Contributing to code

If you want to contribute directly to the code base, please follow the steps below.

### Getting the sources

`git clone https://github.com/sayo-melu/nothingblock.git`

### Prerequisites

- [Git](https://git-scm.com/) or [GitHub Desktop](https://desktop.github.com)

- Web browser

- Ad blocker
  - [uBlock Original](https://github.com/gorhill/uBlock)
  - [Adblock Plus](https://adblockplus.org)
  - [more...](https://bing.com/search?q=ad+blocker)

- Code editor
  - [Visual Studio Code](https://code.visualstudio.com/)
  - [more...](https://bing.com/search?q=code+editor)

### Writing filters

Setup with uBlock Original + Visual Studio Code, others are similar.

1. Open the website you want to block on your **Web browser** with **Ad blocker** enabled.
2. **Secondary click** on the website element you want to block, then choose **Block Element**.
3. Find the appropriate fliter in **Cosmetic filters**, then choose **Preview** to check your fliter.
4. Choose **Create** to create a new filter.
5. Repeat step **2** ~ **4** until there is nothing to block.
6. Go to **Ad blocker** -> **Dashboard** - > **My filters**, then copy all the filters.
7. Create and open a new `[Website name with lowercase and hyphen: sample-website].txt` file in `nothingblock/Item/` with **Code editor**.
8. Paste the text to `[Website name with lowercase and hyphen: sample-website].txt`.
9. Edit the file in the format below:

    ```adp
    ! [Website name with normal case and space and space: Sample Website]
        ! [Website section 1]
            [filter 1]
            [filter 2]
            ...
        ! [Website section 2]
            [filter 3]
            [filter 4]
            ...
    ```

### Pulling Requests

After writing your filter, you can pull request to our [master branch](https://github.com/sayo-melu/nothingblock/tree/master) with the description in the format (also see in [Pull request template](../.github/PULL_REQUEST_TEMPLATE.md)) below:

```markdown
Add supported website(s):

- [Website name with normal case and space]
- ...

Add items to supported website(s):

- [Website name with normal case and space] ([Detail])
- ...

Fix issues on supported website(s):

- [Website name with normal case and space] ([Detail])
- ...
```
