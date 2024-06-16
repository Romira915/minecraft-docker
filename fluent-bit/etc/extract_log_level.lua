function extract_log_level(tag, timestamp, record)
    -- ログエントリを正規表現で解析して、ログレベルを抽出する
    local log_level = string.match(record["log"], "%/([%u]+)%]")

    -- ログレベルが見つからない場合はデフォルト値として "INFO" を使用する
    if log_level == nil then
        log_level = "INFO"
    end

    -- レコードにログレベルを追加する
    record["level"] = log_level

    return 1, timestamp, record
end
