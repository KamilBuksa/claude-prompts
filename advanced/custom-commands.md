# ⚡ Custom Commands & Automation

**Automate your AI workflow with custom commands, hooks, and subagents** - From manual to magical.

## The Automation Philosophy

> *"Custom slash commands do tego czego najczęściej potrzebujesz"*
> *"Masz zdefiniowanych subagentów i custom commands i jedziesz"*

**Transform repetitive prompts into one-click actions.**

## Custom Slash Commands

### Project-Specific Commands
```markdown
# .claude/commands/

## /api [endpoint-name]
Implement a new REST API endpoint following our established patterns:
- Authentication middleware from src/middleware/auth
- Validation using src/utils/validators  
- Error handling from src/utils/errorHandler
- Response format matching existing endpoints
- Database integration using src/db/utils

## /component [component-name]
Create a new React component following our design system:
- Use existing design tokens from src/theme
- Follow component patterns in src/components/base
- Include proper TypeScript interfaces
- Add unit tests matching existing test patterns
- Include accessibility compliance

## /fix-bug [description]
Systematically debug and fix issues:
1. Reproduce the issue in isolation
2. Identify root cause using debugging tools
3. Check for similar patterns elsewhere in codebase
4. Implement fix following established patterns
5. Add regression tests
6. Update documentation if needed
```

### Workflow Automation Commands
```markdown
## /research-first [feature]
Execute research-first workflow:
1. Search codebase for existing similar implementations
2. Read relevant files and understand patterns
3. Think harder about architecture and edge cases
4. Create implementation plan following established patterns
5. List all existing utilities and components to reuse

## /quality-check
Run comprehensive quality verification:
- Edge cases identified and handled?
- Security implications considered?
- Performance impact assessed?
- Error handling comprehensive?
- Tests cover critical paths?
- Documentation updated?

## /deploy-ready
Verify deployment readiness:
1. All tests passing
2. No lint errors
3. Performance benchmarks met
4. Security review completed
5. Documentation current
6. Rollback plan defined
```

### Analysis & Planning Commands  
```markdown
## /analyze-codebase [focus-area]
Deep codebase analysis:
- Architecture patterns and consistency
- Code quality metrics and technical debt
- Performance bottlenecks and optimization opportunities  
- Security vulnerabilities and compliance gaps
- Testing coverage and quality

## /plan-feature [feature-description]
Comprehensive feature planning:
1. Break down into implementable tasks
2. Identify dependencies and prerequisites
3. Estimate complexity and timeline
4. Plan testing strategy
5. Consider security and performance implications
6. Define success criteria and metrics
```

## Hooks & Automation

### Pre-Implementation Hooks
```bash
# .claude/hooks/pre-implementation.sh

echo "🤔 Pre-Implementation Checklist:"
echo "- Did I research existing patterns?"
echo "- Are edge cases identified?"
echo "- Is the architecture sound?"
echo "- Are security implications considered?"

# Auto-load relevant documentation
if [ -f "PATTERNS.md" ]; then
    echo "📋 Loading project patterns..."
    cat PATTERNS.md
fi

# Check for similar existing code
echo "🔍 Checking for similar implementations..."
find . -name "*.js" -o -name "*.ts" | head -10
```

### Post-Implementation Hooks
```bash
# .claude/hooks/post-implementation.sh  

echo "✅ Post-Implementation Verification:"

# Run tests automatically
npm test

# Check code quality  
npm run lint

# Verify git status
git status --porcelain

echo "🎯 Integration checklist:"
echo "- Tests passing?"
echo "- No lint errors?"  
echo "- Documentation updated?"
echo "- Ready for code review?"
```

### Context Loading Hooks
```bash
# .claude/hooks/context-loader.sh

echo "🧠 Loading project context..."

# Load project-specific patterns
if [ -f "CLAUDE.md" ]; then
    cat CLAUDE.md
fi

# Show recent commits for context
echo "📝 Recent changes:"
git log --oneline -5

# Display current branch and status
echo "🌿 Git status:"
git branch --show-current
git status --short
```

## Subagent Definitions

### Specialized Analysis Agents
```markdown
# .claude/agents/code-reviewer.md

You are a Code Review Specialist Agent.

## Your Role:
- Review code for quality, security, and maintainability
- Check compliance with project standards
- Identify potential bugs and edge cases
- Suggest performance optimizations
- Verify proper error handling

## Review Checklist:
- Code follows established patterns?
- Security best practices implemented?
- Error handling comprehensive?
- Tests cover critical paths?
- Performance implications considered?
- Documentation accurate and complete?

## Output Format:
Provide structured feedback with:
- Summary of overall code quality
- Specific issues found (with line references)
- Recommendations for improvement
- Security considerations
- Performance notes
```

### Database Design Agent
```markdown
# .claude/agents/database-architect.md

You are a Database Architecture Specialist Agent.

## Your Role:
- Design optimal database schemas
- Ensure data integrity and consistency
- Plan for scalability and performance
- Review migration strategies
- Optimize queries and indexing

## Design Principles:
- Follow normalization best practices
- Ensure referential integrity
- Plan for future scalability
- Consider query performance
- Implement proper indexing strategy

## Deliverables:
- Database schema definitions
- Migration scripts
- Query optimization recommendations
- Indexing strategy
- Backup and recovery plans
```

### API Design Agent
```markdown
# .claude/agents/api-architect.md

You are an API Design Specialist Agent.

## Your Role:
- Design RESTful API endpoints
- Ensure consistent response formats
- Plan authentication and authorization
- Design for scalability and performance
- Document API specifications

## Design Standards:
- Follow REST principles
- Consistent error handling
- Proper HTTP status codes
- Comprehensive input validation
- Rate limiting and security

## Deliverables:
- API endpoint specifications
- Request/response schemas
- Authentication flow documentation
- Error handling patterns
- Performance benchmarks
```

## Advanced Automation Patterns

### Contextual Command Suggestions
```bash
# Smart command suggestions based on current work

# If in React component directory
if [ -d "src/components" ]; then
    echo "💡 Suggested commands: /component, /test-component, /story"
fi

# If in API directory  
if [ -d "src/api" ]; then
    echo "💡 Suggested commands: /api, /middleware, /validator"
fi

# If debugging
if git log --oneline -1 | grep -i "fix\|bug"; then
    echo "💡 Suggested commands: /debug, /test-fix, /regression-test"
fi
```

### Workflow State Management
```markdown
# .claude/workflow-state.md

## Current Workflow State
- Phase: [Planning/Implementation/Testing/Deploy]
- Feature: [Current feature being worked on]
- Last Command: [Most recent command used]
- Context: [Key information to remember]

## Next Suggested Actions
Based on current state, consider these commands:
- [Command 1]: [Description]  
- [Command 2]: [Description]
- [Command 3]: [Description]
```

### Integration with External Tools
```bash
# .claude/integrations/

# Jira integration
alias create-ticket='echo "Create Jira ticket for current feature"'

# Slack notifications  
alias notify-team='echo "Notify team of deployment ready status"'

# Documentation updates
alias update-docs='echo "Update project documentation with new patterns"'
```

## Command Templates

### Feature Development Template
```markdown
## /build-feature [feature-name]

Execute complete feature development workflow:

1. **Research Phase**
   - Search existing similar features
   - Analyze current architecture patterns
   - Identify reusable components and utilities

2. **Planning Phase**  
   - Break down into tasks
   - Define acceptance criteria
   - Plan testing strategy
   - Consider security and performance

3. **Implementation Phase**
   - Follow established patterns
   - Implement with proper error handling
   - Add comprehensive tests
   - Update documentation

4. **Quality Phase**
   - Code review against standards
   - Security and performance review
   - Integration testing
   - Deployment preparation

Report progress at each phase.
```

### Debugging Template
```markdown
## /debug-issue [issue-description]

Systematic debugging workflow:

1. **Issue Reproduction**
   - Create minimal reproduction case
   - Document exact steps to reproduce
   - Identify environmental factors

2. **Root Cause Analysis**
   - Trace execution path
   - Check logs and error messages
   - Identify point of failure

3. **Solution Development**
   - Design fix approach
   - Consider side effects
   - Plan testing strategy

4. **Implementation & Verification**
   - Implement fix following patterns
   - Add regression tests
   - Verify fix doesn't break existing functionality

5. **Documentation & Prevention**
   - Document issue and solution
   - Update error handling if needed
   - Consider architectural improvements
```

## Command Management

### Command Discovery
```bash
# List available custom commands
alias list-commands='find .claude/commands -name "*.md" | xargs grep "##"'

# Search commands by keyword  
alias find-command='grep -r "$1" .claude/commands/'

# Show command usage statistics
alias command-stats='history | grep "/\w" | sort | uniq -c | sort -nr'
```

### Command Evolution
```markdown
# .claude/command-evolution.md

## Command Usage Analytics
- Most used: [/api, /component, /fix-bug]
- Least used: [/deploy-ready, /analyze-security]
- Success rate: [High/Medium/Low per command]

## Evolution Plan
- Refine high-usage commands for better efficiency
- Combine related low-usage commands
- Add new commands based on emerging patterns
- Deprecate unused commands

## Team Feedback
- [Feedback on command effectiveness]
- [Suggestions for new commands]
- [Pain points with existing commands]
```

## Success Metrics

### Efficiency Gains
- **Command usage frequency**: Track most valuable commands
- **Time savings**: Measure automation impact
- **Error reduction**: Fewer mistakes through standardization
- **Consistency improvement**: Better pattern adherence

### Quality Improvements
- **Standardization**: More consistent code patterns
- **Best practices**: Automated enforcement
- **Knowledge sharing**: Commands encode team wisdom
- **Onboarding acceleration**: New team members productive faster

## Quick Setup Guide

```bash
# 1. Create command structure
mkdir -p .claude/{commands,hooks,agents,integrations}

# 2. Add basic commands
cat > .claude/commands/basic.md << 'EOF'
## /research-first [feature]
[Implementation from above]
EOF

# 3. Setup hooks
cat > .claude/hooks/pre-code.sh << 'EOF' 
echo "🤔 Remember: Research existing patterns first!"
EOF

# 4. Define core agents
cat > .claude/agents/code-reviewer.md << 'EOF'
[Code reviewer definition from above]
EOF

# 5. Make hooks executable
chmod +x .claude/hooks/*.sh
```

*Custom commands turn expertise into automation. Build once, benefit forever.* 🔧