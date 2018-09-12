# trendyol-data-driven-test

Here is Login Test Scenarios and Image check tests for Trendyol web site.

## Deployment

Please Use Pyhton 3.5 or higher, last versions of robot framework, Selenium2Library(named as SeleniumLibrary after v3.0), Selenium.

## Built With

* [Python](https://www.python.org/) - Pyhton
* [robotFramework](http://robotframework.org/) - The test framework used
* [selenium2Library](http://robotframework.org/Selenium2Library/Selenium2Library.html) - Web testing Library for robot framework
* [seleniumLibrary](https://www.seleniumhq.org/) - Web testing Library for Pyhton.(imageCheck.py)


## Project Structure

* Tester should add full directory of Resources and Library. (for instance <full directory>/data-driven-test/)
* Datas reading from inputData.robot file. (../data-driven-test/Data)
  Tester should add valid email and password variables to this document. (&{VALID_PASSWORD_USER})
  Tester should add valid email and invalid password variables to this document. (&{INVALID_PASSWORD_USER})
* Tests Run on loginTest.robot. (../data-driven-test/Tests)
* imageCheck is a custom library for checking image's response code and response time.
  

## Running the tests

For running tests for login and image check:

- Get in the directory project directory on terminal. (cd ../data-driven-test/Tests)

- Then you need to run loginTest.robot. (robot loginTest.robot)

- After runing test you will find test reportes as output.xml, log.html and report.html files under the Tests file.(../data-driven-test/Tests)

## Authors

* **Nuray Melis Ayhan** - *Initial work* - [melisayhan](https://github.com/melisayhan)

