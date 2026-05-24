{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    signing = {
      key = "8608FAB03B1FA2C9";
      signByDefault = true;
    };

    settings = {
      user = {
        name = "owo93";
        email = "iztyle30@gmail.com";
        signingKey = "8608FAB03B1FA2C9";
      };

      core = {
        sshCommand = "ssh -i ~/.ssh/id_ed25519";
        pager = "delta";
        editor = "vim";
        excludesFile = "/home/o93/.gitignore_global";
      };

      interactive.diffFilter = "delta --color-only"; # TODO: setup delta with home-manager
      url."git@github.com:" = {
        pushInsteadOf = "https://github.com/";
        insteadOf = "https://github.com/";
      };

      init.defaultBranch = "main";
      commit.gpgsign = true;
      tag.gpgsign = true;
      merge.conflictStyle = "zdiff3";
    };
  };
}
