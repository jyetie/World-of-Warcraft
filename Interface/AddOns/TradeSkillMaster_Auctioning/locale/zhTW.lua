-- TradeSkillMaster_Auctioning Locale - zhTW
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Auctioning/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Auctioning", "zhTW")
if not L then return end

L["12 hours"] = "12小時"
L["24 hours"] = "24小時"
L["48 hours"] = "48小時"
L["A category contains groups with similar settings and acts like an organizational folder. You may override default settings by category (and then override category settings by group)."] = "一個類別包含一些設定和功能都類似的群組，就像一個組織目錄，你可以自定類別設定從而覆蓋掉預設設定（同樣的，自定群組設定會覆蓋掉父類中的自定設定）。"
L["Add a new player to your blacklist."] = "新增玩家到你的黑名單。"
L["Add a new player to your whitelist."] = "新增玩家到你的白名單。"
L["Add category"] = "新增分類"
L["Added %s items to %s automatically because they contained the group name in their name. You can turn this off in the options."] = "自動新增%s到%s因為在他們的名稱包含著群組名稱。你可以關掉這設定。"
L["Added the following items to %s automatically because they contained the group name in their name. You can turn this off in the options."] = "自動新增以下物品到%s因為在他們的名稱包含著群組名稱。你可以關掉這設定。"
L["Add group"] = "新增群組"
L["Add Item to New Group"] = "新增物品到新群組"
L["Add Item to Selected Group"] = "新增物品到選擇的群組"
L["Add Item to TSM_Auctioning"] = "新增物品到TSM_Auctioning"
L["Add player"] = "新增玩家"
L["Add/Remove"] = "新增/移除"
L["Add/Remove Groups"] = "新增/移除群組"
L["Add/Remove Items"] = "新增/移除物品"
L["Advanced"] = "進階"
L["Advanced Price Settings (Reset Method)"] = "進階價格設定(重放方法)"
L["A group contains items that you wish to sell with similar conditions (stack size, fallback price, etc).  Default settings may be overridden by a group's individual settings."] = "群組包含一些相同條件的物品(堆疊大小，回退價等等)，預設設定會依據群組的個別設定被覆蓋。"
L["All auctions of this duration and below will be canceled when you press the \"Cancel Low Duration Auctions\" button"] = "所有在這期間的拍賣且以下會被取消當你按了\"取消低期間拍賣\"按鈕"
L["All Items Scanned"] = "所有物品已掃描"
L["ALT"] = "ALT"
L["Any auctions at or below the selected duration will be ignored. Selecting \"<none>\" will cause no auctions to be ignored based on duration."] = "處于或低于所選擇持續時間內的拍賣品將會被忽略. 選擇\\\"<空>\\\"將不會使拍賣品基於其持續時間而被忽略."
L["Are you SURE you want to delete all the groups in this category?"] = "你確定你要刪除在這分類裡所有的群組？"
L["Are you sure you want to delete the selected profile?"] = "你確定要刪除選擇的設定檔?"
L["Are you SURE you want to delete this category?"] = "你確定要刪除這個分類嗎？"
L["Are you SURE you want to delete this group?"] = "你確定要刪除這個群組嗎？"
L["At fallback price and not undercut."] = "在回退價且沒有削弱價格。"
L["Auction Buyout"] = "拍賣直購價"
L["Auction Buyout (Stack Price):"] = "拍賣直購價（堆疊價格）："
L["Auction Defaults"] = "拍賣預設"
L["Auction has been bid on."] = "拍賣已經競標價。"
L["Auctioning Group:"] = "Auctioning群組："
L["Auctioning Groups/Options"] = "拍賣群組/設定"
L["Auctioning has found %s group(s) with an invalid threshold/fallback. Check your chat log for more info. Would you like Auctioning to fix these groups for you?"] = "Auctioning已經找到%s群組有無效門檻/回退。檢查你的交談紀錄取得更多資訊。你想要讓Auctioning修正這些群組？"
L["Auctioning will follow the 'Advanced Price Settings' when the market goes below %s."] = "Auctioning將按照'進階價格設定'當市場低於%s。"
L["Auctioning will never post your auctions for below %s."] = "Auctioning 不會發佈你的拍賣低於%s。"
L["Auctioning will post at %s when you are the only one posting below %s."] = "拍賣品將以%s發佈，當你是唯一低於%s的人。"
L["Auctioning will reset items where you can make a profit of at least %s per item by buying at most %s items for a maximum of %s, paying no more than %s for any single item."] = "Auctioning會重放物品當你每一物品至少設定利潤%s根據買至多%s物品以最大的%s，不再為單一物品超過%s付錢。"
L["Auctioning will undercut your competition by %s. When posting, the bid of your auctions will be set to %s percent of the buyout."] = "Auctioning將根據%s削弱你的競標價。發佈時，競標價將設定為直購價的百分之%s。"
L["Auction not found. Skipped."] = "拍賣沒發現。略過。"
L["Auctions"] = "拍賣"
L["Auctions will be posted at %s when the market goes below your threshold."] = "當市場低於你的門檻時拍賣將以%s發佈。"
L["Auctions will be posted at your fallback price of %s when the market goes below your threshold."] = "當市場低於你的門檻時拍賣將以%s的回退價發佈。"
L["Auctions will be posted at your threshold price of %s when the market goes below your threshold."] = "當市場低於你的門檻時拍賣將以%s的門檻發佈。"
L["Auctions will be posted for %s hours in stacks of %s. A maximum of %s auctions will be posted."] = "拍賣將發佈%s小時，每堆疊%s個。最大%s拍賣將發佈。"
L["Auctions will be posted for %s hours in stacks of up to %s. A maximum of %s auctions will be posted."] = "拍賣將發佈%s小時，每堆疊最多 %s 個。最大%s拍賣將發佈。"
L["Auctions will not be posted when the market goes below your threshold."] = "當市場低於你的門檻時拍賣不會被發佈。"
L["Beginner"] = "初學者"
L["Bid:"] = "競標價："
L["Bid percent"] = "競標百分比"
L["Blacklist"] = "黑名單"
L["(blacklisted)"] = "(黑名單)"
L["Blacklists allows you to undercut a competitor no matter how low their threshold may be. If the lowest auction of an item is owned by somebody on your blacklist, your threshold will be ignored for that item and you will undercut them regardless of whether they are above or below your threshold."] = "黑名單允許你無視已設定的的門檻，不顧一切的削弱在你黑名單中的玩家所上架的拍賣價格。"
L["Block Auctioneer while scanning"] = "掃描時鎖定Auctioneer "
L["Buyout"] = "直購價"
L["Buyout:"] = "直購價："
L["Cancel"] = "取消"
L["Cancel ALL Current Auctions"] = "取消目前所有拍賣"
L["Cancel Auctions"] = "取消拍賣"
L["Cancel Auctions Matching Filter"] = "取消拍賣相匹配過濾"
L["Cancel auctions with bids"] = "取消已被競拍的物品"
L["Cancel Filter"] = "取消過濾"
L["Canceling"] = "取消中"
L["Canceling all auctions."] = "取消所有拍賣。"
L["Canceling auction which you've undercut."] = "當你削弱價格時取消拍賣。"
L["Canceling %s / %s"] = "取消中 %s/%s"
L["Canceling to repost at higher price."] = "取消來重新發佈以更高的價格。"
L["Canceling to repost at reset price."] = "取消以重放價錢來重新發佈。"
L["Cancel Low Duration Auctions"] = "取消低期間拍賣"
L["Cancels auctions you've been undercut on according to the rules setup in Auctioning."] = "取消你已經以Auctioning的規則設定來削弱價格的拍賣。"
L["Cancel Scan Finished"] = "取消掃描完成"
L["Cancel to repost higher"] = "取消來重新發佈更高"
L["Categories / Groups"] = "分類/群組"
L["Category name"] = "類別名稱"
L["Category Overrides"] = "分類覆蓋"
L["Cheapest auction below threshold."] = "最便宜拍賣低於門檻。"
L["Check this box to include this group in the scan."] = "檢查選項在掃描包含這群組。"
L["Click on the \"Fix\" button to have Auctioning turn this group into a category and create appropriate groups inside the category to fix this issue. This is recommended unless you'd like to fix the group yourself. You will only be prompted with this popup once per session."] = "點擊\"修復\"按鈕讓Auctioning轉換群組到一個分類並且建立適合群組的分類來修復問題。建議你如果不想自己修復。你每開啟一次就會彈出一次。"
L[ [=[
Click to reset this item to this target price.]=] ] = [=[ 
點擊來重放物品為這目標價格。]=]
L["Click to reset this item to this target price."] = "點擊來重放物品到目標價格。"
L[ [=[
Click to show auctions for this item.]=] ] = "點擊來顯示這物品的拍賣。"
L["Click to show auctions for this item."] = "點擊顯示物品的拍賣。"
L["Common Search Term"] = "常見搜尋條件"
L["Completely disables this group. This group will not be scanned for and will be effectively invisible to Auctioning."] = "完全禁用這個群組。這個群組不會被掃描，且於Auctioning有效的隱藏。"
L["Copy From"] = "複製從"
L["Copy the settings from one existing profile into the currently active profile."] = "將一個已存在的設定檔複製到目前設定檔。"
L["Could not find item's group."] = "無法找到物品的群組。"
L["Could not resolve search filters for item %s"] = "無法解決物品%s的搜尋過濾"
L["Create a new empty profile."] = "建立新設定檔。"
L["Create Category / Group"] = "建立分類/群組"
L["Created new shopping list: "] = "已建立新購物清單："
L["Create Macro and Bind ScrollWheel (with selected options)"] = "建立巨集並綁定滑鼠滾輪(有已選擇的設定)"
L["Creates a shopping list that contains all the items which are in this category. There is no confirmation or popup window for this."] = "建立在這分類所包含全部物品的購物清單。沒有確認或是彈出視窗。"
L["Creates a shopping list that contains all the items which are in this group. There is no confirmation or popup window for this."] = "建立在這群組所包含全部物品的購物清單。沒有確認或是彈出視窗。"
L["Create Shopping List from Category"] = "從分類建立購物清單"
L["Create Shopping List from Group"] = "從群組建立購物清單"
L["CTRL"] = "CTRL"
L["Currently Owned:"] = "目前所擁有："
L["Current Profile:"] = "目前設定檔："
L["Custom market reset price. If the market goes below your threshold, items will be posted at this price."] = "自定市場重放價格，當市場價格低於你的門檻時，物品將以此價格發佈。"
L["Custom percentage change of market price. If the market price changes by this percentage, your items will be reposted at the fallback value."] = "自訂市場價格的百分比改變。如果市場價格根據百分比改變，你的物品將會重新發佈於回退價格。"
L["Custom percentage change of market price. If the market price changes by this percentage, your items will be reposted at the %s value."] = "自訂市場價格的百分比改變。如果市場價格根據百分比改變，你的物品將會重新發佈於%s價格。"
L["Custom percentage change of market price. If the market price changes by this percentage, your items will be reposted at the threshold value."] = "自訂市場價格的百分比改變。如果市場價格根據百分比改變，你的物品將會重新發佈於門檻價格。"
L["Custom Reset Price (gold)"] = "自定重放價格（金）"
L["Custom Value"] = "自定價格"
L["Data Imported to Group: %s"] = "數據已匯入群組: %s"
L["Default"] = "預設"
L["Delete"] = "刪除"
L["Delete All Groups In Category"] = "刪除在分類裡的所有群組"
L["Delete all groups inside this category. This cannot be undone!"] = "刪除在分類裡所有群組。這無法還原！"
L["Delete a Profile"] = "刪除一個設定檔"
L["Delete category"] = "刪除分類"
L["Delete existing and unused profiles from the database to save space, and cleanup the SavedVariables file."] = "從資料庫中刪除已存在的無用的設定檔來釋放空間，並清理SavedVariables檔案。"
L["Delete group"] = "刪除群組"
L["Delete this category, this cannot be undone!"] = "刪除這個分類，這無法復原！"
L["Delete this group, this cannot be undone!"] = "刪除這個群組, 這無法復原！"
L["Determines which order the group / category settings tabs will appear in."] = "設定類別/群組選項頁面的標籤顯示順序."
L["Did not post %s because your fallback (%s) is invalid. Check your settings."] = "無法發佈%s因為你的回退價（%s）無效。檢查你的設定。"
L["Did not post %s because your fallback (%s) is lower than your threshold (%s). Check your settings."] = "無法發佈%s因為你的回退價（%s）低於你的門檻（%s）。檢查你的設定。"
L["Did not post %s because your threshold (%s) is invalid. Check your settings."] = "未能上架 %s 因為你的閥值(%s)無效, 請檢查設置"
L["Disable All"] = "禁用全部"
L["Disable auto cancelling"] = "禁用自動取消"
L["Disable automatically cancelling of items in this group if undercut."] = "如果削弱價格禁用自動取消在這群組裡的物品。"
L["Disable posting and canceling"] = "禁用發佈和取消"
L["Disables canceling of auctions which can not be reposted (ie the market price is below your threshold)."] = "禁用無法再重新發佈拍賣的取消（舉例，市場價格低於你的門檻）。"
L["Done Canceling"] = "取消完成"
L[ [=[Done Posting

Total value of your auctions: %s
Incoming Gold: %s]=] ] = [=[完成發佈：

你拍賣的總價格：%s
收入金額：]=]
L[ [=[Done Scanning!

Could potentially reset %d items for %s profit.]=] ] = [=[完成掃描！

可能重放%d物品於%s利潤。]=]
L["Don't Import Already Grouped Items"] = "不要匯入已經被分組的物品"
L["Don't Post Items"] = "不要發佈物品"
L["Down"] = "下"
L["Duration"] = "期間"
L["Edit Post Price"] = "編輯發佈價格"
L["Enable All"] = "啟用全部"
L["Enable sounds"] = "啟用音效"
L["Enter a filter into this box and click the button below it to cancel all of your auctions that contain that filter (without scanning)."] = "在這輸入過濾資訊並點擊下面的按鈕來取消包含在過濾你所有的拍賣（不需要掃描）。"
L["Error with scan. Scanned item multiple times unexpectedly. You can try restarting the scan. Item:"] = "掃描錯誤。多次已掃描的物品出乎意料。你可以嘗試重新開始掃描。物品："
L["Existing Profiles"] = "已存在設定檔"
L["Export"] = "匯出"
L["Export Group Data"] = "匯出群組數據"
L["Exports the data for this group. This allows you to share your group data with other TradeSkillMaster_Auctioning users."] = "匯出該群組資料。允許你請你的群組數據共享給其他的TradeSkillMaster_Auctioning使用者。"
L["Failed to create shopping list."] = "建立購物清單失敗。"
L["Fallback:"] = "回退："
L["Fallback price"] = "回退價"
L["First Tab in Group / Category Settings"] = "類別/群組選項頁面的首標籤"
L["Fixed Gold Amount"] = "固定金額"
L["Fixed invalid groups."] = "修復無效群組。"
L["Fix (Recommended)"] = "修復（建議）"
L["General"] = "一般"
L["General Price Settings (Undercut / Bid)"] = "一般價格設定（削弱價格/競標）"
L["General Settings"] = "一般設定"
L["Group:"] = "群組："
L["Group/Category named \"%s\" already exists!"] = "群組/類別名稱 \"%s\" 已存在!"
L["Group Data"] = "群組數據"
L["Group name"] = "群組名稱"
L["Group named \"%s\" already exists! Item not added."] = "群組名稱\"%s\"已存在！物品未被新增。"
L["Group named \"%s\" does not exist! Item not added."] = "群組名稱\"%s\"已存在！物品未被新增。"
L["Group Overrides"] = "群組覆蓋"
L["Groups in this Category:"] = "這個分類中的群組:"
L["Help"] = "幫助"
L["Hide advanced options"] = "隱藏進階設定"
L["Hide help text"] = "隱藏幫助文字"
L["Hide poor quality items"] = "隱藏低品質物品"
L["Hides advanced auction settings. Provides for an easier learning curve for new users."] = "隱藏進階拍賣設定。為新手提供更簡單學習的方式。"
L["Hides all poor (gray) quality items from the 'Add items' pages."] = "從'新增物品''頁面隱藏所有低品質(灰色)物品。"
L["Hides auction setting help text throughout the options."] = "透過設定來隱藏拍賣設定幫助文字。"
L["How long auctions should be up for."] = "拍賣要發佈多久。"
L["How low the market can go before an item should no longer be posted. The minimum price you want to post an item for."] = "在物品不再被發佈之前市場多低可以去。你想要發佈的物品最小價格。"
L["How many auctions at the lowest price tier can be up at any one time."] = "在任何一個時間發佈多少拍賣於最低價錢。"
L["How many items should be in a single auction, 20 will mean they are posted in stacks of 20."] = "多少物品在單一拍賣，20是指20的堆疊發佈。"
L["How much to undercut other auctions by, format is in \"#g#s#c\" but can be in any order, \"50g30s\" means 50 gold, 30 silver and so on."] = "削弱其它拍賣多少價格，格式是\"#g#s#c\"且可以是任何順序，\"50g30s\"表示50金，30銀。"
L["If all items in this group have the same phrase in their name, use this phrase instead to speed up searches. For example, if this group contains only glyphs, you could put \"glyph of\" and Auctioning will search for that instead of each glyph name individually. Leave empty for default behavior."] = "如果在群組裡的所有物品在名稱裡已經有相同片語，使用這片語更快加速搜尋。舉例，如果這群組包含只有銘文，你可以放\"銘文的\"並且Auctioning將會搜尋這個而不是搜尋各個單一銘文名稱。留空使用預設。"
L[ [=[If checked, any items in this group with random enchantments will have their random enchantments ignore by Auctioning.

Note: Any common search term will be ignored for groups with this box checked.]=] ] = [=[勾選，在這有隨機附魔群組的任何物品將會根據Auctioning有他們的隨機附魔忽略。

注意：有勾選任何常見搜尋條件會被群組忽略。]=]
L["If checked, the items in this group will be included when running a reset scan and the reset scan options will be shown."] = "勾選，這群組的物品將會包含當執行重放掃描並且重放掃描會顯示。"
L["If checked, will cancel auctions that can be reposted for a higher amount (ie you haven't been undercut and the auction you originally undercut has expired)."] = "勾選，將為更高的賣價而撤銷拍賣（即使你沒有被削弱價格，但是起初被你削弱價格的物品已經消失）。"
L["If enabled, when the lowest auction is by somebody on your whitelist, it will post your auction at the same price. If disabled, it won't post the item at all."] = "啟用，當拍賣品最低價的出價者位於你的白名單中，則以同樣的價格發佈，若禁用，則物品不會發佈。"
L["If enabled, when you create a new group, your bags will be scanned for items with names that include the name of the new group. If such items are found, they will be automatically added to the new group."] = "啟用，當你建立一個新的群組時，將會自動將背包中含有該新建立群組名字的物品新增至新群組中。"
L[ [=[If the market price is above fallback price * maximum price, items will be posted at the fallback * maximum price instead.

Effective for posting prices in a sane price range when someone is posting an item at 5000g when it only goes for 100g.]=] ] = [=[如果市場價格已經是回退價*最大價格之上，物品將不會發佈於回退價*最大價格。

在相同價格範圍發佈價格的影響當某人正在發佈物品以5000g當它只值100g。]=]
L["If you are using a % of something for threshold / fallback, every item in a group must evalute to the exact same amount. For example, if you are using % of crafting cost, every item in the group must have the same mats. If you are using % of auctiondb value, no items will ever have the same market price or min buyout. So, these items must be split into separate groups."] = "如果你使用某些%作為門檻/回退，這群組的所有物品必須預估到確切相同數量。舉例，如果你使用製作花費%，這群組的所有物品必須有相同的材料。如果你使用Auctiondb，沒有物品曾經有相同市場價格或是最小直購價。所以，這些物品必須被切割分到群組裡。"
L["If you don't have enough items for a full post, it will post with what you have."] = "如果你沒有足夠的物品來完整發佈，將會發佈你擁有的。"
L["Ignore"] = "忽略"
L["Ignore low duration auctions"] = "忽略低期間拍賣"
L["Ignore Random Enchants"] = "忽略隨機附魔"
L["Ignore stacks over"] = "忽略超過堆疊"
L["Ignore stacks under"] = "忽略堆疊之下"
L["Import Auctioning Group"] = "匯入Auctioning群組"
L["Import Group Data"] = "匯入群組資料"
L["Include in reset scan"] = "包含在重放掃描"
L["Info"] = "資訊"
L["Invalid category name."] = "無效分類名稱。"
L["Invalid group name."] = "無效群組名稱。"
L["Invalid money format entered, should be \"#g#s#c\", \"25g4s50c\" is 25 gold, 4 silver, 50 copper."] = "無效金錢格式輸入，應該是\"#g#s#c\"，\"25g4s50c\"是25金，4銀，50銅。"
L["Invalid percent format entered, should be \"#%\", \"105%\" is 105 percent."] = "無效百分比格式輸入，應該是\"#%\"，\"105%\"是105百分比。"
L["Invalid scan data for item %s. Skipping this item."] = "物品%s無效的掃描資料。略過這物品。"
L["Invalid search term for group %s. Searching for items individually instead."] = "群組%s無效的搜尋條件。搜尋物品而不是個別的。"
L["Invalid seller data returned by server."] = "由伺服器回傳無效的賣家資料。"
L["Item"] = "物品"
L["Item failed to add to group."] = "新增物品到群組失敗。"
L["Item/Group is invalid."] = "物品/群組是無效的。"
L["Items in this group:"] = "在群組裡的物品："
L["Items in this group will not be posted or canceled automatically."] = "在這群組的物品不會自動發佈或取消。"
L["Items not in any group:"] = "物品不在任何群組："
L["Items that are stacked beyond the set amount are ignored when calculating the lowest market price."] = "物品超過堆疊設定數量當計算最低市場價格時被略過。"
L["Items to be added:"] = "新增物品："
L["Log Info:"] = "紀錄資訊："
L["Long (12 hours)"] = "長(12小時)"
L["long (less than 12 hours)"] = "長(不到12小時)"
L["Lowest auction by whitelisted player."] = "根據白名單玩家最低拍賣。"
L["Lowest Buyout"] = "最低直購價"
L["Lowest Buyout:"] = "最低直購價："
L["Macro created and keybinding set!"] = "巨集建立和快捷鍵設定！"
L["Macro Help"] = "巨集幫助"
L["Make another after this one."] = "這之後讓其他人。"
L["Management"] = "管理"
L["% Market Value"] = "%市場價格"
L["Match whitelist prices"] = "匹配白名單價格"
L["Max Cost:"] = "最大花費："
L["Maximum amount already posted."] = "最大數量已經發佈。"
L["Maximum price"] = "最大價格"
L["Maximum Price Settings (Fallback)"] = "最大價格設定（回退）"
L["Max Price Per:"] = "每一最大價格："
L["Max price per item"] = "每一物品最大價格"
L["Max Quantity:"] = "最大數量："
L["Max quantity to buy"] = "最大數量購買"
L["Max reset cost"] = "最大重放花費"
L["Max Scan Retries (Advanced)"] = "最大嘗試掃描（進階）"
L["Medium (2 hours)"] = "中(2小時)"
L["medium (less than 2 hours)"] = "中(不到2小時)"
L["Minimum Price Settings (Threshold)"] = "最小價格設定（門檻）"
L["Min Profit:"] = "最小利潤："
L["Min reset profit"] = "最小重放利潤"
L["Modifiers:"] = "功能鍵："
L["Must wait for scan to finish before starting to reset."] = "在開始重放前必須等待掃描來完成。"
L["Name of New Group to Add Item to:"] = "新群組名稱到新增物品："
L["Name of the new category, this can be whatever you want and has no relation to how the category itself functions."] = "新分類名稱，這可以是任何你想要的與其它無關。"
L["Name of the new group, this can be whatever you want and has no relation to how the group itself functions."] = "新群組名稱，這可以是任何你想要的與其它無關。"
L["New"] = "新的"
L["New category name"] = "新分類名稱"
L["New group name"] = "新群組名稱"
L["No Items to Reset"] = "沒有物品要重放"
L["No name entered."] = "未輸入名稱"
L["<none>"] = "<無>"
L["Not canceling auction at reset price."] = "不以重放價格取消拍賣。"
L["Not canceling auction below threshold."] = "無法取消拍賣在門檻之下。"
L["Not enough items in bags."] = "在背包沒有足夠的物品。"
L["%% of %s"] = "%%的%s"
L["Options"] = "設定"
L["Overrides"] = "覆蓋"
L["Per auction"] = "每次拍賣"
L["Percentage of the buyout as bid, if you set this to 90% then a 100g buyout will have a 90g bid."] = "競標價百分比，如果你設定90%，那麼100G直購價將會有90G競標價。"
L["Player name"] = "玩家名稱"
L["Plays the ready check sound when a post / cancel scan is complete and items are ready to be posting / canceled (the gray bar is all the way across)."] = "當發佈或取消掃描完成後，物品已準備好被發佈或取消（灰色進度條滿）時播放聲音。"
L["Please don't move items around in your bags while a post scan is running! The item was skipped to avoid an incorrect item being posted."] = "在你的背包請不要四處移動物品當發布掃描正在執行！物品會被略過避免不正確物品被發佈。"
L["Post"] = "發佈"
L["Post at Fallback"] = "發佈以回退價"
L["Post at Threshold"] = "發佈以門檻"
L["Post Auctions"] = "發佈拍賣"
L["Post cap"] = "發佈最高限度"
L["Posting at fallback."] = "以回退發佈。"
L["Posting at reset price."] = "以重放價格發佈。"
L["Posting at whitelisted player's price."] = "發佈以白名單玩家的價格。"
L["Posting at your current price."] = "發佈以你目前的價格。"
L["Posting %s / %s"] = "發佈%s/%s"
L["Posting this item."] = "發佈物品。"
L["Post Scan Finished"] = "發佈掃描完成"
L["Post Settings (Quantity / Duration)"] = "發佈設定（數量/期間）"
L["Posts items on the auction house according to the rules setup in Auctioning."] = "在拍賣行發佈物品根據在Auctioning的規則設定。"
L["Post time"] = "發佈時間"
L["Price Per Item"] = "每一物品價格"
L["Price Per Stack"] = "每一堆疊價格"
L["Price resolution"] = "價格決定"
L["Price resolution for fallback"] = "價格決定為回退"
L["Price resolution for %s"] = "價格決定為%s"
L["Price resolution for threshold"] = "價格決定為門檻"
L["Price threshold"] = "價格門檻"
L["Price to fallback too if there are no other auctions up, the lowest market price is too high."] = "價格回退如果沒有其它拍賣發佈，最低市場價格太高了。"
L["Processing Items..."] = "物品處理中..."
L["Profiles"] = "設定檔"
L["Profit:"] = "利潤："
L["Profit Per Item"] = "每一物品利潤"
L["Quantity (Yours)"] = "數量(你的)"
L["Quick Group Creation"] = "快速群組建立"
L["Rename"] = "重新命名"
L["Rename this category to something else!"] = "重新命名分類！"
L["Rename this group to something else!"] = "重新命名群組！"
L["Reset Auctions"] = "重放拍賣"
L["Reset Method"] = "重放方法"
L["Reset Profile"] = "重置設定檔"
L["Reset Scan Finished"] = "重放掃描完成"
L["Reset Scan Settings"] = "重放掃描設定"
L["Resets the price of items according to the rules setup in Auctioning by buying other's auctions and canceling your own as necessary."] = "依據在買其他人拍賣和在必要時取消你的拍賣的Auctioning的規格設定來重放物品價格。"
L["Reset the current profile back to its default values, in case your configuration is broken, or you simply want to start over."] = "重置目前設定回到預設，假如你的設定壞了，或是你想要重新開始。"
L["Return to Summary"] = "回到摘要"
L["Right-Click to add %s to your friends list."] = "右鍵-點擊新增%s到你的朋友清單。"
L["Right click to do a custom cancel scan."] = "右鍵點擊執行一個自訂取消掃描。"
L["Right click to do a custom post scan."] = "右鍵點擊執行一個自訂發佈掃描。"
L["Right click to do a custom reset scan."] = "右鍵點擊執行一個自訂重放掃描。"
L["Right click to override this setting."] = "右鍵點擊覆蓋設定。"
L["Right click to remove the override of this setting."] = "右鍵點擊移除覆蓋設定。"
L["Running Scan..."] = "正在掃描..."
L["Save New Price"] = "儲存新價格"
L["Scanning"] = "掃描中"
L["Scanning Item %s / %s"] = "掃描物品%s/%s"
L["ScrollWheel Direction (both recommended):"] = "滾輪方向(推薦全選):"
L["Select Matches:"] = "選擇匹配："
L["Selects all items in either list matching the entered filter. Entering \"Glyph of\" will select any item with \"Glyph of\" in the name."] = "選擇所有在輸入的過濾中相匹配的物品。輸入\"銘文\"將會同時選擇任何\"銘文\"物品。"
L["Seller"] = "賣家"
L["Seller name of lowest auction for item %s was not returned from server. Skipping this item."] = "最低拍賣的賣家名稱對於物品%s沒有從伺服器回傳。略過這物品。"
L["Set fallback as a"] = "設定回退為"
L["Set max reset cost as a"] = "設定最大重放成本於"
L["Set min reset price as a"] = "設定最小重放價格於"
L["Set threshold as a"] = "設定門檻為"
L["SHIFT"] = "SHIFT"
L["Shift-Right-Click to show the options for this item's Auctioning group."] = "Shift-右鍵-點擊顯示物品的Auctioning群組設定。"
L["Short (30 minutes)"] = "短(30分)"
L["short (less than 30 minutes)"] = "短(30分鐘以內)"
L["Show All Auctions"] = "顯示所有拍賣"
L["Show group name in tooltip"] = "在鼠標提示中顯示物品所屬群組名稱"
L["Show Item Auctions"] = "顯示物品拍賣"
L["Show Log"] = "顯示紀錄"
L["Shows the name of the group an item belongs to in that item's tooltip."] = "在物品的滑鼠提示中顯示其所屬的群組名稱"
L["%s item(s) to buy/cancel"] = "%s物品來買/取消"
L["Skip"] = "略過"
L["Skip Item"] = "略過物品"
L["Smart canceling"] = "智慧取消"
L["Smart group creation"] = "智慧群組建立"
L["%s removed from '%s' as a result of setting the current group to ignore random enchants."] = "移除%s從'%s'作為設定目前群組的結果到忽略隨機附魔。"
L["Stack Size"] = "堆疊大小"
L["Start Scan of Selected Groups"] = "開始選擇的群組掃描"
L["Stop Scan"] = "停止掃描"
L["Target Price"] = "目標價格"
L["Target Price:"] = "目標價格："
L[ [=[The below are fallback settings for groups, if you do not override a setting in a group then it will use the settings below.

Warning! All auction prices are per item, not overall. If you set it to post at a fallback of 1g and you post in stacks of 20 that means the fallback will be 20g.]=] ] = [=[以下是群組的回退設定，如果你沒有覆蓋群組設定，那麼就會使用以下設定。

警告！所有拍賣價格是每一物品，不是全部。如果你想設定發佈回退為1g並且堆疊為20，那意味著回退為20g。]=]
L["The data you are trying to import is invalid."] = "你試著要匯入的資料不正確"
L["The maximum amount that you want to spend in order to reset a particular item. This is the total amount, not a per-item amount."] = "為了重放特別的物品你想要的花費最大數量。這是總數量，不是每一物品數量。"
L["The minimum profit you would want to make from doing a reset. This is a per-item price where profit is the price you reset to minus the average price you spent per item."] = "從重放中你想要的最小利潤。這是每一物品你重放到減去你花費的每一物品平均價格的利潤價格。"
L["The player \"%s\" is already on your blacklist."] = "玩家「%s」已經在你的黑名單。"
L["The player \"%s\" is already on your whitelist."] = "玩家\"%s\"已經在你的白名單。"
L["There are two ways of making clicking the Post / Cancel Auction button easier. You can put %s and %s in a macro (on separate lines), or use the utility below to have a macro automatically made and bound to scrollwheel for you."] = "這裡有兩種方法可以使得點擊拍賣或取消按鈕變得更簡單。你可以在一個巨集的不同行中輸入%s和%s或者使用以下提供的功能自動獲得一個巨集並綁定到滑鼠滾輪上。"
L["This controls how many times Auctioning will retry a query before giving up and moving on. Each retry takes about 2-3 seconds."] = "在放棄與移動前這控制要多少次Auctioning將回覆序列，每次回覆花費2-3秒。"
L["This determines what size range of prices should be considered a single price point for the reset scan. For example, if this is set to 1s, an auction at 20g50s20c and an auction at 20g49s45c will both be considered to be the same price level."] = "決定價錢大小範圍應該為了重放掃描考慮單一價錢點。舉例，如果設定為1s，拍賣為20g50s20c並且拍賣在20g49s45c都會被考慮進相同價格等級。"
L["This dropdown determines what Auctioning will do when the market for an item goes below your threshold value. You can either not post the items or post at your fallback/threshold/a custom value."] = "下拉式選單決定Auctioning怎做當物品在市場低於你的門檻價格。你可以不發佈物品或是發佈以你的回退/門檻/自訂價格。"
L["This feature can be used to import groups from outside of the game. For example, if somebody exported their group onto a blog, you could use this feature to import that group and Auctioning would create a group with the same settings / items."] = "這功能被使用來匯入從外面遊戲的群組。舉例，如果某人匯出群組到部落格，你可以使用這功能來匯入群組並且Auctioning將會建立相同設定/物品的群組。"
L["This is the maximum amount you want to pay for a single item when reseting."] = "當重放時你想要支付單一物品的最大數量。"
L["This is the maximum number of items you're willing to buy in order to perform a reset."] = "你想要買來為了執行重放的物品最大數量。"
L["This item does not have any seller data."] = "這物品沒有任何賣家資料。"
L["This item is already in the \"%s\" Auctioning group."] = "這物品已經在\"%s\"Auctioning群組。"
L["This item will not be included in the reset scan."] = "這物品不會被包含在重放掃描。"
L["Threshold:"] = "門檻："
L["Threshold/Fallback:"] = "門檻/回退："
L["Time Left"] = "剩餘時間"
L["Toggle this box to enable / disable all groups in this category."] = "切換選項來啟用/禁用所有在這分類的群組。"
L["Total Cost"] = "總花費"
L["TSM_Auctioning Group to Add Item to:"] = "TSM_Auctioning群組來新增物品到："
L["<Uncategorized Groups>"] = "<未分類群組>"
L["Uncategorized Groups:"] = "未分類群組："
L["Undercut by"] = "削弱價格由"
L["Undercut by whitelisted player."] = "根據白名單玩家削弱價格。"
L["Undercutting competition."] = "削弱價格設定。"
L["Up"] = "上"
L["Use per auction as cap"] = "使用每次拍賣作為最高限度"
L["Use the checkboxes to the left to select which groups you'd like to include in this scan."] = "使用左邊檢查項來選擇你想要在這次掃描中包含的群組。"
L["When posting and canceling, ignore auctions with more than %s item(s) or less than %s item(s) in them."] = "當發佈和取消時，忽略在他們裡的拍賣有超過%s物品或是少於%s物品。"
L["When posting, ignore auctions with more than %s items or less than %s items in them. Items in this group will not be canceled automatically."] = "當發佈，忽略在他們裡的拍賣有超過%s物品或是少於%s物品。這群組裡的物品不會自動備取消。"
L["Which group in TSM_Auctioning to add this item to."] = "哪一個群組在TSM_Auctioning要新增這物品。"
L["Whitelist"] = "白名單"
L["(whitelisted)"] = "(白名單)"
L["Whitelists allow you to set other players besides you and your alts that you do not want to undercut; however, if somebody on your whitelist matches your buyout but lists a lower bid it will still consider them undercutting."] = "白名單允許你設定其他除了你和分身之外的你不想削弱價格的玩家；但是，如果你的白名單中的玩家所發佈的物品與你的直購價相同但競價低於你，系統也會認為他們需要被削弱價格。"
L["Will bind ScrollWheelDown (plus modifiers below) to the macro created."] = "將會綁定滾輪向下滾動（加修飾之下）到巨集建立。"
L["Will bind ScrollWheelUp (plus modifiers below) to the macro created."] = "將會綁定滾輪向上滾動（加修飾之下）到巨集建立。"
L["Will cancel auctions even if they have a bid on them, you will take an additional gold cost if you cancel an auction with bid."] = "將會下架已有人競標的物品，下架已競標物品你將會向拍賣行額外支出一些費用。"
L["Would you like to load these options in beginner or advanced mode? If you have not used APM, QA3, or ZA before, beginner is recommended. Your selection can always be changed using the \"Hide advanced options\" checkbox in the \"Options\" page."] = "你想要載入這些設定在初學者或是進階模式？如果你以前沒使用過APM，QA3，或是ZA，初學者是建議的。你的選擇總是可以改變在\"設定\"頁面使用\"隱藏自訂設定\"勾選項。"
L["You can change the active database profile, so you can have different settings for every character."] = "你可以改變啟用的資料庫設定，所以你可以為每個角色有不一樣的設定。"
L["You can either create a new profile by entering a name in the editbox, or choose one of the already exisiting profiles."] = "你也可以建立新設定由編輯條輸入名稱，或是選擇已經存在的設定。"
L["You can not blacklist characters whom are on your whitelist."] = "你不能把已經在白名單中的角色列入黑名單。"
L["You can not blacklist yourself."] = "你不能黑了你自己"
L["You can not whitelist characters whom are on your blacklist."] = "你不能把已經在黑名單中的角色列入白名單。"
L["You can set a fixed fallback price for this group, or have the fallback price be automatically calculated to a percentage of a value. If you have multiple different items in this group and use a percentage, the highest value will be used for the entire group."] = "你可以為群組設定固定的回退價，或是自動計算回退價到一個數值的百分比。如果你有多個不同物品在群組且使用百分比，最高數值會被使用在整個群組。"
L["You can set a fixed max reset cost, or have it be a percentage of some other value."] = "你可以設定固定的最大重放價格，或是設定成某些其它價格的百分比。"
L["You can set a fixed min reset price, or have it be a percentage of some other value."] = "你可以設定過定的最小重放價格，或是設定成某些其它價格的百分比。"
L["You can set a fixed threshold, or have it be a percentage of some other value."] = "你可以設定固定的門檻，或是設定成某些其它價格的百分比。"
L["You do not have any players on your blacklist yet."] = "目前你的黑名單中還沒有任何人。"
L["You do not have any players on your whitelist yet."] = "目前你的白名單中還沒有任何人。"
L["You do not need to add \"%s\", alts are whitelisted automatically."] = "你不需要新增\"%s\"，分身會自動到白名單。"
L["You don't any groups set to be included in a reset scan."] = "你沒有包含任何群組設定在這次重放掃描。"
L["You don't any groups set up."] = "你沒有安裝任何群組。"
L["Your auction has not been undercut."] = "你的拍賣沒有削弱價格。"
L["You've been undercut."] = "你已經削弱價格。"