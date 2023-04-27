<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMI Calculator</title>

<link rel="stylesheet" href="Stylesheet/Home.css">
<script src="Js/Home.js" defer></script>
</head>
<body>
 <div class="Container">
      <form action="calculate" method="post" id="form">
        <h1>BMI Calculator</h1>
        <div class="row">   
                   <label for="height"><B>Height:</B></label>
                   <input type="text" name="height" id="height" placeholder="height CentiMeter">
                   <div class="error"></div>
        </div>

       <div class="row">
                    <label for="weight"><B>Weight:</B></label>
                    <input type="text" name="weight" id="weight" placeholder="Weight">
                    <div class="error"></div>
        </div>

            <div class="btn">

                   
                    <button type="submit" id="btn">Calculate</button>

            </div>

            <div class="Bmi">
              <h2>${val.height}</h2>
              <h2>${val.weight}</h2>
              <h2>${val.bmi}</h2>
            </div>

            <div class="result">
              <div id="Underweight">
                <h3>${val.Result1}</h3>
              </div>
      
              <div id="normel">
                <h2>${val.Result2}</h2>
              </div>
      
              <div id="Overweight">
                 <h2> ${val.Result3}</h2>
              </div>
              
              <div id="Obese">
                <h2>${val.Result4}</h2>
             </div>
          </div>
            

      </form> 

    </div>

</body>
</html>