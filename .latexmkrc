# 中译本改动：正文已译成中文，pdflatex 无法处理 Unicode CJK 字符，改用 LuaLaTeX。

push @extra_lualatex_options, '-synctex=1';
# latexmk 默认只给引擎传 -no-pdf，不指定 -interaction 时用的是引擎自己的
# errorstopmode：每个可恢复错误都会在没有真实终端的 CI/nohup 环境里卡住等待
# 交互确认。显式加 nonstopmode，让可恢复错误只记一条日志、继续编译到底。
push @extra_lualatex_options, '-interaction=nonstopmode';

$max_repeat = 12;
$pdf_mode = 4; # lualatex

# vim: ft=perl
