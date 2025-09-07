# ⚡ Feature Implementation Template

**Step-by-step guide** for implementing new features consistently.

## Core Template Structure

```
1. Look at the existing [component type] implementations in [directory]
2. Read [specific files] to understand the patterns and conventions used  
3. Think hard about the architecture before implementing

Implement [new feature] that:
- Uses existing components from [directory] wherever applicable
- Reuses utility functions from [utils location]
- Matches the coding style and patterns in [reference file]
- Don't create new helpers if similar ones exist - extend existing ones
- Checks [test directory] for similar test patterns to follow

Before coding, list all existing components/utilities you'll reuse and explain your approach.
```

## Complete Feature Workflow

### Phase 1: Discovery
```
Search the codebase for existing [feature type] implementations
Read all relevant files in these directories:
- src/components/[similar features]
- src/hooks/[related hooks] 
- src/utils/[utility functions]
- src/services/[API services]
- tests/[existing test patterns]

Think harder about:
- What patterns are already established?
- What components can be reused?
- How do similar features handle state?
- What's the testing approach?
```

### Phase 2: Planning
```
Create a detailed implementation plan for [feature] that:

## Existing Components to Reuse
- List specific components and their locations
- Identify utility functions to leverage
- Note existing hooks that apply

## Architecture Decisions  
- State management approach (match existing)
- Component structure (follow patterns)
- API integration (reuse services)
- Error handling (consistent with codebase)

## Implementation Steps
1. Create base components following [existing pattern]
2. Implement state management using [existing approach]
3. Add API integration reusing [existing service]
4. Write tests matching [existing test pattern]
5. Update routing/navigation as needed
```

### Phase 3: Implementation
```
Implement the plan exactly. Start with step 1.
Think before each step to ensure you're following existing patterns.

For each component:
- Match the naming conventions used in similar components
- Follow the same prop patterns and TypeScript interfaces  
- Use existing styling approaches (CSS modules, styled-components, etc.)
- Implement error boundaries following project patterns
```

## Specific Use Cases

### React Component Feature
```
Look at existing components in src/components/[similar]
Read the main component files to understand:
- How props are structured and typed
- What hooks are commonly used  
- How state is managed (local vs global)
- What styling approach is used
- How error handling works

Implement [ComponentName] that:
- Follows the same TypeScript interface patterns
- Uses existing design system components
- Matches current accessibility standards
- Reuses existing custom hooks where applicable
- Follows the established testing patterns
```

### Backend Service Feature
```
Examine existing services in src/services/
Read the main service files to understand:
- How database connections are handled
- What error handling patterns are used
- How validation is implemented  
- What logging approach is used
- How transactions are managed

Implement [ServiceName] that:
- Uses existing database utilities
- Follows the same error handling patterns
- Reuses validation schemas where applicable
- Matches current logging standards
- Uses established transaction patterns
```

### Full-Stack Feature
```
Research existing full-stack features:
- Frontend components in src/components/
- Backend services in src/services/
- API routes in src/api/routes/
- Database models in src/models/
- Tests in tests/

Plan the feature end-to-end:
1. Database schema (follow existing patterns)
2. Backend API (match existing routes)
3. Frontend service layer (reuse API client)
4. React components (follow component patterns)  
5. State management (use existing store structure)
6. Tests (match existing test organization)
```

## Quality Assurance Integration

### Before Implementation
```
Before implementing [feature], verify:
- All existing similar patterns identified
- Reusable components catalogued
- Consistent naming approach planned
- Error handling strategy defined
- Testing approach aligned with existing tests
```

### During Implementation
```
For each component/service implemented:
- Does it match existing patterns?
- Are we reusing instead of recreating?
- Is error handling consistent?
- Are we following the same code style?
- Will tests fit the existing structure?
```

### After Implementation  
```
Verify the implementation:
- Run existing tests to ensure no regressions
- Check that new code follows project linting rules
- Confirm consistent naming and patterns
- Validate error handling works as expected
- Ensure documentation follows project standards
```

## Red Flags to Avoid

🚫 **Creating new patterns** when existing ones work  
🚫 **Reinventing utilities** that already exist  
🚫 **Inconsistent naming** with the rest of the codebase  
🚫 **Different error handling** from established patterns  
🚫 **Unique testing approaches** that don't match existing tests  

## Success Metrics

✅ **Reused existing components** wherever possible  
✅ **Followed established patterns** consistently  
✅ **No duplicate code** created  
✅ **Tests integrate** with existing test suite  
✅ **Code style matches** project standards  

*Consistency creates maintainability.* 🏗️