local Player = game:GetService("Player")
local player = Players.LocalPlayer

--Câu trả lời của chat bot=))
local chatbotResponses = {
    ["hello"] = "Hi there! How can I help you?", --NEW
    ["how are you"] = "I'm just a bot, but I'm doing fine!", --NEW
    ["what is your name"] = "I am your friendly chatbot!", --NEW
    ["bye"] = "Goodbye! Have a great day!", --NEW
    ["xin chào"] = "xin chào tôi có thể giúp gì cho bạn",
    ["ai là người tạo ra bạn"] = "Tôi được tạo ra bởi ThanhDan HUB",
    ["họ là con trai hay con gái"] = "Tất cả họ là con trai",
    ["họ có xấu trai không"] = "Xin đừng hỏi câu này",
    ["ai là chủ của ThanhDan HUB"] = "Hiện tại chủ của ThanhDan HUB là Sơn", 
}

--Bot phản hồi
local function getChatbotResponse(input)
    input = string.lower(input) -- Chuyển tin nhắn thành chữ thường
    return chatbotResponses[input] or "Sorry, I don't understand that"
end

--nghe người khác chat
local function onPlayerChatted(message)
    local response = getChatbotResponse(message) --Tìm câu trả lời

  --Hiển thị tin nhắn mà người khác không thấy=))
  game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "[Chatbot]: " .. response;
        Color = Color3.fromRGB(0, 170, 255); -- Màu xanh dương
    })
end

--Kết nối sự kiện khi gửi tin nhắn
player.Chatted:Connect(onPlayerChatted)
