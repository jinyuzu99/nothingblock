# Contribute

## Feedback

If you want to:

- Ask question
- Report bugs
- Request feature
- Vote for feature request

Please create or check issue to make contribution.

## Contribute to Code

If you want to contribute directly to the code base, please follow the steps below.

### 1. Environment

- Git
- Web browser
- Ad Blocker
  - uBlock Origin
  - other...
- Code editor

### 2. Get the Source

```
git clone https://github.com/jinyuzu99/nothingblock
```

### 3. Writing Filters

Setup with **uBlock Origin** + **Visual Studio Code**, others are similar.

1. Open the website you want to block on your **web browser** with **uBlock Origin** enabled.
2. **Secondary click** on the website element you want to block, then choose **Block Element**.
3. Find the appropriate fliter in **Cosmetic Filters**, then choose **Preview** to check your fliter.
4. Choose **Create** to create a new filter.
5. Repeat step **2** - **4** until there is nothing to block.
6. Go to **uBlock Origin** -> **Dashboard** -> **My Filter**, then copy all the filter.
7. Create and open a new `[website name with lowercase and hyphen: sample-website].txt` file in `nothingblock/website/` with ****.
8. Paste the text to `[website name with lowercase and hyphen: sample-website].txt`.
9. Edit the file in the format below:
    ```adp
    ! [Website Section 1]
      [filter 1]
      [filter 2]
      ...
    ! [Website Section 2]
      [filter 3]
      [filter 4]
      ...
    ```

### 4. Pull Request

After writing your filters, you can pull request to NothingBlock.
