function update_ssh_permissions() {
  e_info "Setting ~/.ssh folders to 0700"
  find $HOME/.ssh -exec chmod -v 0700 {} \;
  e_info "Setting ~/.ssh files to 0600"
  find $HOME/.ssh/* \( -type l -o -type f \) -exec chmod -v 0600 {} \;
  find $HOME/.ssh/known_hosts \( -type l -o -type f \) -exec chmod -v 0744 {} \;
  e_success "${RESET} .ssh correctly set"
}

update_ssh_permissions
