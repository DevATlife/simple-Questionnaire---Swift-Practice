
import UIKit

class ViewController: UIViewController {
/*------------- 1 ----------------------- */
 var Question1 = "Who are you?"
 var btn1_title = "Man"
 var btn2_title = "Woman"
    
    
 var Question2 = "Do you love hiking and coffee?"
 var Answer2_1 = "I think so"
 var Answer2_2 = "No"
 var AnswerLabel_1 = "Then you are Jeary!"
 var AnswerLabel_2 = "Then you are stranger!"
    
        var Question3 = "Do you like hiking and music?"
        var Answer3_1 = "Yes, I do"
        var Answer3_2 = "No"
        var AnswerLabel_3 = "Then you are *****!"
        var AnswerLabel_4 = "Then you are *****!"
 /*-------------------------------------*/
 
    
/*------------- 1.1 -----------------------*/
    var stepsIndex = 1
/*------------------------------------*/
    
    
 /*------------- 2 -----------------------*/
 // linking the label and buttons as outlet type of connection
    @IBOutlet weak var Restart_btn: UIButton!
    @IBOutlet weak var QuestionPlaceHolder: UILabel!
    
    @IBOutlet weak var button1: UIButton! //tagged as 1
 
    @IBOutlet weak var button2: UIButton!    // tagged as 2
    
    func initialPhase(){
        QuestionPlaceHolder.text = Question1
        button1.setTitle(btn1_title, for: .normal)
        button2.setTitle(btn2_title, for: .normal)
        button1.isHidden = false
        button2.isHidden = false
        stepsIndex = 1
        Restart_btn.isHidden = true
    }
    /*------------------------------------*/
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
/*------------- 3 -----------------------*/
  initialPhase()
/*------------------------------------*/
    }


    
    
/*------------- 4 -----------------------*/
// A-linking the button 1 as action type of connection
// B- link button2 to this same function
// C- make sure the sender is type of UIButton from the options
   
    @IBAction func clicked_btn(_ sender: UIButton) {
        
        /*------------ button1 tag1 route -------------*/
        if sender.tag == 1 && stepsIndex == 1 {
            QuestionPlaceHolder.text = Question2
            button1.setTitle(Answer2_1, for: .normal)
            button2.setTitle(Answer2_2, for: .normal)
            
            stepsIndex = 2
        }
      
        
        else if sender.tag == 1 && stepsIndex == 2  {
            QuestionPlaceHolder.text = AnswerLabel_1
            button1.isHidden = true
            button2.isHidden = true
            
            stepsIndex = 99
        }
        
        else if sender.tag == 2 && stepsIndex == 2  {
            QuestionPlaceHolder.text = AnswerLabel_2
            button1.isHidden = true
            button2.isHidden = true
            
            stepsIndex = 99
        }
       /*-------------------------*/
        
       /*------------ button2 tag2 route  // This is the assignment-------------*/
        
        else if sender.tag == 2 && stepsIndex == 1 {
            QuestionPlaceHolder.text = Question3
            button1.setTitle(Answer3_1, for: .normal)
            button2.setTitle(Answer3_2, for: .normal)
            
            stepsIndex = 3
        }
        else if sender.tag == 1 && stepsIndex == 3  {
            QuestionPlaceHolder.text = AnswerLabel_3
            button1.isHidden = true
            button2.isHidden = true
            
            stepsIndex = 999
        }
            
            
        else if sender.tag == 2 && stepsIndex == 3  {
            QuestionPlaceHolder.text = AnswerLabel_4
            button1.isHidden = true
            button2.isHidden = true
            
            stepsIndex = 999
        }
            
        if stepsIndex == 99 || stepsIndex == 999 {
            Restart_btn.isHidden = false
        }
        /*------------------------------------*/
        }
    
    
    
    
    @IBAction func restart(_ sender: UIButton) {
        
            initialPhase()
    }

}/*---- End tag of UIView class ---*/


