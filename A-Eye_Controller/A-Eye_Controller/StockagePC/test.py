from datetime import date, datetime, timedelta
from time import time
import arborescence
import naming 
import stockage

## Run the arborescence tests
testArbo = True   
## Run the naming tests
testNaming = True
## Run the storage tests
testStockage = True

def testArbo_fn():
    """
    Process different calls to arborescence.getPath.
    """
    print(arborescence.getPath(date.today()))
    print(arborescence.getPath(date.today() - timedelta(days=1)))
    print(arborescence.getPath(date.today() - timedelta(days=30)))
    print(arborescence.getPath(date.today() - timedelta(days=365)))

def testNaming_fn():
    """
    Process different calls to naming.getNameFile.
    """
    print(naming.getNameFile(datetime.now()))
    print(naming.getNameFile(datetime.now() - timedelta(seconds=30)))
    print(naming.getNameFile(datetime.now(), "M"))

def testStockage_fn():
    """
    Process different calls to naming.getNameFile.
    """
    stockage.placeImage("pict.bmp")

# Test arborescence
if testArbo:
    testArbo_fn()
# Test naming
if testNaming:
    testNaming_fn()
# Test Stockage
if testStockage:
    testStockage_fn()    