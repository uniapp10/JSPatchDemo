//console.log('+++++++++++++=//  Copyright © 2016年 zhudong. All rights reserved.');
/*
 require('UIView').alloc().init();
 //调用类方法
 var view = UIView.alloc().init();
 //调用实例方法
 view.setNeedsLayout();
 //参数传递
 var bigView = UIView.alloc().init();
 bigView.addSubview(view);
 //属性的获取
 bigView.setBackgroundColor(redColor);
 var bgColor = bigView.backgroundColor;
 //方法名转换
 var indexPath = require('NSIndexPath').indexPathForRow_inSection(0,1);
 //defineClass
 //defineClass("ViewController",{ tableView_didSelectRowAtIndexPath: function(tableView, indexPath){
 //
 //            },
 //        })
 */
//defineClass("类名", [属性],{实例方法},{类方法})
defineClass("ViewController",[],{
            
            tableView_numberOfRowsInSection: function(tableView, indexPath){
            //            console.log('***********');
            return 1;
            },
            },{})
//调用未覆盖前的实例方法
//defineClass("ViewController", {
//            viewDidLoad: function() {
//            self.ORIGviewDidLoad();
//            self.testLog();
//            },
//            })
//覆盖类方法
defineClass("ViewController", {}, {
            testLogOne: function(){
            console.log('*****ModifyClassFunctionOne******');
            },
            testLogTwo: function(){
            console.log('*****ModifyClassFunctionTwo******');
            }
            })
//覆盖分类方法
defineClass("ViewController",{
            categoryTest: function(){
            console.log('*****ModifycategoryTest******');
            },
            })
//修改属性
defineClass("ViewController", {
            viewDidLoad: function() {
            self.ORIGviewDidLoad();
            self.setValue_forKey(10,"_count");
            var num = 10;
            console.log('%d ******',self.count());
            },
            })
//修改block
defineClass("ViewController", {
            blockTest: function(){
            
            },
            });


