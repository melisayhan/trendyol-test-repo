import logging
import time
from selenium import webdriver

import requests

class imageCheck:

    def checkImageWithResponseTime(self):
            driver = webdriver.Firefox()
            driver.get("https://www.trendyol.com")
            assert "Online Alışveriş Sitesi, Türkiye’nin Trend Yolu" in driver.title
            driver.find_element_by_class_name("fancybox-close").click()
            imgSrc = driver.find_elements_by_tag_name("img")   # get elements with <img> tag
            print("Images collected")
            print(imgSrc)
            for img in imgSrc:
                responseBegin = time.time() #get request begin time
                response = requests.get(img.get_attribute("src")) # get src of img element in list
                httpResponseStatus = response.status_code()  # get http response code for validation
                if httpResponseStatus == 200:     # if status_code == 200 image downloaded successfully
                    responseEnd = time.time() # get request end time
                    logging.info(responseEnd - responseBegin) # calculate end log the responses total time
                else:
                    logging.warning(img.get_attribute("src"))
                    logging.warning("image cannot be displayed after")
            logging.info("Image statuses imported under log.html")
            return
