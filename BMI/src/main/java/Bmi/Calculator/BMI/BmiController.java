package Bmi.Calculator.BMI;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class BmiController {
	
	@GetMapping("home")
	public String Homepage() {
		
		return"Home.jsp";
	}
	
	
	 @PostMapping("calculate")
	    public ModelAndView calculate(int height,int weight,Model model){

	       
	        float meter=height/100f;
	        float divisionbytwo=(weight)/(meter*meter);

	        float BMI=divisionbytwo ;
	       model.addAttribute("height", "Height = "+height);
	       model.addAttribute("weight", "Weight = "+weight);
	       model.addAttribute("bmi", "BMI = "+BMI);
	       
	        if(BMI<=18.5){
	        	model.addAttribute("Result1", "Under Weight");
	        }else if(BMI<=24.9){
	        	model.addAttribute("Result2", "Normel");
	        }else if(BMI<=29.9){
	        	model.addAttribute("Result3", "Over Weight");
	        }else{
	            
	        	model.addAttribute("Result4", "Obese");
	        }
	        
	        ModelAndView mav=new ModelAndView("Home.jsp");
	        mav.addObject("val", model);
	    

	        return mav;
	        
	    }

}
