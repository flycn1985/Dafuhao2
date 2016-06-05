KeepScreen True

//PC端运行脚本前必须先点击【界面设计】上方的【预览】按钮，在手机屏幕显示的界面中修改控件值并保存，再点运行按钮即可读取界面控件值
Delay 3000
Dim 培训时间,深造时间,进修时间,沟通时间
进修时间 = ReadUIConfig("进修时间")
培训时间 = ReadUIConfig("培训时间")
深造时间 = ReadUIConfig("深造时间")
沟通时间 = ReadUIConfig("沟通时间")

Dim screenX,screenY
screenX = GetScreenX()
screenY = GetScreenY()

Call 信息提示("进修次数: " & 进修时间)
Call 信息提示("培训次数: " & 培训时间)
Call 信息提示("深造次数: " & 深造时间)
Call 信息提示("沟通次数: " & 沟通时间)


//Dim jinxiu = 0
//Dim peixun = 1
//Dim shenzao = 2
//Dim goutong = 10
//
//Dim jx = 0
//Dim px = jinxiu
//Dim sz = px + peixun
//Dim gt = sz + shenzao
//Dim max = gt + goutong

Dim jx = 0
Dim px = CLng(进修时间)
Dim sz = px + CLng(培训时间)
Dim gt = sz + CLng(深造时间)
Dim max = gt + CLng(沟通时间)

Dim count = 0

//For 2000
//	Call 聊天()
//Next

Call Run()

//--------------------------------------------------------------------------------------------
Sub Run()
	For 100000000
		Call findMoney()
		Delay 1000
		
		Call 炒股()
		Delay 1000
		
		Call 好友()
		Delay 1000
		
		Call 工会中心()
		Delay 1000
		
		Call 炒股()
		Delay 1000
		
		Call 培养()
		Delay 1000
		
		Call 公关()
		Delay 1000
		
		Call 炒股()
		Delay 1000
		
		Call 采购()
		Delay 1000
		
		Call 炒股()
		Delay 1000
		
		Call 聊天()
		Delay 1000
	Next
End Sub

//--------------------------------------------------------------------------------------------
Sub 好友()    
	// 菜单
	Touch 1416, 1210, 500
	Delay 1000
	
	//　判断好友有红点
	Dim intX,intY
	FindColor 527,468,537,479, "2A29F9" ,0, 0.9, intX, intY
	If intX > -1 And intY > -1 Then
		TracePrint intX
		TracePrint intY
		
		// 好友
		Touch 486,534, 500
		Delay 1000
		
		// 合作
		Touch 1189,1852, 500
		Delay 1000
		
		// 确认
		Touch 773,1335, 500
		Delay 1000		
			
		Touch 294,1853, 500
		Delay 1000
		
		Touch 1100,1850, 500
		Delay 1000
		
		Touch 774,1852, 500
		Delay 1000
		
		Touch 232,159, 500
		Delay 1000
			
		Call BackToHome()
	Else 
		Touch 1416, 1210, 500
	End If	
	
End Sub

//--------------------------------------------------------------------------------------------
Sub 工会中心()    
	// 菜单
	Touch 1416, 1210, 500
	Delay 1000
	
	//　判断工会有红点	
	Dim intX,intY
	FindColor 530,900,534,904, "2625F5" ,0, 0.9, intX, intY
	If intX > -1 And intY > -1 Then
		TracePrint intX
		TracePrint intY
		
		// 工会中心
		Touch 481,951, 500
		Delay 1000
		
		// 工会投票
		Touch 759,310, 500
		Delay 1000
		
		For 37
			Touch 1182,878, 500
			Delay 200
		Next
		
		Call BackToHome()
	Else 
		Touch 1416, 1210, 500
		Delay 1000
	End If
	
	
End Sub
    
    
//--------------------------------------------------------------------------------------------
Sub BackToHome()
    // 关闭
	Touch 1302, 155, 1000
	Delay 2000
	
	Call HomeCheck()
End Sub


//--------------------------------------------------------------------------------------------
Sub HomeCheck()	
	// 判断是否是桌面，蓝色圆圈
	Dim intX,intY
	FindColor 35,87,39,91, "E7E81F" ,0, 0.9, intX, intY
	If intX > -1 And intY > -1 Then
		TracePrint intX
		TracePrint intY
	Else 
		TracePrint "1"
		Call reset()
		Exit Sub
	End If	
	
	FindColor 228,168,232,172, "AFC00D" ,0, 0.9, intX, intY
	If intX > -1 And intY > -1 Then
		TracePrint intX
		TracePrint intY
	Else 
		TracePrint "2"
		Call reset()
		Exit Sub
	End If
End Sub


//--------------------------------------------------------------------------------------------
Sub reset()
	
	KeyPress "Home"
	Delay 2000
	
	KeyPress "Home"
	Delay 2000
	
	KeyPress "Home"
	Delay 2000
	
	KeyPress "Home"
	Delay 2000
	
	
	// 双击home键
	KeyPress "Home"
	Delay 50
	KeyPress "Home"
	Delay 1000
	
	// 上划删掉进程
	Swipe screenX/2, screenY/2, screenX/2, 0
	
	
	KeyPress "Home"
	Delay 2000
	
	KeyPress "Home"
	Delay 2000
	
	KeyPress "Home"
	Delay 2000
	
	KeyPress "Home"
	Delay 2000
	
	
	Swipe screenX/2, screenY/2, 0, screenY/2
	Delay 500
	
	// 启动大富豪2
	Touch 949,248, 500
	Delay 1000
	
	Touch 769,996, 500
	Delay 20000
	
	Touch 767,1805, 500
	Delay 10000
	
	
	// 查找钱
	Call findMoney()
End Sub

//--------------------------------------------------------------------------------------------
Sub findMoney()
	// 查找钱
	
	Touch 676, 1943, 500
	Delay 1000
	Touch 780, 655, 500
	Delay 500
	

// 找图功能在手机上不好使，只能找点了，需要放大视图，让钱变的大点，否则会失败。
//	Dim intX, intY
//	FindPic 0, 0, 0, 0, "Attachment:money.png", "000000", 0, 0.9, intX, intY
//	//如果没有找到，intX和intY的值都会被置为-1
//	If intX > -1 And intY > -1 Then 
//		Touch intX+4, intY+4, 500
//		TracePrint "222"
//	End If

//	Dim intX,intY
//	FindColor 555,591,936,966, "917C03" ,0, 0.9, intX, intY
//	If intX > -1 And intY > -1 Then
//		FindColor 555,591,936,966, "DDEAE3" ,0, 0.9, intX, intY
//		If intX > -1 And intY > -1 Then
//			FindColor 555,591,936,966, "4EA04F" ,0, 0.9, intX, intY
//			If intX > -1 And intY > -1 Then
//				Touch intX, intY, 500
//			End If
//		End If
//	End If
	
	Dim intX,intY
	FindColor 555,591,936,966, "8A7505" ,0, 1, intX, intY
	If intX > -1 And intY > -1 Then
		Touch intX, intY, 500
		Delay 1000
	End If



		
End Sub



Function getPeiyangId()
    Dim real_count
    real_count = count Mod max
    TracePrint real_count
    TracePrint count
    TracePrint max
    If real_count >= jx And real_count < px Then 
    	getPeiyangId = "进修"
   	ElseIf real_count >= px And real_count < sz Then 
    	getPeiyangId = "培训"
    ElseIf real_count >= sz And real_count < gt Then 
    	getPeiyangId = "深造"
    ElseIf real_count >= gt And real_count < max Then 
    	getPeiyangId = "沟通"
    End If
    
    count = count + 1
End Function


Sub 培养()
	// 事务
	Touch 1419, 1427, 500
	Delay 1000
	
	Dim intX,intY
	FindColor 309, 598, 313, 602, "B2991E", 0, 0.9, intX, intY
	If intX > -1 And intY > -1 Then
		Dim pyId	
		pyId = getPeiyangId()
		
		If pyId = "培训" Then
			Call 培训()
		ElseIf pyId = "深造" Then	
			Call 深造()
		ElseIf pyId = "进修" Then
			Call 进修()
		ElseIf pyId = "沟通" Then
			Call 沟通()
		End If
		
		Call BackToHome()
	Else 
		// 关闭
		Touch 1202,437, 500
		Delay 1000
	End If
End Sub

Sub 公关()
	// 事务
	Touch 1419, 1427, 500
	Delay 1000
	
	Dim intX,intY
	FindColor 658,1318,662,1322, "B2991D" ,0, 0.9, intX, intY
	If intX > -1 And intY > -1 Then
		// 宣传
		Touch 765, 1496, 1000
		Delay 2000
		
		//C币
		Touch 1100, 1870, 1000
    	Delay 2000
    	
    	//C币
		Touch 1100, 1870, 1000
    	Delay 2000
    	
    	//C币
		Touch 1100, 1870, 1000
    	Delay 2000
    	
    	Call BackToHome()
    Else 
		// 关闭
		Touch 1202,437, 500
		Delay 1000
	End If	
	
End Sub

Sub 采购()
	// 事务
	Touch 1419, 1427, 500
	Delay 1000

	Dim intX,intY
	FindColor 1025,1322,1029,1326, "B2991D" ,0, 0.9, intX, intY
	If intX > -1 And intY > -1 Then
		// 采购
		Touch 1135,1497, 1000
		Delay 2000
		
		//C币
		Touch 1100, 1870, 1000
    	Delay 2000
    	
    	//C币
		Touch 1100, 1870, 1000
    	Delay 2000    	
    	
    	Call BackToHome()
    Else 
		// 关闭
		Touch 1202,437, 500
		Delay 1000
	End If	
	
End Sub

Sub 炒股()
	// 股市
	Touch 96,1950, 500
	Delay 1000
	
	// 第三只股票
	Touch 887,499, 500
	Delay 1000
	
	// 找到白色数字
	Dim intX,intY
	FindColor 1216,845,350,1439, "AFFCFE" ,4, 0.9, intX, intY
	If intX > -1 And intY > -1 Then
		TracePrint intX
		TracePrint intY
		
		If intY > 1360 Then 
			// 低价买入
			Touch 1228,1863, 500
			Delay 1000
		ElseIf intY < 890 Then
			Dim intA,intB
			FindColor intX,intY + 40,intX - 100,845, "FDFCED", 2, 0.9, intA, intB
			If intA > -1 And intB > -1 Then
				TracePrint intA
				TracePrint intB
				If intB < 847 Then
					// 最高价卖出
					Touch 354, 1851, 500
					Delay 1000
				End If
			End If
		End If
	End If
	
//	// 第二只股票
//	Touch 664,534, 500
//	Delay 1000
//	
//	// 找到白色数字
//	FindColor 1216,845,350,1439, "AFFCFE" ,4, 0.9, intX, intY
//	If intX > -1 And intY > -1 Then
//		TracePrint intX
//		TracePrint intY
//		
//		If intY > 1370 Then 
//			// 低价买入
//			Touch 1228,1863, 500
//			Delay 1000
//		ElseIf intY < 890 Then
//			FindColor intX,intY + 40,intX - 100,845, "FDFCED", 2, 0.9, intA, intB
//			If intA > -1 And intB > -1 Then
//				TracePrint intA
//				TracePrint intB
//				If intB < 847 Then
//					// 最高价卖出
//					Touch 354, 1851, 500
//					Delay 1000
//				End If
//			End If
//		End If
//	End If

	Call BackToHome()	
	
End Sub

Sub 聊天()

	If DateTime.Hour() = 1 And DateTime.Minute() = 0 Then
		// 聊天
		Touch 123,1632, 500
		Delay 1000
		
		Touch 1112,1882, 500
		Delay 1000
		
		Touch 979,1629, 500
		Delay 1000
		
		Touch 1251,1428, 500
		Delay 1000
		
		Swipe screenX / 2, screenY / 2, screenX / 2, screenY
		Delay 1000
	
		Call BackToHome()	
	End If
End Sub

//--------------------------------------------------------------------------------------------
Sub 培训()		
	
	// 培养
	Touch 903, 782, 500
	Delay 1000
	
    // 培训
	Touch 633, 302, 500
    Delay 1000

	//C币
	Touch 1100, 1870, 1000
    Delay 3000

End Sub

//--------------------------------------------------------------------------------------------
Sub 深造()
	
	// 培养
	Touch 903, 782, 500
	Delay 1000
	
    // 深造
	Touch 906, 302, 500
    Delay 1000

	//C币
	Touch 1100, 1870, 500
    Delay 3000
 
End Sub


//--------------------------------------------------------------------------------------------
Sub 进修()

	// 培养
	Touch 903, 782, 500
	Delay 1000
	
    // 进修
	Touch 333, 302, 500
    Delay 1000

	//C币
	Touch 1100, 1870, 500
    Delay 10000
    
    //返回
	Touch 768, 1730, 1000
    Delay 2000
 
End Sub

//--------------------------------------------------------------------------------------------
Sub 沟通()
	
	// 培养
	Touch 903, 782, 500
	Delay 1000
	
    // 沟通
	Touch 1200, 302, 500
    Delay 1000

	//C币
	Touch 1100, 1870, 500
    Delay 3000
 
End Sub


//--------------------------------------------------------------------------------------------
Sub 信息提示(内容)
    TracePrint 内容
    ShowMessage 内容
    Delay 300
End Sub