import logging
import time
from selenium import webdriver

import requests

class imageCheck:

    def checkImageWithResponseTime(self):
            driver = webdriver.Firefox()
            driver.get("https://www.trendyol.com")
            assert "Online Alışveriş Sitesi, Türkiye’nin Trend Yolu" in driver.title
            driver.implicitly_wait(5)
            driver.find_element_by_class_name("fancybox-close").click()
            driver.implicitly_wait(3)
            imgSrc = driver.find_elements_by_tag_name("img")
            print("Images collected")
            print(imgSrc)
            for img in imgSrc:
                responseBegin = time.time() #response begin time
                response = requests.get(img.get_attribute("src"))
                httpResponseStatus = response.status_code()
                if httpResponseStatus == 200:
                    responseEnd = time.time()
                    logging.info(responseEnd - responseBegin)
                else:
                    responseEnd = time.time()
                    logging.warning("image cannot be displayed")
                logging.info("Image response time is :")
                logging.info(responseEnd - responseBegin)
            logging.info("Image statuses imported under log.html")
            return
