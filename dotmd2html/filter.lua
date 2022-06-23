function Link(el)
        if (not string.find(el.target, "://") ~= nil) then
                el.target = string.gsub(el.target, "%.md", ".html")
        end
        return el
end
