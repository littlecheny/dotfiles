  #!/bin/bash
  # Dotfiles 自动安装脚本

  echo "🚀 开始安装 dotfiles..."

  DOTFILES_DIR="$HOME/dotfiles"

  # 创建符号链接
  link_file() {
      local src=$1
      local dest=$2

      # 如果目标文件存在，先备份
      if [ -f "$dest" ] || [ -L "$dest" ]; then
          mv "$dest" "${dest}.backup"
          echo "📦 备份 $dest → ${dest}.backup"
      fi

      # 创建父目录（如果需要）
      mkdir -p "$(dirname "$dest")"

      # 创建符号链接
      ln -sf "$src" "$dest"
      echo "✅ 链接 $src → $dest"
  }

  # 链接所有配置文件
  link_file "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
  link_file "$DOTFILES_DIR/.config/starship.toml" "$HOME/.config/starship.toml"

  echo ""
  echo "✅ Dotfiles 安装完成！"
  echo "📝 运行 'source ~/.zshrc' 或重启终端生效"

