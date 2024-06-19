#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
CURRENT_SHELL=$(basename "$SHELL")
case "$CURRENT_SHELL" in
    bash)
        RC_FILE="$HOME/.bashrc"
        ;;
    zsh)
        RC_FILE="$HOME/.zshrc"
        ;;
    ksh)
        RC_FILE="$HOME/.kshrc"
        ;;
    tcsh)
        RC_FILE="$HOME/.tcshrc"
        ;;
    *)
        echo "Unsupported shell: $CURRENT_SHELL"
        return 1
        ;;
esac

touch $SCRIPT_DIR/gap
cat <<EOF > $SCRIPT_DIR/gap
#!/bin/bash

# Default value for N
N=\$(tput lines)

# If an argument is provided, use it as N
if [ $# -gt 0 ]; then
    N=$1
fi

# Print N blank lines
for ((i = 0; i < N; i++)); do
    echo ""
done
EOF

chmod +x $SCRIPT_DIR/gap

if ! grep -q "export PATH=\$PATH:$SCRIPT_DIR" $RC_FILE; then
    echo "export PATH=\$PATH:$SCRIPT_DIR" >> $RC_FILE
fi

source $RC_FILE