--=====================================================================================
-- MW2LU | ModernWarfare2LevelUp - locales.lua
-- Author: DonnieDice
-- Description: Multi-language localization system for MW2LU
--======================================================================================

-- Ensure global addon namespace exists
MW2LU = MW2LU or {}

-- Initialize localization table
MW2LU.L = MW2LU.L or {}

-- Get current WoW client locale
local locale = GetLocale()

-- Default English strings (always loaded as fallback)
local L = {
    -- Status Messages
    ["ADDON_ENABLED"] = "Addon |cff00ff00enabled|r",
    ["ADDON_DISABLED"] = "Addon |cffff0000disabled|r",
    ["PLAYING_TEST"] = "Playing test sound...",
    ["SOUND_VARIANT_SET"] = "Sound variant set to: |cffffffff%s|r",
    ["WELCOME_TOGGLE_ON"] = "Login message |cff00ff00enabled|r",
    ["WELCOME_TOGGLE_OFF"] = "Login message |cffff0000disabled|r",

    -- Error Messages
    ["ERROR_PREFIX"] = "|cffff0000MW2LU Error:|r",
    ["ERROR_UNKNOWN_COMMAND"] = "Unknown command. Type |cffffffff/mw2lu help|r for available commands",

    -- Help System
    ["HELP_HEADER"] = "|cff4F4F4F=== MW2LU Commands ===|r",
    ["HELP_TEST"] = "|cffffffff/mw2lu test|r - Play test sound",
    ["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - Enable addon",
    ["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - Disable addon",
    ["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - Toggle login message",
    ["HELP_HIGH"] = "|cffffffff/mw2lu high|r - Use high quality sound",
    ["HELP_MED"] = "|cffffffff/mw2lu med|r - Use medium quality sound",
    ["HELP_LOW"] = "|cffffffff/mw2lu low|r - Use low quality sound",

    -- Status Display
    ["ENABLED_STATUS"] = "|cff00ff00Enabled|r",
    ["DISABLED_STATUS"] = "|cffff0000Disabled|r",
    ["TYPE_HELP"] = "Type |cffffffff/mw2lu help|r for commands",
    ["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! is ready. Lock in a tactical level-up chime."
}

-- German localization
if locale == "deDE" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00aktiviert|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000deaktiviert|r"
    L["PLAYING_TEST"] = "Testsound wird abgespielt..."
    L["SOUND_VARIANT_SET"] = "Sound-Variante gesetzt auf: |cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "Login-Nachricht |cff00ff00aktiviert|r"
    L["WELCOME_TOGGLE_OFF"] = "Login-Nachricht |cffff0000deaktiviert|r"

    L["ERROR_PREFIX"] = "|cffff0000MW2LU Fehler:|r"
    L["ERROR_UNKNOWN_COMMAND"] = "Unbekannter Befehl. Tippe |cffffffff/mw2lu help|r für verfügbare Befehle"

    L["HELP_HEADER"] = "|cff4F4F4F=== MW2LU Befehle ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - Testsound abspielen"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - Addon aktivieren"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - Addon deaktivieren"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - Login-Nachricht umschalten"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - Sound hoher Qualität verwenden"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - Sound mittlerer Qualität verwenden"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - Sound niedriger Qualität verwenden"

    L["ENABLED_STATUS"] = "|cff00ff00Aktiviert|r"
    L["DISABLED_STATUS"] = "|cffff0000Deaktiviert|r"
    L["TYPE_HELP"] = "Tippe |cffffffff/mw2lu help|r für Befehle"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! ist bereit. Sichere dir einen taktischen Level-Up-Sound."
-- Spanish localization (esES serves Spain Spanish; esMX falls back to the same
-- Latin-American-compatible strings under the shared guard, recorded as a
-- deliberate design decision per issue #2)
elseif locale == "esES" or locale == "esMX" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00habilitado|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000deshabilitado|r"
    L["PLAYING_TEST"] = "Reproduciendo sonido de prueba..."
    L["SOUND_VARIANT_SET"] = "Variante de sonido establecida en: |cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "Mensaje de inicio de sesión |cff00ff00habilitado|r"
    L["WELCOME_TOGGLE_OFF"] = "Mensaje de inicio de sesión |cffff0000deshabilitado|r"

    L["ERROR_PREFIX"] = "|cffff0000Error de MW2LU:|r"
    L["ERROR_UNKNOWN_COMMAND"] = "Comando desconocido. Escribe |cffffffff/mw2lu help|r para los comandos disponibles"

    L["HELP_HEADER"] = "|cff4F4F4F=== Comandos de MW2LU ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - Reproducir sonido de prueba"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - Habilitar addon"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - Deshabilitar addon"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - Alternar mensaje de inicio de sesión"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - Usar sonido de alta calidad"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - Usar sonido de calidad media"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - Usar sonido de baja calidad"

    L["ENABLED_STATUS"] = "|cff00ff00Habilitado|r"
    L["DISABLED_STATUS"] = "|cffff0000Deshabilitado|r"
    L["TYPE_HELP"] = "Escribe |cffffffff/mw2lu help|r para los comandos"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! está listo. Asegúrate un sonido de subida de nivel táctico."
-- French localization
elseif locale == "frFR" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00activé|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000désactivé|r"
    L["PLAYING_TEST"] = "Lecture du son de test..."
    L["SOUND_VARIANT_SET"] = "Variante sonore définie sur : |cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "Message de connexion |cff00ff00activé|r"
    L["WELCOME_TOGGLE_OFF"] = "Message de connexion |cffff0000désactivé|r"

    L["ERROR_PREFIX"] = "|cffff0000Erreur MW2LU :|r"
    L["ERROR_UNKNOWN_COMMAND"] = "Commande inconnue. Tapez |cffffffff/mw2lu help|r pour les commandes disponibles"

    L["HELP_HEADER"] = "|cff4F4F4F=== Commandes MW2LU ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - Jouer le son de test"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - Activer l'addon"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - Désactiver l'addon"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - Activer/désactiver le message de connexion"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - Utiliser le son de haute qualité"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - Utiliser le son de qualité moyenne"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - Utiliser le son de basse qualité"

    L["ENABLED_STATUS"] = "|cff00ff00Activé|r"
    L["DISABLED_STATUS"] = "|cffff0000Désactivé|r"
    L["TYPE_HELP"] = "Tapez |cffffffff/mw2lu help|r pour les commandes"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! est prêt. Verrouillez un carillon de montée de niveau tactique."
-- Italian localization
elseif locale == "itIT" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00attivato|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000disattivato|r"
    L["PLAYING_TEST"] = "Riproduzione del suono di prova..."
    L["SOUND_VARIANT_SET"] = "Variante sonora impostata su: |cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "Messaggio di accesso |cff00ff00attivato|r"
    L["WELCOME_TOGGLE_OFF"] = "Messaggio di accesso |cffff0000disattivato|r"

    L["ERROR_PREFIX"] = "|cffff0000Errore MW2LU:|r"
    L["ERROR_UNKNOWN_COMMAND"] = "Comando sconosciuto. Digita |cffffffff/mw2lu help|r per i comandi disponibili"

    L["HELP_HEADER"] = "|cff4F4F4F=== Comandi MW2LU ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - Riproduci il suono di prova"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - Attiva l'addon"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - Disattiva l'addon"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - Attiva/disattiva il messaggio di accesso"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - Usa il suono di alta qualità"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - Usa il suono di qualità media"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - Usa il suono di bassa qualità"

    L["ENABLED_STATUS"] = "|cff00ff00Attivato|r"
    L["DISABLED_STATUS"] = "|cffff0000Disattivato|r"
    L["TYPE_HELP"] = "Digita |cffffffff/mw2lu help|r per i comandi"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! è pronto. Blocca un suono di salita di livello tattico."
-- Korean localization
elseif locale == "koKR" then
    L["ADDON_ENABLED"] = "애드온 |cff00ff00활성화됨|r"
    L["ADDON_DISABLED"] = "애드온 |cffff0000비활성화됨|r"
    L["PLAYING_TEST"] = "테스트 사운드 재생 중..."
    L["SOUND_VARIANT_SET"] = "사운드 변형 설정: |cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "접속 메시지 |cff00ff00활성화됨|r"
    L["WELCOME_TOGGLE_OFF"] = "접속 메시지 |cffff0000비활성화됨|r"

    L["ERROR_PREFIX"] = "|cffff0000MW2LU 오류:|r"
    L["ERROR_UNKNOWN_COMMAND"] = "알 수 없는 명령어입니다. 사용 가능한 명령어는 |cffffffff/mw2lu help|r를 입력하세요"

    L["HELP_HEADER"] = "|cff4F4F4F=== MW2LU 명령어 ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - 테스트 사운드 재생"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - 애드온 활성화"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - 애드온 비활성화"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - 접속 메시지 전환"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - 고품질 사운드 사용"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - 중간 품질 사운드 사용"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - 저품질 사운드 사용"

    L["ENABLED_STATUS"] = "|cff00ff00활성화됨|r"
    L["DISABLED_STATUS"] = "|cffff0000비활성화됨|r"
    L["TYPE_HELP"] = "명령어를 보려면 |cffffffff/mw2lu help|r를 입력하세요"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! 준비 완료. 전술적인 레벨업 사운드를 설정하세요."
-- Brazilian Portuguese localization
elseif locale == "ptBR" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00ativado|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000desativado|r"
    L["PLAYING_TEST"] = "Reproduzindo som de teste..."
    L["SOUND_VARIANT_SET"] = "Variante de som definida para: |cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "Mensagem de login |cff00ff00ativada|r"
    L["WELCOME_TOGGLE_OFF"] = "Mensagem de login |cffff0000desativada|r"

    L["ERROR_PREFIX"] = "|cffff0000Erro do MW2LU:|r"
    L["ERROR_UNKNOWN_COMMAND"] = "Comando desconhecido. Digite |cffffffff/mw2lu help|r para os comandos disponíveis"

    L["HELP_HEADER"] = "|cff4F4F4F=== Comandos do MW2LU ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - Reproduzir som de teste"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - Ativar addon"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - Desativar addon"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - Alternar mensagem de login"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - Usar som de alta qualidade"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - Usar som de qualidade média"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - Usar som de baixa qualidade"

    L["ENABLED_STATUS"] = "|cff00ff00Ativado|r"
    L["DISABLED_STATUS"] = "|cffff0000Desativado|r"
    L["TYPE_HELP"] = "Digite |cffffffff/mw2lu help|r para os comandos"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! está pronto. Garanta um som de subida de nível tático."
-- European Portuguese localization
elseif locale == "ptPT" then
    L["ADDON_ENABLED"] = "Addon |cff00ff00ativado|r"
    L["ADDON_DISABLED"] = "Addon |cffff0000desativado|r"
    L["PLAYING_TEST"] = "A reproduzir o som de teste..."
    L["SOUND_VARIANT_SET"] = "Variante de som definida para: |cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "Mensagem de início de sessão |cff00ff00ativada|r"
    L["WELCOME_TOGGLE_OFF"] = "Mensagem de início de sessão |cffff0000desativada|r"

    L["ERROR_PREFIX"] = "|cffff0000Erro do MW2LU:|r"
    L["ERROR_UNKNOWN_COMMAND"] = "Comando desconhecido. Escreva |cffffffff/mw2lu help|r para os comandos disponíveis"

    L["HELP_HEADER"] = "|cff4F4F4F=== Comandos do MW2LU ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - Reproduzir som de teste"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - Ativar o addon"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - Desativar o addon"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - Alternar a mensagem de início de sessão"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - Usar som de alta qualidade"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - Usar som de qualidade média"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - Usar som de baixa qualidade"

    L["ENABLED_STATUS"] = "|cff00ff00Ativado|r"
    L["DISABLED_STATUS"] = "|cffff0000Desativado|r"
    L["TYPE_HELP"] = "Escreva |cffffffff/mw2lu help|r para os comandos"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! está pronto. Garante um som de subida de nível táctico."
-- Russian localization
elseif locale == "ruRU" then
    L["ADDON_ENABLED"] = "Аддон |cff00ff00включен|r"
    L["ADDON_DISABLED"] = "Аддон |cffff0000отключен|r"
    L["PLAYING_TEST"] = "Воспроизведение тестового звука..."
    L["SOUND_VARIANT_SET"] = "Вариант звука установлен на: |cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "Сообщение при входе |cff00ff00включено|r"
    L["WELCOME_TOGGLE_OFF"] = "Сообщение при входе |cffff0000отключено|r"

    L["ERROR_PREFIX"] = "|cffff0000Ошибка MW2LU:|r"
    L["ERROR_UNKNOWN_COMMAND"] = "Неизвестная команда. Введите |cffffffff/mw2lu help|r для доступных команд"

    L["HELP_HEADER"] = "|cff4F4F4F=== Команды MW2LU ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - Воспроизвести тестовый звук"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - Включить аддон"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - Отключить аддон"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - Переключить сообщение при входе"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - Использовать звук высокого качества"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - Использовать звук среднего качества"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - Использовать звук низкого качества"

    L["ENABLED_STATUS"] = "|cff00ff00Включен|r"
    L["DISABLED_STATUS"] = "|cffff0000Отключен|r"
    L["TYPE_HELP"] = "Введите |cffffffff/mw2lu help|r для команд"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! готов. Установите тактический звук повышения уровня."
-- Simplified Chinese localization
elseif locale == "zhCN" then
    L["ADDON_ENABLED"] = "插件已|cff00ff00启用|r"
    L["ADDON_DISABLED"] = "插件已|cffff0000禁用|r"
    L["PLAYING_TEST"] = "正在播放测试音效..."
    L["SOUND_VARIANT_SET"] = "音效变体已设置为：|cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "登录消息已|cff00ff00启用|r"
    L["WELCOME_TOGGLE_OFF"] = "登录消息已|cffff0000禁用|r"

    L["ERROR_PREFIX"] = "|cffff0000MW2LU 错误：|r"
    L["ERROR_UNKNOWN_COMMAND"] = "未知命令。输入 |cffffffff/mw2lu help|r 查看可用命令"

    L["HELP_HEADER"] = "|cff4F4F4F=== MW2LU 命令 ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - 播放测试音效"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - 启用插件"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - 禁用插件"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - 切换登录消息"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - 使用高品质音效"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - 使用中等品质音效"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - 使用低品质音效"

    L["ENABLED_STATUS"] = "|cff00ff00已启用|r"
    L["DISABLED_STATUS"] = "|cffff0000已禁用|r"
    L["TYPE_HELP"] = "输入 |cffffffff/mw2lu help|r 查看命令"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! 已就绪。设定你的战术升级音效。"
-- Traditional Chinese localization
elseif locale == "zhTW" then
    L["ADDON_ENABLED"] = "插件已|cff00ff00啟用|r"
    L["ADDON_DISABLED"] = "插件已|cffff0000停用|r"
    L["PLAYING_TEST"] = "正在播放測試音效..."
    L["SOUND_VARIANT_SET"] = "音效變體已設定為：|cffffffff%s|r"
    L["WELCOME_TOGGLE_ON"] = "登入訊息已|cff00ff00啟用|r"
    L["WELCOME_TOGGLE_OFF"] = "登入訊息已|cffff0000停用|r"

    L["ERROR_PREFIX"] = "|cffff0000MW2LU 錯誤：|r"
    L["ERROR_UNKNOWN_COMMAND"] = "未知命令。輸入 |cffffffff/mw2lu help|r 查看可用命令"

    L["HELP_HEADER"] = "|cff4F4F4F=== MW2LU 命令 ===|r"
    L["HELP_TEST"] = "|cffffffff/mw2lu test|r - 播放測試音效"
    L["HELP_ENABLE"] = "|cffffffff/mw2lu enable|r - 啟用插件"
    L["HELP_DISABLE"] = "|cffffffff/mw2lu disable|r - 停用插件"
    L["HELP_WELCOME"] = "|cffffffff/mw2lu welcome|r - 切換登入訊息"
    L["HELP_HIGH"] = "|cffffffff/mw2lu high|r - 使用高音質音效"
    L["HELP_MED"] = "|cffffffff/mw2lu med|r - 使用中等音質音效"
    L["HELP_LOW"] = "|cffffffff/mw2lu low|r - 使用低音質音效"

    L["ENABLED_STATUS"] = "|cff00ff00已啟用|r"
    L["DISABLED_STATUS"] = "|cffff0000已停用|r"
    L["TYPE_HELP"] = "輸入 |cffffffff/mw2lu help|r 查看命令"
    L["COMMUNITY_MESSAGE"] = "Modern Warfare 2 Level Up! 已就緒。設定你的戰術升級音效。"
end

-- Assign localization table to global addon namespace
MW2LU.L = L
