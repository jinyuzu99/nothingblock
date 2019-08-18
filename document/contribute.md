# contribute

## feedback

if you want to:

- ask question
- report bug
- request feature
- vote for feature request

please create or check [issue](https://github.com/sayo-melu/nothingblock/issues/new/choose) to make contribution.

if you want to chat with other user, please join our [telegram group](https://t.me/nothingblock).

## contribute to code

if you want to contribute directly to the code base, please follow the step below.

### get the source

`git clone https://github.com/sayo-melu/nothingblock.git`

### prerequisite

- [git](https://git-scm.com/)

- web browser

- ad blocker
  - [ublock original](https://github.com/gorhill/ublock)
  - [adblock plus](https://adblockplus.org)
  - [more...](https://bing.com/search?q=ad+blocker)

- code editor
  - [visual studio code](https://code.visualstudio.com/)
  - [more...](https://bing.com/search?q=code+editor)

### writing filter

setup with ublock original + visual studio code, other are similar.

1. open the website you want to block on your **web browser** with **ad blocker** enabled.
2. **secondary click** on the website element you want to block, then choose **block element**.
3. find the appropriate fliter in **cosmetic filters**, then choose **preview** to check your fliter.
4. choose **create** to create a new filter.
5. repeat step **2** ~ **4** until there is nothing to block.
6. go to **ad blocker** -> **dashboard** - > **my filter**, then copy all the filter.
7. create and open a new `[website name with lowercase and hyphen: sample-website].txt` file in `nothingblock/item/` with **code editor**.
8. paste the text to `[website name with lowercase and hyphen: sample-website].txt`.
9. edit the file in the format below:

  ```adp
  ! [website name: sample website]
    ! [website section 1]
      [filter 1]
      [filter 2]
      ...
    ! [website section 2]
      [filter 3]
      [filter 4]
      ...
  ```

### pull request

after writing your filter, you can pull request to nothingblock [master branch](https://github.com/sayo-melu/nothingblock/tree/master) with the description in [pull request template](../.github/pull_request_template.md) format.
