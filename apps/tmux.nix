{
  programs.tmux = {
    enable = true;
    clock24 = true;
    extraConfig = ''
      bind C-b send-prefix
      set -g base-index 1
      setw -g pane-base-index 1
      set -sg escape-time 0
      setw -g mouse off

      bind C-l send-keys 'C-l'

      is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
          | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
      bind-key -n C-h if-shell "$is_vim" "send-keys C-h"  "select-pane -L"
      bind-key -n C-j if-shell "$is_vim" "send-keys C-j"  "select-pane -D"
      bind-key -n C-k if-shell "$is_vim" "send-keys C-k"  "select-pane -U"
      bind-key -n C-l if-shell "$is_vim" "send-keys C-l"  "select-pane -R"
      bind-key -T copy-mode-vi C-h select-pane -L
      bind-key -T copy-mode-vi C-j select-pane -D
      bind-key -T copy-mode-vi C-k select-pane -U
      bind-key -T copy-mode-vi C-l select-pane -R


      set -g mouse on
      bind -n WheelUpPane if-shell -F -t = "#{mouse_any_flag}" "send-keys -M" "if -Ft= '#{pane_in_mode}' 'send-keys -M' 'select-pane -t=; copy-mode -e; send-keys -M'"
      bind -n WheelDownPane select-pane -t= \; send-keys -M

      set -g default-terminal "tmux-256color"
      set -ga terminal-overrides ",*256col*:Tc"
      # 状态栏
      # 颜色
      set -g status-bg black
      set -g status-fg white

      # 对齐方式
      set-option -g status-justify centre

      # 左下角
      set-option -g status-left '#[bg=black,fg=green][#[fg=cyan]#S#[fg=green]]'
      set-option -g status-left-length 20

      # 窗口列表
      setw -g automatic-rename on
      set-window-option -g window-status-format '#[dim]#I:#[default]#W#[fg=grey,dim]'
      set-window-option -g window-status-current-format '#[fg=cyan,bold]#I#[fg=blue]:#[fg=cyan]#W#[fg=dim]'

      # 右下角
      set -g status-right '#[fg=green][#[fg=cyan]%Y-%m-%d#[fg=green]]'

      setw -g mode-keys vi
    '';
  };
}
