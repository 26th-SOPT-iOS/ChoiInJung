# Choi In Jeong 🤓
>26th OUT SOPT iOS part YB 


## 1st-week Seminar   


 **1. iOS Basic**
 * Xcode basic
 * 프로젝트 생성

 **2.  UI 요소 다루기**
* StoryBorad에서 `Shift` + `command `+ `L` 누른 후 Objects 창에서 Text Field, Label, Switch, Button 등을 Drag & Drop으로 가져다가 사

**3.  화면 전환**
 * **Segue** (StoryBoard에서 바로 지정)
     * UIview를 검색하여 View controller를 하나 생성 _(2개의 VC 준비)_
     * First VC의 Button을 Second VC에 `control`+ `Drag` 후 Action Segue에서 PresentModally

* **Navigation Controller**
    * View Controller 간에 계층구조를 가지게 하며, **Stack**으로 관리됨
    * 가장 먼저 Stack에 추가된 VC가 **RootViewControlle**r가 됨
    * **Push**와 **Pop**으로 페이지 전환이 이루어 짐
* **뒤로가기 구현**

```Swift
    @IBAction func dismissView(_ sender: Any) {
        self.dismiss(animated : true, completion: nil)
             }
```       

**4. 화면 간 데이터 전달**
* Cocoa Touch Class의 UIViewController 파일 생성 후 각 ViewController에 해당 파일 연결
* `Control` + `Option` + `Command` + `+` 로 **Assistance** 창 열기
*  `@IBOutlet`과 `@IBAction`으로 화면에 있는  Object를 코드에 연결 후 아래와 같은 코드로 데이터 전달 
```Swift
@IBAction func transferData(_ sender: Any) {
            guard let receiveViewController = self.storyboard?.instantiateViewController
            (identifier: "secondViewController") as? SecondViewController else {return}
            
            receiveViewController.name = nameTextField.text
            receiveViewController.email = emailTextField.text
            receiveViewController.isOnOff = sampleSwitch.isOn
            receiveViewController.frequency = sampleSlider.value
        
            self.present(receiveViewController, animated: true, completion: nil)
    }
```

_참고 )_ [_첫번째 세미나 실습 자료_](https://github.com/26th-SOPT-iOS/ChoiInJung/tree/master/iOS_FirstWeek_Seminar_Exercise/iOS_FirstWeek_Seminar_Exercise)

