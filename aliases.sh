#!/bin/bash
# Claude Prompts - Quick Access Aliases
# Add to your .zshrc: source ~/claude-prompts/aliases.sh

# Directory navigation
alias prompts='cd ~/claude-prompts'
alias promptsls='cd ~/claude-prompts && ls -la'

# Quick content access
alias think-modes='cat ~/claude-prompts/thinking-modes/levels.md'
alias workflow='cat ~/claude-prompts/workflows/research-first.md'  
alias multi-phase='cat ~/claude-prompts/workflows/multi-phase.md'
alias quality='cat ~/claude-prompts/quality-gates/checklist.md'

# Templates
alias templates='ls ~/claude-prompts/templates/'
alias api-template='cat ~/claude-prompts/templates/api-endpoint.md'
alias feature-template='cat ~/claude-prompts/templates/feature-implementation.md'

# Examples
alias examples='ls ~/claude-prompts/examples/'
alias bug-example='cat ~/claude-prompts/examples/bug-fix-systematic.md'

# Quick workflow starters
alias pre-code='echo "🤔 Research-first: Did I check existing patterns?" && echo "📋 Quality gates: Edge cases identified?" && echo "🧠 Thinking level: Appropriate for complexity?"'
alias post-code='echo "✅ Patterns followed?" && echo "🧪 Tests added?" && echo "📝 Documentation updated?"'

# Search within prompts
alias prompt-search='grep -r'

echo "🧠 Claude Prompts aliases loaded! Use 'prompts' to navigate or 'pre-code' before starting work."