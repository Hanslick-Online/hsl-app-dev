#!/usr/bin/env python
import requests

redmine_id = "21428"
imprint_url = f"https://imprint.acdh.oeaw.ac.at/{redmine_id}"
print(imprint_url)
try:
    r = requests.get(imprint_url, timeout=2)
    imprint = r.content.decode("utf-8")
except Exception as e:
    imprint = (
        """Due to temporary technical difficulties, the legal notice for this website cannot be displayed.
        <br> However, general information can be found
          in the imprint of the <a href="https://www.oeaw.ac.at/en/oeaw/imprint">Austrian Academy of Sciences</a>."""
    )
    print(e)

with open("data/imprint.xml", "w") as imprint_file:
    imprint_file.write(imprint)
