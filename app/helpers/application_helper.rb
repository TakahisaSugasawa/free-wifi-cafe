module ApplicationHelper
  def full_title(page_title)
    base_title = "Free-Wifi-Cafe" # 自分のアプリ名を設定
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
