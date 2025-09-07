# 🚀 How to Use Your Claude Prompts

## Quick Start

1. **Add to your shell**: `echo "source ~/claude-prompts/aliases.sh" >> ~/.zshrc && source ~/.zshrc`
2. **Start any project**: Type `pre-code` before working
3. **Access templates**: Use `workflow`, `quality`, `api-template` commands

## Daily Workflow

### Before Starting Any Task
```bash
pre-code  # Shows quick reminder checklist
```

### For New Features
```bash
workflow           # Shows research-first pattern
feature-template   # Full implementation guide  
quality           # Pre-implementation checklist
```

### For API Development  
```bash
api-template      # Complete API endpoint guide
quality          # Security & performance checks
```

### For Bug Fixes
```bash
bug-example      # Systematic bug fix approach
workflow         # Research existing patterns first
```

## Thinking Mode Usage

- **Simple tasks**: Just start coding
- **Medium complexity**: Add "think hard" to your prompts
- **Complex decisions**: Use "ultrathink" for critical choices
- **Architecture**: Always "ultrathink" for system design

## Integration Tips

### Project-Specific CLAUDE.md
Add key reminders to your project's CLAUDE.md:
```markdown
# Development Guidelines

## Workflow Reminders
- Always research existing patterns first (~/claude-prompts/workflows/research-first.md)
- Use quality gates before implementation (~/claude-prompts/quality-gates/checklist.md)
- Follow established thinking modes based on complexity

## Project Patterns  
- API endpoints: Follow src/api/users.ts pattern
- Components: Match src/components/forms/ structure
- Tests: Use __tests__/ pattern with jest
```

### Team Adoption
Share key files with team:
- `workflows/research-first.md` - Universal workflow
- `quality-gates/checklist.md` - Pre-implementation checks  
- `thinking-modes/levels.md` - When to think deeper

## Evolution Strategy

### Track What Works
- Note which prompts give best results
- Document project-specific variations
- Build your own examples/ folder

### Regular Updates
- Add new patterns you discover
- Refine templates based on experience
- Share learnings with team

### Advanced Usage
- Create project-specific template variations
- Build custom aliases for your most-used patterns
- Develop team-specific quality gates

## Command Reference

### Navigation
- `prompts` - Go to prompts directory
- `promptsls` - List all prompt files

### Content Access
- `think-modes` - View thinking levels
- `workflow` - Research-first workflow
- `multi-phase` - Complex project approach
- `quality` - Quality gates checklist

### Templates
- `templates` - List all templates
- `api-template` - API endpoint guide
- `feature-template` - Feature implementation guide

### Examples  
- `examples` - List example files
- `bug-example` - Systematic bug fix example

### Workflow Helpers
- `pre-code` - Pre-work reminder checklist
- `post-code` - Post-work verification checklist

## Success Metrics

You'll know it's working when:
- ✅ You automatically research patterns before coding  
- ✅ Edge cases get caught during planning
- ✅ Code consistency improves across projects
- ✅ Fewer bugs and rework needed
- ✅ Team starts asking for your prompt patterns

*Make it habit. Make it automatic.* 🎯