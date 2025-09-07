# 🔄 Multi-Phase Development Workflow

**Break complex tasks into phases** for better results and context management.

## Core Strategy

### Option A: Same Chat (Good for smaller tasks)
1. Research + Plan + Start Implementation 
2. If context gets messy: Save progress notes
3. New chat with: @plan.md @progress-notes.md
4. Continue implementation with full context

### Option B: Separate Chats (Recommended for complex tasks)

## 📋 Phase 1: Research & Planning Chat

```
1. "Search the codebase for existing [feature type] implementations"
2. "Read all relevant files in [directories]"  
3. "Think harder about the architecture and patterns"
4. "Create a detailed implementation plan for [feature]"
5. "Save the plan to docs/plans/[feature]-plan.md"
```

**Benefits:**
- Full codebase understanding
- No context pollution from exploration
- Documented decision rationale  
- Reusable plan for team/future

## 🚀 Phase 2: Fresh Implementation Chat

```
@ docs/plans/feature-plan.md

Implement the plan in this file. Follow it exactly.
Think hard about each step before implementing.
Start with step 1.
```

**Why This Works Better:**
- Clean context = better focus
- Plan acts as checklist
- No exploration noise
- Clear success criteria
- Faster execution

## 🧪 Phase 3: Verification Chat

```
@ docs/plans/[feature].md @ [implementation files]

Verify the implementation matches the plan
Run tests and fix any issues
Check for edge cases we might have missed
```

## Plan.md Template

```markdown
# [Feature] Implementation Plan

## Existing Components to Reuse
- ComponentA from src/components/
- useHook from src/hooks/  
- utilityFunction from src/utils/

## Files to Modify
- src/routes/index.ts - add new route
- src/components/Layout.tsx - add menu item

## New Files to Create
- src/components/Feature/
- src/hooks/useFeature.ts

## Implementation Steps
1. Step with specific approach
2. Dependencies and order
3. Testing strategy

## Patterns to Follow
- Error handling: match src/api/users.ts
- State management: follow src/store/
- Styling: use existing theme tokens

## Constraints  
- No new dependencies
- Maintain existing API contracts
- Keep bundle size under X
```

## When to Stay in Same Chat vs. New Chat

### Stay in Same Chat When:
- Context discoveries directly affect implementation
- Complex interdependencies
- Debugging while implementing  
- Need to reference earlier findings frequently
- Under 2-3 hours total work

### Start New Chat When:
- Context is getting polluted with failed attempts
- Switching from research to pure implementation
- Clear plan established and validated
- Different phase of work (dev → testing)
- Token limits approaching

## Advanced Variations

### Multi-Agent Approach
- Chat 1: Research agent - explore codebase
- Chat 2: Planning agent - create plan.md
- Chat 3: Implementation agent - execute plan  
- Chat 4: Testing agent - verify & test

### Living Context Document
```markdown
# context.md (updated throughout)

## Current Understanding
- [What we've learned]

## Decisions Made  
- Chose X over Y because Z

## TODO
- [ ] Implement auth
- [ ] Fix bug found in line 234

## Blockers/Issues
- Need to resolve X before Y
```

*Phases = Focus. Focus = Quality.* 🎯