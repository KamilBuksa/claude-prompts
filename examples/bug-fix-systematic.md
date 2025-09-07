# 🐛 Systematic Bug Fix Example

**Real workflow example** showing how to apply prompting patterns to bug fixing.

## The Scenario

Bug report: "User authentication sometimes fails on mobile devices, but works fine on desktop."

## Applied Workflow

### Phase 1: Research-First Investigation

**Prompt Used:**
```
Before fixing this authentication bug:
- Research our current authentication patterns
- Identify how mobile vs desktop authentication differs  
- Check how similar auth issues were handled before
- Look for existing mobile-specific auth code
- Think harder about potential root causes

Don't fix anything yet - just investigate and understand.
```

**What Claude Did:**
1. Searched codebase for authentication-related files
2. Found mobile-specific token handling in `src/auth/mobile.ts`
3. Discovered desktop uses localStorage, mobile uses secure storage
4. Identified token expiration handling differences
5. Found similar issue fixed 6 months ago in git history

### Phase 2: Quality Gates Application  

**Prompt Used:**
```
Think harder about this auth bug's potential causes:
- What edge cases exist in mobile token storage?
- How does this fail gracefully on different devices?
- What are the security implications of the current approach?  
- Consider timezone/clock skew edge cases
- Check for race conditions in token refresh
- What happens under poor network conditions?
```

**Analysis Results:**
- Mobile tokens expire faster due to app backgrounding
- Race condition in token refresh on poor mobile networks
- Clock skew between device and server causing premature expiration
- No fallback mechanism for secure storage failures

### Phase 3: Systematic Fix Implementation

**Prompt Used:**
```
Fix this authentication bug following our existing patterns:

1. Look at how the previous mobile auth bug was fixed (commit abc123)
2. Reuse the token retry logic from src/utils/auth-retry.ts
3. Follow the same error handling pattern as desktop auth
4. Match the logging approach used in other auth modules  

Implement a fix that:
- Uses existing retry utilities where applicable
- Follows the established error handling patterns
- Matches current mobile auth architecture
- Includes the same monitoring points as desktop auth

Before coding, list all existing utilities you'll reuse.
```

**Implementation Plan:**
1. **Reuse existing utilities:**
   - `retryWithBackoff` from `src/utils/auth-retry.ts`
   - `TokenManager` from `src/auth/token-manager.ts`
   - Error logger from `src/utils/logger.ts`

2. **Follow established patterns:**
   - Token refresh pattern from desktop auth
   - Error handling from `src/auth/desktop.ts`
   - Retry logic from previous mobile fix

3. **Specific fixes:**
   - Add clock skew tolerance (±60 seconds)
   - Implement token refresh retry with exponential backoff
   - Add secure storage fallback to standard storage
   - Enhanced logging for mobile-specific failures

### Phase 4: Comprehensive Testing & Verification

**Prompt Used:**
```
Verify this auth bug fix comprehensively:

1. Test all edge cases we identified:
   - Poor network conditions
   - App backgrounding scenarios  
   - Clock skew situations
   - Secure storage failures
   
2. Verify consistency with existing patterns:
   - Does error handling match desktop auth?
   - Are we using the same retry utilities?
   - Is logging consistent across auth modules?
   
3. Run existing auth tests and ensure no regressions
4. Add tests that match our existing test patterns
```

**Testing Results:**
- All existing auth tests pass ✅
- New mobile-specific tests added following existing patterns ✅  
- Edge case scenarios properly handled ✅
- Error handling consistent with desktop implementation ✅
- Monitoring and logging integrated properly ✅

## Key Success Factors

### Research-First Approach
- **Found root cause quickly** by understanding existing patterns
- **Discovered previous similar fix** saving hours of debugging
- **Identified all edge cases** before implementing solution

### Pattern Consistency
- **Reused existing utilities** instead of creating new ones
- **Followed established error handling** maintaining code consistency
- **Matched existing architecture** making code predictable

### Comprehensive Quality Gates
- **Identified all edge cases** during planning phase
- **Applied systematic testing** ensuring robust solution
- **Verified consistency** with existing codebase patterns

## The Results

**Before Fix:**
- Authentication failed ~15% of the time on mobile
- No clear error reporting for debugging
- Inconsistent behavior across different mobile devices

**After Fix:**
- Authentication success rate: 99.8% on mobile
- Clear error logging and monitoring
- Consistent behavior matching desktop experience
- Robust handling of network and storage edge cases

## Lessons Learned

1. **Research-first saves time** - Understanding existing patterns led to faster solution
2. **Quality gates catch edge cases** - Systematic analysis prevented post-fix issues  
3. **Pattern consistency reduces bugs** - Following established approaches avoided new problems
4. **Comprehensive testing prevents regressions** - Systematic verification ensured solution quality

## Template for Similar Bugs

```
Fix this [bug type] following our systematic approach:

1. Research existing [related feature] patterns first
2. Think harder about all potential edge cases and root causes
3. Identify which existing utilities and patterns to reuse
4. Implement following established architecture patterns
5. Test comprehensively including edge cases
6. Verify no regressions in existing functionality

Before implementing, list the existing patterns and utilities you'll leverage.
```

*Systematic bug fixing = Reliable solutions* 🎯