# 🧠 Advanced Context Management

**Master context to unlock Claude's full potential** - The difference between basic user and power user.

## The Context Problem

- **Token limits** - Conversations have finite memory
- **Context pollution** - Irrelevant information clutters thinking
- **Information loss** - Key decisions and patterns get forgotten
- **Repetitive explanation** - Having to re-explain project context

## CLAUDE.md Strategic Placement

### Auto-Context Loading Strategy
```
project/
├── CLAUDE.md                    # Root project context (always loaded)
├── frontend/
│   ├── CLAUDE.md               # Frontend-specific context
│   └── components/
├── backend/
│   ├── CLAUDE.md               # Backend-specific context
│   └── api/
└── docs/
    └── architecture.md
```

**Key Rules:**
- **Parent directory** CLAUDE.md = Always loaded when running claude
- **Child directory** CLAUDE.md = Loaded on-demand when working in that area
- **Monorepo strategy**: Multiple CLAUDE.md files create layered context

### CLAUDE.md Content Template
```markdown
# Project: [Name]

## Quick Context
- Tech stack: [React, Node.js, PostgreSQL]  
- Architecture: [Microservices, REST API]
- Key patterns: [See src/patterns/]

## Development Guidelines
- API endpoints: Follow src/api/users.ts pattern
- Components: Match src/components/forms/ structure  
- Tests: Use __tests__/ with jest
- Error handling: src/utils/errorHandler.ts approach

## Current Focus
- Feature in progress: [User authentication]
- Known issues: [Rate limiting needs work]
- Next priorities: [Payment integration, Mobile app]

## AI Workflow Reminders
source ~/claude-prompts/aliases.sh
- pre-code: Research patterns first
- quality: Edge cases & security check
- workflow: Multi-phase for complex features
```

## Context Preservation Strategies

### 1. Subagent Context Isolation
```
Before diving deep into [specific area]:

Use a subagent to investigate [specific question] without polluting main context.
Return only the key findings and architectural decisions.
Don't include implementation details in the main conversation.
```

**Benefits:**
- Main conversation stays focused
- Deep research doesn't clutter context
- Key decisions get summarized cleanly

### 2. Context Checkpoints
```markdown
# Context Checkpoint - [Date]

## What We've Accomplished
- Feature X implemented following pattern Y
- Database schema updated with migration Z
- Tests added for edge cases A, B, C

## Key Decisions Made  
- Chose React Query over Redux for this feature because [reason]
- Database: PostgreSQL over MongoDB for ACID compliance
- Authentication: JWT with refresh tokens

## Current State
- All tests passing ✅
- Deploy ready ✅  
- Documentation updated ✅

## Next Session Focus
- Implement feature Y using pattern from feature X
- Add error monitoring for new endpoints
- Performance optimization for dashboard queries
```

### 3. Fresh Conversation Triggers
Start new chat when:
- **Context pollution** - Too many failed attempts or tangents
- **Phase transition** - Moving from planning to implementation
- **Token limit approaching** - >80% of context used
- **Different team member** - New person joining the work
- **Major pivot** - Significant architectural change

## Token Optimization Techniques

### 1. Reference Architecture
Store large architectural details in files, reference by path:
```
Check the authentication flow in docs/auth-flow.md
Follow the database schema in schema/users.sql  
Use the API patterns from examples/api-patterns.md
```

### 2. Condensed Context Updates
Instead of long explanations:
```
Status: auth-system 90% complete
Remaining: password-reset endpoint + tests
Next: payment-integration (use stripe-examples/)
Issues: rate-limiting needs optimization
```

### 3. Context-Aware Prompts
```
Based on our project context (React/Node/PostgreSQL stack):
Implement [feature] following our established patterns.
Review our CLAUDE.md guidelines before starting.
```

## Advanced Context Patterns

### Living Documentation Approach
```markdown
# project-memory.md (continuously updated)

## Architecture Evolution
- Week 1: Monolith → decided to split into services
- Week 2: Added Redis for caching (performance gain 40%)
- Week 3: Implemented rate limiting (see rate-limiter.ts)

## Pattern Library
- Authentication: src/auth/ (JWT + refresh tokens)
- Error handling: src/utils/errorHandler.ts
- Database queries: src/db/ (TypeORM patterns)
- API responses: src/api/responseFormatter.ts

## Team Knowledge
- @Kamil: Frontend architecture, React patterns
- @Andrzej: Backend systems, database optimization
- Shared: API design, testing strategies
```

### Context Handoff Protocol
When switching conversations or team members:
```markdown
# Handoff to [Next Person/Session]

## Current Status
- Feature: User authentication system
- Progress: 70% complete  
- Files modified: [list]
- Tests: [passing/failing status]

## Context Summary
- Following auth pattern from src/auth/
- Using JWT + refresh token approach
- Database: users table with role-based permissions
- Frontend: React Query for auth state

## Next Actions
1. Complete password reset endpoint (15min)
2. Add integration tests (30min)
3. Update API documentation (10min)

## Blockers/Decisions Needed
- Email service integration choice (SendGrid vs SES)
- Password complexity requirements discussion

## Reference Files
- @ src/auth/authController.ts (main implementation)
- @ tests/auth.test.ts (current test patterns)
- @ docs/auth-requirements.md (business rules)
```

## Context Management Aliases

Add to your aliases.sh:
```bash
# Context management
alias save-context='echo "## Session Summary - $(date)" >> project-memory.md'
alias load-context='cat project-memory.md | tail -20'
alias fresh-start='echo "Starting fresh session with context from:" && cat CLAUDE.md'

# Token optimization
alias context-size='wc -w *.md | sort -n'
alias compress-context='grep -v "^#" project-memory.md | head -50'
```

## Red Flags: Context Mismanagement

🚨 **Signs You Need Context Cleanup:**
- Repeating same explanations multiple times
- Claude asking about decisions made earlier
- Conversation feels unfocused or scattered
- Implementation inconsistent with earlier decisions
- Having to re-explain project architecture repeatedly

## Success Metrics

✅ **Good Context Management:**
- Claude remembers key architectural decisions
- Consistent implementation across features  
- Smooth handoffs between team members
- Efficient conversations focused on current task
- Clear progression from session to session

## Quick Reference Commands

```bash
# Check current context
prompts && cat thinking-modes/levels.md

# Save important decisions  
echo "Decision: [summary]" >> project-memory.md

# Start focused session
cat CLAUDE.md && echo "Ready to code with full context"

# Context checkpoint
pre-code && echo "Context loaded, patterns reviewed"
```

*Context is not just memory - it's the foundation of AI collaboration mastery.* 🎯