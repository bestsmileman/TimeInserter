; SmartTimeInserter.ahk (AHK v2 최종 수정본)

F9::{
    RunWait("python get_time.py", , "Hide")
    Sleep 300
    TimeText := FileRead("temp_time.txt", "UTF-8")
    A_Clipboard := TimeText
    Sleep 100
    Send("^v")
}

F10::{
    ActiveTitle := WinGetTitle("A")
    RunWait("python get_time.py", , "Hide")
    Sleep 300

    NameText := ""
    LowerTitle := StrLower(ActiveTitle)

    if InStr(LowerTitle, "gemini")
        NameText := "제미니야~"
    else if InStr(LowerTitle, "chatgpt") || InStr(LowerTitle, "gpt") || InStr(LowerTitle, "chat") || InStr(LowerTitle, "openai") || InStr(LowerTitle, "대화") || InStr(LowerTitle, "챗지피티")
        NameText := "대박아~"
    else if InStr(LowerTitle, "copilot") || InStr(LowerTitle, "bing") || InStr(LowerTitle, "edge") || InStr(LowerTitle, "ai")
        NameText := "빙고야~"
    else
        NameText := "안녕~"

    TimeText := FileRead("temp_time.txt", "UTF-8")
    FinalText := TimeText . "`r`n" . NameText
    if FileExist("temp_text.txt")
        FileDelete("temp_text.txt")
    FileAppend(FinalText, "temp_text.txt", "UTF-8")
    Sleep 100
    A_Clipboard := FileRead("temp_text.txt", "UTF-8")
    Sleep 300
    Send("^v")
}
