# crowdmark-downloader

This is a script I wrote to download all of my Crowdmark assessments when I graduated.

I searched for similar tools but wasn't satisfied because other tools simply called Crowdmark's API.
My downloader is unique because it downloads each assessment's page as an HTML file to preserve the TA's
feedback on each image.

### Installation

Install Selenium (the browser automation tool to click on links and download images robotically)
`pip3 install -r requirements.txt`

Note: Selenium is a dependency and is kinda big. So you should probably make a python virtual env, source the virtual
env, then install it (so you can easily delete all the dependencies when you're done)

1) `python3 -m venv ./venv`
2) `source venv/bin/activate`
3) `pip3 install -r requirements.txt`

This link might help you if you come across a `The chromedriver version cannot be discovered` error:

https://stackoverflow.com/questions/77401357/the-chromedriver-version-cannot-be-discovered-selenium-python

### Usage

1) Run the script using this command `python3 download.py`.
    - This will launch a new Chrome webpage and navigate to Waterloo's Crowdmark page
2) Manually log in
    - I cannot automate this part because everyone has different credentials and 2FA schemes.
3) Return to the terminal and press enter.
    - This tells the script that you have finished logging in
4) Sit back and relax! All of the HTML pages will be saved underneath the `output/` directory (it will be created after
   you run the script)

### Important Usage Notes

This program assumes that you have a stable internet connection and that you are downloading all of the files in one
sitting.
If your computer goes to sleep, the script will be interrupted.

This script does NOT download archived courses. Since I don't have archived courses on my Crowdmark I couldn't test this functionality. It shouldn't be hard to update the script though.

### Maintenance

I will not be maintaining this repo because I just wanted to write this simple script in an afternoon to help with a
small task. Hopefully you will also find this code useful!

Oh, and also...........

### Troubleshooting

In case of an unexpected error (maybe Crowdmark has been updated), you may find it helpful to use [pdb](https://docs.python.org/3/library/pdb.html) to inspect the state of the downloader interactively. To use it, insert `import pdb; pdb.set_trace()` at the location where you would like to break into the debugger and run the downloader as usual.

# Congrats on Graduating!
