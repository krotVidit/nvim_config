require("config.lazy")

-- Основные настройки
vim.opt.tabstop = 4       -- Количество пробелов, которые вставляет таб
vim.opt.shiftwidth = 2    -- Количество пробелов для автоотступов
vim.opt.expandtab = true  -- Преобразовывать табы в пробелы
vim.opt.number = true     -- Показывать номера строк

-- Дополнительные полезные настройки:
vim.opt.smartindent = true -- Умный отступ
vim.opt.wrap = false      -- Не переносить длинные строки
vim.opt.termguicolors = true -- Поддержка 24-битных цветов
vim.opt.cursorline = true -- Подсвечивать текущую строку
vim.opt.signcolumn = "yes" -- Всегда показывать колонку знаков
vim.opt.mouse = "a"       -- Включить поддержку мыши во всех режимах
vim.opt.clipboard = "unnamedplus" -- Интеграция с системным буфером обмена

vim.opt.ignorecase = true -- Игнорировать регистр при поиске
vim.opt.smartcase = true  -- Учитывать регистр если есть заглавные буквы
vim.opt.undofile = true   -- Сохранять историю изменений после закрытия файла
vim.opt.swapfile = false  -- Не создавать swap-файлы (можно включить если нужно)

-- Настройки для лучшего отображения
vim.opt.showmatch = true  -- Подсвечивать соответствие скобок
vim.opt.splitright = true -- Новые вертикальные сплиты открываются справа
vim.opt.splitbelow = true -- Новые горизонтальные сплиты открываются снизу

-- Настройки поиска
vim.opt.hlsearch = true   -- Подсвечивать результаты поиска
vim.opt.incsearch = true  -- Инкрементальный поиск

-- Автодополнение командной строки
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"

-- Настройки для работы с файлами
vim.opt.encoding = "utf-8" -- Кодировка по умолчанию
vim.opt.fileencoding = "utf-8" -- Кодировка файлов по умолчанию
vim.opt.backup = false    -- Не создавать backup-файлы
vim.opt.writebackup = false

-- Настройки интерфейса
vim.opt.showmode = true  -- Не показывать текущий режим (так как есть статусная строка)
vim.opt.laststatus = 3    -- Глобальная статусная строка (если используешь Neovim 0.7+)
vim.opt.cmdheight = 1     -- Высота командной строки
vim.opt.scrolloff = 8     -- Минимальное количество строк выше/ниже курсора
vim.opt.sidescrolloff = 8 -- Минимальное количество колонок слева/справа от курсора
vim.opt.pumheight = 10   -- Максимальная высота popup меню

-- Настройки времени
vim.opt.updatetime = 300  -- Время ожидания перед записью swap и запуском CursorHold
vim.opt.timeoutlen = 500  -- Время ожидания mapped последовательностей

-- Улучшенное отображение невидимых символов
vim.opt.list = true
vim.opt.listchars = {
  tab = "→ ",
  trail = "·",
  nbsp = "␣",
  extends = "⟩",
  precedes = "⟨",
}

-- Если используешь Lazy.nvim, можно добавить проверку на загрузку плагинов
if vim.g.lazy_nvim_loaded then
  -- Дополнительные настройки, зависящие от плагинов
end
