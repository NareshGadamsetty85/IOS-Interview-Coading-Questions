import UIKit

/*
 Sort a list of dates :
 
 Sort a list of dates in ascending order (so in order from past to present) Dates are described below.
 
 Each date is in the form dd mm yyyy where :
 
 * dd => [0-31]
 * mmm => [Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec]
 * yyyy is four digits
 
 For example dates = [’01 Mar 2017’, ’03 feb 2017’,’15 jan 1998’] sorts to [’15 jan 1998’,’03 feb 2017’,’01 Mar 2017’]
 
 Function Description :
 
 Complete the function sortDates in the editor. The function must return an array of date strings sorted chronologically ascending.
 
 SortDates has the following parameter: dates[dates[0]……dates[n-1]] an array of strings, each field separated by a space
 
*/


struct SortDates
{
    
    var datesArray : [Date] = []
    var dateFormatter = DateFormatter()
    
    
  mutating  func sortDatesOperation(datesData : [String]) -> [Date]
  {
        
        dateFormatter.dateFormat = "dd MMM yyyy"
    
       for date in datesData
       {
        
        let convertedDate  =  dateFormatter.date(from: date)
        
        if(convertedDate != nil)
        {
        datesArray.append(convertedDate!)
        }
        else
        {
            print("Fail to convert into date")
        }
        }
        
      datesArray.sort(){$0 < $1}
      print(datesArray)
    
    return datesArray
    
    }
    
}

var sdObject = SortDates()
let dateStringsArray = ["01 Mar 2017","03 Feb 2017","15 Jan 1998"]
sdObject.sortDatesOperation(datesData: dateStringsArray)






