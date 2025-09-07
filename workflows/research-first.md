# 🔍 Research-First Workflow

**The #1 pattern for quality code** - Research existing patterns before implementing.

## Core Principle

Steps #1-#2 are crucial—without them, Claude tends to jump straight to coding a solution. While sometimes that's what you want, asking Claude to research and plan first significantly improves performance for problems requiring deeper thinking upfront.

## The Pattern

### Step 1: Discovery-First 
```
Before implementing [feature]:
- Research our current [similar] patterns  
- Identify potential edge cases and race conditions
- Check how similar systems handle [specific challenge]
- Propose solutions consistent with our architecture
```

### Step 2: Context Building
```
Analyze our existing codebase first to understand:
- Current naming conventions
- Error handling patterns  
- Testing approach
- Documentation style
Then implement the new feature following these patterns
```

## Workflow Templates

### For New Features
```
Help me implement [feature]:

1. First, search the codebase for existing [feature type] implementations
2. Read all relevant files in [directories] 
3. Think harder about the architecture and patterns
4. Create a detailed implementation plan
5. Implement following existing patterns
```

### For Bug Fixes  
```
Fix this bug but also:
- Identify root cause
- Find similar patterns that might have the same issue
- Add tests to prevent regression
- Update documentation  
- Consider if this reveals a design flaw
```

### For API Endpoints
```
Look at the existing API routes in src/api/routes
Read userRoutes.ts and authRoutes.ts to understand the middleware pattern
Think hard about error handling and validation approach

Implement a new /api/[resource] endpoint that:
- Uses existing auth middleware from src/middleware/auth
- Follows the same validation pattern using existing validators
- Reuses the error handler from src/utils/errorHandler
- Matches the response format of other endpoints
- Uses existing database utilities from src/db/utils

Before implementing, identify which middlewares and utilities you'll reuse
```

## Key Phrases That Work

- **"Look at the existing..."** - Forces exploration
- **"Think hard about..."** - Triggers deeper analysis  
- **"Reuses/Uses existing..."** - Emphasizes no duplication
- **"Matches the pattern in..."** - Ensures consistency
- **"Before coding, list..."** - Gets verification upfront

## Benefits

✅ **Full codebase understanding**  
✅ **Consistent with existing patterns**  
✅ **Fewer bugs and edge cases**  
✅ **Better architectural decisions**  
✅ **Less rework needed**

## When to Use

- New feature implementation
- Complex bug fixes
- API development  
- System integrations
- Anytime consistency matters

*Research first = Code right the first time* 🎯