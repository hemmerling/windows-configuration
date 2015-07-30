#  @package   FizzBuzz
#  @file      FizzBuzz.ps1
#             FizzBuzz.psm1
#  @brief     Powershell application "FizzBuzz"
#  @author    Rolf Hemmerling <hemmerling@gmx.net>
#  @version   1.00
#  @date      2015-06-01
#  @copyright Apache License, Version 2.0
#
#  FizzBuzz - Powershell application "FizzBuzz"
#             FizzBuzz.psm1 - Module name
#             FizzBuzz.ps1 - Filename for use during Test-Driven-Development
#
#  Copyright 2015 Rolf Hemmerling
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

# 
# Cmdlet 
#  ConvertTo-FizzBuzz -Number 1
#  ConvertTo-FizzBuzz 1
#
function ConvertTo-FizzBuzz {
    [CmdletBinding()]
    #region Parameter Block
    param (
        [parameter(Mandatory=$true,ValueFromPipeline=$true)]
        [int32]$Number
    #endregion Parameter Block
    )
    PROCESS {
        Write-Verbose "ConvertTo-FizzBuzz -Number"
        FizzBuzz($Number)
    }
}

# 
# Cmdlet 
#  Get-FizzBuzz -Numbers 1,2,3,4,5
#  Get-FizzBuzz 1,2,3,4,5
#
function Get-FizzBuzz {
    [CmdletBinding()]
    #region Parameter Block
    param (
        [parameter(Mandatory=$true,ValueFromPipeline=$true)]
        [string[]]$Numbers
    #endregion Parameter Block
    )
    PROCESS {
        Write-Verbose "Get-FizzBuzz -Numbers"
        ForEach ($Number in $Numbers) {
            $intNum = [convert]::ToInt32($Number, 10)
            FizzBuzz($intNum)
        }
    }
}

# 
# Created by the PS command "New-Fixture -Name FizzBuzz"
# and then renamed to FizzBuzz00
#
function FizzBuzz00 {

}

<#
    .SYNOPSIS 
    FizzBuzz01 - Returns input value.

    .DESCRIPTION
    FizzBuzz01 - Returns input value.
    
    .PARAMETER anInputValue
    Positive Number -ge 1.

    .INPUTS
    None. You cannot pipe objects to FizzBuzz01.

    .OUTPUTS
    System.String. 
    FizzBuzz01 returns a string with the FizzBuzz answer.

    .EXAMPLE
    C:\PS> Get-FizzBuzz01 1

    .LINK
    http://www.github.com/hemmerling/fizzbuzz

    .LINK
    Get-FizzBuzz01
#>        
function FizzBuzz01($anInputValue) {
    return ($anInputValue)
}

<#
    .SYNOPSIS 
    FizzBuzz02 - Returns "Fizz" for input "3".

    .DESCRIPTION
    FizzBuzz02 - Returns "Fizz" for input "3".
    
    .PARAMETER anInputValue
    Positive Number -ge 1.

    .INPUTS
    None. You cannot pipe objects to FizzBuzz02.

    .OUTPUTS
    System.String. 
    FizzBuzz02 returns a string with the FizzBuzz answer.

    .EXAMPLE
    C:\PS> FizzBuzz02 3

    .LINK
    http://www.github.com/hemmerling/fizzbuzz

    .LINK
    FizzBuzz02
#> 
function FizzBuzz02($anInputValue) {
    if ($anInputValue -eq "3") {
        return ("Fizz")
    }
    else {
        return($anInputValue)
    }
}

<#
    .SYNOPSIS 
    FizzBuzz03 - Returns "Fizz" for input "3"
    and "Buzz" for input "5".

    .DESCRIPTION
    FizzBuzz03 - Returns "Fizz" for input "3"
    and "Buzz" for input "5".
    
    .PARAMETER anInputValue
    Positive Number -ge 1.

    .INPUTS
    None. You cannot pipe objects to FizzBuzz03.

    .OUTPUTS
    System.String. 
    FizzBuzz03 returns a string with the FizzBuzz answer.

    .EXAMPLE
    C:\PS> FizzBuzz03 5

    .LINK
    http://www.github.com/hemmerling/fizzbuzz

    .LINK
    FizzBuzz03
#> 
function FizzBuzz03($anInputValue) {
    if ($anInputValue -eq "3") {
        return ("Fizz")
    }
    else
    { 
      if ($anInputValue -eq "5") {
        return ("Buzz")
      }
      else {
        return($anInputValue)
      }
    }
}

<#
    .SYNOPSIS 
    FizzBuzz04 - Returns "Fizz" for input "3"
    and "Buzz" for input "5", covers multiple of "3".
    .DESCRIPTION
    FizzBuzz04 - Returns "Fizz" for input "3"
    and "Buzz" for input "5", covers multiple of "3".
    
    .PARAMETER anInputValue
    Positive Number -ge 1.

    .INPUTS
    None. You cannot pipe objects to FizzBuzz04.

    .OUTPUTS
    System.String. 
    FizzBuzz04 returns a string with the FizzBuzz answer.

    .EXAMPLE
    C:\PS> FizzBuzz04 6

    .LINK
    http://www.github.com/hemmerling/fizzbuzz

    .LINK
    FizzBuzz04
#> 
function FizzBuzz04($anInputValue) {
    if (($anInputValue % 3) -eq 0) {
        return ("Fizz")
    }
    else
    { 
      if ($anInputValue -eq "5") {
        return ("Buzz")
      }
      else {
        return($anInputValue)
      }
    }
}

<#
    .SYNOPSIS 
    FizzBuzz05 - Returns "Fizz" for input "3"
    and "Buzz" for input "5", covers multiple of "3"
    and "5".

    .DESCRIPTION
    FizzBuzz05 - Returns "Fizz" for input "3"
    and "Buzz" for input "5", covers multiple of "3"
    and "5".
    
    .PARAMETER anInputValue
    Positive Number -ge 1.

    .INPUTS
    None. You cannot pipe objects to FizzBuzz04.

    .OUTPUTS
    System.String. 
    FizzBuzz05 returns a string with the FizzBuzz answer.

    .EXAMPLE
    C:\PS> FizzBuzz05 10
    .LINK
    http://www.github.com/hemmerling/fizzbuzz

    .LINK
    FizzBuzz05
#> 
function FizzBuzz05($anInputValue) {
    if (($anInputValue % 3) -eq 0) {
        return ("Fizz")
    }
    else
    { 
      if (($anInputValue %5) -eq 0) {
        return ("Buzz")
      }
      else {
        return($anInputValue)
      }
    }
}

<#
    .SYNOPSIS 
    FizzBuzz05 - Returns "Fizz" for input "3"
    and "Buzz" for input "5", covers multiple of "3"
    and "5",  and of both.

    .DESCRIPTION
    FizzBuzz - Returns "Fizz" for input "3"
    and "Buzz" for input "5", covers multiple of "3"
    and "5", and of both.
    
    .PARAMETER anInputValue
    Positive Number -ge 1.

    .INPUTS
    None. You cannot pipe objects to FizzBuzz04.

    .OUTPUTS
    System.String. 
    FizzBuzz returns a string with the FizzBuzz answer

    .EXAMPLE
    C:\PS> FizzBuzz 15
    .LINK
    http://www.github.com/hemmerling/fizzbuzz

    .LINK
    FizzBuzz
#> 
function FizzBuzz($anInputValue) {
    $aReturnValue="";
    if ((($anInputValue % 3) -eq 0) -or (($anInputValue %5) -eq 0)) {
        if (($anInputValue % 3) -eq 0) {
           $aReturnValue="Fizz";
        }
        if (($anInputValue %5) -eq 0) {
            $aReturnValue=$aReturnValue+"Buzz";
        }
     }
     else {
        $aReturnValue=$anInputValue;
     }
     return($aReturnValue);
}
